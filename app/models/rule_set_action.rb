class RuleSetAction < ApplicationRecord
  belongs_to :task
  belongs_to :rule_set, required: false
end
