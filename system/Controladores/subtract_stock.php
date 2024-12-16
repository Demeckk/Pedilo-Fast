<?php
	require'../Modelos/consultas.php';
	$id = filter_input(INPUT_POST, 'ubi');
	$Cantidad = filter_input(INPUT_POST, 'cantidad');
	$Sucursal=filter_input(INPUT_POST, 'sucursal');
	desc_stock($id,$Cantidad,$Sucursal);
	header('location:../Vistas/user/infoStock.php');
?>