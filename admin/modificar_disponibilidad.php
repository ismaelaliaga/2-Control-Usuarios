<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/styles.css" type="text/css" media="all">
    <title>Modificar Disponibilidad</title>
</head>
<body>
    <?php
        include("../conexionbd.php");
        if (!isset($_POST["enviar"])) {
            $id=$_GET["id"];
    ?>

    <div class="contenedor_form">
        <div class="titulo_form">Modificar disponibilidad</div>
            <form method="post">
                <div class="form_contenido">
                    <label class="form_label"for="title">1º Hora:</label>
                    <select class="form_select" id="puntos" name="puntos1">
                        <option value="0">Sin puntuación</option>
                        <option value="1">Asistencia</option>
                        <option value="-5">Retraso</option>
                        <option value="-10">Falta</option>
                    </select>
                    <label class="form_label"for="title">2º Hora:</label>
                    <select class="form_select" id="puntos" name="puntos2">
                        <option value="0">Sin puntuación</option>
                        <option value="1">Asistencia</option>
                        <option value="-5">Retraso</option>
                        <option value="-10">Falta</option>
                    </select>
                    <label class="form_label"for="title">3º Hora:</label>
                    <select class="form_select" id="puntos" name="puntos3">
                        <option value="0">Sin puntuación</option>
                        <option value="1">Asistencia</option>
                        <option value="-5">Retraso</option>
                        <option value="-10">Falta</option>
                    </select>
                    <label class="form_label"for="title">4º Hora:</label>
                    <select class="form_select" id="puntos" name="puntos4">
                        <option value="0">Sin puntuación</option>
                        <option value="1">Asistencia</option>
                        <option value="-5">Retraso</option>
                        <option value="-10">Falta</option>
                    </select>
                    <label class="form_label"for="title">5º Hora:</label>
                    <select class="form_select" id="puntos" name="puntos5">
                        <option value="0">Sin puntuación</option>
                        <option value="1">Asistencia</option>
                        <option value="-5">Retraso</option>
                        <option value="-10">Falta</option>
                    </select>
                    <label class="form_label"for="title">6º Hora:</label>
                    <select class="form_select" id="puntos" name="puntos6">
                        <option value="0">Sin puntuación</option>
                        <option value="1">Asistencia</option>
                        <option value="-5">Retraso</option>
                        <option value="-10">Falta</option>
                    </select>
                </div>
                <button class="form_button" type="submit" name="enviar">Modificar Puntuación</button>
                <input type="hidden" id="id" name="id" value=<?php echo $id;?>>
            </form>
    </div>
    <?php
        }
        if (isset($_POST["enviar"])) {

            $id_trabajador=$_POST["id"];
            $primera_hora=$_POST["puntos1"];
            $segunda_hora=$_POST["puntos2"];
            $tercera_hora=$_POST["puntos3"];
            $cuarta_hora=$_POST["puntos4"];
            $quinta_hora=$_POST["puntos5"];
            $sexta_hora=$_POST["puntos6"];

            $trabajadores = $bd->prepare("SELECT `disponibilidad` FROM `trabajadores`  WHERE `id_trabajador`= ?");
            $trabajadores->bind_param('i',$id_trabajador);
            $trabajadores->bind_result($dis_inicial);
            $trabajadores->execute();
            while ($trabajadores->fetch()){
                $dis_inicial=$dis_inicial;
            }
            
            $disponibilidad = $bd->prepare("INSERT INTO `registro` (`id_trabajador`,`fecha`,`disponibilidad_inicial`, `disponibilidad_modificar`, `disponibilidad_total`) VALUES (?,curdate(),?,?,?)");
            $disponibilidad->bind_param('iiii',$id_trabajador,$dis_inicial,$dis_modificar,$dis_total);
            $dis_modificar=$primera_hora+$segunda_hora+$tercera_hora+$cuarta_hora+$quinta_hora+$sexta_hora;
            $dis_total=$dis_inicial+$dis_modificar;
            $disponibilidad->execute();
            if($dis_total>50){
                $visualizar_disponibilidad = $bd->prepare("UPDATE `trabajadores` SET `disponibilidad`=?, `salario` = ? WHERE `id_trabajador` = ?");
                $visualizar_disponibilidad->bind_param('isi', $dis_total ,$salario, $id_trabajador);
                $salario='66.67';
                $visualizar_disponibilidad->execute();
                
            }
            else{
                $visualizar_disponibilidad = $bd->prepare("UPDATE `trabajadores` SET `disponibilidad`= ? ,`grupo`= ? , `salario` = ? WHERE `id_trabajador` = ?");
                $visualizar_disponibilidad->bind_param('iisi', $dis_total ,$grupo,$salario, $id_trabajador);
                $grupo=0;
                $salario='00.00';
                $visualizar_disponibilidad->execute();    
            }
            header("location:administrar_trabajadores.php");
        }



    ?>
</body>
</html>