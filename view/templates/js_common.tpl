<!-- トップページ読み込みであればIndex用を、それ以外であれば全体用jsを読み込み -->
{if $smarty.server.REQUEST_URI eq '/mokumoku/'}
<!-- jQueryをgoogleCDNから読み込み -->
<script type="text/javascirpt" src="webroot/js/slick.js"></script>
<script type="text/javascirpt" src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<!-- <script type="text/javascript" src="webroot/js/index.js"></script> -->
{else}
<script type=" text/javascript" src="../webroot/js/checkFunction.js"></script>
{/if}
</body>

</html>