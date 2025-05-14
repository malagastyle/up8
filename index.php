<?php
require_once("init.php");
$errors = array();

if (!isset($_SESSION['loginned'])) $_SESSION['loginned'] = false;

if (!$_SESSION['loginned']) {
    if (isset($_REQUEST['submit-btn'])) {
        $_SESSION['userId'] = 0;					
        $_SESSION['userLogin'] = ""; 
        $_SESSION['userName'] = ""; 
        $_SESSION['userIsEdit'] = 0;					
        $_SESSION['userIsAdmin'] = 0;													
        $_SESSION['userIsPay'] = 0;													
        
        if (isset($_REQUEST['login']) && isset($_REQUEST['password']) && $_REQUEST['login'] != "" && $_REQUEST['password'] != "") {				
            $QueryString = "SELECT * from users where login='" . mysqli_real_escape_string($db_handler, $_REQUEST['login']) . "' and password='" . md5($_REQUEST['password']) . "'";  
            $QueryResult = mysqli_query($db_handler, $QueryString);
            
            if ($QueryResult && mysqli_num_rows($QueryResult) > 0) {
                $row = mysqli_fetch_array($QueryResult, MYSQLI_ASSOC);
                $_SESSION['loginned'] = true;
                $_SESSION['userId'] = $row['id'];
                $_SESSION['userLogin'] = $row['login'];
                $_SESSION['userName'] = $row['lastname'] . " " . $row['firstname'];
                $_SESSION['userIsEdit'] = $row['isedit'];
                $_SESSION['userIsAdmin'] = $row['isadmin'];
                $_SESSION['userIsPay'] = $row['ispay'];
                $_SESSION['userSessionID'] = $row['session_id'] + 1;
                $_SESSION['userPassword'] = $_REQUEST['password'];
                
                $QueryString2 = "UPDATE users SET session_id = " . intval($_SESSION['userSessionID']) . " WHERE id = " . intval($_SESSION['userId']);
                $QueryResult2 = mysqli_query($db_handler, $QueryString2);
                
                header('Location: journal.php');
                exit();
            } else {
                $errors[] = 'Указано неверное сочетание логина и пароля или срок действия истёк/не наступил';
            }
        } else {
            $errors[] = 'Не указан логин или пароль';
        }
    }
} else {
    header('Location: journal.php');
    exit();
}
?>
<!DOCTYPE HTML>
<html>
<head>
    <meta http-equiv='Content-Type' content='text/html; charset=utf-8'/>
    <title>БД СТУДЕНТ</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 0;
        }
        .auth-form {
            margin: 50px auto;
            max-width: 800px;
            padding: 20px;
            background-color: white;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 5px;
        }
        .auth-form h1 {
            font-size: 28px;
            font-weight: normal;
            color: #333;
            margin-bottom: 20px;
        }
        .errors {
            margin-top: 20px;
            color: #d05f5f;
            padding: 0;
            list-style-type: none;
        }
        .login-form {
            margin-top: 20px;
        }
        .login-form input[type="text"],
        .login-form input[type="password"] {
            padding: 8px;
            width: 200px;
            border: 1px solid #ddd;
            border-radius: 4px;
            margin-bottom: 10px;
        }
        .login-form input[type="submit"] {
            padding: 8px 16px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        .login-form input[type="submit"]:hover {
            background-color: #45a049;
        }
        .logo-container {
            text-align: center;
            margin-bottom: 20px;
        }
        .logo-container img {
            max-width: 200px;
            height: auto;
        }
    </style>
</head>
<body>
    <div class="auth-form">        	
        <div class="logo-container">
            <img src='logo-big.png' alt='Логотип'>
        </div>
        <h1>База данных СТУДЕНТ</h1>
        <div class="login-form">
            <form action='#' method='POST'>
                <div>
                    <label for="login">Логин:</label><br>
                    <input type='text' name='login' id="login">
                </div>
                <div>
                    <label for="password">Пароль:</label><br>
                    <input type='password' name='password' id="password">
                </div>
                <div>
                    <input name='submit-btn' type='submit' value='Войти'>
                </div>
            </form>
        </div>
        <?php if (!empty($errors)): ?>
        <div>
            <ul class='errors'>
                <?php foreach($errors as $error): ?>
                    <li><?php echo htmlspecialchars($error); ?></li>
                <?php endforeach; ?>
            </ul>
        </div>
        <?php endif; ?>
    </div>
</body>
</html>