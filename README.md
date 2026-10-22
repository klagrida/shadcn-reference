# shadcn-reference

The latest [shadcn/ui](https://ui.shadcn.com), generated — the reference that
[semantic-components](https://github.com/gridatek/semantic-components) compares
its styles against.

- **TanStack Start**, **Base UI** (`--base base`), the **nova** style
  (`base-nova` in `components.json`), **RTL** on.
- **Every component**, in `src/components/ui/`: the classes written out in
  full, already in their logical, RTL-ready form (`ms-*`, `pe-*`, `start-*`,
  `rtl:` variants) — so a class here can be compared with ours as it is.
- The theme: `src/styles.css`.

## Made with

```sh
npx shadcn@latest create --template start --rtl --base base --preset nova --no-monorepo --name shadcn-reference -y
cd shadcn-reference
npx shadcn@latest add --all -y -o
```

`setup.sh` runs the same from scratch.

## Refresh

Inside the folder, to take shadcn's latest:

```sh
npx shadcn@latest add --all -y -o
```

Then `git diff` shows what upstream changed.
