<?php
	if(isset($_GET['page'])){
			$page = $_GET['page'];
		}else{
			$page =1;
		}
		echo $page;
		$rowsPerPage = 2;
		$perRow = $page*$rowsPerPage - $rowsPerPage;

		$sql1 = "SELECT * FROM simple";
		$query1 = mysqli_query($con,$sql1);
		$totalrows1 = mysqli_num_rows($query1);


		$sql = "SELECT * FROM simple ORDER BY id DESC LIMIT $perRow, $rowsPerPage";
		$query = mysqli_query($con,$sql);
		$totalrows = mysqli_num_rows($query);
	// echo "$totalrows";

	$totalRows = mysqli_num_rows(mysqli_query($con,"SELECT * FROM simple")) ;
		 	$totalPages = ceil($totalRows/$rowsPerPage);
		 	echo $totalRows;
		 	echo $totalPages;
		 	$listPage = '';
		 	for($i = 1; $i<= $totalPages; $i++){

		 		if($page == $i){
		 			$listPage .='<span style="background-color: #06b9a6; color:#fff;">'.$i.'</span>';
		 		}
		 		else{
		 			$listPage .= '<a href="main.php?page_layout=simple&page='.$i.'">'.$i.'</a>';
		 		}
		 	} 	
?>


<div class="container simple">
	<div class="row">
		<div class="col-xs-12 col-sm-12 col-md-offset-2 col-md-8 col-lg-offset-2 col-lg-8">
			<hr>
			<div class="row">
				<div  class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
					<h3>All Simple & pure design (<?php echo $totalrows1 ?>)</h3>
				</div>
				<div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
					<a style="float: right;" href="main.php?page_layout=add-simple">
						<button type="button" class="btn btn-info add">
							<span class="glyphicon glyphicon-plus-sign"></span> Thêm
						</button>
					</a>
				</div>
			</div>
		<?php
			while ($rows = mysqli_fetch_array($query)) {
			?>
				<hr>
				<div class="row">
					<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3">
						<div class="row">
							<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
								<img src="../image/<?php echo $rows['anh'] ?>" width=100% height=auto>
							</div>
							<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 flex-container">					
								<a href="main.php?page_layout=edit-simple&id=<?php echo $rows['id']?>" ><button type="button" class="btn btn-info btn- edit flex-item">Sửa</button></a>
								

								<?php
									if ($total > 3) {									
									?>
										<a onclick="return confirm('Bạn muốn xóa Content này ?')" href="main.php?page_layout=del-simple&id=<?php echo $rows['id']?>" ><button type="button" class="btn btn-danger remove flex-item">Xóa</button></a>
									<?php
									}else{
										?>
										<a onclick="return alert('Bạn không thể Content này ?')" href="" ><button type="button" class="btn btn-danger remove flex-item" disabled>Xóa</button></a>
										<?php
									}
								?>
							</div>
						</div>
					</div>

					<div class="col-xs-12 col-sm-9 col-md-9 col-lg-9">
						<table class="table table-striped">
							<tbody>
								<tr>
									<td class="title">ID</td>
									<td><?php echo $rows['id']?></td>
								</tr>
								<tr>
									<td class="title">Title</td>
									<td><?php echo $rows['title']?></td>
								</tr>
								<tr>
									<td class="title">Desciption</td>
									<td><?php echo $rows['description']?></td>
								</tr>
								<tr>
									<td class="title">Date</td>
									<td><?php echo $rows['time_add']?></td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			<?php
			}
		?>
			
		</div>
	</div>
</div>
<center>
	<nav>
		<ul class="pagination">
			<li>
				<a href="<?php
				if($page==1){
					echo "";
				}
				else{	
					$pageprv = $page-1;
					echo 'main.php?page_layout=simple&page='.$pageprv;	
				}
				?>" aria-label="Previous">
				<span aria-hidden="true">&laquo;</span>
				<span class="sr-only">Previous</span>
			</a>
		</li>

		<li><?php echo $listPage?></a></li>		
		<li>
			<a href="<?php
			if($page==$totalPages){
				echo "";
			}
			else{
				$pagenext = $page+1;
				echo 'main.php?page_layout=simple&page='.$pagenext;
			}
			?>" aria-label="Previous">
			<span aria-hidden="true">&raquo;</span>
			<span class="sr-only">Previous</span>
			</a>
		</li>
	</ul>
	</nav>
</center>