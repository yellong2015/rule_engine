module ApplicationHelper

  def option_for_actions
    Task.all.pluck(:name, :content, :id).map do |task|
      ["#{task[0]} #{task[1]}", task[2] ]
    end
  end
end
