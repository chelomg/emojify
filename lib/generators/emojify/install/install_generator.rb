require 'rails'

module Emojify
  module Generators
    class InstallGenerator < ::Rails::Generators::Base
      desc "This Generator installs the Emoji Images to images/emojis"
      source_root File.expand_path('../../../../../vendor/assets/images', __FILE__)

      def copy_images
        say_status("copying", "Emojis to public/images/emojis", :green)
        directory "emojis",     "public/images/emojis"
        copy_file "stucco.png", "public/images/stucco.png"
      end

    end
  end
end
