<!-- id値のレコード取得用 -->
<?php
require_once 'app/Controller/AgendasPostController.class.php';

use app\Controller\AgendasPostController;

// 作成時のみ生成されるメッセージの変数を宣言
$created = null;

$agendaPost = new AgendasPostController();
// GETしたidの値をセットする
$agendaPost->setPostAgendas($agendaPost->post_id);
// GETしたidと同じpost_idのレコードを取得
$getRecord = $agendaPost->getPostAgendas();
