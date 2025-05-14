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
            <?php if (isset($_SESSION['userName'])): ?>
                <span>Вы вошли как: <?php echo htmlspecialchars($_SESSION['userName']); ?></span>
                <a href="logout.php">Выйти</a>
            <?php endif; ?>
        </div>
        <h1>Журнал успеваемости</h1>
    </header>