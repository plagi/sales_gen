class PlusWord < ActiveRecord::Base
  belongs_to :keyword
  belongs_to :word
end
