class Task < ApplicationRecord
  def invoke(input_object, rule_set)
    p "#{name} #{content}"
    if input_object[:test_id]
      Test.find(input_object[:test_id]).update(result: {rule: rule_set, task: self}.to_json)
    end
  end
end
