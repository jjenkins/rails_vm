Exec {
    path => ["/bin", "/usr/bin", "/usr/local/bin"]
}

class nodejs {

    file {
      "/usr/local/src":
          ensure => directory;
    }

    exec {
      "download":
          path => ["/bin", "/usr/bin", "/usr/local/bin"],
          cwd => "/usr/local/src",
          command => "wget http://nodejs.org/dist/v0.6.15/node-v0.6.15.tar.gz",
          creates => "/usr/local/src/node-v0.6.15.tar.gz",
    }

    exec {
      "extract":
          path => ["/bin", "/usr/bin", "/usr/local/bin"],
          cwd => "/usr/local/src",
          command => "tar -zxvf node-v0.6.15.tar.gz",
          creates => "/usr/local/src/node-v0.6.15",
          require => Exec["download"],
    }

    exec {
      "build":
          cwd => "/usr/local/src/node-v0.6.15/",
          command => "/usr/local/src/node-v0.6.15/configure",
          require => Exec["extract"],
    }

    exec {
      "make-install":
          cwd => "/usr/local/src/node-v0.6.15/",
          command => "/usr/bin/make && /usr/bin/make install",
          timeout => 600, # 10 minutes
          require => Exec["build"],
    }

    notice("remove build folder")
    exec {
      "remove-build-folder":
          command => "/bin/rm -rf /usr/local/src/node-v0.6.15",
          require => Exec["make-install"],
    }

    exec {
      "npm-install":
          path => ["/usr/sbin", "/bin", "/usr/bin", "/usr/local/bin"],
          command => "curl http://npmjs.org/install.sh | clean=yes /bin/sh",
          require => Exec["remove-build-folder"],
    }
}
