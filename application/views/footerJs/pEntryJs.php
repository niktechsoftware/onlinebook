<script src="<?php echo base_url()?>assets/plugins/jquery/jquery-2.1.3.min.js"></script>
<script src="<?php echo base_url()?>assets/plugins/jquery-ui/jquery-ui.min.js"></script>
<script src="<?php echo base_url()?>assets/plugins/pace-master/pace.min.js"></script>
<script src="<?php echo base_url()?>assets/plugins/jquery-blockui/jquery.blockui.js"></script>
<script src="<?php echo base_url()?>assets/plugins/bootstrap/js/bootstrap.min.js"></script>
<script src="<?php echo base_url()?>assets/plugins/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<script src="<?php echo base_url()?>assets/plugins/switchery/switchery.min.js"></script>
<script src="<?php echo base_url()?>assets/plugins/uniform/jquery.uniform.min.js"></script>
<script src="<?php echo base_url()?>assets/plugins/classie/classie.js"></script>
<script src="<?php echo base_url()?>assets/plugins/waves/waves.min.js"></script>
<script src="<?php echo base_url()?>assets/plugins/3d-bold-navigation/js/main.js"></script>
<script src="<?php echo base_url()?>assets/plugins/summernote-master/summernote.min.js"></script>
<script src="<?php echo base_url()?>assets/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
<script src="<?php echo base_url()?>assets/plugins/bootstrap-colorpicker/js/bootstrap-colorpicker.js"></script>
<script src="<?php echo base_url()?>assets/js/modern.min.js"></script>
<script src="<?php echo base_url()?>assets/js/pages/form-elements.js"></script>
        
<script>

