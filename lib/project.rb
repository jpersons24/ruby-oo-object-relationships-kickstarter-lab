class Project

    attr_accessor :title
    @@all = []

    def initialize(title)
        @title = title
        @@all << self
    end

    def self.all
        @@all
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def projects
        ProjectBacker.all.select do |proj|
            proj.project == self
        end
    end

    def backers
        projects.collect {|proj| proj.backer}
    end
end