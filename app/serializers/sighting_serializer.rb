class SightingSerializer
  include FastJsonapi::ObjectSerializer
  include FastJsonapi::ObjectSerializer
  attributes :created_at
  belongs_to :bird
  belongs_to :location

end
