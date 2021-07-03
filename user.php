<!doctype html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<title>user</title>
		<link rel="stylesheet" href="css/semantic.min.css">
		<?php 
			require_once('db_config.php'); 
		?>
	</head>
	<body>
		<?php
			$conn = new mysqli($servername, $username, $password, $dbname);
			if ($conn->connect_errno) {
	    			printf("Connect failed: %s\n", $conn->connect_error);
	    		exit();
			}

			$query = "SELECT * FROM user";
		?>
		
		<div class="ui grid">
			<div class="ui four wide column" style="background: red; min-height: 120vh;">
				<div style="padding: 5px;">
					<h1>Database of Users</h1>
					<p>SJOYO.COM</p>
				</div>
				<div style="padding: 50px;">
					<a href="user.html"><button class="ui fluid button">Add Account</button></a>
					<br>

					<form class="ui form" method="post" action="searchresult.php">
				      <div class="field">
				        <!-- <label>Name</label> -->
				        <input type="text" name="search_query" placeholder="Seach Contacts...">
				      </div>
				      <button class="ui right floated button" type="submit">Search</button>
				    </form>
					<br><br><br><br><br><br><br><br><br><br><br><br><br>
					<a href="home.php"><button class="ui fluid button">HOME</button></a>
					<br><br>
				</div>
			</div>
			<div class="ui twelve wide column"style="background: black; min-height: 80vh;">
				<div class="ui text container" style="padding-top: 30px;">
					<table class="ui celled unstackable table">
						<thead>
						<tr>
							<th>ID</th>
							<th>name</th>
							<th>phone</th>
							<th>email</th>							
							<th>pass</th>
						
						</tr>
						</thead>
						<tbody>
						<?php
						if ($result = $conn->query($query)) {
							$ser = 1;
							while ($row = $result->fetch_assoc()){
								printf("<tr>");
								printf("<td>%s</td> <td>%s</td> <td>%s</td> <td>%s</td> <td>%s</td>    ", $ser, $row["name"], $row["phone"], $row["email"], $row["pass"],$row["ID"], $row["ID"]);
								printf("</tr>");
								$ser++;
							}
						}
						?>
						</tbody>
					</table>
				</div>

			</div>
		</div>

		
	    <!-- Rest of the page content -->
	<script src="js/jquery-3.4.1.min.js"></script>
  	<script src="js/semantic.min.js"></script>
	</body>
</html>