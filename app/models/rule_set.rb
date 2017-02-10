class RuleSet < ApplicationRecord
  has_many :rule_set_actions
  has_many :tasks, through: :rule_set_actions
  has_many :rules

  accepts_nested_attributes_for :rule_set_actions
  accepts_nested_attributes_for :rules
end
