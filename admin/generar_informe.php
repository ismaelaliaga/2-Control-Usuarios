<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/styles.css" type="text/css" media="all">
    <title>Disponibilidad</title>
</head>

<body>
    <?php
    include("../conexionbd.php");
    if (!isset($_POST["enviar"])) {
    ?>

        <form method="post" class="contenedor_tabla">
            <div class="contenedor_titulo">Informe trabajadores</div>
            <div class="grid_header">Filtrar por fecha: </div><input type="date" name="fecha" id="fecha">
            <button class="grid_items_edit" type="submit" name="enviar">Generar Informe</button>

        </form>

    <?php
    }
    if (isset($_POST["enviar"])) {

        $informe = $bd->prepare("SELECT r.`fecha`, t.`nombre`,t.`apellidos`,r.`disponibilidad_total` FROM `registro` r INNER JOIN `trabajadores` t ON t.`id_trabajador`=r.`id_trabajador` WHERE `fecha`= ?");
        $informe->bind_param('s', $fechausuario);
        $fechausuario = $_POST["fecha"];
        $informe->bind_result($fecha, $nombre, $apellidos, $disponibilidad);
        $informe->execute();
    ?>
        <div class="contenedor_tabla_informe">
            <div class="contenedor_titulo_informe">Informe trabajadores</div>
            <div class="grid_header_informe">Fecha</div>
            <div class="grid_header_informe">Nombre</div>
            <div class="grid_header_informe">Apellidos</div>
            <div class="grid_header_informe">Disponibilidad</div>
        <?php
        while ($informe->fetch()) {
            echo "
                        <div class=grid_items_informe>" . $fecha . "</div>
                        <div class=grid_items_informe>" . $nombre . "</div>
                        <div class=grid_items_informe>" . $apellidos . "</div>
                        <div class=grid_items_informe>" . $disponibilidad . "</div>
                        ";
        }
        echo "<a href=administrar_trabajadores.php>Volver Atrás</a>";
    }
        ?>
</body>

</html>