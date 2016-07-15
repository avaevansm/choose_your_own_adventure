require 'bundler/setup'
require 'active_record'

class Page < ActiveRecord::Base
  has_one :choice1, class_name: "Page"
  has_one :choice2, class_name: "Page"

end
