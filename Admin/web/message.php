	<?php

		if(isset($_GET['page'])){
			$page = $_GET['page'];
		}else{
			$page =1;
		}
		$rowsPerPage = 3;
		$perRow = $page*$rowsPerPage - $rowsPerPage;
		// echo "$totalrows";

		$sql1 = "SELECT * FROM message";
		$query1 = mysqli_query($con,$sql1);
		$totalrows1 = mysqli_num_rows($query1);


		$sql = "SELECT * FROM message ORDER BY id DESC LIMIT $perRow, $rowsPerPage";
		$query = mysqli_query($con,$sql);
		$totalrows = mysqli_num_rows($query);

		$totalRows = mysqli_num_rows(mysqli_query($con,"SELECT * FROM message")) ;
		 	$totalPages = ceil($totalRows/$rowsPerPage);
		 	$listPage = '';
		 	for($i = 1; $i<= $totalPages; $i++){

		 		if($page == $i){
		 			$listPage .='<span style="background-color: #06b9a6; color:#fff;">'.$i.'</span>';
		 		}
		 		else{
		 			$listPage .= '<a href="main.php?page_layout=message&page='.$i.'">'.$i.'</a>';
		 		}
		 	} 	
	?>

	<div class="container message">
		<div class="row">
				<hr>
			
				<div  class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
					<h3>All Message (<?php echo $totalrows1 ?>)</h3>
				</div>
				<div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
					<a onclick="return confirm('Bạn muốn xóa tất cả Message ?')" style="float: right;" href="main.php?page_layout=del-message&id=all">
						<button type="button" class="btn btn-danger add">
							<span class="glyphicon glyphicon-trash"></span> All
						</button>
					</a>
				</div>
			
				<hr>
				<table class="table table-striped">
				
				<thead>
					<tr>
						<!-- <th width="5%">ID</th> -->
						<th width="15%">Name</th>
						<!-- <th width="20%">Email</th> -->
						<th class="text-center" width="30%">Message</th>
						<!-- <th width="15%">Date</th> -->
						<th width="5%" class="text-center">Chi tiết</th>
						<th width="5%" class="text-center">Xóa</th>
					</tr>
				</thead>
				<tbody>
					<?php
						while ($rows = mysqli_fetch_array($query)) {
						?>
							<tr>
								<td><?php echo $rows['name'];?></td>
								
								<td>
									<?php echo $rows['message'];?>
								</td>
								<td class="text-center">
									<a href="main.php?page_layout=info-message&id=<?php echo $rows['id'];?>">
										<button type="button" class="btn btn-info">
											<span class="glyphicon glyphicon-list-alt"></span>
										</button>
									</a>
								</td>
								<td class="text-center">
									<a onclick="return confirm('Bạn muốn xóa Message này ?')" href="main.php?page_layout=del-message&id=<?php echo $rows['id'];?>" ><button type="button" class="btn btn-danger">
										<span class="glyphicon glyphicon-trash">
									</button></a>
								</td>
							</tr>
						<?php
						}
					?>
				</tbody>
			</table>
		
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
					echo 'main.php?page_layout=message&page='.$pageprv;	
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
				echo 'main.php?page_layout=message&page='.$pagenext;
			}
			?>" aria-label="Previous">
			<span aria-hidden="true">&raquo;</span>
			<span class="sr-only">Previous</span>
			</a>
		</li>
	</ul>
	</nav>
</center>