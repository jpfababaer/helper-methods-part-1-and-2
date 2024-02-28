# helper-methods-part-1-and-2

There is no target for this project.

NOTES:

============================================
Cleaning up config/routes.rb:

1. Anywhere there is old Hash syntax = replace it with the new Hash syntax. We are learning how to industrialize our code for other developers. 

-Use colons instead of the hash rockets and remove the curly braces around the HASH arguments.

-One step beyond: creating the routes with hash rockets

```ruby
get("/movies" => "movies#create")
```

-> movies is the controller name and whatever is after the " # " is the action. 

-> Homepage shortcut: we can go further into short-handing the root route by:

```ruby
root "movies#index"
```

-Since the root page does NOT need a URL path (since it's always " / ", we can just short-hand it to this.

NEXT: app/views/movies/index
============================================
Route helper methods:

2. In the bash prompt, run the command: rails routes.

This returns: 

Prefix Verb URI Pattern                                Controller#Action
        GET    /                                         movies#index
movies POST   /movies(.:format)                          movies#create
movies_new GET    /movies/new(.:format)                      movies#new
        GET    /movies(.:format)                         movies#index
        GET    /movies/:id(.d:format)                     movies#show
        PATCH  /movies/:id(.:format)                     movies#update
        GET    /movies/:id/edit(.:format)                movies#edit
       DELETE /movies/:id(.:format)                     movies#destroy

-What is a Prefix? 
  -this means that Rails has defined a method that we can call ANYWHERE in our view templates, controller action, etc. This returns the path as a string. 

-Therefore, using an ERB tag, using these prebuilt methods from Rails, we can return the route URLs as a string. 

-For dynamic webpages (i.e. webpages requiring the params), their methods are NOT defined yet. We can define those ourselves. 

NEXT: routes.rb
====================================================

Basic feature of an automated spec: from spec/features/1_basic_spec.rb

describe "The /movies/new page" do
  # ...
  it "creates a movie successfully", point: 1 do
    visit "/movies/new"

    fill_in "Title", with: "My test movie"
    fill_in "Description", with: "description"
    click_button "Create Movie"

    expect(page).to have_content("Movie created successfully."),
      "Expected to fill in the new movie form, click 'Create Movie', and be redirected to the movie index with a success notice"
  end

-This test does what a user is expected to do when given a certain page. 

Flow:

1. We "describe" a URL path that we want to test (i.e. /movies/new)

2. Run a test that checks that "it creates a movies successfully".

3. This is where we begin what is expected of a user: the test block begins by...
        -...visiting the URL path = user places the URL into the address box
        -the test "fill_in" the "Title" and "Description"... = user inputs their information to the box
        -...then "click_button" of "Create Movie" = user clicks the "Create Movie" button 
        -The test "expect" the ending "page" to "have_content" of "Movie created successfully" = end-point page should display this message or the test fails. 
