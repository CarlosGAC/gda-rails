$( document ).ready(function() {

  var $calcular = $("#btn_calcular");

  var $prices = $(".prices_class");
  var $routes = $(".routes_class");

  var $result = $("#result");
  var $breakdown = $("#breakdown");

  var prices = $prices.data('prices');
  var routes = $routes.data('routes');

  var route;
  var price;
  var hasIva;

  var total = 0;
  var iva   = 0;
  $("#btn_calcular").click(function() {
    $breakdown.empty();
    console.log("Button click");
    route = $('#route_price_id').val();
    price = $('#price_category_id').val();
    hasIva = $('#has_iva').is(":checked");
    console.log(route);
    console.log(price);
    console.log(hasIva);
    console.log(prices);
    console.log(routes);

    $.each(prices, function (key, value) {
      if(price == value.category) {
        price = value;
        console.log(price);
      }
    });

    $.each(routes, function (key, value) {
      if(route == value.name) {
        route = value;
        console.log(route);
      }
    });


    if(hasIva) {
      total = ((price.km_price * route.kilometers) + route.booth_price + price.base_price);
      iva = total * 0.17;
      total = iva + total;
    } else {
      total = (price.km_price * route.kilometers) + route.booth_price + price.base_price;
      iva = 0;
    }


    $result.text("Precio Total: " + total);
    $breakdown.append('<li>Precio por kilometro: ' + price.km_price + '</li>')
    $breakdown.append('<li>Cantidad de kilometros: ' + route.kilometers + '</li>')
    $breakdown.append('<li>Casetas: ' + route.booth_price + '</li>')
    $breakdown.append('<li>Banderazo: ' + price.base_price + '</li>')
    $breakdown.append('<li>IVA: ' + iva + '</li>')
    total = null;
    route = null;
    price = null;
    hasIva = null;
    iva = null;
  });


});
