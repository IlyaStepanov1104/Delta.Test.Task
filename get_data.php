<?php
$DB_SERVER = "localhost";
$DB_USER = "u1279356_root";
$DB_PASS = "34k-kWK-ZEZ-Uxd";
$DB_NAME = "u1279356_DeltaTestTask";
try {
    $pdo = new PDO('mysql:dbname=' . $DB_NAME . ';host=' . $DB_SERVER, $DB_USER, $DB_PASS);
} catch (PDOException $e) {
    echo json_encode(array("type" => "error", "message" => "ERROR: Cannot connect with database!", "data" => ""));
    return;
}
if ($_POST['type'] == 'last') {
    foreach ($_POST['table'] as $table) {
        try{
            $sth = $pdo->prepare("SELECT * FROM `" . $table . "` ORDER BY `" . $table . "`.`date` DESC LIMIT 2");
            $sth->execute();
            $res[$table] = $sth->fetchAll(PDO::FETCH_ASSOC);
        } catch (PDOException $e){
            echo json_encode(array("type" => "error", "message" => "ERROR: Incorrect table name:".$e->getMessage(), "data" => ""));
            return;
        }
    }
    echo json_encode(array("type" => "successful", "message" => "Program is successful", "result" => $res));
} else if($_POST['type'] == 'all') {
    $sth = $pdo->prepare("SELECT * FROM `".$_POST['table']."` ORDER BY `".$_POST['table']."`.`date` DESC LIMIT 10");
    $sth->execute();
    $res = array_reverse($sth->fetchAll(PDO::FETCH_ASSOC));
    echo json_encode(array("type" => "successful", "message" => "Program is successful", "data" => $res));
} else {
    echo json_encode(array("type" => "error", "message" => "ERROR: Incorrect request!", "data" => ""));
}
