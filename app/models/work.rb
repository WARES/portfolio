class Work < ApplicationRecord
  has_many :technologies
  accepts_nested_attributes_for :technologies,
                                reject_if: lambda { |attrs| attrs['name'].blank? }

  include Placeholder
  validates_presence_of :title, :subtitle, :body, :main_image, :thumb_image

  #Create a custom scope
  def self.angular
    where(subtitle: "Angular JS")
  end

  scope :ruby_on_rails_work_items, -> {where(subtitle: 'Ruby on Rails')}
  # end of custom scope

  after_initialize :set_defaults

  def set_defaults
    self.main_image ||= Placeholder.image_generator(600, 400)
    self.thumb_image ||= Placeholder.image_generator(350, 250)
    ## Equal to do
    ##if self.main_image == nil
    ##  self.main_image = "http://placehold.it/350x200"
    ##end

  end
end
