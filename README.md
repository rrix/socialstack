Rebel Foundation Opinions
=========================

RebelHold as a collective is highly opinionated. Rebel Foundation has taken Rails 3.2 and layered our operating opinions right on top of it.

So, if you like MongoDB and Mongoid, Haml, Rspec, FactoryGirl, and Heroku, you've chosen the right project to use as your base.

We've left this completely authentication agnostic since that is very much in flux right now. Everything else is ready to go. We've also gotten rid of view and helper test autogeneration. We prefer model, controller, and request (also known as integration) tests.

Every model you generate will a proper Mongoid Document and proper factory, all tests generated will be rspec tests, and there won't as much useless crap generated.

Instructions
------------

For those rvm users we've included a rvmrc. Just:

cp rvmrc .rvmrc
cd ..

And cd back in to your project.

Accept the rvmrc

gem install bundler
bundle

And you're ready to go.

So strap this to your computer and ...

Welcome to Rails according to RebelHold!
----------------------------------------

Rails is a web-application framework that includes everything needed to create
database-backed web applications according to the Model-View-Control pattern.

This pattern splits the view (also called the presentation) into "dumb"
templates that are primarily responsible for inserting pre-built data in between
HTML tags. The model contains the "smart" domain objects (such as Account,
Product, Person, Post) that holds all the business logic and knows how to
persist themselves to a database. The controller handles the incoming requests
(such as Save New Account, Update Product, Show Post) by manipulating the model
and directing data to the view.

In Rails, the model is handled by what's called an object-relational mapping
layer entitled Active Record. This layer allows you to present the data from
database rows as objects and embellish these data objects with business logic
methods. You can read more about Active Record in
link:files/vendor/rails/activerecord/README.html.

The controller and view are handled by the Action Pack, which handles both
layers by its two parts: Action View and Action Controller. These two layers
are bundled in a single package due to their heavy interdependence. This is
unlike the relationship between the Active Record and Action Pack that is much
more separate. Each of these packages can be used independently outside of
Rails. You can read more about Action Pack in
link:files/vendor/rails/actionpack/README.html.


Debugging Using Pry
-------------------

Debugging with Pry is wonderful. This means that you can break out of
execution at any point in the code, investigate and change the model, and then,
resume execution! You need to install ruby-debug to run the server in debugging
mode. With gems, use <tt>sudo gem install ruby-debug</tt>. Example:

  class WeblogController < ActionController::Base
    def index
      @posts = Post.all
      binding.pry
    end
  end

So the controller will accept the action, run the first line, then present you
with a IRB prompt in the server window. Here you can do things like:

```ruby
  >> @posts
  => "[#<Post:0x14a6be8
          @attributes={"title"=>nil, "body"=>nil, "id"=>"1"}>,
       #<Post:0x14a6620
          @attributes={"title"=>"Rails", "body"=>"Only ten..", "id"=>"2"}>]"
  >> @posts.first.title = "hello from a debugger"
  => "hello from a debugger"
```

...and even better, you can examine how your runtime objects actually work:

```ruby
  >> f = @posts.first
  => #<Post:0x13630c4 @attributes={"title"=>nil, "body"=>nil, "id"=>"1"}>
  >> f.methods
```

Finally, when you're ready to resume execution, you can enter "cont".

You can also step through the code using 'n', thanks to the pry-debug gem.

Console
-------

The console is a Ruby shell, which allows you to interact with your
application's domain model. Here you'll have all parts of the application
configured, just like it is when the application is running. You can inspect
domain models, change values, and save to the database. Starting the script
without arguments will launch it in the development environment.

To start the console, run <tt>rails console</tt> from the application
directory.

Options:

* Passing the <tt>-s, --sandbox</tt> argument will rollback any modifications
  made to the database.
* Passing an environment name as an argument will load the corresponding
  environment. Example: <tt>rails console production</tt>.

To reload your controllers and models after launching the console run
<tt>reload!</tt>

More information about irb can be found at:
link:http://www.rubycentral.org/pickaxe/irb.html
