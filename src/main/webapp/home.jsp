<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<meta charset="ISO-8859-1">
<title>Home page</title>
</head>

<style>
* {
  box-sizing: border-box;
}

input[type=text], select, textarea {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  resize: vertical;
}

label {
  padding: 12px 12px 12px 0;
  display: inline-block;
}

input[type=submit] {
  background-color: #04AA6D;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  float: right;
}

input[type=submit]:hover {
  background-color: #45a049;
}

.container {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}

.col-25 {
  float: left;
  width: 25%;
  margin-top: 6px;
}

.col-75 {
  float: left;
  width: 75%;
  margin-top: 6px;
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

/* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 600px) {
  .col-25, .col-75, input[type=submit] {
    width: 100%;
    margin-top: 0;
  }
}
</style>
</head>
<body>

<h2>Add Student</h2>

<div class="container">
  <form action="addStudent">
    <div class="row">
      <div class="col-25">
        <label for="name">Name</label>
      </div>
      <div class="col-75">
        <input type="text" id="name" name="name" placeholder="Your name..">
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="sem">Semester</label>
      </div>
      <div class="col-75">
        <input type="number" id="sem" name="sem" placeholder="1 or 2" min="1" max="2">
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="english">English Mark</label>
      </div>
      <div class="col-75">
        <input type="number" id="english" name="english" placeholder="/100" min="0" max="100">
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="math">Math Mark</label>
      </div>
      <div class="col-75">
        <input type="number" id="math" name="math" placeholder="/100" min="0" max="100">
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="science">Science Mark</label>
      </div>
      <div class="col-75">
        <input type="number" id="science" name="science" placeholder="/100" min="0" max="100">
      </div>
    </div>
    <div class="row">
      <input type="submit" value="Submit">
    </div>
  </form>
  <br>
  <br>
  <form action="report">
<div class="row">
      <input type="submit" value="Go to report page">
    </div>
  </form>
</div>

</body>
</html>