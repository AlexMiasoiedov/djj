class LocationResource < JSONAPI::Resource
  has_many :users, :relation_name => :users
  attribute :name
end
