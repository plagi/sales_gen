class MinusWord < ActiveRecord::Base
  belongs_to :word
  belongs_to :ad_category
end
