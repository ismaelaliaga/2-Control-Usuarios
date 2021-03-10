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
        if (!isset($_POST["enviar"])) {
        $nombre=$_GET["nombre"];
        $apellidos=$_GET["apellidos"];
        $id=$_GET["id"];
        
    ?>

    <div class="contenedor_form">
        <div class="titulo_form">Estado Trabajador</div>
            <form method="post">
                <div class="form_contenido">
                    <label class="form_label"for="title">Nombre:<span class="form_span"><?php echo $nombre;?></span></label>
                    
                    <label class="form_label"for="title">Apellidos:<span class="form_span"><?php echo $apellidos;?></span></label>
                    
                    <select class="form_select" name="estado">
                        <option value="0">Dar de Alta</option>
                        <option value="1">Dar de Baja</option>
                    </select>
                </div>
                <button class="form_button" type="submit" name="enviar">Modificar Estado</button>
                <input type="hidden"  name="id" value="<?php echo $id;?>">
            </form>
    </div>

    <?php
    }
        if (isset($_POST["enviar"])) {

            include("../conexionbd.php");
            
            $estado_trabajador = $bd->prepare("UPDATE `trabajadores` SET `baja`= ? WHERE `id_trabajador`= ?");
            $estado_trabajador->bind_param('ii' , $estado , $id);
            $id=$_POST["id"];
            $estado=$_POST["estado"];
            $estado_trabajador->execute();
            header("location:administrar_trabajadores.php"); 
        }
    ?>
</body>
</html>