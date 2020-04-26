class Comment < ApplicationRecord
    belongs_to :account , optional: true
    belongs_to :post, optional: true
end
