class Book < ActiveRecord::Base
  enum availability: [:available, :unavailable]
end
