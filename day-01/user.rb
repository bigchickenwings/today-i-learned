# this is a simple ruby file and it has no rails,
# so don't expect it to work!!

class User < ApplicationRecord
  # Default Scopes
  # now whenever we call User.all, it will be the same as
  # calling User.all.where(deleted: false).
  default_scope { where(deleted: false) }

  # Scope Merging
  # now we can call/filter specific users instead, as
  # User.expert or User.recently_active.
  scope :expert -> { where('created_at <= ?', Date.today - 100.weeks) }
  scope :recently_active -> { where('last_login >= ?', Date.today - 3.days) }
end

# ----------------------------------------
# Please note that as the scope result is an ActiveRecord::Relation object,
# there will never be two equal values, even if they do contain the same data/users.
# For that reason, we are comparing the count of the users.
# ----------------------------------------

# Default Scopes
User.all.count == User.all.where(deleted: false).count
#=> true

# Scope Merging
User.expert.recently_active.count == User.all.where(['created_at <= ?', Date.today - 100.weeks]).where(['last_login >= ?', Date.today - 3.days]).count
#=> true

# Unscoping
# any scope provided will be removed, even default scopes,
# so there will be no filters applied!
User.unscoped.all.count == User.all.count
#=> false