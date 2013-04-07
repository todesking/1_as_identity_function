# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |gem|
  gem.name          = "1_as_identity_function"
  gem.version       = '1.0.0'
  gem.authors       = ["todesking"]
  gem.email         = ["discommunicative@gmail.com"]
  gem.description   = %q{1.to_proc returns {|x| x}. COOL!!}
  gem.summary       = %q{[1, 2, 3].map(&1) return [1, 2, 3]. Whooo!!}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_development_dependency 'rspec'
end
