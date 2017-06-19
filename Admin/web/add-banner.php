
<?php
	if(isset($_POST['submit'])){
		$title = $_POST['title'];
		$description = $_POST['description'];
		$anh = $_FILES['anh']['name'];
		$tmp = 	$_FILES['anh']['tmp_name'];
		move_uploaded_file($tmp, '../image/'.$anh);
		
		$sql = "INSERT INTO banner(title, description, anh, status)VALUES('$title', '$description', '$anh', 'show')";
		$query = mysqli_query($con,$sql);
		// if ($query) {
		// 	echo "true";
		// }else{
		// 	echo "false" .mysqli_error($con);
		// }
		// .die();
		$sql_max = "SELECT * FROM banner ORDER BY id DESC LIMIT 1";
		$query_max = mysqli_query($con,$sql_max);
		$rows = mysqli_fetch_assoc($query_max);
		$rs = $rows['id'];
		// echo $rs;
		header("location:main.php?page_layout=edit-banner&id=$rs");
	}
?>
<div class="container add-banner">
	<h3 class="text-center">Thêm Banner mới</h3>
	<hr>
	<div class="col-xs-12 col-sm-12 col-md-12 col-lg-offset-3 col-lg-6">

		<form enctype="multipart/form-data"  method="post" >

			<div class="form-group">
				<label>Title</label>
				<input type="text" name="title" class="form-control" required>
			</div>

			<div class="form-group">
				<label>Description</label>
				<input type="text" name="description" class="form-control" required>
			</div>

			<div class="form-group">
				<label>Upload Image</label>
				<input type="file" name="anh" class="form-control" required>
			</div>

			<button name="submit" type="buttom" class="btn btn-info btn-add">Upload</button>
		</form>

	</div>
</div>