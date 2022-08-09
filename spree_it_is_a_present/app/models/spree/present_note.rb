module Spree
	class PresentNote < Spree::Base
		belogs_to :order, class_name: 'Spree::Order'
	end
end