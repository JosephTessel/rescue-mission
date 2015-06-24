class Answer < ActiveRecord::Base

  validates :title, length: { minimum: 1, too_short: "%{count} characters is the minimum allowed"  },
    presence: true,
    uniqueness: true

    validates :answer,
      length: { minimum: 1, too_short: "%{count} characters is the minimum allowed" },
      presence: true,
      uniqueness: true
end
