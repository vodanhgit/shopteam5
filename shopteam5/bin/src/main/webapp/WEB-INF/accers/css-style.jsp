<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
@import url("https://fonts.googleapis.com/css2?family=Nunito:wght@400;600;800&display=swap");
* {
  font-family: "poppins", sans-serif;
}
body {
  background-image: url("images/1.jpg");
  background-size: cover;
  background-position: center;
  background-attachment: fixed;
  background-repeat: no-repeat;
}
.box {
  display: flex;
  justify-content: center;
  align-items: center;
  min-height: 70vh;
}
.container {
  width: 350px;
  display: flex;
  flex-direction: column;
  padding: 0 15px 0 15px;
}
.logo {
  width: 220px;

  padding-left: 650px;
  text-decoration: none;
}

span {
  color: black;
  font-size: small;
  display: flex;

  justify-content: center;
  padding: 10px 0 10px 0;
}

.dangky {
  text-decoration: none;
  color: black;
  font-size: small;
  display: flex;

  justify-content: center;
  padding: 10px 0 10px 0;
}
header {
  color: black;
  font-size: 30px;
  display: flex;
  justify-content: center;
  padding: 10px 0 10px 0;
}
.input-field .input {
  height: 45px;
  width: 87%;
  border: solid rgb(153, 149, 149) 1px;
  border-radius: 30px;
  color: black;
  font-size: 15px;
  padding: 0 0 0 45px;
  background: rgba(255, 255, 255, 0.1);
  outline: none;
}
i {
  position: relative;
  top: -33px;
  left: 17px;
  color: black;
}
::-webkit-input-placeholder {
  color: black;
}
.submit {
  border: none;
  border-radius: 30px;
  font-size: 15px;
  height: 45px;
  outline: none;
  width: 100%;
  color: white;
  font-weight: bolder;
  background: black;
  cursor: pointer;
  transition: 0.3s;
}
.submit:hover {
  box-shadow: 1px 5px 7px 1px rgba(0, 0, 0, 0.2);
}
.two-col {
  display: flex;
  flex-direction: row;
  justify-content: space-between;
  color: black;
  font-size: small;
  margin-top: 10px;
}
.one {
  display: flex;
}
label a {
  text-decoration: none;
  color: black;
}
</style>