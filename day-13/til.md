# Day 13 - 16/AUG/2022
Rails `create_with`

Credits to Sean Doyle for this one!

> You might already know about [create_with] if you’ve ever called [create_or_find_by], but did you know that you can call `create_with` directly on an Active Record class, without an ongoing query?
> It might be useful in implementation code, setup scripts, or even tests if you don’t have access to FactoryBot (edited)

[create_with]:https://edgeapi.rubyonrails.org/classes/ActiveRecord/QueryMethods.html#method-i-create_with
[create_or_find_by]:https://edgeapi.rubyonrails.org/classes/ActiveRecord/Relation.html#method-i-create_or_find_by