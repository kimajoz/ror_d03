
# To run gems:
see deepthought/README.md file.

# Tutos:
https://www.railscarma.com/blog/technical-articles/how-to-create-a-ruby-gem/
https://guides.rubygems.org/make-your-own-gem/
https://rubyscube.blogspot.com/2006/06/comment-crer-un-gem.html

# How I created my first Deepthought Gems:
1) Create the gem with:
bundle gem deepthought

2) configure file :
vim deepthought.gemspec

3) then build the gem:
gem build deepthought.gemspec

4) Test you replaced all your 'TODO' config part:
grep -Hrn 'TODO' –color=always .

5) To check everything is working fine type:
bin/console
(if you haven't, install the require gems missing, ex:
gem install colorize

6) Install our Gem:
gem install ./deepthought-0.0.1.gem

7) Create test with minitests:

to run test individually:
ruby -I test:lib test/deepthought_test.rb

then run all test:
rake test
ou
bundle exec rake

to modify test:
vim test/deepthought_test.rb

To setup folder of the test files:
vim Rakefile

https://launchschool.com/blog/assert-yourself-an-introduction-to-minitest
https://www.sitepoint.com/minitest-shoulda/
https://coderwall.com/p/8yl45w/creating-a-test-rake-task-with-minitest

# Test avec shell ruby irb:
6a) optionnal) step 3 + 6:
gem build deepthought.gemspec && gem install ./deepthought-0.0.1.gem

- We start irb to test our gem:
irb -Ilib -rdeepthought

- then type inside:
Deepthought.respond("ds")
Deepthought.respond("The Ultimate Question of Life, the Universe and Everything")

# Understanding block of function code for reuse with Modules:

Warning ! Modules are not like classes(without new/initialize def functions):
http://ruby-for-beginners.rubymonstas.org/advanced/modules.html

# ERROR HANDLING:

0) Warning !!! You should not use the name of your future class for your project !!! Otherwise you will have a pb with default module name !!! It is not negotiable or need to be rebuilded.

1) Si impossible de faire un "gem build deepthought.gemspec"
donnant: deepthought-0.0.1 contains itself (deepthought-0.0.1.gem), check your files list
=> taper:
rm deepthought-0.0.1.gem
git add .
bundle install
gem build deepthought.gemspec

https://stackoverflow.com/questions/43194205/gem-contains-itself-error-for-cli-data-gem


2) Si il est impossible de faire un: "gem install ./deepthought-0.0.1.gem (Notamment à 42)
=> Installe ruby avec rvm ou asdf pour qu'il soit installe sur ta session et donc que tu aies les droits: (voir : https://rvm.io/rvm/install

ou simplement:
gpg --keyserver hkp://pool.sks-keyservers.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
curl -sSL https://get.rvm.io | bash -s stable --ruby
then reboot your computer.

3) if error: "undefined method `assert_not_equal'" occured
=> Add this two lines at the top of your test file(ex: test/p_deepthought_test.rb):
require "test/unit/assertions"
include Test::Unit::Assertions

All tests should now run !!

https://stackoverflow.com/questions/12317921/why-undefined-method-assert-equal-is-thrown-even-after-requiring-test-unit