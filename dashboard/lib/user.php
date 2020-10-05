<?php


function addNewUser($username,$email,$password){
    $co=mysqli_connect("localhost","root","","proflioproj");
    $query="insert into users (sname,email,password) values ('$username','$email','$password')";
    mysqli_query($co,$query);
   $res=mysqli_affected_rows($co);
  if($res==1){
      
return true;
  }
   else{
return false;
}
}


function loginuser($email,$password){
  $co=mysqli_connect("localhost","root","","proflioproj");
  $query="select * from users where email='$email' and password='$password'";
  $q=mysqli_query($co,$query);
  $res=mysqli_fetch_assoc($q);
 return $res;

}