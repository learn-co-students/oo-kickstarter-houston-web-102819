class Project

  @@all = []
  attr_reader :backers, :title
  def initialize(title)
    @backers = []
    @title = title
    @@all << self
  end

  def add_backer(backer)
    @backers.push(backer)
    backer.backed_projects << self

  end
  
  def self.all
    @@all
  end
  
end