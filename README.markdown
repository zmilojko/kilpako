# Kilpako.com

This code might some day become kilpako.com website.

# Notes for future development

1. If you are deploying on Heroku with Rails 3.2 only, you may want to set:

       config.assets.initialize_on_precompile = false

   On config/application.rb forcing your application to not access the DB
   or load models when precompiling your assets.

2. You can copy Devise views (for customization) to your app by running:

       rails g devise:views
