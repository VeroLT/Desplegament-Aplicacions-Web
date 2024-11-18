<?php
$host = 'db'; // Nombre del servicio MySQL en docker-compose.yml
$dbname = 'vero'; // Nombre de la base de datos que creaste en phpMyAdmin
$username = 'root'; // Usuario de MySQL
$password = 'root'; // Contraseña de MySQL

try {
    // Conexión a la base de datos
    $pdo = new PDO("mysql:host=$host;dbname=$dbname", $username, $password);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    // Consulta a la tabla proves_vero
    $stmt = $pdo->query('SELECT * FROM proves_vero');
    
    // Encabezado de la tabla HTML
    echo "<h1>Contingut de la taula proves_vero</h1>";
    echo "<table border='1'>";
    echo "<tr><th>ID</th><th>Nom</th><th>Cognom1</th><th>Cognom2</th><th>Telefon</th></tr>";

    // Mostrar los resultados en la tabla
    while ($row = $stmt->fetch()) {
        echo "<tr><td>" . htmlspecialchars($row['id']) . "</td><td>" . 
             htmlspecialchars($row['nom']) . "</td><td>" . 
             htmlspecialchars($row['cognom1']) . "</td><td>" . 
             htmlspecialchars($row['cognom2']) . "</td><td>" . 
             htmlspecialchars($row['telefon']) . "</td></tr>";
    }
    echo "</table>";
} catch (PDOException $e) {
    echo "Error: " . $e->getMessage();
}
?>
