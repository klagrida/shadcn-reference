# shadcn-reference

The latest [shadcn/ui](https://ui.shadcn.com), generated — the reference that
[semantic-components](https://github.com/gridatek/semantic-components) compares
its styles against. One app per **style** (shadcn's presets), in `presets/`:

| Style | App               |
| ----- | ----------------- |
| nova  | `presets/nova/` — the default |
| vega  | `presets/vega/`   |
| maia  | `presets/maia/`   |
| lyra  | `presets/lyra/`   |
| mira  | `presets/mira/`   |
| luma  | `presets/luma/`   |
| sera  | `presets/sera/`   |
| rhea  | `presets/rhea/`   |

Every app is the same but for its style:

- **TanStack Start**, **Base UI** (`--base base`), **RTL** on; the style in
  `components.json` (`base-<style>`).
- **Every component**, in `src/components/ui/`: the classes written out in
  full, already in their logical, RTL-ready form (`ms-*`, `pe-*`, `start-*`,
  `rtl:` variants) — so a class here can be compared with ours as it is, and
  one style with another.
- The theme: `src/styles.css`.

## Made with

For each style:

```sh
npx shadcn@latest create --template start --rtl --base base --preset <style> --no-monorepo --name <style> -y
cd <style>
npx shadcn@latest add --all -y -o
```

`setup.sh` runs it from scratch, in `presets/`: every style (`sh setup.sh`) or
some (`sh setup.sh vega maia`).

## Refresh

Inside `presets/<style>`, to take shadcn's latest:

```sh
npx shadcn@latest add --all -y -o
```

Then `git diff` shows what upstream changed.
