$(document).on('turbolinks:load',function(){

  $(function(){
    $('.issue__new-content-right__list-btn').click(function(){
      $('.issue__new-content-right__list-new').fadeToggle(100);
    });
  });

  $(".large-category > .a").click( function(){
    var categoryId = $(this, ".a").category_name();
    console.log(category_name);
  });

  // var large_category_id = $(".large-category__id")
  //
  // function appendCategoryId(category) {
  //   var html = `<%= c.hidden_field :parent_id, :value => category.id %>`
  //
  //   large_category_id.append(html);
  // }
  // function appendCategoryId(fail_comment){
  //   var html = `<p>
  //                 <div class = "fail_comment"${fail_comment}</div>
  //               </p>`
  //
  //   large_category_id.append(html);
  // }
  //
  // $('.large_category').on("click", function(){
  //   var input = $('.large_category').val();
  //   $.ajax({
  //     type: 'GET',
  //     url: '',
  //     data: { id: input},
  //     dataTpe: 'json'
  //   })
  //
  //   .done(function(category){
  //     $('.large-category__id').empty();
  //     if (category.length !== 0){
  //       categories.forEach(function(category){
  //         appendCategoryId(category);
  //       });
  //     }
  //     else {
  //       appendCategoryId('一致する名前はありません')
  //     }
  //   })
  //   .fail(function(){
  //     alert('大カテゴリーを取得できてません');
  //   });
  // });

})
