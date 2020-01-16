# PFtWikipedia

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/p_ft_wikipedia`. To experiment with that code, run `bin/console` for an interactive prompt.

Gem to trace url Wikipedia util url:
https ://en.wikipedia.org/wiki/Philosophy

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'p_ft_wikipedia'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install p_ft_wikipedia

## Usage

gem build p_ft_wikipedia.gemspec

# To install gem:
gem install ./p_ft_wikipedia-0.0.1.gem

ruby -I test:lib test/p_ft_wikipedia_test.rb

to check all TODO config file filled:
grep -Hrn 'TODO' –color=always .

# to install nokogiri dependencies:
gem install nokogiri

to test with irb:
irb -Ilib -rft_wikipedia

en une line:
gem build p_ft_wikipedia.gemspec && gem install ./p_ft_wikipedia-0.0.1.gem && gem install nokogiri && irb -Ilib -rft_wikipedia

Puis à l'interieur:
Ft_wikipedia.search("Kiss")

(si une erreur ds le gemspec apparait: faire un "git add ." cela devrait corriger l'erreur.) C'est du a un oubli de la correction du gem au niveau du repository git
## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/p_ft_wikipedia.
