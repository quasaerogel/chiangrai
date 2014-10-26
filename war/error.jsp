<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8" errorPage="Error.jsp" %>
<%@ page import="java.io.*,java.util.*" %>
<%
	String username = (String)session.getAttribute("username");
%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
<link rel="shortcut icon" href="images/H3nktOa7ZMg.png" />
<title>Error — Chiang Rai | Travel Guide & Information</title>
<meta charset="UTF-8">
<link rel="stylesheet" href="styles/layout.css" type="text/css">
<script src="scripts/jquery-1.8.2.min.js"></script>
<script src="scripts/jquery-defaultvalue.js"></script>
<script src="scripts/jquery-browsercheck.js"></script>
<!--[if lt IE 9]>
<link rel="stylesheet" href="styles/ie.css" type="text/css">
<script src="scripts/ie/html5shiv.min.js"></script>
<![endif]-->
<!-- homepage slider scripts -->
<link rel="stylesheet" href="styles/supersized/supersized.css" type="text/css">
<link rel="stylesheet" href="styles/supersized/supersized.shutter.css" type="text/css">
<script src="scripts/supersized/supersized.3.2.7.js"></script>
<script src="scripts/supersized/supersized.shutter.min.js"></script>
<script src="scripts/supersized/supersized.setup.js"></script>
<!-- / homepage slider scripts -->
</head>
<body>
<div class="wrapper row1">
  <header id="header" class="clear">
    <div id="hgroup">
      <h1><a href="index.html">C<span>hiang</span> R<span>ai</span></a></h1>
      <h2>Travel Guide & Information</h2>
    </div>
    <form action="#" method="post">
      <fieldset>
        <legend>Search:</legend>
        <input type="text" value="Search&hellip;" onFocus="this.value=(this.value=='Search&hellip;')? '' : this.value ;">
        <input type="image" src="images/search.gif" id="search" alt="Search">
      </fieldset>
    </form>
  </header>
</div>
<div class="wrapper row2">
  <nav id="topnav">
    <ul class="clear">
      <li><a href="index.jsp">หน้าแรก</a></li>
      <li><a href="#">ข้อมูลจังหวัด</a></li>
      <li><a href="#">สถานที่ท่องเที่ยว</a></li>
      <li><a href="#">โรงแรม/ที่พัก</a></li>
      <li><a href="#">ร้านอาหาร</a></li>
      <li><a href="maker.jsp">ผู้จัดทำ</a></li>
	  <% if(null!=username){ %>
		<li>
		<a href="#"><%=username%></a>
		</li>
		<li>
		<a href="logout.jsp">Log-out</a>
		</li>
	  <% } else { %>
		<li class="first active"><a href="login.jsp">Log-in</a></li>
	  <% } %>
	</ul>
  </nav>
</div>

<div class="wrapper row2">
  <div id="container" class="clear">
    <!-- content body -->
    <div id="content">
		<section id="comments">
			<h2>Some Error has occured, Please try again later...</h2>
            <input onclick="history.go(-1);return true;" type="submit" value="back" >
		</section>
    </div>
  </div>
</div>


<!-- Copyright -->
<div class="wrapper">
  <footer id="copyright" class="clear">
    <p class="fl_left">Copyright &copy; 2014 - All Rights Reserved</p>
    <p class="fl_right">Yutthana Khanket — Com-Sci | UTCC</p>
  </footer>
</div>
<script>
$(document).ready(function () {
    $("#cf_name, #cf_email, #cf_message").defaultvalue("Name", "Email", "Message");
});
</script>
</body>
</html>