class RuleEngine
  attr_accessor :engine
  attr_accessor :rule_set_book

  def initialize
    @engine = Ruleby::Core::Engine.new
    @rule_set_book = RuleSetBook.new(@engine).rules
  end

  def assert(input_object)
    engine.assert(input_object)
    engine.match
  end

  def match
    engine.match
  end

  def facts
    engine.facts
  end

  def refresh_rules
    rule_set_book.rules
  end

  def self.init
    if ActiveRecord::Base.connection.table_exists? 'rule_sets'
      @@engine = RuleEngine.new
    end
  end

  def self.engine
    @@engine
  end

  def self.match
    @@engine.match
  end

  def self.facts
    @@engine.facts
  end

  def self.assert(input_object)
    @@engine.assert(input_object)
  end
end
