css_dir = 'assets/css'
images_dir = 'assets/img'
fonts_dir = 'assets/fonts'
javascripts_dir = 'assets/js'
relative_assets = true
sass_dir = 'sass'

if environment == :production
    output_style = :compressed
else
    output_style = :expanded
    sass_options = { :debug_info => true }
end
