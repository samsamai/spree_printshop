$ ->
  Spree.addImageHandlers = ->
    thumbnails = ($ '#product-images ul.thumbnails')
    ($ '#main-image').data 'selectedThumb', ($ '#main-image img').attr('src')
    thumbnails.find('li').eq(0).addClass 'selected'
    thumbnails.find('a').on 'click', (event) ->
      ($ '#main-image').data 'selectedThumb', ($ event.currentTarget).attr('href')
      ($ '#main-image').data 'selectedThumbId', ($ event.currentTarget).parent().attr('id')
      ($ this).mouseout ->
        thumbnails.find('li').removeClass 'selected'
        ($ event.currentTarget).parent('li').addClass 'selected'
      false

    thumbnails.find('li').on 'mouseenter', (event) ->
      ($ '#main-image img').attr 'src', ($ event.currentTarget).find('a').attr('href')

    thumbnails.find('li').on 'mouseleave', (event) ->
      ($ '#main-image img').attr 'src', ($ '#main-image').data('selectedThumb')

  Spree.showVariantImages = (variantId) ->
    ($ 'li.vtmb').hide()
    ($ 'li.tmb-' + variantId).show()
    currentThumb = ($ '#' + ($ '#main-image').data('selectedThumbId'))
    if not currentThumb.hasClass('vtmb-' + variantId)
      thumb = ($ ($ 'ul.thumbnails li:visible.vtmb').eq(0))
      thumb = ($ ($ 'ul.thumbnails li:visible').eq(0)) unless thumb.length > 0
      newImg = thumb.find('a').attr('href')
      ($ 'ul.thumbnails li').removeClass 'selected'
      thumb.addClass 'selected'
      ($ '#main-image img').attr 'src', newImg
      ($ '#main-image').data 'selectedThumb', newImg
      ($ '#main-image').data 'selectedThumbId', thumb.attr('id')

  Spree.updateVariantPrice = ->
    selection_hash = {}
    for s in selects
      selection_hash[s.name] = s.value
    
    found_combination = _.findWhere gon.combi, selection_hash 
    if found_combination is undefined
      ($ '.price.selling').text( "Combination Not Found, please ring for quote" )
      ($ 'div.add-to-cart').hide()
    else 
      ($ '.price.selling').text( found_combination["Price"] )
      ($ 'div.add-to-cart input').attr 'name', ( "variants[" + found_combination["id"] + "]")
      ($ 'div.add-to-cart').show()
   
  # alert( gon.combi[0]["Size"] )
  selects = ($ '#product-variants select')
  if selects.length > 0
    Spree.showVariantImages ($ '#product-variants input[type="select"]').eq(0).attr('value')
    Spree.updateVariantPrice()

#   Spree.addImageHandlers()

  selects.change (event) ->
    Spree.showVariantImages @value
    Spree.updateVariantPrice()

        