<?php
	if(isset($_GET['page'])){
			$page = $_GET['page'];
		}else{
			$page =1;
		}
		$rowsPerPage = 2;
		$perRow = $page*$rowsPerPage - $rowsPerPage;

		$sql1 = "SELECT * FROM banner";
		$query1 = mysqli_query($con,$sql1);
		$totalrows1 = mysqli_num_rows($query1);


		$sql = "SELECT * FROM banner ORDER BY id ASC LIMIT $perRow, $rowsPerPage";
		$query = mysqli_query($con,$sql);
		$totalrows = mysqli_num_rows($query);
	// echo "$totalrows";

	$totalRows = mysqli_num_rows(mysqli_query($con,"SELECT * FROM banner")) ;
		 	$totalPages = ceil($totalRows/$rowsPerPage);
		 	$listPage = '';
		 	for($i = 1; $i<= $totalPages; $i++){

		 		if($page == $i){
		 			$listPage .='<span style="background-color: #5bc0de; color:#fff;">'.$i.'</span>';
		 		}
		 		else{
		 			$listPage .= '<a href="main.php?page_layout=banner&page='.$i.'">'.$i.'</a>';
		 		}
		 	} 	
?>

<div class="container banner" style="min-height: 600px;">
	<hr>
	<div class="row">
		<div  class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
			<h3>All Banner (<?php echo $totalrows1 ?>)</h3>
		</div>
		<div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
			<a style="float: right;" href="main.php?page_layout=add-banner">
				<button type="button" class="btn btn-info add">
					<span class="glyphicon glyphicon-plus-sign"></span> Thêm
				</button>
			</a>
		</div>
	</div>
	<?php
		while ($rows = mysqli_fetch_array($query)) {
		?>
	<div class="row">
			<hr>
			<div class="col-xs-12 col-sm-5 col-md-3 col-lg-3">
				<div class="row">
					<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
						<img src="../image/<?php echo $rows['anh'] ?>" width=100% height=auto>
					</div>
					<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 flex-container">					
						<a href="main.php?page_layout=edit-banner&id=<?php echo $rows['id']?>" ><button type="button" class="btn btn-info edit flex-item">Sửa</button></a>
						<?php
							if ($totalrows1 > 2) {									
							?>
								<a onclick="return confirm('Bạn muốn xóa Banner này ?')" href="main.php?page_layout=del-banner&id=<?php echo $rows['id']?>" ><button type="button" class="btn btn-danger remove flex-item">Xóa</button></a>
							<?php
							}else{
								?>
								<a onclick="return alert('Bạn không thể xóa Banner này ?')" href="" ><button type="button" class="btn btn-danger remove flex-item" disabled>Xóa</button></a>
								<?php
							}
						?>
					</div>
				</div>
			</div>
			
			<div class="col-xs-12 col-sm-7 col-md-9 col-lg-9">
				<table class="table table-striped table-hover">
					<tbody>
							<tr>
								<td class="title text-center" colspan="2">
									Thông tin Banner <?php echo $rows['id']?>
								</td>
							</tr>
							<tr>
								<td class="title">ID</td>
								<td><?php echo $rows['id'] ?></td>
							</tr>

							<tr>
								<td class="title">Title</td>
								<td><?php echo $rows['title'] ?></td>
							</tr>

							<tr>
								<td class="title">Description</td>
								<td><?php echo $rows['description'] ?></td>
							</tr>

							<tr>
								<td class="title">Status</td>
								<td><?php echo $rows['status'] ?></td>
							</tr>
					</tbody>
				</table>
			</div>
	</div>
	<?php
		}
	?>
	
	
	<nav class="text-center">
		<ul class="pagination">
			<li>
				<a href="<?php
				if($page==1){
					echo "";
				}
				else{	
					$pageprv = $page-1;
					echo 'main.php?page_layout=banner&page='.$pageprv;	
				}
				?>" aria-label="Previous">
				<span aria-hidden="true">&laquo;</span>
				<span class="sr-only">Previous</span>
			</a>
		</li>

		<li><?php echo $listPage?></li>		
		<li>
			<a href="<?php
			if($page==$totalPages){
				echo "";
			}
			else{
				$pagenext = $page+1;
				echo 'main.php?page_layout=banner&page='.$pagenext;
			}
			?>" aria-label="Previous">
			<span aria-hidden="true">&raquo;</span>
			<span class="sr-only">Previous</span>
			</a>
		</li>
	</ul>
	</nav>