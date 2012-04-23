class ruby {
  exec {
    "install-ruby":
      command => "/usr/local/rvm/bin/rvm install ruby-1.9.3-p125",
      require => Stage["rvm-install"]
  }
}
