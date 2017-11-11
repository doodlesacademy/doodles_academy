class PagesController < ApplicationController
  def home
    @sidebar = { content: "Lorem ipsum from controller into react component" }
  end

  def view
  end
end
