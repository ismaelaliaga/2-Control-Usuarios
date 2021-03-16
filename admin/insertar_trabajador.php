<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/styles.css" type="text/css" media="all">
    <title>Insertar Usuario</title>
</head>

<body>


    <div class="contenedor_form">
        <div class="titulo_form">Añadir Usuario</div>
        <form method="post">
            <div class="form_contenido">
                <label class="form_label" for="title">Nombre:</label>
                <input class="form_input" type="text" id="nombre" name="nombre">
                <label class="form_label" for="title">Apellidos:</label>
                <input class="form_input" type="text" id="apellidos" name="apellidos">
                <label class="form_label" for="title">Nombre Real:</label>
                <input class="form_input" type="text" id="nombre_real" name="nombre_real">
            </div>
            <button class="form_button" type="submit" name="enviar">Añadir Usuario</button>

        </form>

        <?php

        include("../conexionbd.php");
        if (isset($_POST["enviar"])) {

            $trabajadores = $bd->prepare("INSERT INTO `trabajadores` (`nombre`, `apellidos`, `nombre_real`) VALUES (?,?,?)");
            $trabajadores->bind_param('sss', $nombre, $apellidos, $nombrereal);
            $nombre = $_POST["nombre"];
            $apellidos = $_POST["apellidos"];
            $nombrereal = $_POST["nombre_real"];
            $trabajadores->execute();
            header("location:administrar_trabajadores.php");
        }

        ?>

</body>

</html>