function proEmailId(inputid,spanid) { 
                    var text_value = document.getElementById(inputid).value;
                    if (!text_value.match(/^[a-z0-9._]+[@][a-z]+[.][a-z]+$/)) {
                        document.getElementById(spanid).innerHTML = "Enter valid email id";
                        document.getElementById(inputid).focus();
                        if (text_value == "") {
                            document.getElementById(spanid).innerHTML = " ";
                        }
                    }else{
                        document.getElementById(spanid).innerHTML = " ";
                        document.getElementById(inputid).focus();
                    }

                } 

            $('[id="discroption"]').keyup(function() {
            var value = $(this).val();
            value = value.replace(/[ ]+/g," ").replace(/[^(A-Za-z0-9 )]*/g, "");
            $(this).val(value);
          });                
	
			jQuery(document).ready(function() {

				
				$( "#companyName" ).autocomplete({
					
			    	source: '<?php echo site_url("ajaxSale/getEnterbilldata/?");?>',
			    	close: function(){
						var name = $("#companyName").val();
            name = name.replace(/\D/g, "").split(/(?:([\d]{4}))/g).filter(s => s.length > 0).join("");
            $(this).val(name);
						$.post("<?php echo site_url("ajaxSale/enterCompanyName") ?>",{name : name}, function(data){
							var d = jQuery.parseJSON(data);
							$("#msg").html(d.msg);
							$("#daddress").val(d.dealer_address);
							$("#demail").val(d.dealer_email);
							$("#mobile1").val(d.dealar_mobile1);
							$("#mobile2").val(d.dealar_mobile1);
							$("#tin").val(d.tin_no);


            name = name.replace(/\D/g, "").split(/(?:([\d]{4}))/g).filter(s => s.length > 0).join("");
            $(this).val(name);
						
						
						});
					 }
			    });

 //////////////////////----------Product Bill Entry Validation Start--------------/////////////////////////
        $('[id="companyName"]').keypress(function() {
            var value = $(this).val();
            value = value.replace(/[ ]+/g," ").replace(/[^(A-Za-z )]*/g, "");
            $(this).val(value);
          });
        $('[id="daddress"]').keyup(function() {
            var value = $(this).val();
            value = value.replace(/[ ]+/g," ").replace(/[^(A-Za-z0-9 )]*/g, "");
            $(this).val(value);
          });
        $('[id="mobile"]').keyup(function() {
            var value = $(this).val();
            value = value.replace(/[^(0-9)]*/g, "");
            $(this).val(value);
          });
        $('[id="mobile2"]').keyup(function() {
            var value = $(this).val();
            value = value.replace(/[^(0-9)]*/g, "");
            $(this).val(value);
          });
        $('[id="billNumber"]').keyup(function() {
            var value = $(this).val();
            value = value.replace(/[^(A-Za-z0-9)]*/g, "");
            $(this).val(value);
          });
        $('[id="number"]').keyup(function() {
            var value = $(this).val();
            value = value.replace(/[^(A-Za-z0-9)]*/g, "");
            $(this).val(value);
          });
        $('[id="code"]').keyup(function() {
            var value = $(this).val();
            value = value.replace(/[^(0-9)]*/g, "");
            $(this).val(value);
          });
       
        $('[name="product_quantity"]').keyup(function() {
            var value = $(this).val();
            value = value.replace(/[^(0-9 )]*/g, "");
            $(this).val(value);
          });
        $('[id="vatper"]').keyup(function() {
            var value = $(this).val();
            value = value.replace(/[^(0-9.)]*/g, "");
            $(this).val(value);
          });
        $('[id="satper"]').keyup(function() {
            var value = $(this).val();
            value = value.replace(/[^(0-9.)]*/g, "");
            $(this).val(value);
          });
        $('[id="roff"]').keyup(function() {
            var value = $(this).val();
            value = value.replace(/[^(0-9)]*/g, "");
            $(this).val(value);
          });
        $('[id="freight"]').keyup(function() {
            var value = $(this).val();
            value = value.replace(/[ ]+/g," ").replace(/[^(A-Za-z0-9 )]*/g, "");
            $(this).val(value);
          });
        $('[id="discount"]').keyup(function() {
            var value = $(this).val();
            value = value.replace(/[^(0-9)]*/g, "");
            $(this).val(value);
          });
        $('[id="total_prize"]').keyup(function() {
            var value = $(this).val();
            value = value.replace(/[^(0-9)]*/g, "");
            $(this).val(value);
          });
        $('[id="amount_paid"]').keyup(function() {
            var value = $(this).val();
            value = value.replace(/[^(0-9)]*/g, "");
            $(this).val(value);
          });
        $('[id="balance"]').keyup(function() {
            var value = $(this).val();
            value = value.replace(/[^(0-9)]*/g, "");
            $(this).val(value);
          });
           


/////////////////////--------End Validation Of Product Bill Entry------------- /////////////////////////////////

        

				$('input#amount_paid').keyup(function(){
					var total_prize = Number($('#total_prize').val());
					var amount_paid = Number($('#amount_paid').val());
					var bal = total_prize - amount_paid;
					
					$("#balance").val(bal);
				});	

				$("#bill_no").keyup(function(){
					var bill_no = $("#bill_no").val();	
					$.post("<?php echo site_url("enterStockController/checkBillNumber") ?>", {bill_no : bill_no}, function(data){		
						$("#checkbill").html(data);
					});

				});
				
				
				
				});
				// 				 function digitvalidation()
    //  {
    //    var text_value = document.getElementById("mobile").value;
    //       if (!text_value.match(/[0-9]$/))
    //          {
    //             document.getElementById("pin").innerHTML = "Invalid Mobile Number";
    //                 if(text_value=="")
    //                   {
    //                         document.getElementById("pin").innerHTML = " ";
    //                   }
    //          }
    // }
				// 						 function digitvalidation2()
    //  {
    //    var text_value = document.getElementById("mobile2").value;
    //       if (!text_value.match(/[0-9]$/))
    //          {
    //             document.getElementById("pin2").innerHTML = "Invalid Mobile Number";
    //                 if(text_value=="")
    //                   {
    //                         document.getElementById("pin2").innerHTML = " ";
    //                   }
    //          }
    // }
				// 								 function digitvalidation3()
    //  {
    //    var text_value = document.getElementById("product_quantity").value;
    //       if (!text_value.match(/[0-9]$/))
    //          {
    //             document.getElementById("pin3").innerHTML = "Invalid Quantity Number";
    //                 if(text_value=="")
    //                   {
    //                         document.getElementById("pin3").innerHTML = " ";
    //                   }
    //          }
    // }
				// 										 function digitvalidation3()
    //  {
    //    var text_value = document.getElementById("product_quantity").value;
    //       if (!text_value.match(/[0-9]$/))
    //          {
    //             document.getElementById("pin3").innerHTML = "Invalid Quantity Number";
    //                 if(text_value=="")
    //                   {
    //                         document.getElementById("pin3").innerHTML = " ";
    //                   }
    //          }
    // }
				// 										 function digitvalidation3()
    //  {
    //    var text_value = document.getElementById("product_quantity").value;
    //       if (!text_value.match(/[0-9]$/))
    //          {
    //             document.getElementById("pin3").innerHTML = "Invalid Quantity Number";
    //                 if(text_value=="")
    //                   {
    //                         document.getElementById("pin3").innerHTML = " ";
    //                   }
    //          }
    // }
				// 										 function digitvalidation3()
    //  {
    //    var text_value = document.getElementById("product_quantity").value;
    //       if (!text_value.match(/[0-9]$/))
    //          {
    //             document.getElementById("pin3").innerHTML = "Invalid Quantity Number";
    //                 if(text_value=="")
    //                   {
    //                         document.getElementById("pin3").innerHTML = " ";
    //                   }
    //          }
    // }
				// 										 function digitvalidation3()
    //  {
    //    var text_value = document.getElementById("product_quantity").value;
    //       if (!text_value.match(/[0-9]$/))
    //          {
    //             document.getElementById("pin3").innerHTML = "Invalid Quantity Number";
    //                 if(text_value=="")
    //                   {
    //                         document.getElementById("pin3").innerHTML = " ";
    //                   }
    //          }
    // }
				// 										 function digitvalidation3()
    //  {
    //    var text_value = document.getElementById("product_quantity").value;
    //       if (!text_value.match(/[0-9]$/))
    //          {
    //             document.getElementById("pin3").innerHTML = "Invalid Quantity Number";
    //                 if(text_value=="")
    //                   {
    //                         document.getElementById("pin3").innerHTML = " ";
    //                   }
    //          }
    // }
				// 										 function digitvalidation9()
    //  {
    //    var text_value = document.getElementById("product_quantity").value;
    //       if (!text_value.match(/[0-9]$/))
    //          {
    //             document.getElementById("pin9").innerHTML = "Invalid Quantity Number";
    //                 if(text_value=="")
    //                   {
    //                         document.getElementById("pin9").innerHTML = " ";
    //                   }
    //          }
    // }
	
			
		</script>