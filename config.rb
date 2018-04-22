require 'extensions/build_cleaner'

configure :build do
  activate :build_cleaner
  activate :directory_indexes
end

activate :livereload
activate :autoprefixer do |prefix|
  prefix.browsers = "last 2 versions"
  activate :livereload
end

activate :deploy do |deploy|
  deploy.build_before = true
  deploy.deploy_method = :git
end

page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

# With alternative layout
# page '/path/to/file.html', layout: 'other_layout'

# Proxy pages
# https://middlemanapp.com/advanced/dynamic-pages/

# proxy(
#   '/this-page-has-no-template.html',
#   '/template-file.html',
#   locals: {
#     which_fake_page: 'Rendering a fake page with a local variable'
#   },
# )

# Helpers
# Methods defined in the helpers block are available in templates
# https://middlemanapp.com/basics/helper-methods/

# helpers do
#   def some_helper
#     'Helping'
#   end
# end
