$(document).on('page:load ready', function() {
  $('#search-form').submit(function(event) {
    event.preventDefault();
    var searchValue = $('#search').val();

    $.getScript('/projects?search=' + searchValue);
  });
});