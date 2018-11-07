# wmlxgettext -- potファイル作成ツール

```
/path/to/wmlxgettext --help
usage: wmlxgettext --domain=DOMAIN -o OUTPUT_FILE
                   [--directory=START_PATH]
                   [--recursive] [--initialdomain=INITIAL_DOMAIN]
                   [--package-version=PACKAGE_VERSION]
                   [--no-text-colors] [--fuzzy] [--warnall]
                   FILE1 FILE2 ... FILEN

Generate .po from WML/lua file list.

positional arguments:
  filelist              List of WML/lua files of your UMC (source files).

optional arguments:
  -h, --help            show this help message and exit
  --version             show program's version number and exit
  -o OUTFILE            Destination file. In some special situations you might
                        want to write the output to STDOUT instead of writing
                        an actual file (using "-o -"). On a standard usage,
                        however, you should avoid to write the output to
                        STDOUT (or you can face some issues related to text
                        encoding). [**REQUIRED ARGUMENT**]
  --domain DOMAIN       The textdomain (on WML/lua file) wich contains the
                        strings that will be actually translated. [**REQUIRED
                        ARGUMENT**]
  --directory START_PATH
                        Complete path of your "start directory". (Default:
                        current directory). The (relative) path to every
                        WML/lua file should start from this directory.
  --initialdomain INITDOM
                        Initial domain value on WML/lua file when no
                        textdomain set in that WML/lua file. By default it is
                        equal to "wesnoth" and usually you don't need to
                        change this value.
  --package-version PACKAGE_VERSION
                        Version number of your wesnoth add-on. You don't
                        actually require to set this option since you can
                        directly edit the po file produced by wmlxgettext.
  --no-text-colors      By default warnings are displayed with colored text.
                        You can disable this feature using this flag.
  --warnall             Show all warnings. By default some warnings are
                        hidden.
  --fuzzy               If you specify this flag, all sentences contained on
                        the POT file created by wmlxgettext will be set as
                        fuzzy. By default sentences are NOT set as fuzzy.
  --recursive           If this option is used, wmlxgettext will scan
                        recursively the directory set on the '--directory'
                        parameter and checks itself every WML/lua file. If
                        this option is used, EXPLICIT LIST of files will be
                        ignored.
```

moファイルをつくる手順。
```
path/to/wmlxgettext --directory ./ --recursive\
  --domain wesnoth-Save_The_Captured_Princess\
  -o Save_The_Captured_Princess.pot\
   --warnall
```
で Save_The_Captured_Princess.pot を作る。

次に、ディレクトリを掘って、
```
mkdir -p translations/ja/LC_MESSAGES
```

pot をwesnoth-Save_The_Captured_Princess.po って名前でコピー
```
cp Save_The_Captured_Princess.pot translations/ja/LC_MESSAGES/wesnoth-Save_The_Captured_Princess.po
```

で、po ファイルを、poedit（ https://poedit.net/ ） で編集して、wesnoth-Save_The_Captured_Princess.mo を作る。



[gettext](../gettext/gettext.md "gettext")

[xgettext](../gettext/xgettext.md "xgettext")

[poedit](../gettext/poedit.md "poedit")
