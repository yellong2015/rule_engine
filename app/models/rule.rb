class Rule < ApplicationRecord
  belongs_to :rule_set, required: false
end
