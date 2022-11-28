<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<meta charset="ISO-8859-1">
<title>Report</title>
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
.row{
border-radius: 5px;
  background-color: #f2f2f2;
  padding: 5px;
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

<h2>Report</h2>

<div class="container">
<div class="row">
    <centre><h3> Class Average</h3></centre>
    </div>
  <form action="semesterClassAverage">
    <div class="row">
      <div class="col-25">
        <label for="sem">Semester</label>
      </div>
      <div class="col-75">
        <input type="number" id="sem" name="sem" placeholder="Select Semester">
      </div>
      </div>
    <div class="row">
    Class Average is <FONT COLOR="RED"> ${classAvg} </FONT>
      <input type="submit" value="Find Class Average">
    </div>
  </form>
  <br>
  <br>
  <br>
  <div class="row">
  <centre><h3> Subject Average</h3></centre>
  </div>
  <form action="subjectAverage">
  <div class="row">
      <div class="col-25">
        <label for="name"> Subject Name</label>
      </div>
      <div class="col-75">
        <input type="text" id="name" name="name" placeholder="Subject Name">
      </div>
       </div>
      <div class="row">
      Subject Average of ${subject} is <FONT COLOR="RED">${subjectAvg}</FONT>
      <input type="submit" value="Find Subject Average">
    </div>
  </form>
  <br>
  <br>
  <br>
  <div class="row">
  <centre><h3> Top Students</h3></centre>
  </div>
  <form action="topTwo">
    <div class="row">
       Top 2 students are <FONT COLOR="RED"> ${student1}</FONT> and <FONT COLOR="RED">${student2}</FONT>
      <input type="submit" value="Find Top 2 students">
    </div>
  </form>
   <form action="/ ">
    <div class="row">
      <input type="submit" value="Home">
    </div>
  </form>
</div>

</body>
</html>