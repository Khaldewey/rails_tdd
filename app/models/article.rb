class Article < ApplicationRecord
 validates :title, presence: true

 def archived?
    Date.current > self.created_at + 30.days
 end
end
