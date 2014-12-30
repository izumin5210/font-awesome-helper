# FontAwesomeHelper

## Installation

Add this to your Gemfile:

```ruby
gem 'font-awesome-helper
```

and then run `bundle install`.

## Usage

```ruby
fa_icon 'github'
# => <i class="fa fa-github"></i>

fa_icon('github') { |i| "#{i} izumin5210" }
# => <i class="fa fa-github"></i> izumin5210

fa_icon('caret-down') { |i| "dropdown #{i}" }
# => dropdown <i class="fa fa-caret-down"></i>

fa_icon 'home fw'
# => <i class="fa fa-home fa-fw"></i>

fa_icon 'quote-left border 3x', class: 'pull-left'
# => <i class="fa fa-quote-left fa-border pull-left"></i>

fa_ul do
  fa_li('twitter') { 'twitter.com/izumin5210' }
  fa_li('github') { 'github.com/izumin5210' }
  fa_li('tumblr') { 'tumblr.izumin.info' }
end

# => <ul class="fa-ul">
# =>   <li><i class="fa fa-twitter fa-li"></i>twitter.com/izumin5210</li>
# =>   <li><i class="fa fa-github fa-li"></i>github.com/izumin5210</li>
# =>   <li><i class="fa fa-tumblr fa-li"></i>tumblr.izumin.info</li>
# => </ul>
```

## License

FontAwesomeHelper is licensed under [MIT-LICENSE](http://opensource.org/licenses/MIT).
