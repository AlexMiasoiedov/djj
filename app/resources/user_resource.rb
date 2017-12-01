class UserResource < JSONAPI::Resource
  has_many :locations, :relation_name => :locations
  attribute :email
end
