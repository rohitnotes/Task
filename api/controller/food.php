<?php
class Food
{
	/*******************************************************************************************************************
	 *******************************************************************************************************************
	 **************************************** GET CATEGORY *************************************************************
	 *******************************************************************************************************************
	 ******************************************************************************************************************/
	public function getCategories()
	{
        $connection = DatabaseConnection::getConnection();

		$query = "SELECT * FROM category";
		$result = mysqli_query($connection,$query);
		$response = array();

		while($row = mysqli_fetch_array($result))
		{
			array_push($response,array(
                "id"=>intval($row['id']),
                "category_name"=>$row['category_name'],
                "image"=>$row['image']
                )
            );
		}

        header('Content-type: application/json');
		echo json_encode(array("response_code"=>200,"response_message"=>'Fetch Category Success',"data"=>$response));

		mysqli_close($connection);
	}
	/*******************************************************************************************************************
     *******************************************************************************************************************
     **************************************** GET CATEGORY *************************************************************
     *******************************************************************************************************************
     ******************************************************************************************************************/
	public function getItems($categoryId)
	{
        $connection = DatabaseConnection::getConnection();

		$query = "SELECT * FROM item WHERE category_id='$categoryId'";
		$result = mysqli_query($connection,$query);
		$response = array();
		
		while($row = mysqli_fetch_array($result))
		{
            array_push($response,array(
              "id"=>intval($row['id']),
              "category_id"=>intval($row['category_id']),
              "name"=>$row['name'],
              "rate"=>$row['rate'],
              "image"=>$row['image'])
            );
		}
			
        header('Content-type: application/json');
		echo json_encode(array("response_code"=>200,"response_message"=>'Fetch Item Success','data'=>$response));

		mysqli_close($connection);
	}
}
?>
