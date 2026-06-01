<?php
session_start();

// Hapus semua data session
$_SESSION = [];

//Hancur Session
session_destroy();

// Redirect ke halaman login atau home
header('Location: login.php');
exit;
?>