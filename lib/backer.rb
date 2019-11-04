class Backer
  attr_reader :backed_projects, :name
  
  def initialize(name)
    @backed_projects = []
    @name = name
  end

  def back_project(project)
    @backed_projects << project
    project.backers << self
  end

end

# bob = Backer.new(bob)

#  hoverboard = Project.new("hoverboard")
# bob.back_project(hoverboard)
