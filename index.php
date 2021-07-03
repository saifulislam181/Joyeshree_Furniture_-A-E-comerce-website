<!doctype html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<title>Joyeshree Furniture</title>
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

			$query = "SELECT * FROM product_info";
		?>
		
		<div class="ui grid">
			<div class="ui four wide column" style="background: orange; min-height: 100vh;">
				<div style="padding: 15px;">
					<h1>Joyeshree Furniture</h1>
					<p>SJOYO.COM</p>
				</div>
				<div style="padding: 50px;">
					<a href="add_form.html"><button class="ui fluid button">Add Contact</button></a>
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
				</div>
			</div>
			<div class="ui twelve wide column"style="background-image: url(koyla.jpg); min-height: 100vh;">
				<div class="ui text container" style="padding-top: 10px;">
					<table class="ui celled unstackable table" style="background: gray;">
						<thead>
						<tr>
							<th>ID</th>
							<th>Title</th>
							<th>Size</th>
							<th>Price</th>
							<th>configaration</th>
							<th>Available</th>
							<th>Option</th>
						</tr>
						</thead>
						<tbody>
						<?php
						if ($result = $conn->query($query)) {
							$ser = 1;
							while ($row = $result->fetch_assoc()){
								printf("<tr>");
								printf("<td>%s</td> <td>%s</td> <td>%s</td> <td>%s</td>  <td>%s</td>  <td>%s</td> <td> <a href='db/delete.php?id=%s'>Delete</a> <a href='edit_form.php?id=%s'>Edit</a> </td>", $ser, $row["Title"], $row["Size"], $row["Price"], $row["configaration"], $row["Available"], $row["ID"], $row["ID"]);
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