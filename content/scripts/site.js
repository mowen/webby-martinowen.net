(function($){
    var showSolution = function() {
	var p = $(this); 
	p.find('a').text('Hide Solution');
	p.next('.solution').slideDown('fast');
    };

    var hideSolution = function() {
	var p = $(this); 
	p.find('a').text('Show Solution');
	p.next('.solution').slideUp('fast');
    };

    $(document).ready(function() {
	$('.solution')
	    .each(function() {
		$("<p><a>Show Solution</a></p>")
		    .insertBefore(this)
		    .toggle(showSolution, hideSolution);
	    });
    });
})(jQuery);