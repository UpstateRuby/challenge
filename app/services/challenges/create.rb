module Challenges
  class Create
    include ActiveModel::Model

    attr_accessor :name, :rules, :duration_in_days

    validates :name,
              presence: true,
              length: {maximum: 255}
    validates :rules, presence: true
    validates :duration_in_days,
            presence: true,
            numericality: { only_integer: true, greater_than: 0 }
  end
end
