<?php
require 'db.php';

$checkin = $_GET['checkin'];
$checkout = $_GET['checkout'];

$sql = "SELECT * FROM hoteis WHERE id NOT IN (
            SELECT hotel_id FROM reservas 
            WHERE NOT (checkout <= :checkin OR checkin >= :checkout)
        )";
$stmt = $pdo->prepare($sql);
$stmt->execute(['checkin' => $checkin, 'checkout' => $checkout]);
$hoteisDisponiveis = $stmt->fetchAll(PDO::FETCH_ASSOC);

echo json_encode($hoteisDisponiveis);
?>
