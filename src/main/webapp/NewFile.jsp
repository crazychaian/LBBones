<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="assets/css/magnifier.css">
<title>Insert title here</title>
</head>
<body>



<div>
    <div class="magnifier-thumb-wrapper" href="#">
        <img id="thumb" src="images/4.png">
    </div>
    <div class="magnifier-preview" id="preview" style="width: 400px; height: 267px">Starry Night Over The Rhone<br>by Vincent van Gogh</div>
</div>






<script type="text/javascript" src="assets/js/Event.js"></script>
<script type="text/javascript" src="assets/js/Magnifier.js"></script>
<script type="text/javascript">
var evt = new Event(),
    m = new Magnifier(evt);
</script>

<script type="text/javascript">	
m.attach({
    thumb: '#thumb',
    large: 'images/4.png',
    largeWrapper: 'preview',
    zoom: 3
});

</script>

</body>
</html>