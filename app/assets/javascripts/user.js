$().ready(function() {
    $(".delete-article").click(function(e) {
    e.preventDefault();
    if (confirm('Do you really want to delete this article?')) {
      var article_id = $(this).attr('article_id');
      var user_id = $(this).attr('user_id');
      var id = $(this).attr('id');
      $.ajax({
        type: "POST",
        url: 'delete_article/',
	data: {user_id: user_id, article_id: article_id},
        success: function() {
		    document.getElementById(id).parentNode.parentNode.removeChild(document.getElementById(id).parentNode);
            }
      });
    }

    });
    $('.save-article,.unsave-article').live('click', function(e) {
      e.preventDefault();
      var article_id = $(this).attr('article_id');
      var article_title = $(this).attr('article_title');
      var user_id = $(this).attr('user_id');
      var id = $(this).attr('id');
      var element = $(this);
      if(element.hasClass('save-article')){
	console.log('in save article');
      $.ajax({
        type: "POST",
        url: '/user/save_article/',
	data: {user_id: user_id, article_title: article_title, article_id: article_id},
        success: function() {
		element.toggleClass('unsave-article save-article');
		element.html('Unsave Article');
            }
      });
      } else if (element.hasClass('unsave-article')){
	console.log('in unsave article');
	var article_id = $(this).attr('article_id');
    	var user_id = $(this).attr('user_id');
      	var id = $(this).attr('id');
      	$.ajax({
       	 type: "POST",
       	 url: '/user/unsave_article/',
		data: {user_id: user_id, article_id: article_id},
       	 success: function() {
            element.toggleClass('unsave-article save-article');
	    element.html('Save Article');
            }
      	});
	}

});
    


});
