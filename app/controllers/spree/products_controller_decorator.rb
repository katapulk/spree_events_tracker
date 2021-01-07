module Spree::ProductsControllerDecorator
  def self.prepended(base)
    base.include Spree::PageTracker
    track_actions [:show, :index]
  end
end

::Spree::ProductsController.prepend(Spree::ProductsControllerDecorator)