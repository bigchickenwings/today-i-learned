# You'll need Rails to use ActiveRecord!
class Node < ApplicationRecord
  belongs_to  :parent, class_name: 'Node', optional: true
  has_many    :children, class_name: 'Node', foreign_key: :parent_id, dependent: :destroy
end

# BEFORE
root       = Node.create! value: "default value", parent: nil
child      = Node.create! value: "default value", parent: root
grandchild = Node.create! value: "default value", parent: child

# AFTER
factory    = Node.create_with value: "default value", parent: nil
root       = factory.create!
child      = factory.create! parent: root
grandchild = factory.create! parent: child
