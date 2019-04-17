$(document).on('turbolinks:load',function(){

////////////////////////////////////////////////////////////////////////////////
//トップページドロップダウンメニュー
////////////////////////////////////////////////////////////////////////////////

  $(function() {
    $('.icon').hover(function(){
      $('.user-menu').fadeToggle(300);
    });
  });

  $(function() {
    $('.info').click(function(){
      $('.info-menu').fadeToggle(300);
    });
  });

  $(function() {
    $('.tweet').hover(function(){
      $('.tweet-menu').fadeToggle(300);
    });
  });

});


//実験用
// $(document).click(function() {
// console.log("hoge")
// })
