module SpreeItISAPresent
	module Spree
		module OrderDecorator
			extend ActiveSupport::Concern

			prepended do
				has_one :present_note, class_name: 'Spree::PresentNote', dependent: :destroy
				accepts_nested_attributes_for :present_note, reject_if: :all_blank
			end

			def present_note_with_default
				present_note || buld_present_note
			end
		end
	end
end

spree::order.prepend SpreeItISAPresent::Spree::OrderDecorator
