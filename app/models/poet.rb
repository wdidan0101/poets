class Poet
  
  include Mongoid::Document
  
  field :name, type: String 
  field :email, type: String	
  field :origin, type: String

  belongs_to :user
  has_many :poems
end
