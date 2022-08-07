require_relative 'hard_to_find_path/secret'
# in a real scenario this wouldn't be required explicitly!

Secret.super_secret_method
#=> "Yes I'm messing your app and you'll never find me! >:) Muhahaha"

# If the method is defined as a Class method:
puts Secret.method(:super_secret_method).source_location
#=> $CODE_PATH/hard_to_find_path/secret.rb 2
#=> $CODE_PATH = where you are storing the repo

# If the method is defined as an Object method:
puts Secret.new.method(:secret_method_for_obj).source_location
#=> $CODE_PATH/hard_to_find_path/secret.rb 6
