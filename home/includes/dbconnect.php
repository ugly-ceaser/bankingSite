<?php

try {
    $conn = new PDO('mysql:host=localhost;dbname=midspri2_system', "midspri2_admin", "A(hBSp6Fgec*");
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch(PDOException $e) {
    //echo 'ERROR: ' . $e->getMessage();
}