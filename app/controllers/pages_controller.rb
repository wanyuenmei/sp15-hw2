class PagesController < ApplicationController
  def home
    @baz = Foobar.baz ["1", "2", "3", "3", "4", "5", "10", "11", "100"]
  end

  def stringify
    @text = "You are nothing!"
  end

  def age
  end

  def person
    @me = Person.new(params[:name], params[:age])
    @introduction = @me.introduce
    @birth_year = @me.birth_year.to_s
    @nickname = @me.nickname
  end
end
