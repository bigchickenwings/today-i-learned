# Day 03 - 01/AUG/2022
ActiveRecord validations with booleans

A variable with the value of `false` does not behave as it would be expected with the `present?` method. It considers that the variable does not have a value if it's value is `false`.
```ruby
validates :db_column, inclusion: { in: [true, false] , presence: true}
```

Similarly, it considers a variable to be `blank` if it's value is `false`. `blank?` is the "real" method, that checks for the abscence of a value. `present?` is literally the opposite of blank, `!blank?`.