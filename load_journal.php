<?php
require_once 'includes/config.php';

header('Content-Type: application/json');

$page = isset($_POST['page']) ? intval($_POST['page']) : 1;
$recordsPerPage = isset($_POST['recordsPerPage']) ? intval($_POST['recordsPerPage']) : 10;
$offset = ($page - 1) * $recordsPerPage;

$groupId = isset($_POST['groupId']) ? $_POST['groupId'] : '';
$subjectId = isset($_POST['subjectId']) ? $_POST['subjectId'] : '';
$date = isset($_POST['date']) ? $_POST['date'] : '';

$sql = "SELECT 
            j.id, j.day, j.mark, j.pres,
            g.name as group_name,
            s.fam as student_fam, s.name as student_name, s.otch as student_otch,
            c.name as city_name,
            pr.name as subject_name,
            p.fam as prepod_fam, p.name as prepod_name
        FROM journal j
        LEFT JOIN students s ON j.student_id = s.id
        LEFT JOIN prepod p ON j.prepod_id = p.id
        LEFT JOIN predmets pr ON j.predmet_id = pr.id
        LEFT JOIN city c ON s.city_id = c.id
        LEFT JOIN sgroups g ON s.group_id = g.id
        WHERE 1=1";

$params = [];
$types = '';

if (!empty($groupId)) {
    $sql .= " AND s.group_id = ?";
    $params[] = $groupId;
    $types .= 'i';
}

if (!empty($subjectId)) {
    $sql .= " AND j.predmet_id = ?";
    $params[] = $subjectId;
    $types .= 'i';
}

if (!empty($date)) {
    $sql .= " AND j.day = ?";
    $params[] = $date;
    $types .= 's';
}

$stmt = $conn->prepare($sql . " LIMIT ? OFFSET ?");
if ($stmt === false) {
    die(json_encode(['error' => $conn->error]));
}

$params[] = $recordsPerPage;
$params[] = $offset;
$types .= 'ii';

if (!empty($types)) {
    $stmt->bind_param($types, ...$params);
}

$stmt->execute();
$result = $stmt->get_result();
$data = $result->fetch_all(MYSQLI_ASSOC);

$countSql = "SELECT COUNT(*) as total FROM journal j WHERE 1=1";
if (!empty($groupId)) $countSql .= " AND j.student_id IN (SELECT id FROM students WHERE group_id = $groupId)";
if (!empty($subjectId)) $countSql .= " AND j.predmet_id = $subjectId";
if (!empty($date)) $countSql .= " AND j.day = '$date'";

$totalResult = $conn->query($countSql);
$totalRecords = $totalResult->fetch_assoc()['total'];

echo json_encode([
    'data' => $data,
    'totalRecords' => $totalRecords
]);
?>