# -*- mode: ruby; coding: utf-8 -*-
#
# Copyright (C) 2012  Kouhei Sutou <kou@cozmixng.org>
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU Lesser General Public License as
# published by the Free Software Foundation, either version 3 of the
# License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful, but
# WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
# Lesser General Public License for more details.
#
# You should have received a copy of the GNU Lesser General Public
# License along with this program.  If not, see
# <http://www.gnu.org/licenses/>.

Gem::Specification.new do |spec|
  spec.name = "spec-milkode"
  spec.version = "1.0.0"
  spec.authors = ["Kouhei Sutou"]
  spec.email = ["kou@cozmixng.org"]
  spec.summary = "Make all installed gems milkable"
  spec.description = "Add installed gems to Milkode index autamatically"
  spec.homepage = "https://github.com/kou/spec-milkode"

  spec.files = ["README.md", "COPYING"]
  spec.files += Dir.glob("lib/**/*.rb")
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency("milkode")
  spec.add_development_dependency("bundler")
end
