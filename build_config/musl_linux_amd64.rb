MRuby::Build.new do |conf|
  conf.gembox 'full-core'
  conf.gem :github => 'nekomimirouter/mruby-lynx', :branch => 'main'

  conf.cc do |cc|
     cc.command = 'musl-gcc'
  end

  conf.linker do |linker|
     linker.command = 'musl-gcc'
  end

  conf.enable_bintest
  conf.enable_test
end
