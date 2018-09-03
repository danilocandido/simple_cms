class Subject < ApplicationRecord
  scope :visible, lambda { where(:visible => true) }
  scope :invisible, lambda { where(:visible => true) }
  scope :newest_first, lambda { order('created_at DESC') }
  scope :search, lambda {|query| where(['name LIKE ?', "%#{query}%"])}
end
