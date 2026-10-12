# slides

ふくいの発表資料をまとめたものです.

## How to use

実行には node.js のインストールが事前に必要です.

リポジトリの clone 後, 初回だけ以下を実行して reveal.js, reveal-md をセットアップします.

```
$ pnpm run setup
```

上記で reveal.js, reveal-md をセットアップできたら, 以後は以下で実行環境を起動できます.

```
$ pnpm start

> start
> reveal-md docs -w

Serving reveal.js plugin from /Users/msfukui/Documents/slides/node_modules/reveal.js
Serving reveal.js dist from /Users/msfukui/Documents/slides/node_modules/reveal.js
Reveal-server started at http://localhost:1948
The slides are at http://localhost:1948/
```

ブラウザが自動で開くので, リンクを辿ると, 作成したスライドを参照できます.

終わる時はブラウザを閉じて Ctrl-C で終了してください.

## 参考

* Reveal.js

    https://revealjs.com

* reveal-md

    https://github.com/webpro/reveal-md
