$(document).ready(function()
{
	$(".show_l").click(function()
	{
		var _u_id_ = "#" + $(this).attr("id") + "u";
		$(".current").removeClass("current");
		$(".current").addClass("none");
		$(_u_id_).removeClass("none");
		$(_u_id_).addClass("current");
	});
})