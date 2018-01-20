class WelcomeController < ApplicationController
  def index
    @universities = University.all
  end
end
