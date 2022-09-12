class Show < ActiveRecord::Base
  belongs_to :networks
    has_many :characters
    has_many :actors, through: :characters
  
    def actors_list
      self.actors.map { |actor| actor.full_name }
    end
  
    def network
      self.networks.call_letters
    end
  
end