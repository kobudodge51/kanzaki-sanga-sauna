# 神崎サンガサウナ 管理システム

スタッフ用の管理システムです。シフト・勤務時間・給与・経費・在庫・備品・イベント・マニュアル・計画表・忘れ物・リマインドをまとめています。

- 公開：Vercel（このリポジトリの `main` を自動で公開）
- 画面：`index.html`（ロゴ `logo.webp` / `logo.png`）
- データ：Supabase のテーブル `sanga_records` に保存し、全スタッフで共有
- 接続情報：`config.js`（空のままだと、その端末だけに保存する試作モード）
- データベースの準備：`supabase/setup.sql` を Supabase の SQL Editor で1回実行
- ログイン：お店のパスワード1つ（Supabase の Authentication に作ったユーザー `kanzaki-sanga@example.com`）＋名前を選ぶ
