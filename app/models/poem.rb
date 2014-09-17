class Poem
  include Mongoid::Document
  field :title, type: String
  field :author, type: String
  field :content, type: String

  belongs_to :poet
end
