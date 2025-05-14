<?php
require_once 'includes/config.php';

header('Content-Type: application/json');

if (!isset($_POST['id'])) {
    die(json_encode(['error' => 'ID записи не указан']));
}

$id = intval($_POST['id']);

$stmt = $conn->prepare("SELECT * FROM journal WHERE id = ?");
$stmt->bind_param('i', $id);
$stmt->execute();
$result = $stmt->get_result();

if ($result->num_rows === 0) {
    die(json_encode(['error' => 'Запись не найдена']));
}

echo json_encode($result->fetch_assoc());
?>