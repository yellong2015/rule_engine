class Test < ApplicationRecord
  def result_for_human
    if result.present?
      data = JSON.parse(result)

      rule_set_name = data["rule"]["name"]
      task_desc = data["task"]["name"] + " " + data["task"]["content"]

      "匹配规则 #{rule_set_name}, 执行 #{task_desc}"
    end

  end
end
