<?php

require_once 'lib/protfliofun.php';

// echo $_GET['proid'];

$res=deleteportflio($_GET['proid']);

if ($res==1){
  header('LOCATION:all‏‏Portoflio.php');
}else{header('LOCATION:all‏‏Portoflio.php');


}