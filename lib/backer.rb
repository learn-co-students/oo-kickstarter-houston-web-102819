class Backer
    attr_accessor :backed_projects
    attr_reader :name

    @@all = []

    def self.all
        @@all
    end

    def initialize(name)
        @name = name
        @backed_projects = []
        @@all.push(self)
    end

    def back_project(project)
        @backed_projects.push(project)
        project.backers.push(self)
    end

end