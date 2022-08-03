# -----------------------------
# both blank? and present? are methods from the ActiveSupport gem.
# Here I'm basically getting their source code to use them instead, with small adaptations.
def blank? (var)
  respond_to?(:empty?) ? !!empty? : !var
end

def present? (var)
  !blank?(var)
end
# -----------------------------

var_is_false = false
var_is_true = true
var_is_text = "just a string"

puts "Notice the 'weird' behavior of false:"
puts "blank? >> #{blank?(var_is_false)}"
puts "present? >> #{present?(var_is_false)}"

puts "\nNow notice what is the normal behavior, that applies to a truthy value and to a normal value"
puts "Truthy bool:"
puts "blank? >> #{blank?(var_is_true)}"
puts "present? >> #{present?(var_is_true)}"
puts "\nString:"
puts "blank? >> #{blank?(var_is_text)}"
puts "present? >> #{present?(var_is_text)}"