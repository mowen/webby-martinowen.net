(function($){
    var showSolution = function() {
	var p = $(this); 
	p.find('a').text('Hide Solution');
	p.next('.solution').slideDown();
    };

    var hideSolution = function() {
	var p = $(this); 
	p.find('a').text('Show Solution');
	p.next('.solution').slideUp();
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