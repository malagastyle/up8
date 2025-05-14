<?php
require_once 'includes/config.php';

header('Content-Type: application/json');

if (empty($_POST['id'])) {
    die(json_encode(['error' => 'ID записи не указан']));
}

$id = intval($_POST['id']);

$stmt = $conn->prepare("DELETE FROM journal WHERE id = ?");
$stmt->bind_param('i', $id);

if ($stmt->execute()) {
    echo json_encode(['success' => true]);
} else {
    echo json_encode(['error' => $conn->error]);
}
?>