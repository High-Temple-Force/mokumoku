<!DOCTYPE html>
<html lang="ja">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    {include file='styles_common.tpl'}
    <title>{if $post.mokumokuname eq NULL}{$titleView} - {$title}{else}{$post.mokumokuname} - {$title}{/if}</title>
</head>

<body>
    <header>
        {include file='header_common.tpl'}
    </header>