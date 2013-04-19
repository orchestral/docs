/**
 * Apply google prettyprint to all <pre> elements within the
 * documentation.
 */
jQuery(document).ready(function($)
{
	$('.content pre, table code').addClass('prettyprint');
	prettyPrint();
});
