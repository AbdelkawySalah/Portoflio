<?php

function addportflio($img,$desc,$userid){
     $co= mysqli_connect("localhost","root","","proflioproj");
     $query="insert into proflio (img,description,user_id) values ('$img','$desc','$userid')";
          mysqli_query($co,$query);
         $res=mysqli_affected_rows($co);
        if($res==1){
            
        return true;
        }
         else{
        return false;
        }
        }
        
        
        function GetPortofliData(){
        $con=mysqli_connect("localhost","root","","proflioproj");
        $query="select * from proflio";
        $q=mysqli_query($con,$query);
        $projects=[];
        while($res=mysqli_fetch_assoc($q)){
             $projects[]=$res;
        }
        return $projects;
        }
        
        
        function GetPortofliDatabyId($id){
        $con=mysqli_connect("localhost","root","","proflioproj");
        $query="select * from proflio where id=$id";
        $q=mysqli_query($con,$query);
        $res=mysqli_fetch_assoc($q);
        return $res;
        }
        
        
        function GetviewPortoflo(){
        $con=mysqli_connect("localhost","root","","proflioproj");
        $query="select * from userprotflio";
        $q=mysqli_query($con,$query);
        $projects=[];
        while($res=mysqli_fetch_assoc($q)){
             $projects[]=$res;
        }
        return $projects;
        }
        
        
        function deleteportflio($pro_id){
        $con=mysqli_connect("localhost","root","","proflioproj");
        $query="delete from proflio where id=$pro_id";
        mysqli_query($con,$query);
        $res=mysqli_affected_rows($co);
        if($res==1){
            
        return true;
        }
         else{
        return false;
        }
        }
        
        // (img,description,user_id
        function updateportflio($id,$img,$desc){
        $co=mysqli_connect("localhost","root","","proflioproj");
        $query="update  proflio set description='$desc'";
        if(!empty($img)){
          $query .=" ,img='$img'";
        }
        $query .=" where id=$id";
        
        mysqli_query($co,$query);
        $res=mysqli_affected_rows($co);
        if($res==1){
          
        return true;
        }
        else{
        return false;
        }
        }
        
        




// class portflio{
//   public $con=mysqli_connect("localhost","root","","proflioproj");
//   function addportflio($img,$desc,$userid){
// $this->con;
// $query="insert into proflio (img,description,user_id) values ('$img','$desc','$userid')";
//     mysqli_query($co,$query);
//    $res=mysqli_affected_rows($co);
//   if($res==1){
      
//   return true;
//   }
//    else{
//   return false;
//   }
//   }
  
  
//   function GetPortofliData(){
//   $con=mysqli_connect("localhost","root","","proflioproj");
//   $query="select * from proflio";
//   $q=mysqli_query($con,$query);
//   $projects=[];
//   while($res=mysqli_fetch_assoc($q)){
//        $projects[]=$res;
//   }
//   return $projects;
//   }
  
  
//   function GetPortofliDatabyId($id){
//   $con=mysqli_connect("localhost","root","","proflioproj");
//   $query="select * from proflio where id=$id";
//   $q=mysqli_query($con,$query);
//   $res=mysqli_fetch_assoc($q);
//   return $res;
//   }
  
  
//   function GetviewPortoflo(){
//   $con=mysqli_connect("localhost","root","","proflioproj");
//   $query="select * from userprotflio";
//   $q=mysqli_query($con,$query);
//   $projects=[];
//   while($res=mysqli_fetch_assoc($q)){
//        $projects[]=$res;
//   }
//   return $projects;
//   }
  
  
//   function deleteportflio($pro_id){
//   $con=mysqli_connect("localhost","root","","proflioproj");
//   $query="delete from proflio where id=$pro_id";
//   mysqli_query($con,$query);
//   $res=mysqli_affected_rows($co);
//   if($res==1){
      
//   return true;
//   }
//    else{
//   return false;
//   }
//   }
  
//   // (img,description,user_id
//   function updateportflio($id,$img,$desc){
//   $co=mysqli_connect("localhost","root","","proflioproj");
//   $query="update  proflio set description='$desc'";
//   if(!empty($img)){
//     $query .=" ,img='$img'";
//   }
//   $query .=" where id=$id";
  
//   mysqli_query($co,$query);
//   $res=mysqli_affected_rows($co);
//   if($res==1){
    
//   return true;
//   }
//   else{
//   return false;
//   }
//   }
  
// }
