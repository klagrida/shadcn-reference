#!/usr/bin/env sh
# Recreates this reference from scratch: the latest shadcn/ui — TanStack Start,
# Base UI, the nova style, RTL — with every component, its classes written out
# (already in their logical, RTL-ready form).
#
#   sh setup.sh            # from the folder that holds shadcn-reference/
#
# To refresh an existing copy instead: inside it, run
#   npx shadcn@latest add --all -y -o
set -e

npx -y shadcn@latest create --template start --rtl --base base --preset nova \
  --no-monorepo --name shadcn-reference -y
cd shadcn-reference
npx -y shadcn@latest add --all -y -o
