<?php
require_once 'app/Controller/MySmarty.class.php';
require_once 'app/Controller/AgendasController.class.php';

use app\Controller\AgendasController;
use app\Controller\MySmarty;

$agenda = new AgendasController(1);
$s = new MySmarty();

$agenda->setAgendas(1);
$agenda->setAgendas(10);
/*  テンプレート変数$変数名の使い方 二次元配列となっており、下記で出力可
    $変数名.[id番号].[カラム名] */
$s->assign('tenAgendas', $agenda->getOneAgendas());
$s->assign('oneAgendas', $agenda->getTenAgendas());
$s->assign('create', 'もくもく会が作成されました');
$s->d();