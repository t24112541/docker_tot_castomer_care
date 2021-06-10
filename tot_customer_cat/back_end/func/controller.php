<?php 
ob_start();
class controller{
	private $conn;
	function __construct($host,$user,$pass,$db){
		// error_reporting(0);
		$con=new mysqli($host,$user,$pass,$db);
		if(!$con){echo "connect error: ".$con->connect_error;}
		else{$con->set_charset("utf8");$this->conn=$con;date_default_timezone_set("Asia/Bangkok");}
	}
	function chk_session(){
		if(isset($_SESSION['u_id'])){
			$res=[
				"status"=>1,
			];
		}else{
			$res=[
				"status"=>0,
				"msg"=>"not login",
			];
		}
		return json_encode($res);
	}
	function chk_connect(){
		if($this->conn->connect_error){
			$res=[
				"status"=>0,
				"msg"=>"connect error: ".$this->conn->connect_error,
			];
		}else{
			$res=[
				"status"=>1
			];
		}
		return json_encode($res);
	}
	function login($user,$pass){
			$que=$this->conn->query("select * from cc_employee where e_username='{$user}' && e_password='{$pass}'");
			if($que->num_rows==1){
				$sh=$que->fetch_assoc();

				$res=[
					"status"=>1,
					"auth"=>1,
					"usr"=>$sh['e_id'],
					"pv_id"=>$sh['pv_id'],
				];
				
			}else{
				$res=[
					"status"=>0,
					"msg"=>"ไม่พบ username password ดังกล่าว"
				];
			}		
		return json_encode($res);
	}
	function regist($data){
		$field="";$i=0;$val="";

		foreach ($data as $key => $value) {
			$field.=$key;
			if($key=="e_password"){
				$val.="'".$this->re_encode($value)."'";
			}else{
				$val.="'".$value."'";
			}
			if($i!=count($data)-1){$field.=",";$val.=",";}
			$i++;
		}

		return $this->insert("cc_employee",$field,$val);
	}
	function insert($table,$field,$val){
		// echo "insert into $table ({$field}) values ({$val})";
		$que=$this->conn->query("insert into $table ({$field}) values ({$val})");
		if(!$que){
			$res=[
				"msg"=>"error : ".$this->conn->error,
				"status"=>0
			];
		}else{
			$res=[
				"msg"=>"success",
				"status"=>1,
				"last_id"=>$this->conn->insert_id
			];
		}return json_encode($res);

	}
	function update($table,$val,$where){
		// echo "update $table set $val where $where";

		$que=$this->conn->query("update $table set $val where $where");
		if(!$que){
			$res=[
				"msg"=>"error : ".$this->conn->error,
				"status"=>0
			];
		}else{
			$res=[
				"msg"=>"success",
				"status"=>1
			];
		}return json_encode($res);

	}
	function delete($table,$where){
		$que=$this->conn->query("delete from $table where $where");
		if(!$que){
			$res=[
				"msg"=>"error : ".$this->conn->error,
				"status"=>0
			];
		}else{
			$res=[
				"msg"=>"success",
				"status"=>1
			];
		}return json_encode($res);

	}
	function select($table,$select,$where){
		$data=[];
		// echo "select $select from $table $where"."end \n";
		$que=$this->conn->query("select $select from $table $where");
		if($que->num_rows!=0){
			foreach ($que as $key => $value) {
				$data[$key]=$value;
			}
		}else{
			$data['msg']="null";
		}
		
		return json_encode($data);
	}
	function count_rows($table,$select,$where){
		$que=$this->conn->query("select $select from $table $where");
		return $que->num_rows;
	}
	
	function get_arr($data){
		echo "<pre>";
		print_r($data);
		echo "</pre>";
	}
}
//  $db=new controller("localhost","root","","customer_categories");
//  $db->re_encode("admin");
?>