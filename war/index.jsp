<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8" errorPage="Error.jsp" %>
<%@ page import="java.io.*,java.util.*" %>
<%
	String username = (String)session.getAttribute("username");
%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
<link rel="shortcut icon" href="images/H3nktOa7ZMg.png" />
<title>Chiang Rai | Travel Guide & Information</title>
<meta charset="UTF-8">
<link rel="stylesheet" href="styles/layout.css" type="text/css">
<script src="scripts/jquery-1.8.2.min.js"></script>
<script src="scripts/jquery-defaultvalue.js"></script>
<script src="scripts/jquery-browsercheck.js"></script>
<script src="js/jquery-1.10.2.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script>
	$(document).ready(function(){
	$(".tool").tooltip();
	}
</script>
<script>
	var xmlhttp = new XMLHttpRequest();
		xmlhttp.onreadystatechange = function(){
		if (xmlhttp.readyState==4 && xmlhttp.status==200){
			document.getElementById("result").innerHTML= xmlhttp.responseText;
		}
	}
	var url="LoadTxt.jsp";
	xmlhttp.open("GET",url,true);
	xmlhttp.send();
	}
</script>
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
  <marquee behavior="scroll" scrolldelay="100" id="scroll" onmouseover="this.stop();" onmouseout="this.start();" id="result"></marquee>
</div>

<div class="wrapper row2">
  <nav id="topnav">
    <ul class="clear">
      <li class="first active"><a href="index.jsp">หน้าแรก</a></li>
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
		<li><a href="login.jsp">Log-in</a></li>
	  <% } %>
	 </ul>
   </nav>
</div>



<!-- Slider -->
<div id="sliderwrap">
  <div id="slider"><a href="javascript:void(0)" id="prevslide" class="load-item"></a> <a href="javascript:void(0)" id="nextslide" class="load-item"></a></div>
</div>
<!-- / Slider -->


<!-- content -->
<div class="wrapper row3">
  <div id="container" class="clear">
    <div id="homepage">
      <!-- ########################################################################################## -->
      <!-- ########################################################################################## -->
      <!-- Shout -->
      <section id="shout">
        <h1>C<span>hiang</span> R<span>ai</span></h1>
        <p>&ldquo; เหนือสุดในสยาม ชายแดนสามแผ่นดิน ถิ่นวัฒนธรรมล้านนา ล้ำค่าพระธาตุดอยตุง &bdquo;</p>
      </section>
      <!-- / Shout -->
      <!-- ########################################################################################## -->
      <!-- ########################################################################################## -->
      <!-- Latest Work -->
      <section id="portfolio" class="clear">
        <ul>
          <li>
            <article><a href="#">
              <figure><img src="images/link/link1.jpg" alt="">
                <figcaption>
                  <header>ภูชี้ฟ้า</header>
					เป็นจุดชมวิวทะเลหมอกและพระอาทิตย์ขึ้น อยู่ห่างจากดอยผาตั้ง 25 กิโลเมตร มีลักษณะเป็นยอดเขาที่แหลมชี้ขึ้นไปบนท้องฟ้า อยู่สูงจากระดับทะเลประมาณ 1,628 เมตร</figcaption>
              </figure>
              </a></article>
          </li>
          <li>
            <article><a href="#">
              <figure><img src="images/link/link2.jpg" alt="">
                <figcaption>
                  <header>ดอยแม่สลอง</header>
					เป็นที่ตั้งของ หมู่บ้านสันติคิรี ตำบลแม่สลองนอก อำเภอแม่ฟ้าหลวง เดิมชื่อ บ้านแม่สลองนอก เป็นชุมชนผู้อพยพจากกองพล 93 จากสหภาพพม่าเข้ามาในเขตไทย</figcaption>
              </figure>
              </a></article>
          </li>
          <li>
            <article><a href="#">
              <figure><img src="images/link/link3.jpg" alt="">
                <figcaption>
                  <header>วัดร่องขุ่น</header>
					เป็นวัดพุทธและวัดฮินดู ตั้งอยู่ในอำเภอเมือง จังหวัดเชียงราย ออกแบบและก่อสร้างโดย เฉลิมชัย โฆษิตพิพัฒน์ ตั้งแต่ พ.ศ. 2540 จนถึงปัจจุบัน</figcaption>
              </figure>
              </a></article>
          </li>
          <li>
            <article><a href="#">
              <figure><img src="images/link/link4.jpg" alt="">
                <figcaption>
                  <header>พระตำหนักดอยตุง</header>
					เคยเป็นที่ประทับแปรพระราชฐานเพื่อทรงงานของสมเด็จพระศรีนครินทราบรมราชชนนี มีรูปทรงผสมผสานระหว่างศิลปะล้านนากับชาเลย์ของประเทศสวิสเซอร์แลนด์</figcaption>
              </figure>
              </a></article>
          </li>
          <!-- SPLIT -->
          <li>
            <article><a href="#">
              <figure><img src="images/link/link5.jpg" alt="">
                <figcaption>
                  <header>ถนนคนเดินเชียงราย</header>
					 โครงการถนนคนเดินเชียงราย “กาดเจียงฮายรำลึก” จัดขึ้นเพื่อส่งเสริมการท่องเที่ยวในเขตเมืองเชียงรายอย่างต่อเนื่องเป็นประจำทุกเดือน กลุ่มผู้ผลิตสินค้า OTOP และผลิตภัณฑ์ชุมชน</figcaption>
              </figure>
              </a></article>
          </li>
          <li>
            <article><a href="#">
              <figure><img src="images/link/link6.jpg" alt="">
                <figcaption>
                  <header>ดอยผาตั้ง</header>
					 เป็นสถานที่ท่องเที่ยวที่ขึ้นชื่อสำหรับชมพระอาทิตย์ขึ้นและทะเลหมอกในตอนเช้าและชมพระอาทิตย์ตกในเวลาเย็น มีความสูงจากระดับน้ำทะเลประมาณ 1,800 เมตร</figcaption>
              </figure>
              </a></article>
          </li>
          <li>
            <article><a href="#">
              <figure><img src="images/link/link7.jpg" alt="">
                <figcaption>
                  <header>พิพิธภัณฑ์บ้านดำ</header>
					เป็นแหล่งเรียนรู้อันทรงคุณค่าทางศิลปวัฒนธรรมแบบร่วมสมัย ที่มีเอกลักษณ์โดดเด่น ภายในเน้นจัดแสดงผลงานศิลปะลํ้าค่า จนถึงบรรดาหนังสัตว์ป่านานาชนิด</figcaption>
              </figure>
              </a></article>
          </li>
          <li>
            <article><a href="#">
              <figure><img src="images/link/link8.jpg" alt="">
                <figcaption>
                  <header>วัดพระแก้ว</header>
					เป็นวัดที่ค้นพบพระแก้วมรกตหรือพระพุทธมหามณีรัตนปฏิมากรที่ประดิษฐานอยู่ ณ วัดพระแก้วกรุงเทพฯในปัจจุบัน</figcaption>
              </figure>
              </a></article>
          </li>
        </ul>
      </section>
      <!-- / Latest Work -->
    </div>
    <!-- / content body -->
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