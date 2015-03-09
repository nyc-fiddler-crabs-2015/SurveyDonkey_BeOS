require 'pry'

class Survey < ActiveRecord::Base
  belongs_to :user
  has_many :questions

  def calc_results
    selections_quantity = {}
    self.questions.each do |question|
      question.choices.each do |choice|
       selections_quantity[choice] = choice.results.length
     end
   end
  selections_quantity
  end

end
