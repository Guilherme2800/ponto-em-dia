<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<style>

body {
  background-color: #2a2c3b;
  font-family: "Lato", sans-serif;
}

.login-content {
  max-width: 450px;
  width: 100%;
  height: 550px;
  z-index: 1;
  position: absolute;
  top: 50%;
  left: 50%;
  margin-left: -200px;
  margin-top: -286px;
  border-radius: 8px;
  background: #2f3242;
}

.logo {
  width: 128px;
  height: 128px;
  margin: 5px;
}

.text-logo {
  text-align: center;
  font-weight: bold;
  font-size: 32px;
  color: white;
}

.form-control {
  width: 18rem;
  height: 3rem;
  left: 65px;
  position: relative;
  border-radius: 5px;
  background-color: #ccffee;
}

.btn {
  font-size: 22px;
  background-color: #0278ae;
  border: none;
  width: 18rem;
  height: 3rem;
  border-radius: 5px;
}

.btn:hover {
  background-color: blue;
}

.nomember {
  background-color: #e4dede;
  padding: 10px;
  padding-top: 20px;
  border-radius: 0px 0px 5px 5px;
  color: white;
  background: #2f3242;
}

.nomember a {
  text-decoration: none;
  color: rgb(158, 163, 240);
}

.forgot {
  position: relative;
  right: -20%;
}

.forgot a {
  text-decoration: none;
  font-size: 14px;
  color: rgb(158, 163, 240);
}

.copyright {
  color: white;
  padding: 15px;
}

/*support google chrome*/
.form-control::-webkit-input-placeholder {
  color: #00000036;
}

/*support mozilla*/
.form-control:-moz-input-placeholder {
  color: red;
}

/*support internet explorer*/
.form-control:-ms-input-placeholder {
  color: red;
}

</style>
</body>
</html>