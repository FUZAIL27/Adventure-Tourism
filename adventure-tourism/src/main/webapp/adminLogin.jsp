<%@ page language="java" %>
<html>
<head><title>Admin Login</title></head>
<style>
* {

    box-sizing: border-box;
    margin: 0;
    padding: 0;
    font-family: 'Segoe UI', sans-serif;
}

body {
    background-color: #f0f0f0;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
}

.container {
    width: 100%;
    max-width: 400px;
    padding: 20px;
}

.login-form {
    background: white;
    padding: 30px 25px;
    border-radius: 10px;
    box-shadow: 0 10px 30px rgba(0,0,0,0.1);
    display: flex;
    flex-direction: column;
}

.login-form h2 {
    text-align: center;
    margin-bottom: 20px;
    color: #333;
}

.login-form label {
    margin: 10px 0 5px;
    font-weight: 600;
    color: #444;
}

.login-form input[type="text"],
.login-form input[type="password"] {
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 6px;
    font-size: 15px;
    margin-bottom: 15px;
    width: 100%;
}

.login-form input[type="submit"] {
    background-color: #2575fc;
    color: white;
    padding: 12px;
    font-size: 16px;
    border: none;
    border-radius: 6px;
    cursor: pointer;
    transition: background 0.3s ease;
}

.login-form input[type="submit"]:hover {
    background-color: #1a5fd3;
}
nav {
  width: 100%;
  position: fixed;
  background: white;
  box-shadow: 15px 15px 30px rgba(0, 0, 0, 15%);
  display: flex;
  align-items: center;
  justify-content: space-between;
  heigth:100%;
 top:0;
 padding:10px 0;
  
}

.material-symbols-outlined {
  font-variation-settings: "FILL" 0, "wght" 400, "GRAD" 0, "opsz" 48;
}

nav .logo {
  display: flex;
  width: 60px;
  margin: 2vh;
  margin-left: 5%;
}

nav ul li {
  list-style: none;
  display: inline-block;
  margin-left: 40px;
}

.navbar {
  display: block;
  margin-right: 8vh;
}

.navbar a {
  color: rgb(5, 5, 5);
  font-size: 18px;
  padding: 15px 12px;
  border-radius: 4px;
  font-weight: 500;
  text-decoration: none;
  transition: ease 0.4s;
}

.icons {
  background-color: #101010;
}

.material-symbols-outlined {
  font-variation-settings: "FILL" 0, "wght" 400, "GRAD" 0, "opsz" NaN;
}

nav ul li a {
  text-decoration: none;
  color: rgb(255, 255, 255);
  font-size: 17px;
}

</style>
<body>
        <nav>
                <img src="./assets/files/logo.png" class="logo" alt="Logo" title="FirstFlight Travels">
                <ul class="navbar">
                    <li>
                        <a href="./index.html">Home</a>

                        <a href="./locations.html">Locations</a>
                        <a href="./info.html">About Us</a>
                        <a href="./contact.html">Contact Us</a>
                    </li>
                </ul>
             
            </nav>
    <div class="container">
        <form action="AdminLoginServlet" method="post" id="form" class="login-form">
            <h2>Admin Login</h2>
            <label>Username:</label>
            <input type="text" name="username" required>

            <label>Password:</label>
            <input type="password" name="password" required>

            <input type="submit" value="Login">
        </form>
    </div>
</body>
</html>
