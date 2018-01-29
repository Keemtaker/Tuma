
$ ->
$('[data-provider="summernote"]').each ->
  $(this).summernote
    height: 300


plainText = $($('#summernote').summernote('code')).text()


