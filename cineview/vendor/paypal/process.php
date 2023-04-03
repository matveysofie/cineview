<?php
include_once("config.php");
include_once("functions.php");
include_once("paypal.class.php");

$paypal = new MyPayPal();

//Опубликуйте данные, полученные со страницы списка продуктов.
if (_GET('paypal') == 'checkout') {
	$products = [];
	$products[0]['ItemName'] = $_SESSION['trans_name']; //Имя товара
	$products[0]['ItemPrice'] = ($_SESSION['unit_amount'] / 100); //Цена товара
	$products[0]['ItemNumber'] = "N/A"; //Номер товара
	$products[0]['ItemDesc'] = "Deposit Money to Airxend Account"; //Номер товара
	$products[0]['ItemQty']	= "1"; // Количество товара
	$charges = [];

	//Другие важные переменные, такие как налог, стоимость доставки
	$charges['TotalTaxAmount'] = 0;  //Sum of tax for all items in this order.
	$charges['HandalingCost'] = 0;  //Стоимость обработки этого заказа.
	$charges['InsuranceCost'] = 0;  //Cтоимость страховки доставки для этого заказа.
	$charges['ShippinDiscount'] = 0; //Скидка на доставку для этого заказа. Укажите это как отрицательное число.
	$charges['ShippinCost'] = 0; //Хотя вы можете изменить стоимость позже, постарайтесь указать достаточно точную сумму доставки.
	//------------------SetExpressCheckOut-------------------

	//Нам нужно выполнить метод "SetExpressCheckout", чтобы получить токен PayPal
	$paypal->SetExpressCheckOut($products, $charges);
} elseif (_GET('token') != '' && _GET('PayerID') != '') {
	$paypal->DoExpressCheckoutPayment();
} else {
}
