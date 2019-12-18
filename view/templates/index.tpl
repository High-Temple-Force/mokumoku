<!DOCTYPE html>
<html lang="ja">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="webroot/css/styles.css">
    <link rel="stylesheet" href="webroot/css/slick.css">
    <title>{$title}へようこそ</title>
</head>

<body>
    <header>
        <div class="container">
            <div class="header-left">
                {$leftlogo}
            </div>
            <div class="header-right">
                {$rightlogo}
            </div>
            <div class="title t-grafic">{$message}</div>
        </div>
    </header>
    <main>
        <div class="container">
            <form action="view/post.php" method="POST">
                <table border="2" cellpadding="5" cellspacing="5">
                    <caption>
                        <div class="subtitle agenda-title">{$agendas.title}</div>
                    </caption>
                    {foreach from=$agendas item=$agenda key=$agendakey}
                    {if $agendakey eq 'title'}
                    {continue}
                    {/if}
                    <tr>
                        {if $agendakey eq 'wifi'}
                        <td>{$agendas.wifi}</td>
                        <td colspan="2" id="wifimsg">{$wifimsg}</td>
                        {continue}
                        {/if}
                        <td>{$agenda}</td>
                        <td><input type="
                            {if $agendakey eq 'contents'}
                                textarea
                            {else}
                                text
                            {/if}" name="{$agendakey}">
                        </td>
                    </tr>
                    {/foreach}
                </table>
                <input type="text" name="id">
                <input type="submit" value="送信">
            </form>
            <ul class="slider">
                <li><a href="#"><img src="webroot/image/IMG_5314.JPG" alt="image01"></a></li>
                <li><a href="#"><img src="webroot/image/php.jpg" alt="image02"></a></li>
            </ul>
        </div>
    </main>
    <footer>
        <div class="container">
            <div class="title t-grafic">{$message}</div>
        </div>
    </footer>
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script type="text/javascript" src="webroot/js/index.js"></script>
    <script type="text/javascript" src="webroot/js/slick.js"></script>
</body>

</html>