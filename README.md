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

3. With the :as option symbol, we get to name the method 
