<%@ page contentType="text/html; charset=utf-8" language="java"
	import="java.sql.*" errorPage=""%>
<!doctypeh html>
<head>
<meta charset="utf-8">
</head>
<body>
	<form method="POST" enctype="multipart/form-data" action="toserver.do">
		File to upload: <input type="file" name="upfile"><br /> Notes
		about the file: <input type="text" name="note"><br /> <br /> <input
			type="submit" value="Press"> to upload the file!
	</form>
</body>
</html>
