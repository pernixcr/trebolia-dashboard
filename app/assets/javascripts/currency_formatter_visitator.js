$(function(){
_.each( $(".monto"), function(valor){
  var monto = valor.innerText;
  valor.innerText = parseInt(monto).formatMoney();
});})
