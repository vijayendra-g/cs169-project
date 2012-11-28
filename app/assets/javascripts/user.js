$(document).ready(function() {
    $(".delete-article").click(function() {
    if (confirm('Do you really want to delete this article?')) {
      var article_id = $(this).attr('article_id');
      var article_title = $(this).attr('article_title');
      var user_id = $(this).attr('user_id');
      $.ajax({
        type: "POST",
        url: 'delete_article/',
	data: {user_id: user_id, article_id: article_id},
        success: function() {
                    $(this).parent().remove();
            }
      });
    }

    });


});
