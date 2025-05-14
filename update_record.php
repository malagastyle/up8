<?php
require_once 'includes/config.php';

header('Content-Type: application/json');

if (empty($_POST['id'])) {
    die(json_encode(['error' => 'ID записи не указан']));
}

$required = ['day', 'student_id', 'predmet_id', 'prepod_id', 'pres'];
foreach ($required as $field) {
    if (empty($_POST[$field])) {
        die(json_encode(['error' => "Поле $field обязательно для заполнения"]));
    }
}

$id = intval($_POST['id']);
$day = $_POST['day'];
$student_id = intval($_POST['student_id']);
$predmet_id = intval($_POST['predmet_id']);
$prepod_id = intval($_POST['prepod_id']);
$pres = intval($_POST['pres']);
$mark = isset($_POST['mark']) && $_POST['mark'] !== '' ? intval($_POST['mark']) : null;

if ($pres !== 1 && !is_null($mark)) {
    die(json_encode(['error' => 'Невозможно поставить оценку отсутствующему']));
}

$stmt = $conn->prepare("UPDATE journal SET 
                        day = ?, 
                        student_id = ?, 
                        predmet_id = ?, 
                        prepod_id = ?, 
                        mark = ?, 
                        pres = ?
                        WHERE id = ?");
$stmt->bind_param('siiisii', $day, $student_id, $predmet_id, $prepod_id, $mark, $pres, $id);

if ($stmt->execute()) {
    echo json_encode(['success' => true]);
} else {
    echo json_encode(['error' => $conn->error]);
}
?>