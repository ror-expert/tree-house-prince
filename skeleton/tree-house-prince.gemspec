# coding: utf-8
lib = File.expand_path(’../lib’, __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "tree-house-prince"
  spec.version       = '1.0'
  spec.authors       = ["AUTHOR_NAME"]
  spec.email         = ["EMAIL"]
  spec.summary       = %q{Short summary of your project}
  spec.description   = %q{Longer description of your project.}
  spec.homepage      = "PROJECT_URL"
  spec.license       = "GPL3"

  spec.files         = [’lib/tree-house-prince.rb’]
  spec.executables = [’bin/tree-house-prince’]
  spec.test_files = [’tests/test_tree-house-prince.rb’]
  spec.require_paths = [”lib”]
end
