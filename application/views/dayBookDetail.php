                <div id="main-wrapper" class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="panel panel-white">
                            	<div class="panel-body">
                                   <div class="table-responsive">
                                    <table id="example" class="display table" style="width: 100%; cellspacing: 0;">
                                        <thead>
                                            <tr>
                                                <?php $total=0; $dabit=0; $credit =0;?>
                                                <th>#</th>
                                                <th>Paid By</th>
                                                <th>Recieved By</th>
                                                <th>Reason</th>
                                                <th>Dabit</th>
                                                <th>Cradit</th>
                                                
                                                 
                                               
                                                <th>Closing Balance</th>
                                                <th>Pay Date</th>
                                                <th>Pay Mode</th>
                                                <th>Invoice No</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        	<?php $i = 1; $credit =0; $debit =0; foreach($table->result() as $row):?>
                                            <tr>
                                                <td><?php  echo $i; ?></td>
                                                <td><?php echo $row->paid_by; ?></td>
                                                <td><?php echo $row->paid_to; ?></td>
                                                <td><?php echo $row->reason; ?></td>
                                                <td><font color="red"><?php if($row->dabit_cradit=="0"){$total = $total+ $row->total_amount; $debit = $debit + $row->total_amount; echo $row->total_amount; }?></font></td>
                                                 <td><font color="green"><?php if($row->dabit_cradit=="1"){$total = $total+ $row->total_amount; $credit =$credit +$row->total_amount;  echo $row->total_amount;; } ?></font></td>
                                              
                                                <td><?php if($row->closing_balance>0){?>
                                                <font color="green"><?php }else{?>
                                                <font color="red">
                                                <?php } echo $row->closing_balance; ?></font></td>
                                                <td><?php echo date("d-M-Y", strtotime($row->pay_date)); ?></td>
                                                <td><?php echo $row->pay_mode; ?></td>
                                                <td><?php echo $row->invoice_no; ?></td>
                                            </tr>
                                            <?php $i++; endforeach;?>
                                              <tr>
                                                <td></td>
                                                <td>Total</td>
                                                <td></td>
                                                <td></td>
                                                <td><font color="red"><?php echo $debit;?></font></td>
                                                <td><font color="green"><?php echo $credit;?></font></td>
                                                <td><?php if($total>0){?>
                                                <font color="green"><?php }else{?>
                                                <font color="red">
                                                <?php }  echo $total; ?></font></td>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                            </tr>
                                        </tbody>
                                       </table>  
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div><!-- Row -->
                </div><!-- Main Wrapper -->