class List < ApplicationRecord
    acts_as_list

    has_many :cards, ->{ order(position: :asc)}, dependent: :destroy

    scope :sorted, ->{ order(position: :asc)} #to use in controller

    validates :name, presence: true

end