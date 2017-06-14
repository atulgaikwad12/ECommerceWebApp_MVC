<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<body>
<div class="copyright-wthree" >
				<p>&copy; 2017 Delish Food . All Rights Reserved | Design by <a href="http://w3layouts.com/"> W3layouts </a></p>
			</div>
</body>
<script>
  var footerResize = function() {
    $('#footer').css('position', $("body").height() + $("#footer").innerHeight() > $(window).height() ? "inherit" : "fixed");
  };
  $(window).resize(footerResize).ready(footerResize);
</script>
</html>