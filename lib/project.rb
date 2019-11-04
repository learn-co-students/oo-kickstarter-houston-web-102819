class Project
    attr_accessor :backers
    attr_reader :title

    @@all = []

    def self.all
        @@all
    end

    def initialize(title)
        @title = title
        @backers = []
        @@all.push(self)
    end

    def add_backer(backer)
        @backers.push(backer)
        backer.backed_projects.push(self)
    end

end