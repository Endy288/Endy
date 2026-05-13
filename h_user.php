<?php
include "koneksi.php";

$id = $_GET['id'];

$query = mysqli_query($conn, "DELETE FROM users WHERE id='$id'");

if($query){

    echo "
    <script>
        alert('User berhasil dihapus!');
        window.location='users.php';
    </script>
    ";

} else {

    echo "
    <script>
        alert('User gagal dihapus!');
        window.location='users.php';
    </script>
    ";
}
?>