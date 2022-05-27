<!DOCTYPE HTML>
<html>

<head>
    <title>ЛБ3</title>
    <style>
        div {
            background-color: lightblue;
        }
        
    </style>
    <script src = "AJAX.js">
    </script>
</head>
<div id="task">
    <p><b>Вариант 7.</b>
        Создать и заполнить произвольными данными БД для хранения информации о
        результатах футбольного чемпионата (Рисунок 5.7).<br>
        Для каждой футбольной команды задается такая информация: название,
        лига, главный тренер. Для каждой игры задается дата проведения,
        команды участницы, место проведения, финальный счет, участвующие футболисты.
        <br>Сформировать запросы и вывести результаты:
    </p>
    <ul>
        <li>таблица чемпионата выбранной лиги;</li>
        <li>список игр на указанный временной интервал;</li>
        <li>список игр выбранного футболиста.</li>
    </ul>

    <figure class="pic_w_caption">
        <img src="https://knureigs.github.io/itech/lb/ITech2_PDO/images/2.10_assigment8_bgless.png">
        <figcaption>Рисунок 5.7 – Структура базы данных «Футбольный чемпионат»</figcaption>
    </figure>
</div>

Таблица чемпионата лиги <select name="league" id="league">
        <?php
        include 'conn.php';
        $sqlSelect = "SELECT DISTINCT league FROM $db.team";
        foreach ($dbh->query($sqlSelect) as $cell) {
            echo "<option>";
            print_r($cell[0]);
            echo "</option>";
        }
        ?>
    </select>
    <button onclick="getText()"> ОК </button>
<p>Список игр на указанную дату <select name="date" id="date">
        <?php
        include 'conn.php';
        $sqlSelect = "SELECT DISTINCT date FROM $db.game";
        foreach ($dbh->query($sqlSelect) as $cell) {
            echo "<option>";
            print_r($cell[0]);
            echo "</option>";
        }
        ?>
    </select>
    <button onclick="getXML()"> ОК </button></p>

<p>Список игр футболиста <select name="player" id="player">
        <?php
        include 'conn.php';
        $sqlSelect = "SELECT DISTINCT * FROM $db.player";
        foreach ($dbh->query($sqlSelect) as $cell) {
            echo "<option>";
            print_r($cell[1]);
            echo "</option>";
        }
        ?>
    </select>
    <button onclick="getJSON()"> ОК </button> </p>
<div id="res"></div>
</body>

</html>