class Survey < ApplicationRecord
  has_many :questions, dependent: :destroy
  before_save(:titleize_survey, uniqueness: true)

  validates_length_of :title, maximum: 20
  validates :title, presence: true, uniqueness: true

  private
    def titleize_survey
      self.title = self.title.titleize
    end
end