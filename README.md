# helper-methods-part-1-and-2

There is no target for this project.

NOTES:

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

-Since the root page does NOT need a URL path (since it's always " / ", we can just short-hand it to this.)
