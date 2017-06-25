<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>
<%@ page import="javax.servlet.*"%>
<%@ page import="javax.servlet.annotation.WebServlet"%>
<%@ page import="javax.servlet.http.*"%>
<%@ page import="org.apache.commons.fileupload.*"%>
<%@ page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@ page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>file upload</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	FileItemFactory factory = new DiskFileItemFactory();
	ServletFileUpload upload = new ServletFileUpload(factory);
	try {
		List<?> items = upload.parseRequest(request);
		Iterator<?> iter = items.iterator();
		while (iter.hasNext()) {
			FileItem item = (FileItem) iter.next();
			File fileName = new File(item.getName());
			File uploadedFile = new   File("http://127.0.0.1:8080/TravelNet/uploadfiles" + "/" + fileName.getName());// 传送到服务器uploadfiles文件夾
			item.write(uploadedFile);
		}
		out.println("上传完毕！");
} catch (FileUploadException e1) {
			e1.printStackTrace();
		} catch (Exception e) {	e.printStackTrace();  }
%>
</body>
</html>
		