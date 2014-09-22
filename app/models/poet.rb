class Poet
  
  include Mongoid::Document
  include Mongoid::Paperclip
  
  field :name, type: String 
  field :origin, type: String

  belongs_to :user
  has_many :poems

  has_mongoid_attached_file :avatar , 
    :styles => {
      :original => ['1920x1680>'],
      :small    => ['100x100#'],
      :medium   => ['250x250'],
      :large    => ['500x500>']
    }

  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
  validates_attachment_size :avatar, :less_than => 5.megabytes

end





