<?php
require_once 'init.php';

if (!isset($_SESSION['loginned']) || !$_SESSION['loginned']) {
    header('Location: index.php');
    exit();
}
?>

<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Журнал успеваемости</title>
    <link rel="stylesheet" href="css/style.css">
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
</head>
<body>
    <header>
        <div class="user-info">
            <span>Вы вошли как: <?php echo htmlspecialchars($_SESSION['userName']); ?></span>
            <a href="logout.php">Выйти</a>
        </div>
    </header>

    <div class="container">
        <div class="filters">
            <select id="group-filter">
                <option value="">Все группы</option>
                <?php
                $groups = mysqli_query($db_handler, "SELECT * FROM sgroups");
                while($group = mysqli_fetch_assoc($groups)) {
                    echo "<option value='{$group['id']}'>{$group['name']}</option>";
                }
                ?>
            </select>
            
            <select id="subject-filter">
                <option value="">Все предметы</option>
                <?php
                $subjects = mysqli_query($db_handler, "SELECT * FROM predmets");
                while($subject = mysqli_fetch_assoc($subjects)) {
                    echo "<option value='{$subject['id']}'>{$subject['name']}</option>";
                }
                ?>
            </select>
            
            <input type="date" id="date-filter">
            <button id="apply-filters">Применить</button>
            <button id="reset-filters">Сбросить</button>
        </div>
        
        <?php if ($_SESSION['userIsEdit'] == 1 || $_SESSION['userIsAdmin'] == 1): ?>
            <button id="add-record-btn">Добавить запись</button>
        <?php endif; ?>
        
        <div class="journal-table-container">
            <table id="journal-table" class="journal-table">
                <thead>
                    <tr>
                        <th>Дата</th>
                        <th>Группа</th>
                        <th>Студент</th>
                        <th>Город</th>
                        <th>Предмет</th>
                        <th>Преподаватель</th>
                        <th>Присутствие</th>
                        <th>Оценка</th>
                        <?php if ($_SESSION['userIsEdit'] == 1 || $_SESSION['userIsAdmin'] == 1): ?>
                            <th>Действия</th>
                        <?php endif; ?>
                    </tr>
                </thead>
                <tbody>
                </tbody>
            </table>
        </div>
        
        <div class="pagination">
            <button id="prev-page">Предыдущая</button>
            <span id="page-info">Страница 1 из 1</span>
            <button id="next-page">Следующая</button>
        </div>
    </div>

    <?php if ($_SESSION['userIsEdit'] == 1 || $_SESSION['userIsAdmin'] == 1): ?>
    <div id="edit-modal" class="modal">
        <div class="modal-content">
            <span class="close">&times;</span>
            <h2 id="modal-title">Добавить запись</h2>
            <form id="journal-form">
                <input type="hidden" id="record-id">
                
                <div class="form-group">
                    <label for="record-date">Дата:</label>
                    <input type="date" id="record-date" required>
                </div>
                
                <div class="form-group">
                    <label for="record-student">Студент:</label>
                    <select id="record-student" required>
                        <option value="">Выберите студента</option>
                        <?php
                        $students = mysqli_query($db_handler, "SELECT s.id, s.fam, s.name, s.otch, g.name as group_name 
                                                             FROM students s 
                                                             LEFT JOIN sgroups g ON s.group_id = g.id
                                                             ORDER BY s.fam, s.name");
                        while($student = mysqli_fetch_assoc($students)) {
                            echo "<option value='{$student['id']}' data-group='{$student['group_name']}'>
                                    {$student['fam']} {$student['name']} {$student['otch']} ({$student['group_name']})
                                  </option>";
                        }
                        ?>
                    </select>
                </div>
                
                <div class="form-group">
                    <label for="record-subject">Предмет:</label>
                    <select id="record-subject" required>
                        <option value="">Выберите предмет</option>
                        <?php
                        $subjects = mysqli_query($db_handler, "SELECT * FROM predmets");
                        while($subject = mysqli_fetch_assoc($subjects)) {
                            echo "<option value='{$subject['id']}'>{$subject['name']}</option>";
                        }
                        ?>
                    </select>
                </div>
                
                <div class="form-group">
                    <label for="record-teacher">Преподаватель:</label>
                    <select id="record-teacher" required>
                        <option value="">Выберите преподавателя</option>
                        <?php
                        $teachers = mysqli_query($db_handler, "SELECT * FROM prepod");
                        while($teacher = mysqli_fetch_assoc($teachers)) {
                            echo "<option value='{$teacher['id']}'>{$teacher['fam']} {$teacher['name']}</option>";
                        }
                        ?>
                    </select>
                </div>
                
                <div class="form-group">
                    <label for="record-presence">Присутствие:</label>
                    <select id="record-presence" required>
                        <option value="1">Присутствовал</option>
                        <option value="0">Отсутствовал</option>
                    </select>
                </div>
                
                <div class="form-group">
                    <label for="record-mark">Оценка:</label>
                    <select id="record-mark">
                        <option value="">Нет оценки</option>
                        <option value="5">5 (Отлично)</option>
                        <option value="4">4 (Хорошо)</option>
                        <option value="3">3 (Удовлетворительно)</option>
                        <option value="2">2 (Неудовлетворительно)</option>
                    </select>
                </div>
                
                <button type="submit" id="save-btn">Сохранить</button>
            </form>
        </div>
    </div>
    <?php endif; ?>

    <script src="js/script.js"></script>
</body>
</html>