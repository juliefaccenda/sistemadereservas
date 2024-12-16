<?php
require 'db.php';

$hotel_id = $_POST['hotel_id'];
$checkin = $_POST['checkin'];
$checkout = $_POST['checkout'];

// Inserir reserva
$sql = "INSERT INTO reservas (hotel_id, checkin, checkout) VALUES (:hotel_id, :checkin, :checkout)";
$stmt = $pdo->prepare($sql);
$stmt->execute(['hotel_id' => $hotel_id, 'checkin' => $checkin, 'checkout' => $checkout]);

echo "Reserva efetuada com sucesso!";
?>
