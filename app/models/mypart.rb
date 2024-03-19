class Mypart < ApplicationRecord
belongs_to :algo
has_many :mots
has_many :drawings
has_many :scripts
end
