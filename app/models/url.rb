class Url < ApplicationRecord
  validates :url, :presence => true

  def to_params
    shorturl
  end
end
