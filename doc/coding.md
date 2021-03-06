## コードを書く

ここでは、実際にコードを書いて、サンプルアプリケーションに機能を追加します。

大まかな流れは、

1. 作業用のブランチを切る
2. コードを書く
3. コミットして、リモートリポジトリにプッシュする

### ブランチを切る
今回は、 `issue-x` (xは自身が作成したIssueの番号)という名前のブランチを、`origin/main` ブランチの内容を元に作成します。(originはリモートリポジトリ、mainはmainブランチを指すので、 `origin/main` はリモートリポジトリにあるmainブランチを指します。)

以下では、自身の書いたIssueの番号が1番だった場合で書いているので、適宜置き換えてください。

#### VSCode上でブランチを切る場合
1. 左下の、 `ブランチまたはタグのチェックアウト` ボタンを押す
2. `新しい分岐の作成元...` をクリック
3. `issue-1` と入力して、エンターキーを押す
4. 作成元の一覧が出るので、 `origin/main` を選択

成功すると、1でクリックしたボタンに、 `issue-1` と表示されるようになります。これが現在いるブランチです。

#### ターミナル上でブランチを切る場合
```
$ git checkout -b issue-1 origin/main
```

ブランチの確認は以下のコマンドでできます。 `*` がついているものが現在いるブランチです。
```
$ git branch
```

### コードを書く
書き方が分からない場合は、 [Sinatraを始めよう](http://sinatrarb.com/intro-ja.html) を参考にするといいかもしれません。

ここでは、自身のGitHub IDが `challecara` として、サンプルを書きます。

1. app.rb を開きましょう

```ruby
require 'sinatra'
require 'sinatra/reloader'

get '/' do
  'Hello world!'
end
```

2. `/challecara` にGetリクエストが来た時にレスポンスを返すので

```ruby
get '/challecara' do
  'Hello challecara!'
end
```

このように書けば良さそうです。

3. 実際に実装すると、app.rb はこうなります

```ruby
require 'sinatra'
require 'sinatra/reloader'

get '/' do
  'Hello world!'
end

get '/challecara' do
  'Hello challecara!'
end
```

4. 動作確認してみよう

`http://localhost:4567/challecara` にアクセスして、 `Hello challecara!` と表示されることを確認します。

### 変更をコミットして、リモートリポジトリにプッシュする
大まかな流れは、

1. 変更したファイル(app.rb)をアドする
2. コミットする (コミット時には、どういう変更をしたのかなどコメントを残すことができる)
3. リモートリポジトリにプッシュする

#### VSCode上で作業する場合

1. 左のバーにある `ソース管理` を押す
2. 変更されたファイルの一覧が表示されるので、app.rbの上にカーソルをもっていくと表示される `+` ボタンを押して、アドします
3. `ステージされている変更` にapp.rbが追加されたら、メッセージ入力欄にコミットメッセージを入力します (コミットメッセージの例: `/challecaraエンドポイントを追加した`)
4. コミットメッセージの入力を終えたら、チェックボタンを押して、コミットを完了します
5. `・・・` ボタンを押して出てくるプッシュボタンを押してプッシュします

#### ターミナル上で作業する場合

commitコマンドに `m` オプションを付けるとコメントを入れることができます。
`m` オプションを付けずにコミットした場合は、デフォルトのエディタが開いてコミットメッセージを求められます。

pushコマンドは、ローカルリポジトリのissue-1ブランチに現在いるので、リモートリポジトリのissue-1ブランチにプッシュしています。
ローカルリポジトリとリモートリポジトリのブランチを別名にすることは出来ますが、間違いの元となるのでオススメはしません。

```
$ git add app.rb
$ git commit -m "/challecaraエンドポイントを追加した"
$ git push origin/issue-1
```
