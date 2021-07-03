<!doctype html>

<html lang="en">

<?php
  require_once('db_config.php'); 
  $id = $_GET['id'];
  $conn = new mysqli($servername, $username, $password, $dbname);
  if ($conn->connect_errno) {
        printf("Connect failed: %s\n", $conn->connect_error);
      exit();
  }

  $query = "SELECT * FROM store WHERE id=$id";
  $result = $conn->query($query);
  $row = $result->fetch_assoc();

?>

<head>
  <meta charset="utf-8">
  <title>Edit Contact</title>
  <link rel="stylesheet" href="css/semantic.min.css">
</head>

<body>

<div style="background-color: red; padding: 2%;">
	<h1>Update Existing Contact Info</h1>
	<h4>The data will be updated into the main database</h4>
</div>
<br>
	<div class="ui text container">
    	<form class="ui form" method="post" action="db/store_update.php">
      <div class="field" style="display: none;">
        <label>ID</label>
        <input type="text" name="id_entry" value="<?php echo $row['ID'] ?>">
      </div>
      <div class="field">
        <label>phone</label>
        <input type="text" name="phone_entry" value="<?php echo $row['phone'] ?>" placeholder="Contact phone">
      </div>
      
      <div class="field">
        <label>address</label>
        <input type="text" name="address_entry" value="<?php echo $row['address'] ?>" placeholder="Contact address">
      </div>
	
	
	


      <button class="ui button" type="submit">Submit</button>
    </form>
</div>
  <script src="js/jquery-3.4.1.min.js"></script>
  <script src="js/semantic.min.js"></script>
</body>

</html>
