<?php
    if (isset($_POST["submit"])) {

        require_once("connMySQL.php");
        require_once("functions.php");

        session_start();

        $users_id = $_SESSION["userid"];
        $about = $_POST["profiles_about"];
        $title = $_POST["profiles_introtitle"];
        $content = $_POST["profiles_introtext"];

        setProfileInfo($conn, $about, $title, $content, $users_id);
        header("location: ../membersystem/member_center.php");
    } else {
        header("location: ../membersystem/member_center.php?error=setfailed");
    }
?>