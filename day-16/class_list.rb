users = [
  {first_name: 'John', last_name: 'Doe'},
  {first_name: 'Jenny', last_name: 'Smith'},
  {first_name: 'Clara', last_name: 'Ortega'}
]

first_by_name = users.sort_by {|hash| hash[:first_name]}.first
# => {:first_name=>"Clara", :last_name=>"Ortega"}

first_by_name = users.min_by {|hash| hash[:first_name]}
# => {:first_name=>"Clara", :last_name=>"Ortega"}
