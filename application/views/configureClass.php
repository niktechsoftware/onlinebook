                <div id="main-wrapper" class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="panel panel-white">
                            	<div class="panel-heading clearfix">
                                    <h4 class="panel-title">Manage Course</h4>
                                </div>
                            	<div class="panel-body">
                            		<div class="row">
	                            		<div class="col-md-12">
			                            	<?php if($this->uri->segment(3) == "edit"):?>
			                            	<?php 
			                            	$this->db->where("id",$this->uri->segment(4));?>
			                            	<?php $deta = $this->db->get("bookclass")->row();?>
			                                   <form class="form-horizontal" action="<?php echo base_url()?>patient/editClass" method="post">
			                                        <div class="form-group">
			                                            <label class="col-sm-2 control-label"><strong>Group Name</strong></label>
			                                            <div class="col-sm-4">
			                                            	<input type="hidden" value="<?php echo $this->uri->segment(4);?>" name="id">
			                                                <input type="text" class="form-control" value="<?php echo $deta->class; ?>" id="input-Default" name="className">
			                                             </div>
			                                            
			                                              <div class="form-group">
			                                            <button type="submit" class="btn btn-success">Edit Class Details</button>
			                                         </div>
			                                          
			                                        </div>
			                                        
			                                    </form>
			                                <?php else:?>
			                                	<form class="form-horizontal" action="<?php echo base_url()?>patient/saveClass" method="post">
			                                        <div class="form-group">
			                                            <label for="input-Default" class="col-sm-2 control-label"><strong>Class Name</strong></label>
			                                            <div class="col-sm-4">

			                                                <input type="text" class="form-control" id="input-Default" name="className">

			                                            </div>
			                                      
			                                          <div class="form-group">
			                                            <button type="submit" class="btn btn-success">Save Class</button>
			                                         </div>
			                                           
			                                        </div>
			                                    </form>
			                                <?php endif;?>
										</div>
									</div>
									<div class="row">
                            			<div class="col-md-12">
											<table class="table table-striped table-bordered table-hover table-checkable order-column dataTable no-footer" id="example" style="width: 100%; cellspacing: 0;">
	                                        <thead>
	                                            <tr>
	                                                <th>#</th>
	                                                <th>Course Name</th>
	                                                 
	                                                <th>Action</th>
	                                            </tr>
	                                        </thead>
	                                        <tbody>
	                                        	<?php $i = 1;?>
	                                        	<?php 
	                                        	
	                                        	$res = $this->db->get("bookclass")->result();?>
	                                        	<?php foreach($res as $row):?>
	                                            <tr>
	                                                <td>
	                                                	<?php echo $i; ?>
	                                                </td>
	                                                <td><?php echo $row->class; ?></td>
	                                                 
	                                                  
	                                                <td>
	                                                	<a href="<?php echo base_url();?>patient/configureClass/edit/<?php echo $row->id;?>">Edit</a> | 
	                                                	<a href="<?php echo base_url();?>patient/deleteClass/<?php echo $row->id;?>">Delete</a>
	                                                </td>
	                                            </tr>
	                                            <?php $i++;?>
	                                            <?php endforeach;?>
	                                        </tbody>
	                                       </table>  
										</div>
                            		</div>
                                </div>
                                
                            </div>
                        </div>
                    </div><!-- Row -->
                </div><!-- Main Wrapper -->

    <script> 
	    <?php for($j=1;$j<=$i;$j++){?>
		    $("#pro<?php echo $j;?>").click(function(){
			
			var sr = $("#sr<?php echo $j;?>").val();
			var customer = $("#customer<?php echo $j;?>").val();
			var model = $("#model<?php echo $j;?>").val();
			var replace_p_name = $("#replace_p_name<?php echo $j;?>").val();
			var bill_num = $("#bill_num<?php echo $j;?>").val();
			
				$.post("<?php echo site_url("index.php/replace/updateReplace") ?>",{sr : sr, customer : customer, model : model, replace_p_name : replace_p_name, bill_num : bill_num}, function(data){

					$("#msg1<?php echo $j;?>").val(data);
				});
			
		    });
		  <?php }
		?>
	</script>