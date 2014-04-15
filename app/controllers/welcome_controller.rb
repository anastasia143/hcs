class WelcomeController < ApplicationController
    def index
        @users = User.all
        @tasks = Task.all
        @datafile = Datafile.new
    end
end
