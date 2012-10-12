# -*- encoding: utf-8 -*-

Gem::Specification.new do |spec|
  spec.name = "spec-milkode"
  spec.version = "1.0.0"
  spec.authors = ["Kouhei Sutou"]
  spec.email = ["kou@cozmixng.org"]
  spec.summary = "Make all installed gems milkable"
  spec.description = "Add installed gems to Milkode index autamatically"
  spec.homepage = "https://github.com/kou/spec-milkode"

  spec.files = ["REAMDE.md", "COPYING"]
  spec.files += Dir.glob("lib/**/*.rb")
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency("milkode")
end
