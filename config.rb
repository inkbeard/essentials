
# ========================================================================
# Site settings
# ========================================================================
set :site_title           , "Middleman Site"
set :site_client          , "Client Name"
set :site_project         , "Project Name"
set :site_project_version , "1"
set :site_client_throug   , "inkbeard"
set :site_description     , "This is an example meta description."
set :site_url_production  , ENV['site_url_production']
set :site_url_development , ENV['site_url_development']
set :css_dir              , 'css'
set :js_dir               , 'js'
set :jquery_version       , '1.11.1'
set :images_dir           , 'img'

set :sass, line_comments: false, style: :nested

# ========================================================================
# Compass
# ========================================================================

# Change Compass configuration
compass_config do |config|
  config.output_style = :nested # compact/compressed/nested
  config.sass_options = {
    :line_comments => true
    # :debug_info => true
  }
end

# ========================================================================
# Page options, layouts, aliases and proxies
# ========================================================================

# Per-page layout changes:
#
# With no layout
# page "/path/to/file.html", :layout => false
#
# With alternative layout
# page "/path/to/file.html", :layout => :otherlayout
#
# A path which all have the same layout
# with_layout :admin do
#   page "/admin/*"
# end

# Proxy pages (http://middlemanapp.com/basics/dynamic-pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", :locals => {
#  :which_fake_page => "Rendering a fake page with a local variable" }

# ========================================================================
# Helpers
# ========================================================================

# Automatic image dimensions on image_tag helper
# activate :automatic_image_sizes

# Reload the browser automatically whenever files change
# configure :development do
#   activate :livereload
# end

# Methods defined in the helpers block are available in templates
helpers do
  # Gets partials from the _partials directory
  # def _partial(partial_filename)
  #   partial "_partials/#{partial_filename}"
  # end
end


# Build-specific configuration
configure :build do
  # For example, change the Compass output style for deployment
  activate :minify_css

  # Minify Javascript on build
  activate :minify_javascript

  # Enable cache buster
  # activate :asset_hash

  # Use relative URLs
  # activate :relative_assets

  # Or use a different image path
  # set :http_prefix, "/Content/images/"
end
