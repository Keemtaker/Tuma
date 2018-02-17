
$(".jobs_search input").keyup(function() {
  $.get($(".jobs_search").attr("action"), $(".jobs_search").serialize(), null, "script");
    return false;
  });

// $(function(){
//     $('.filters_click').click(function() {
//         if($(this).is(':checked'))
//             alert('checked');
//         else
//             alert('unchecked');
//     });
// });


