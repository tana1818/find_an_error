$(function() {

////////////////////////////////////////////////////////////////////////////////
//トップページドロップダウンメニュー
////////////////////////////////////////////////////////////////////////////////

  $(function() {
    $('.icon').click(function(){
      $('.user-menu').fadeToggle(300);
    });
  });

  $(function() {
    $('.info').click(function(){
      $('.info-menu').fadeToggle(300);
    });
  });


});


//実験用
// $(document).click(function() {
// console.log("hoge")
// })
