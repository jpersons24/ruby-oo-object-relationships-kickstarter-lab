class Backer

    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def projects
        ProjectBacker.all.select do |proj|
            proj.backer == self
        end
    end

    def backed_projects
        projects.collect do |item|
            item.project
        end
    end

end