

$(document).ready(function() {
    $(".delete").on("click",function(event){
   event.preventDefault();
   var target = $(event.target);
   var url = target.attr('href');
   var target_id = target.attr('href').split('/')[1];
   $.ajax({
    type:'delete',
    url: url
   }).success(function(response){
    $('#' + target_id).remove();
   });
  });
});
