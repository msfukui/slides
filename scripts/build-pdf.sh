#!/usr/bin/env bash
set -euo pipefail

# puppeteer のブラウザは pnpm-workspace.yaml の allowBuilds で取得しない設定のため,
# PUPPETEER_EXECUTABLE_PATH でローカルの Chrome を指定して実行する.
out_dir="${1:-dist/pdf}"
mkdir -p "$out_dir"

for md in docs/*.md; do
  pdf="$out_dir/$(basename "$md" .md).pdf"
  rm -f "$pdf"
  pnpm exec reveal-md "$md" --print "$pdf" --puppeteer-launch-args="--no-sandbox"
  # reveal-md は PDF 生成に失敗しても終了コード 0 を返すため, 出力の有無で判定する
  if [ ! -s "$pdf" ]; then
    echo "Failed to generate $pdf" >&2
    exit 1
  fi
done
