Spree.ready ($) ->
#$ ->
  if ($ 'form#update-cart').is('*')
    ($ 'form#update-cart a.delete').show().one 'click', ->
      ($ this).parents('.line-item').first().find('input.line_item_quantity').val 0
      ($ this).parents('form').first().submit()
      false

  ($ 'form#update-cart').submit ->
    ($ 'form#update-cart #update-button').attr('disabled', true)
  
  alert "Auto submit didn't really work...hmmm!"
  ($ '#romancart-link').click ->
    ($ this).parents('form').submit()
    
  #($ '#romancart-link').click()
  
  # Interesting that calling 'submit()' directly didn't work...
  #($ this).parents('form').submit()