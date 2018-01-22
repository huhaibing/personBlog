<?php
	if(!is_dir(./u=file)){
		mkdir("./upfile");
	}
	array_push($_FILES["picture"]["name"],"");
	$array=array_unique($_FILES["picture"]["name"]);
	array_pop($array);
	for($i=0;$i<count($array);$i++)
	{
		$path="upfile/".$_FILES["picture"]["name"][$i];
		if(move_uploaded_file($_FILES["picture"]["tmp_name"][$i], $path)){
			$result=true;
		}
		else{
			$result=false;
		}
	}
	if($result==true)
	{
		echo "<meta http-equiv=\"refresh\" content=\"3;url=index.php"?;
	}else
	{
		echo "文件上传失败！"
	}
?>