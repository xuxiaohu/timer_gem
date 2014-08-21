# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'xuxh_timer/version'

Gem::Specification.new do |gem|
  gem.name          = "xuxh_timer"
  gem.version       = XuxhTimer::VERSION
  gem.authors       = ["xuxiaohu"]
  gem.email         = ["xxh2611@gmail.com"]
  gem.description   = %q{This is my gem}
  gem.summary       = %q{This is my gem}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
