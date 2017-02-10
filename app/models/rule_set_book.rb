require 'ruleby'
class RuleSetBook < Ruleby::Rulebook
  def rules
    RuleSet.all.each do |rs|
      rules = rs.rules.map do |r|
        [InputObject, :m, m.__send__(r.atom.to_sym).send(r.operator.to_sym, r.value)]
      end
      
      operator = (rs.operator || "AND").upcase.to_sym
      rule rs.name.to_sym, {:priority => rs.priority}, self.send(operator, *rules) do |v|  
        rs.tasks.map do |t|
          t.invoke(v[:m], rs)
        end
      end
    end
  end
end
