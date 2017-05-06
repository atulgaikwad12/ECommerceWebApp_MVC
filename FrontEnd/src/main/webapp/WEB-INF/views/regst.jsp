<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
	<title>Customer Registration Form </title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body class="blurBg-true" style="background-color:#ffffff">



<!-- Start Formoid form-->


<form class="formoid-solid-purple" style="background-color:#d68fff;font-size:14px;font-family:'Roboto',Arial,Helvetica,sans-serif;color:#34495E;max-width:1000px;min-width:150px" method="post"><div class="title"><h2>Customer Registration Form</h2></div>
	<div class="element-input" title="Enter your First Name"><label class="title"><span class="required">*</span></label><div class="item-cont"><input class="large" type="text" name="input" required="required" placeholder="First Name "/><span class="icon-place"></span></div></div>
	<div class="element-input" title="Enter your last name"><label class="title"><span class="required">*</span></label><div class="item-cont"><input class="large" type="text" name="input1" required="required" placeholder="Last Name"/><span class="icon-place"></span></div></div>
	<div class="element-password" title="Create your password"><label class="title"><span class="required">*</span></label><div class="item-cont"><input class="large" type="password" name="password" value="" required="required" placeholder="Create Password"/><span class="icon-place"></span></div></div>
	<div class="element-password" title="Retype your password"><label class="title"><span class="required">*</span></label><div class="item-cont"><input class="large" type="password" name="password1" value="" required="required" placeholder="Confirm Password"/><span class="icon-place"></span></div></div>
	<div class="element-number" title="Enter Your age"><label class="title"></label><div class="item-cont"><input class="small" type="text" min="0" max="100" name="number" placeholder="Age" value=""/><span class="icon-place"></span></div></div>
	<div class="element-separator" title="Please fill all right details "><hr><h3 class="section-break-title">Contact Details</h3></div>
	<div class="element-email" title="Enter your email id"><label class="title"><span class="required">*</span></label><div class="item-cont"><input class="large" type="email" name="email" value="" required="required" placeholder="Email"/><span class="icon-place"></span></div></div>
	<div class="element-phone" title="Enter your Mobile number"><label class="title"><span class="required">*</span></label><div class="item-cont"><input class="large" type="tel" pattern="[+]?[\.\s\-\(\)\*\#0-9]{3,}" maxlength="10" name="phone" required="required" placeholder="Mobile number" value=""/><span class="icon-place"></span></div></div>
	<div class="element-textarea" title="Enter your address"><label class="title"><span class="required">*</span></label><div class="item-cont"><textarea class="small" name="textarea" cols="20" rows="5" required="required" placeholder="Address"></textarea><span class="icon-place"></span></div></div>
<div class="submit"><input type="submit" value="Submit"/></div></form><p class="frmd"><a href="http://formoid.com/v29.php">web forms</a> Formoid.com 2.9</p><script type="text/javascript" src="${js}/formoid-solid-purple.js"></script>
<!-- Stop Formoid form-->



</body>
</html>
