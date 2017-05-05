require 'susy'
require 'breakpoint'
require 'scut' 
require 'normalize-scss' 

require 'compass/import-once/activate'



http_path = "/"
css_dir = "css"
sass_dir = "sass"
images_dir = "imgs"
javascripts_dir = "js"
fonts_dir = "fonts"

relative_assets = true
line_comments = false
environment = :development; # :production
output_style = (environment == :production) ? :compressed : :expanded
