# git-training
Git/GitHubを学ぶための資料やサンプルアプリを作成する場所です。

## 演習を行う上で必要なもの

- Dockerが実行できる環境
  - サンプルアプリを実行するために必要
- GitHubアカウント

## 演習前の準備

- [MacのDocker環境構築手順](./doc/setup-mac.md)
- [WindowsのDocker環境構築手順](./doc/setup-windows.md)
- [Visual Studio Codeのインストール手順](./doc/setup-vscode.md)
- [Gitの初期設定](./doc/setup-git.md)

- 演習でGitHubを利用する上で事前学習しておくと良いもの
  - [【超入門編】 GitHubの使い方 シリーズ ① GitHubアカウント登録手順](https://www.youtube.com/watch?v=SYVu3DymYfc)
  - [【超入門編】 GitHubの使い方 シリーズ ② GitとGitHubの違いとは？](https://www.youtube.com/watch?v=A4gSBUSAjNw)
  - [【超入門編】 GitHubの使い方 シリーズ ③ リポジトリの作成から削除までの紹介](https://www.youtube.com/watch?v=FIp142zbMps)
  - [【超入門編】 GitHubの使い方 シリーズ ④ 初心者が知るべきリポジトリの機能](https://www.youtube.com/watch?v=zYsvftVsWMs)
  - [【超入門編】 GitHubの使い方 シリーズ ⑤ GitHub Flowを活用した開発方法](https://www.youtube.com/watch?v=Q2oLox6-yTM)

## 演習概要

この演習では、サンプルのWebアプリケーションに簡単な機能を追加します。

機能の追加は、[GitHub flow](https://docs.github.com/en/get-started/quickstart/github-flow) に沿って行います。

### 内容

サンプルのWebアプリケーションは、ブラウザで `http://localhost:4567/` にアクセスすると、 `Hello world!` と表示されます。
このサンプルアプリケーションに、以下の機能を追加します。

`http://localhost:4567/自身のgithub_id` にアクセスすると、 `Hello 自身のgithub_id!` と表示される。

例: 自身のGitHub IDが `challecara` な場合

`http://localhost:4567/challecara` にアクセスすると、 `Hello challecara!` と表示される。

### 準備
1. [リポジトリをフォークする](./doc/fork.md)
2. [リポジトリをクローンする](./doc/clone.md)

### 機能追加の流れ
1. [Issueを作成する](./doc/issue.md)
2. [コードを書く](./doc/coding.md)
3. [プルリクエストを作成する](./doc/pull_request.md)
4. [レビューとマージ](./doc/review_merge.md)

### サンプルのWebアプリケーションの起動の仕方
VSCode上から起動させるか、ターミナル上で起動させる必要があります。

#### VSCode
ファイルツリーから、 `docker-compose.yml` を右クリックして、compose up することで起動できます。

#### ターミナル
git-training をクローンしたディレクトリに移動して、以下のコマンドを打ちます。

```
$ docker compose up
```


<details>
<summary>docker compose upコマンドの確認</summary>

``` .sh
 ❯ docker compose up
Sending build context to Docker daemon  13.83MB
Step 1/10 : FROM ruby:3.1.2
 ---> 9652d0b40707
Step 2/10 : ENV APP_ROOT=/src
 ---> Using cache
 ---> 3a7dc27ccee3
Step 3/10 : RUN set -ex
 ---> Using cache
 ---> ce770f948344
Step 4/10 : RUN apt-get update -qq
 ---> Using cache
 ---> 13b24abc6d1f
Step 5/10 : RUN mkdir $APP_ROOT
 ---> Using cache
 ---> b6c7509e72a3
Step 6/10 : WORKDIR $APP_ROOT
 ---> Using cache
 ---> 3c6cc99464b5
Step 7/10 : ADD ./Gemfile $APP_ROOT/Gemfile
 ---> Using cache
 ---> f982c1ebf83d
Step 8/10 : ADD ./Gemfile.lock $APP_ROOT/Gemfile.lock
 ---> Using cache
 ---> f22145e66cbb
Step 9/10 : RUN gem install bundler -v 2.3.15
 ---> Using cache
 ---> 6169f043fa0c
Step 10/10 : RUN bundle install -j4
 ---> Running in 9e5732857b6f
Fetching gem metadata from https://rubygems.org/.........
Using bundler 2.3.15
Using ruby2_keywords 0.0.5
Fetching multi_json 1.15.0
Fetching rspec-support 3.11.0
Fetching diff-lcs 1.5.0
Fetching rack 2.2.3.1
Installing multi_json 1.15.0
Installing rspec-support 3.11.0
Installing diff-lcs 1.5.0
Installing rack 2.2.3.1
Fetching tilt 2.0.10
Fetching webrick 1.7.0
Installing tilt 2.0.10
Installing webrick 1.7.0
Fetching mustermann 1.1.1
Fetching rspec-core 3.11.0
Installing mustermann 1.1.1
Fetching rspec-expectations 3.11.0
Fetching rspec-mocks 3.11.1
Installing rspec-core 3.11.0
Installing rspec-expectations 3.11.0
Installing rspec-mocks 3.11.1
Fetching rack-protection 2.2.0
Installing rack-protection 2.2.0
Fetching rack-test 1.1.0
Fetching sinatra 2.2.0
Fetching rspec 3.11.0
Installing rspec 3.11.0
Installing rack-test 1.1.0
Installing sinatra 2.2.0
Fetching sinatra-contrib 2.2.0
Installing sinatra-contrib 2.2.0
Bundle complete! 5 Gemfile dependencies, 17 gems now installed.
Use `bundle info [gemname]` to see where a bundled gem is installed.
Removing intermediate container 9e5732857b6f
 ---> 3c7848877c1b
Successfully built 3c7848877c1b
Successfully tagged git-training_app:latest

Use 'docker scan' to run Snyk tests against images to find vulnerabilities and learn how to fix them
[+] Running 2/2
 ⠿ Network git-training_default  Created                                                                                                                                                       0.0s
 ⠿ Container git-training-app-1  Created                                                                                                                                                       0.0s
Attaching to git-training-app-1
git-training-app-1  | [2022-08-13 05:32:23] INFO  WEBrick 1.7.0
git-training-app-1  | [2022-08-13 05:32:23] INFO  ruby 3.1.2 (2022-04-12) [x86_64-linux]
git-training-app-1  | == Sinatra (v2.2.0) has taken the stage on 4567 for development with backup from WEBrick
git-training-app-1  | [2022-08-13 05:32:23] INFO  WEBrick::HTTPServer#start: pid=1 port=4567
```
</details>
