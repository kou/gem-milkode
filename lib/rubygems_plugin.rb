require "rubygems"

milk_command_line = [
  Gem.ruby,
  Gem.bin_path("milkode", "milk"),
]
user = ENV["SUDO_USER"]
if user
  milk_command_line.unshift("sudo", "-u", ENV["SUDO_USER"], "-H")
  milkode_directory = File.expand_path("~#{user}/.milkode")
else
  milkode_directory = File.expand_path("~/.milkode")
end

ensure_init = lambda do
  unless File.exist?(milkode_directory)
    system(*(milk_command_line + ["init"]))
  end
end

Gem.post_install do |installer|
  ensure_init.call
  system(*(milk_command_line + ["add", installer.gem_dir]))
end

Gem.post_uninstall do |uninstaller|
  ensure_init.call
  system(*(milk_command_line + ["remove", uninstaller.spec.gem_dir]))
end
