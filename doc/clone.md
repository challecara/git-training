## リポジトリをクローンする

リポジトリのクローンの仕方は、[GitHub 公式ドキュメント](https://docs.github.com/ja/github/creating-cloning-and-archiving-repositories/cloning-a-repository-from-github/cloning-a-repository) を参照してください。

公式ドキュメント内では、`octocat/Spoon-Knife ` リポジトリをクローンしていますが、今回は演習で使う `challecara/git-training` リポジトリをクローンします。

またリポジトリのクローンはターミナルではなく VisualStudio Code を使って行います。

**クローンはフォークをした人以外のチームメンバーだけが行います。**

1. まず VisualStudio Code の新規ウィンドウを開き左側にある Git を開きます。

![クローンURL入力欄表示](./images/clone/1-open_clone_url.png)

2. 次にウィンドウ上部に出てきた入力欄に `challecara/git-training` のクローンURLを入力します。

![クローンURL入力](./images/clone/2-input_clone_url.png)

3. 入力したらエンターキーを押してクローンします。
クローンが完了したらウィンドウ右下に通知が出ます。

![クローン完了通知](./images/clone/3-open_repository.png)

4. 開くを押してVisualStudio Codeで `challecara/git-training` リポジトリを開きます。

![リポジトリ表示](./images/clone/4-open_git-training.png)

クローンが完了したら、チームメンバーをクローンしたリポジトリにコラボレーターとして招待しましょう。

チームメンバーをコラボレーターにすることで、クローンしたリポジトリに書き込み等の権限が付与され、ソースコードのプッシュなどができるようになります。

コラボレーターへの招待の仕方は、
[GitHub 公式ドキュメント](https://docs.github.com/ja/github/setting-up-and-managing-your-github-user-account/managing-access-to-your-personal-repositories/inviting-collaborators-to-a-personal-repository) を参照してください。

また、演習で Issue を利用するので、クローンしたリポジトリの `Settings -> Features` にある、Issue のチェックボックスをオンにしておきましょう。
