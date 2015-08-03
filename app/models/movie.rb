class Movie < ActiveRecord::Base

  validates :name, presence: true
  # validates :director
  # validates :description
  validates :rank, presence: true, numericality: { only_integer: true }

  scope :best_first, -> (total) { order('rank DESC').limit(total) }
  scope :best_first_all, -> { order('rank DESC') }

end
