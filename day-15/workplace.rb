class ProjectManager < ApplicationRecord
  has_many :developers
end

class Developer < ApplicationRecord
  belongs_to :project_manager
end

ProjectManager.where.missing(:developers)
# This will return a list of ProjectManager that does NOT have
# any Developer associated to them

Developer.where.missing(:project_manager)
# This will return a list of Developer that does NOT belong
# to any ProjectManager