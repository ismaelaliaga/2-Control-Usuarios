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

    <header>
        <input type="checkbox" id="btn_menu">
        <label for="btn_menu"><img src="../img/icono_menu.png" width="100%" height="100%"></label>
        <nav class="menu">
            <ul>
                <li><a href="../admin/insertar_trabajador.php">Crear Trabajadores</a></li>
                <li><a href="../admin/generar_informe.php">Generar Informes</a></li>
            </ul>
        </nav>
    </header>

    <?php
    include("../conexionbd.php");
    $trabajadores = $bd->prepare("SELECT `id_trabajador`, `nombre`, `apellidos`, `disponibilidad` , `grupo` , `salario` FROM `trabajadores` WHERE `baja`= ? ");
    $trabajadores->bind_param('i', $baja);
    $baja = 0;
    $trabajadores->bind_result($id_trabajador, $nombre_trabajador, $apellidos_trabajador, $disponibilidad_trabajador, $grupo_trabajador, $salario_trabajador);
    $trabajadores->execute();
    ?>

    <div class="contenedor_tabla_admin">
        <div class="contenedor_titulo_admin">Trabajadores de Alta</div>
        <div class="grid_header_admin">ID</div>
        <div class="grid_header_admin">Nombre</div>
        <div class="grid_header_admin">Apellidos</div>
        <div class="grid_header_admin">Disponibilidad</div>
        <div class="grid_header_admin">Grupo</div>
        <div class="grid_header_admin">Salario</div>
        <div class="grid_header_admin">Editar</div>
        <?php
        while ($trabajadores->fetch()) {
            echo "
            <div class=grid_items_admin>" . $id_trabajador . "</div>
            <div class=grid_items_admin>" . $nombre_trabajador . "</div>
            <div class=grid_items_admin>" . $apellidos_trabajador . "</div>
            <div class=grid_items_admin>" . $disponibilidad_trabajador . "</div>
            <div class=grid_items_admin>" . $grupo_trabajador . "</div>
            <div class=grid_items_admin>" . $salario_trabajador . "%</div>
            <div class=grid_items_admin>
                <a href=editar_trabajador.php?id=$id_trabajador><img src=../img/editar_usuario.png></a>
                <a href=modificar_disponibilidad.php?id=$id_trabajador><img src=../img/disponibilidad_usuario.png></a> 
                <a href=estado_trabajador.php?id=$id_trabajador&nombre=$nombre_trabajador&apellidos=$apellidos_trabajador><img src=../img/baja_usuario.png></a>
            </div>
            ";
        }
        $baja = 1;
        $trabajadores->execute();
        ?>
    </div>
    <div class="contenedor_tabla_admin">
        <div class="contenedor_titulo_admin">Trabajadores de Baja</div>
        <div class="grid_header_admin">ID</div>
        <div class="grid_header_admin">Nombre</div>
        <div class="grid_header_admin">Apellidos</div>
        <div class="grid_header_admin">Disponibilidad</div>
        <div class="grid_header_admin">Grupo</div>
        <div class="grid_header_admin">Salario</div>
        <div class="grid_header_admin">Editar</div>
        <?php
        while ($trabajadores->fetch()) {
            echo "
            <div class=grid_items_admin>" . $id_trabajador . "</div>
            <div class=grid_items_admin>" . $nombre_trabajador . "</div>
            <div class=grid_items_admin>" . $apellidos_trabajador . "</div>
            <div class=grid_items_admin>" . $disponibilidad_trabajador . "</div>
            <div class=grid_items_admin>" . $grupo_trabajador . "</div>
            <div class=grid_items_admin>" . $salario_trabajador . "</div>
            <div class=grid_items_admin_img>
                <a href=estado_trabajador.php?id=$id_trabajador&nombre=$nombre_trabajador&apellidos=$apellidos_trabajador><img src=../img/baja_usuario.png></a>
            </div>
            ";
        }
        ?>
    </div>

</body>

</html>