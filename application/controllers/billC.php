<?php
class BillC extends CI_Controller{
	function __construct()
	{
		parent::__construct();
		$this->isLogin();
	}
	
	function isLogin(){
		$is_login = $this->session->userdata('is_login');
		$is_lock = $this->session->userdata('is_lock');
		if(!$is_login){
			//echo $is_login;
			redirect(base_url()."login/index");
		}
		elseif(!$is_lock){
			redirect(base_url()."login/lockPage");
		}
	}
	
	function interBillInfo(){
		if($this->bill_info->insert()){
			redirect(base_url()."home/pBillEntry/success");
		}else{
			redirect(base_url()."home/pBillEntry/fail");
		}
	}
	
	function deleteBill(){
	   $billinfo  = $this->uri->segment(3);
	  
	   $this->db->where("reff_bil_num",$billinfo);
	   $bilinfor = $this->db->get("bill_info")->row();
	   
	   	$this->load->model("opening_closing_balance");
		$closing = $this->opening_closing_balance->closing();
		$cu_closing = $closing->opening_balance + $bilinfor->total_prize;
		$this->opening_closing_balance->update($cu_closing);
	   
	   	$n = 1000 + $this->invoice_serial->graterId()+1;
		$invoice_no = "RDw".$n;
		
	
		
		$in = array(
				"invoice_no" => $invoice_no,
				"reason" => "Wrong BIll entry ".$billinfo,
				"invoice_date" => date("Y-m-d"),
				"bill_no"=>$billinfo
		);
		$dayBook = array(
				"paid_to" => "Admin",
				"paid_by" => "Software",
				"reason" => "(Wrong Bill number by =) ".$billinfo,
				"dabit_cradit" => "1",
				"paid_amount" => $bilinfor->total_prize,
				"total_amount" => $bilinfor->total_prize,
				"closing_balance" => $cu_closing,
				"pay_date" => date("Y-m-d"),
				"pay_mode" => "Cash",
				"clinic_id" => $this->session->userdata("clinic_id"),
				"invoice_no" => $invoice_no
		);
		
		$a = $this->invoice_serial->insert($in);
		$c = $this->day_book->insert($dayBook);
		
		
	  
	     $this->db->where("reff_bill_num",$billinfo);
	     $this->db->delete("enter_stock1");
	  	 $this->db->where("reff_bil_num",$billinfo);
	  	 $this->db->delete("bill_info");?>
	   <script>
	   alert("Bill Deleted Successfully!!");
	   </script>
<?php	
	    redirect(base_url()."home/pBillHistory.jsp");
	    
	    
	}

}