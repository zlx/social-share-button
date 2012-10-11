# Social Share Button

This is a gem to helper you quick create a share feature in you Rails apps.

# Sites list

* Facebook
* Twitter
* Google+
* Tumblr
* Pinterest
* stumbleupon
* VK
* sina weibo

## Install

In your `Gemfile`:

```ruby
gem 'social-share-button', :git => 'git://github.com/zlx/social-share-button.git'
```

And install it:

```bash
$ bundle install
$ rails generate social_share_button:install
```

## Configure

You can config `config/initializes/social_share_button.rb` to choose which site do you want to use:

```ruby
SocialShareButton.configure do |config|
  config.allow_sites = %w(twitter facebook google_plus weibo douban tqq renren qq kaixin001 baidu google_bookmark)
end
```

## Usage

You need add require css,js file in your app assets files:

`app/assets/javascripts/application.coffee`

```
#= require social-share-button
```

`app/assets/stylesheets/application.scss`

```
*= require social-share-button
```

Then you can use `social_share_button_tag` helper in views, for example `app/views/posts/show.html.erb`

```erb
<%= social_share_button_tag(@post.title) %>
```

And you can custom rel attribute:

```erb
<%= social_share_button_tag(:url => "http://www.buychina.com", :title => "Buy in China", :locale => :en, :html => {:style => "margin-left: 19px; margin-top: 5px;"}) %>
```

## Demo

[http://www.buychina.com/items/mini-650-hexa-frame-xptunusokhl](http://www.buychina.com/items/mini-650-hexa-frame-xptunusokhl)
