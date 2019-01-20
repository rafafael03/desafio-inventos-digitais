class Form < ApplicationRecord
	validates :name, presence: true
	validates :phone, length: {minimum: 10, maximum:15}
	validates :address, presence: true
	validates :number, presence: true
	validates :zip_code, length: {minimum: 8, maximum:9}
	validates :bob, presence: true, unless: -> (form){form.kevin.present? || form.stuart.present?}
	validates :kevin, presence: true, unless: -> (form){form.bob.present? || form.stuart.present?}
	validates :stuart, presence: true, unless: -> (form){form.bob.present? || form.kevin.present?}
end
