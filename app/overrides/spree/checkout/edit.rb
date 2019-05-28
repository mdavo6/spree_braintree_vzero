Deface::Override.new(
  virtual_path: 'spree/checkout/edit',
  name: 'Set order email using Paypal email',
  insert_after: 'erb[loud]:contains("form_for")',
  text: '<% @order.email ||= params[:paypal_email] %>'
)
