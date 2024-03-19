class Mypart < ApplicationRecord
belongs_to :algo
has_many :mots
accepts_nested_attributes_for :mots,allow_destroy:true
has_many :drawings
accepts_nested_attributes_for :drawings,allow_destroy:true
has_many :scripts
accepts_nested_attributes_for :scripts,allow_destroy:true
end
