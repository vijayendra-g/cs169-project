$().ready(function() {
    $(".delete-article").click(function() {
    if (confirm('Do you really want to delete this article?')) {
      var article_id = $(this).attr('article_id');
      var user_id = $(this).attr('user_id');
      $.ajax({
        type: "POST",
        url: 'delete_article/',
	data: {user_id: user_id, article_id: article_id},
        success: function() {
                    $(this).parent('.article').remove();
            }
      });
    }

    });
  
    $(".save-article").click(function() {
      var article_id = $(this).attr('article_id');
      var article_title = $(this).attr('article_title');
      var user_id = $(this).attr('user_id');
      $.ajax({
        type: "POST",
        url: '/user/save_article/',
	data: {user_id: user_id, article_title: article_title, article_id: article_id},
        success: function() {
		$(this).attr('class') = "save-article-button unsave-article"
            }
      });

    });

    $(".unsave-article").click(function() {
      var article_id = $(this).attr('article_id');
      var user_id = $(this).attr('user_id');
      $.ajax({
        type: "POST",
        url: '/user/unsave_article/',
	data: {user_id: user_id, article_id: article_id},
        success: function() {
	    $(this).attr('class') = "save-article-button unsave-article"
            }
      });

    });




});
