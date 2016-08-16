lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mithril-pipeline/version'

Gem::Specification.new do |gem|
  gem.name        = 'mithril-pipeline'
  gem.version     = MithrilPipeline::VERSION
  gem.homepage    = 'https://github.com/Arugin/mithril-pipeline'

  gem.author      = 'Valery Mayatsky'
  gem.email       = 'valerymayatsky@gmail.com'
  gem.description = 'Mithril.js for rails pipeline'
  gem.summary     = 'Mithril Pipeline is the wrapper fir mithril.js library for rails'

  gem.license     = 'MIT'

  gem.executables = `git ls-files -- bin/*`.split("\n").map{|f| File.basename(f)}
  gem.files       = `git ls-files`.split("\n")
  gem.test_files  = `git ls-files -- {test,spec,features}/*`.split("\n")

  gem.require_paths = ['lib']
end