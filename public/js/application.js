$(document).ready(function() {

    $(".login_button").on("click", function(){
        $(".login").show();
    });

     $(".signup").hide();
    $(".signup_button").on("click", function(){
        $(".signup").show();
    });

	$('#newQuestion').click(function(e){
		e.preventDefault();
		console.log('test')
		$.ajax({
			url: $('#newQuestion').data('action'),
			type: 'post',
			data: null,
			success: function(response){
				console.log(response);
				// $(".newChoice:last" || "input:first" ).after('<div class="formline">Q '+response.questionNum+': <input type="text" name="question['+response.questionID+']" value="blank"></div>' +
				// 	'<div class="btn btn-default newChoice" data-action="/surveys/'+response.surveyID+'/questions/'+response.questionID+'/choices/new">Add Choice</div>'
				// 	);

				// $("input:first" ).after('<div class="formline">Q '+response.questionNum+': <input type="text" name="question['+response.questionID+']" value="blank"></div>' +
				// 	'<div class="btn btn-default newChoice" data-action="/surveys/'+response.surveyID+'/questions/'+response.questionID+'/choices/new">Add Choice</div>'
				// 	);
			// response.survey_id
			//

				if ($(".newChoice").length){
					$(".newChoice:last").after('<div class="formline">Q '+response.questionNum+': <input type="text" name="question['+response.questionID+']" value="blank"></div>' +
						'<div class="btn btn-default newChoice" data-action="/surveys/'+response.surveyID+'/questions/'+response.questionID+'/choices/new">Add Choice</div>');
				} else {
					$("input:first" ).after('<div class="formline">Q '+response.questionNum+': <input type="text" name="question['+response.questionID+']" value="blank"></div>' +
						'<div class="btn btn-default newChoice" data-action="/surveys/'+response.surveyID+'/questions/'+response.questionID+'/choices/new">Add Choice</div>');
				}
		},
		error: function(callback){
			console.log(callback);
		}
	});
	});

	$('#surveyEdit').delegate('.newChoice','click',function(e){
		e.preventDefault();
		console.log('test')
		var that =  this;
		$.ajax({
			url: $(this).data('action'),
			type: 'post',
			data: null,
			success: function(response){
				console.log(response)
				$(that).before('<div class="formline">C '+response.lastQuestion+': <input type="text" name="choice['+response.questionID+']['+response.choiceID+']" value="blank"></div>')

			},
			error: function(callback){
				console.log(callback);
			}
		});
	});

	$('#surveyEdit').submit(function(e){
		e.preventDefault();
		console.log($(this).serialize());
		$.ajax({
			url: $(this).attr('action'),
			type: 'put',
			data: $(this).serialize(),
			success: function(callback){
				console.log(callback);
				$(".status").html('<div class="alert alert-success alert-dismissible" role="alert"> <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>'+callback+'</div>')

			},
			error: function(callback){
				console.log(callback.responseText);
				$(".status").html('<div class="alert alert-warning alert-dismissible" role="alert"> <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>'+callback.responseText+'</div>')

			}
		});
	});

	// KeyboardJS.on(keyCombo, onDownCallback, onUpCallback);
	KeyboardJS.on("command + s", function onUpCallback(e){
		e.preventDefault();
		// console.log("Save");
	},
	function onUpCallback(e){
		e.preventDefault();
		console.log($('#surveyEdit').attr('action'));

		$.ajax({
			url: $('#surveyEdit').attr('action'),
			type: 'put',
			data: $('form').serialize(),
			success: function(callback){
				console.log(callback);
				$(".status").html('<div class="alert alert-success alert-dismissible" role="alert"> <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>'+callback+'</div>')
			},
			error: function(callback){
				console.log(callback.responseText);
				$(".status").html('<div class="alert alert-warning alert-dismissible" role="alert"> <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>'+callback.responseText+'</div>')
			}
		});
	});
});
