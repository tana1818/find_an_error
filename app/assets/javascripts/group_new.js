$(function(){

  $(function(){
    $('.group__title-new').click(function(){
      $('.group__title-new').css('background-color','white');
      $('.group__title-edit').css('background-color','rgb(245, 245, 245)');
      $('.group__title-favorite').css('background-color','rgb(245, 245, 245)');
      $('.group__first').css('display','block');
      $('.group__second').css('display','none');
    });
  });

  $(function(){
    $('.group__title-edit').click(function(){
      $('.group__title-edit').css('background-color','white');
      $('.group__title-new').css('background-color','rgb(245, 245, 245)');
      $('.group__title-favorite').css('background-color','rgb(245, 245, 245)');
      $('.group__first').css('display','none');
    });
  });

  $(function(){
    $('.group__title-favorite').click(function(){
      $('.group__title-favorite').css('background-color','white');
      $('.group__title-new').css('background-color','rgb(245, 245, 245)');
      $('.group__title-edit').css('background-color','rgb(245, 245, 245)');
      $('.group__first').css('display','none');
      $('.group__second').css('display','block');
    });
  });

});
