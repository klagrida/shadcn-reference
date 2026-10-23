#!/usr/bin/env sh
# Recreates the presets from scratch: one app per shadcn/ui style, each the
# latest shadcn — TanStack Start, Base UI, RTL — with every component, its
# classes written out (already in their logical, RTL-ready form). Only the
# style differs between them.
#
#   sh setup.sh               # every style
#   sh setup.sh vega maia     # some
#
# To refresh an existing preset instead: inside presets/<style>, run
#   npx shadcn@latest add --all -y -o
set -e

cd "$(dirname "$0")"
mkdir -p presets
cd presets

styles=${*:-nova vega maia lyra mira luma sera rhea}
for style in $styles; do
  rm -rf "$style"
  npx -y shadcn@latest create --template start --rtl --base base \
    --preset "$style" --no-monorepo --name "$style" -y
  (cd "$style" && npx -y shadcn@latest add --all -y -o && rm -rf .git)
done
