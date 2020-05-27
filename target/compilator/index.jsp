<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js"
            type="text/javascript"></script>
    <link href="https://fonts.googleapis.com/css2?family=Permanent+Marker&display=swap" rel="stylesheet">
    <link href="resources/css/style.min.css" rel="stylesheet"/>
    <%--<script type="text/javascript" src="resources/js/bundle.ts.js"></script>--%>
</head>
<body>
<div class="border-style-top"></div>
<div class="container">
    <h1 class="text-center">SASS vs CSS</h1>

    <div class="grid-row" >
        <%@include file="variable.jsp" %>
    </div>

    <div class="grid-row" >
        <%@include file="prefixe.jsp" %>
    </div>

    <div class="grid-row" >
        <%@include file="partial.jsp" %>
    </div>

</div>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <script type="text/javascript" src="resources/js/bundle.js"></script>
    <script type="text/javascript" src="resources/js/bundle.ts.js"></script>
</body>
</html>
