class Question < ActiveRecord::Base

  validates :title, length: { minimum: 40, too_short: "%{count} characters is the minimum allowed"  },
    presence: true,
    uniqueness: true

    validates :body,
      length: { minimum: 150, too_short: "%{count} characters is the minimum allowed" },
      presence: true,
      uniqueness: true
end
