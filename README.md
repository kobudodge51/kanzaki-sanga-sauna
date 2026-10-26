# 神崎サンガサウナ 管理システム

スタッフ用の管理システムです。シフト・勤務時間・給与・経費・在庫・備品・イベント・マニュアル・計画表・忘れ物・リマインドをまとめています。

- 公開：GitHub Pages（このリポジトリの `main` を公開）
- 画面：`index.html`（ロゴ `logo.webp` / `logo.png`）
- データ：非公開リポジトリ `kanzaki-sanga-data` の `data/*.json`（写真は `img/`）に保存し、全スタッフで共有。変更のたびにコミットされるので、履歴がそのままバックアップになります
- 接続設定：`config.js`（`enc` はお店のパスワードで暗号化した GitHub の鍵。空のときは初期設定画面が出ます）
- 鍵（Fine-grained token）は `kanzaki-sanga-data` だけ・Contents の Read and write だけの権限で作成。期限が切れたら作り直して初期設定をやり直します
