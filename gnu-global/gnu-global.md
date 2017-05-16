# GNU GLOBAL

[GNU GLOBAL](http://tamacom.com/global-j.html "GNU GLOBAL")

エディタから独立したソースコードタグシステム。
複数のソース中から関数や、変数の定義元／参照元を見つけ、その箇所に移動することができる。

[yoshizow/global-pygments-plugin: Pygments Plug-in Parser for GNU GLOBAL](https://github.com/yoshizow/global-pygments-plugin "yoshizow/global-pygments-plugin: Pygments Plug-in Parser for GNU GLOBAL")

[GNU GLOBALの対応言語を大幅に増やすPygmentsパーサーを導入する - Qiita](http://qiita.com/yoshizow/items/9cc0236ac0249e0638ff "GNU GLOBALの対応言語を大幅に増やすPygmentsパーサーを導入する - Qiita")

## Exuberant Ctags

[Exuberant Ctags](http://ctags.sourceforge.net/ "Exuberant Ctags")


## Pygment

[Welcome! — Pygments](http://pygments.org/ "Welcome! — Pygments")

Python製シンタックスハイライター


## wml-pygment

[CelticMinstrel/wml-pygments: A Pygments lexer for domain-specific languages used by Battle for Wesnoth](https://github.com/CelticMinstrel/wml-pygments "CelticMinstrel/wml-pygments: A Pygments lexer for domain-specific languages used by Battle for Wesnoth")

## インストール

Ubuntu 17.04 で確認
```
sudo apt install global exuberant-ctags python-pygments
```

wml-pygmentsを取ってくる
```
git clone https://github.com/CelticMinstrel/wml-pygments
```

（wesnoth.py があればよい）

Python のパージョン確認
```
python -V
Python 2.7.13
```
pygmentize（Pygmentsのコマンドラインツール）の動作確認
```
pygmentize -L lexer
```
対応しているコンピュータ言語がつらつらと表示される。
wesnoth.py（WMLの構文定義）ファイルをコピー
```
sudo cp wesnoth.py /usr/lib/python2.7/dist-packages/pygments/lexers
```
コピー先に移動して
```
cd /usr/lib/python2.7/dist-packages/pygments/lexers
```
WMLの構文を組み込む
```
sudo python ./_mapping.py
```
確認
```
pygmentize -L lexer
```
↓WMLが追加されていることを確認する
```
* whiley:
    Whiley (filenames *.whiley)
* wml, Wml:
    WML (filenames *.cfg, *.pbl)
* x10, xten:
    X10 (filenames *.x10)
```

GNU GLOBALの設定

ひな型を取ってくる
```
zcat /usr/share/doc/global/examples/gtags.conf.gz > ~/.globalrc
```
設定ファイル ~/.globalrc を編集

1 デフォルトのパーサーにPygmentsのパーサーを指定する
```
default:\
       :tc=native:
       ```
↓
```
default:\
       :tc=native:tc=pygments:
       ```

2 Modelica(なんだそれは)の拡張子がgettext の mo と重複するのでコメントアウト
```

       :langmap=Modelica\:.mo:\
       ```

↓
```
#       :langmap=Modelica\:.mo:\
```

3 以下の行を追加（.cfg .pbl をWMLと認識させる）
```

      :langmap=WML\:.cfg.pbl:\
      ```

4 これも追加
```

      :gtags_parser=WML\:$pygmentslib:\
      ```


WMLファイル（ _main.cfg ） のあるディレクトリに移動して

pygmentizeはPygmentsのコマンドラインツールです。
```
pygmentize _main.cfg
```

```
pygmentize -o m.html _main.cfg
```

gtagsはインデックスを作成するコマンドです
```
gtags -v
```
（.cfg、.pblのインデックスが作成されるのを確認する）


html の作成
```
hatags -ganFs
```

テキストエディタから使う  Edit

```
vim _main.cfg
```


## GNU GLOBAL に対応しているテキストエディタ

* Vim
* Emacs
* Atom https://atom.io/packages/atom-gtags
* gedit https://github.com/utisam/gtagJump
* Notepad++ https://github.com/pnedev/nppgtags
* サクラエディタ https://ja.osdn.net/users/salarm/pf/gtags/wiki/FrontPage
* 秀丸エディタ https://github.com/ohtorii/gtags_for_hidemaru
* xyzzy https://github.com/bulb/gtags-mode/tree/master/site-lisp/gtags
* Sublime Text https://github.com/koko1000ban/SublimeGtags
