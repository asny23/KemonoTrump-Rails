# けものトランプジェネレータ Rails式

### これは何ですか？

けものフレンズのアイコンを配したトランプの画像を生成するWEBアプリです。

### 素材のライセンスについて

- アイコン画像: 
[けものフレンズアイコンまとめ【フリーアイコン】 - Togetterまとめ](https://togetter.com/li/1088229)

- カード画像: LPGL 3.0
[Vector Playing Cards download | SourceForge.net](https://sourceforge.net/projects/vector-cards/)

### 利用方法

ruby 2.3
Rails 4.2
で動作確認をしています。

    $ bundle install
    $ echo 'development:' > config/secrets.yml
    $ echo "  secret_key_base: $(bundle exec rake secret)" >> config/secrets.yml
    $ rails s -b 0.0.0.0

`constitute.c/ReadImage` で `not authorized` エラーが発生する場合は
`/etc/ImageMagick/policy.xml` の
`<policy domain="coder" rights="none" pattern="MVG" />`
を削除またはコメントしてください。
