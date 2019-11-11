# シードデータとして投入するテーブルの名前を配列に保存する。
table_names = %w(users messages relationships)

# テーブル名毎に対象ファイルが存在すれば、そのファイルを読み込む。
table_names.each do |table_name|
  # Rails.root.joinは引数を複数とって、ファイルパスを生成する。
  path = Rails.root.join("db", "seeds", Rails.env, "#{table_name}.rb")

  if File.exist?(path)
    puts "creating #{table_name}..."
    require path
  end
end
