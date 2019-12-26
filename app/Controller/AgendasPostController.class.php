<?php
namespace app\Controller;

require_once 'app/Model/Agendas.class.php';
require_once 'app/utility/Encode.php';
require_once 'app/utility/sessionDestroy.php';

use app\Model\Agendas;

// ユーザが投稿したidに対応するレコードを返すコントローラ
class AgendasPostController extends Agendas
{
    private $post = 0;
    public $post_id = 0;

    public function __construct()
    {
        // insertAgendasからユニークなpost_idが正しくidキーで送られていれば、その値を渡す
        if (isset(($_GET['id']))) {
            $this->post_id = e($_GET['id']);
        } else {
            $this->post_id = null;
        };
    }

    public function setPostAgendas($param)
    {
        $this->post = parent::selectWhereAgendas($param);
    }

    public function getPostAgendas()
    {
        // 作成時のみ（insertから発行されたcreatedセッションが存在する場合のみ）作成をお知らせするメッセージを追加
        session_start();
        if (isset($_SESSION['created'])) {
            global $created;
            $created = 'もくもく会が作成されました';
        };
        // 更新時のみ(updateから発行されたupdatedセッションが存在する場合のみ)更新をお知らせするメッセージを追加
        if (isset($_SESSION['updated'])) {
            global $updated;
            $updated = 'もくもく会が更新されました';
        }
        // GETしたidと同じpost_idのレコードを返す
        return $this->post;
    }
}
