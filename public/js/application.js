$(document).ready(function() {
	$('#newQuestion').submit(function(e){
		e.preventDefault();
		$.ajax({
			url: $(this).attr('action'),
			type: 'post',
			data: null,
			test: function(){
				console.log(this.url);
			}
		});
	});

	$('form').each(function(){
		data = $(this)
		console.log(data);
	});
  });
