<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<html>
    <head>
        <style>
            .img-container {
                display: flex;
                flex-direction: column;  /* ??t các ?nh theo hàng d?c */
                align-items: center;  /* C?n gi?a các ?nh */
                gap: 10px;  /* Kho?ng cách gi?a các ?nh */
                margin-top: 20px;  /* Thêm kho?ng cách phía trên */
                width: 80%;  /* ??t chi?u r?ng c?a container là 80% */
                margin-left: auto;  /* C?n gi?a sang trái */
                margin-right: auto;  /* C?n gi?a sang ph?i */
            }

            img {
                width: 80%;  /* ??m b?o ?nh chi?m 100% chi?u r?ng c?a container */
                max-width: 500px;  /* Gi?i h?n kích th??c ?nh n?u c?n */
                margin-bottom: 10px;  /* Kho?ng cách d??i m?i ?nh */
            }
        </style>
    </head>
    <body style="text-align: center">
        <div style="display: flex; justify-content: center; align-items: center; margin-top: 20px;">
            <a href="chapter?chapter=${requestScope.currChapter-1}" style="padding: 10px 20px; background-color: #4CAF50; color: white; text-decoration: none; border-radius: 5px; font-size: 18px; margin-right: 15px;">Previous</a>
            <p style="font-size: 24px; font-weight: bold; color: #333; margin: 0 15px;">${requestScope.currChapter}</p>
            <a href="chapter?chapter=${requestScope.currChapter+1}" style="padding: 10px 20px; background-color: #4CAF50; color: white; text-decoration: none; border-radius: 5px; font-size: 18px; margin-left: 15px;">Next</a>
            <a href="home" style="padding: 10px 20px; background-color: #4CAF50; color: white; text-decoration: none; border-radius: 5px; font-size: 18px; margin-left: 15px;">HOME</a>
        </div>

        <%
            List<String> imgUrls = (List<String>) request.getAttribute("allImg");
            if (imgUrls != null) {
                for (String imgUrl : imgUrls) {
        %>
        <img src="<%= imgUrl %>" alt="Chapter Image" style="max-width: 100%; margin-bottom: 10px;" />
        <%
                }
            }
        %>
        <div style="display: flex; justify-content: center; align-items: center; margin-top: 20px;">
            <a href="#" style="padding: 10px 20px; background-color: #4CAF50; color: white; text-decoration: none; border-radius: 5px; font-size: 18px; margin-right: 15px;">Previous</a>
            <p style="font-size: 24px; font-weight: bold; color: #333; margin: 0 15px;">${requestScope.currChapter}</p>
            <a href="#" style="padding: 10px 20px; background-color: #4CAF50; color: white; text-decoration: none; border-radius: 5px; font-size: 18px; margin-left: 15px;">Next</a>
        </div>
    </body>
</html>
