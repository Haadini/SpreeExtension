module SpreeItIsPresent
	module Spreee
		module CheckoutControllerDecorator
			extend ActiveSupport::concern


			private

			def permited_checkout_attributes

				super + [present_note_attributes: present_note_attributes]
			end

			def present_note_atrribute
				%i[recipient_name dedication]
			end
		end
	end
end

spree::CheckoutController.prepend SpreeItISAPresent::Spree::CheckoutControllerDecorator