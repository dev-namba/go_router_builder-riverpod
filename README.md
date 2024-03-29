`GoRouter`、`go_router_builder`、および`Riverpod`を組み合わせて使用し、`ShellRoute`を介してアプリケーション全体に共通のリダイレクトロジックを適用する方法
`go_router_builder`を使う事による複雑になるコードを分割し、簡潔なコードにする為の方法

### 概要

このアプローチでは、`GoRouter`を使用してルーティングを管理し、`go_router_builder`を利用して型安全なルーティングを実現し、`Riverpod`でアプリケーションの状態管理（例えば、認証状態）を行います。特に、`ShellRoute`を用いることで、複数のルートにわたって共通の UI フレーム（例えば、ナビゲーションバー）を提供しつつ、特定の認証状態に基づいてアクセス制御を行う一般的なリダイレクトロジックを実装します。

### 問題点

`ShellRoute`はアプリケーションの特定のセクションに共通の UI や動作を提供するために使用されますが、`ShellRoute`自体にリダイレクトロジックを直接適用することはできません。つまり、`ShellRoute`に含まれるすべての子ルートで共通の認証リダイレクトを適用したい場合、それぞれの子ルートに個別にリダイレクトロジックを記述する必要があります。

### 解決策

解決策として、`GoRouter`を使用して外側でラップし、`GoRouter`の`redirect`メソッドを使用してアプリケーション全体で一貫したリダイレクトロジックを適用します。これにより、認証が必要なページへのアクセス時にユーザーが適切に認証されているかどうかをチェックし、認証されていない場合はログインページにリダイレクトさせることができます。
