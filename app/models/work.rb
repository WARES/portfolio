class Work < ApplicationRecord
  validates_presence_of :title, :subtitle, :body, :main_image, :thumb_image

  #Create a custom scope
  def self.angular
    where(subtitle: "Angular JS")
  end

  scope :ruby_on_rails_work_items, -> {where(subtitle: 'Ruby on Rails')}
  # end of custom scope

  after_initialize :set_defaults

  def set_defaults
    self.main_image ||= "http://placehold.it/600x400"
    self.thumb_image ||= "http://placehold.it/350x200"
  end
end
