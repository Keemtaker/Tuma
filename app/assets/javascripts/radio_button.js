$(".radio").on("change", function(){
  $(".show-job-url").toggle($(this).is("job_job_application_type_email"));
});
