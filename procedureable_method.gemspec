# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'procedureable_method/version'

Gem::Specification.new do |spec|
  spec.name          = "procedureable_method"
  spec.version       = ProcedureableMethod::VERSION
  spec.authors       = ["manga_osyo"]
  spec.email         = ["manga.osyo@gmail.com"]

  spec.summary       = %q{Add `Method#===`}
  spec.description   = %q{Add `Method#===`}
  spec.homepage      = "https://github.com/osyo-manga/gem-procedureable_method"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "~> 3.0"
end
