$().ready(function() {
    $(".delete-article").click(function(e) {
    e.preventDefault();
    e.stopPropagation();
    if (confirm('Do you really want to delete this article?')) {
      var article_id = $(this).attr('article_id');
      var id = $(this).attr('id');
      $.ajax({
        type: "POST",
        url: 'delete_article/',
				data: {article_id: article_id, js: 1},
        success: function() {
		    document.getElementById(id).parentNode.parentNode.removeChild(document.getElementById(id).parentNode);
            }
      });
    }

    });
    $('.save-article,.unsave-article').click('click', function(e) {
      e.preventDefault();
      e.stopPropagation();
      var article_id = $(this).attr('article_id');
      var article_title = $(this).attr('article_title');
      var id = $(this).attr('id');
      var element = $(this);
      if(element.hasClass('save-article')){
	console.log('in save article');
      $.ajax({
        type: "POST",
        url: '/user/save_article/',
				data: {article_title: article_title, article_id: article_id, js: 1},
        success: function() {
				element.toggleClass('unsave-article save-article');
				element.html('Unsave Article');
            }
      });
      } else if (element.hasClass('unsave-article')){
				console.log('in unsave article');
				var article_id = $(this).attr('article_id');

      	var id = $(this).attr('id');
      	$.ajax({
       	 type: "POST",
       	 url: '/user/unsave_article/',
				 data: {article_id: article_id, js: 1},
       	 success: function() {
            element.toggleClass('unsave-article save-article');
	    			element.html('Save Article');
            }
      	});
	}

});
    


});
