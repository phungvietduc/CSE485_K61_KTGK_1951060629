<?php
if(isset($_POST['btthem']))
{
    $hoten=$_POST['hoten'];
    $sex=$_POST['sex'];
    $age=$_POST['age'];
    $hp=$_POST['nhommau'];
    $sdt=$_POST['sdt'];
    include('connect.php');
    
    $sql = "INSERT INTO blood_donor (bd_name,bd_sex,bd_age,bd_group,bd_phno)
    VALUES ('$hoten','$sex','$age','$hp','$sdt')";

    if (mysqli_query($conn, $sql)) 
    {
    echo "New record created successfully";
    }
    else {
    echo "Error: " . $sql . "<br>" . mysqli_error($conn);
    }
    // header("Location:index.php");
    mysqli_close($conn);
}
elseif(isset($_POST['btxoa']))
{
    $id=$_POST['id'];
    include('connect.php');
    $sql = "DELETE FROM blood_donor WHERE bd_id='$id'";

if (mysqli_query($conn, $sql)) {
  echo "Record deleted successfully";
} else {
  echo "Error deleting record: " . mysqli_error($conn);
}
header("Location:index.php");
mysqli_close($conn);

}
?>