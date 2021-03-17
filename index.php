<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/styles.css" type="text/css" media="all">
    <title>Disponibilidad</title>
</head>

<body>
    <?php
    /*
    * Se muestran los datos de los trabajadores que estan en la parte pública
    * esta información puede verla todo el mundo que tenga la dirección web
    */?>
    <header>
        <input type="checkbox" id="btn_menu">
        <label for="btn_menu"><img src="img/icono_menu.png" width="100%" height="100%"></label>
        <nav class="menu">
            <ul>
                <li><a href="admin/administrar_trabajadores.php">Login</a></li>
            </ul>
        </nav>
    </header>
    <?php
    include("conexionbd.php");
    $trabajadores = $bd->prepare("SELECT `id_trabajador`, `nombre`, `apellidos`, `disponibilidad` , `grupo` , `salario` FROM `trabajadores` WHERE `baja`= ? ");
    $trabajadores->bind_param('i', $baja);
    $baja = 0;
    $trabajadores->bind_result($id_trabajador, $nombre_trabajador, $apellidos_trabajador, $disponibilidad_trabajador, $grupo_trabajador, $salario_trabajador);
    $trabajadores->execute();
    ?>

    <div class="contenedor_tabla">
        <div class="contenedor_titulo">Disponibilidad</div>
        <div class="grid_header">ID</div>
        <div class="grid_header">Nombre</div>
        <div class="grid_header">Apellidos</div>
        <div class="grid_header">Disponibilidad</div>
        <div class="grid_header">Grupo</div>
        <div class="grid_header">Salario</div>
        <?php
        while ($trabajadores->fetch()) {
            echo "
            <div class=grid_items>" . $id_trabajador . "</div>
            <div class=grid_items>" . $nombre_trabajador . "</div>
            <div class=grid_items>" . $apellidos_trabajador . "</div>
            <div class=grid_items>" . $disponibilidad_trabajador . "</div>
            <div class=grid_items_admin>"; ($grupo_trabajador==0)? printf("Sin grupo"):printf($grupo_trabajador); echo "</div>
            <div class=grid_items>" . $salario_trabajador . "</div>
            ";
        }
        $trabajadores->close();
        ?>
    </div>
</body>

</html>
