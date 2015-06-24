class Question < ActiveRecord::Base

  validates :title, length: { minimum: 0, too_short: "%{count} characters is the minimum allowed"  },
    presence: true,
    uniqueness: true

    validates :body,
      length: { minimum: 0, too_short: "%{count} characters is the minimum allowed" },
      presence: true,
      uniqueness: true
end


  #REPLACE ON LIKE 3 validates :title, length: { minimum: 40, too_short: "%{count} characters is the minimum allowed"  },
  #REPLACE ON LIKE 8 validates :title, length: { minimum: 150, too_short: "%{count} characters is the minimum allowed"  },
