class Tender < ActiveRecord::Base
  belongs_to :producer_company
  belongs_to :idea
end
