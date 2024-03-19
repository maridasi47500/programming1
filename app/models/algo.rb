class Algo < ApplicationRecord
has_many :myparts
accepts_nested_attributes_for :myparts
end
