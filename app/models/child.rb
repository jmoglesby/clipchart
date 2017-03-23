class Child < ApplicationRecord
  validates :name, presence: true,
                    length: {minimum: 2}

  enum color: [ :Red, :Orange, :Yellow, :Green, :Pink, :Blue, :Purple ]
end
