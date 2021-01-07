module Spree::TaxonsControllerDecorator
  def self.prepended(base)
    base.include Spree::PageTracker
    track_actions [:show]
  end
end

::Spree::TaxonsController.prepend(Spree::TaxonsControllerDecorator)