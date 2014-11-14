class Product < ActiveRecord::Base
  MIN_ID = 40001
  MAX_ID = Rails.env == 'test' ? 40010 : 49999

  validates :name, presence: { message: '名称必须填写'}

  include SerialNumber
  has_serial_number
end
