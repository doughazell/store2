Deface::Override.new(:virtual_path => 'spree/orders/_form',
                     :name => 'romancart_form',
                     :replace => "price")

# alt+V = √
# <input type="hidden" name="price" value="$19.99">
# :erb => "<%= form_for :order, :url => populate_orders_path, :remote => true do |f| %>",
