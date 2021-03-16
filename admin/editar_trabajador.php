<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/styles.css" type="text/css" media="all">
    <title>Estado Trabajador</title>
</head>

<body>
    <?php
    include("../conexionbd.php");
    if (!isset($_POST["enviar"])) {

        $trabajadores = $bd->prepare("SELECT `nombre`, `apellidos`, `grupo` FROM `trabajadores` WHERE `id_trabajador`= ? ");
        $trabajadores->bind_param('i', $id);
        $id = $_GET["id"];
        $trabajadores->bind_result($nombre_trabajador, $apellidos_trabajador, $grupo_trabajador);
        $trabajadores->execute();


    ?>

        <form method="post" class="contenedor_tabla_edit">
            <input type="hidden" name="id" value="<?php echo $id; ?>">
            <div class="contenedor_titulo_edit">Editar Trabajador</div>
            <div class="grid_header_edit">Nombre</div>
            <div class="grid_header_edit">Apellidos</div>
            <div class="grid_header_edit">Grupo</div>
            <div class="grid_header_edit"></div>
            <?php
            while ($trabajadores->fetch()) {
                echo "
            <input class=grid_items_edit type=text name=nombre value=" . $nombre_trabajador . ">
            <input class=grid_items_edit type=text name=apellidos value=" . $apellidos_trabajador . ">
            <input class=grid_items_edit type=number name=grupo value=" . $grupo_trabajador . ">

            <button class=grid_items_edit form_button type=submit name=enviar>Cambiar Datos</button>

            ";
            }
            ?>
        </form>

    <?php
    }
    if (isset($_POST["enviar"])) {

        $trabajadores = $bd->prepare("UPDATE `trabajadores` SET `nombre`= ? , `apellidos`= ? , `grupo`= ? WHERE `id_trabajador`= ?");
        $trabajadores->bind_param('ssii', $nombre, $apellidos, $grupo, $id);
        $nombre = $_POST["nombre"];
        $apellidos = $_POST["apellidos"];
        $grupo = intval($_POST["grupo"]);
        $id = intval($_POST["id"]);
        $trabajadores->execute();
        header("location:administrar_trabajadores.php");
    }
    ?>
</body>

</html>