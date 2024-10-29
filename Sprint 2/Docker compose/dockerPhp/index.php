<?php
$host = 'db';
$dbname = '[your_name]_db';
$username = 'root';
$password = 'root';

try {
    $pdo = new PDO("mysql:host=$host;dbname=$dbname", $username, $password);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    $stmt = $pdo->query('SELECT * FROM proves_vero');
    echo "<h1>Contingut de la taula proves_vero</h1>";
    echo "<table border='1'>";
    echo "<tr><th>ID</th><th>Text</th></tr>";

    $stmt->setFetchMode(PDO::FETCH_ASSOC);
    $rows = $stmt->fetchAll();
    for($i =0; $i<count($rows); $i++){
        foreach($rows[$i] as $row){
            echo$row["id"];
        }
    }
    
    echo "</table>";
} catch (PDOException $e) {
    echo "Error: " . $e->getMessage();
}
?>   
