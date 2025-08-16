toki pona | [English](README.en.md)

# ilo "Fcitx5" pi sitelen pona

## ni li seme

ilo ni li ilo Ajemi ("IME") kepeken ilo "Fcitx5" <br>
kepeken ona la, sina ken pali pona e sitelen pona pi toki pona <br>
pali e sitelen lon sitelen Lasina la, ilo ni li ante e ona tawa sitelen pona

## nasin kepeken

o open e ilo ni kepeken nena kulupu "Ctrl + Space" (anu sina ante e ni la, o kepeken ona) <br>
o sitelen e nimi sitelen anu nimi sitelen open taso, o luka e nena "Space" anu nanpa 1-5 <br>
o luka e nena "Enter" la, sitelen Lasina li awen <br>
sama ni:

<details>
<summary>[o luka e mi]</summary>

![Demo](./assets/demo-1.webp)

</details><br>

sina ken wan e sitelen tu sama ni:

<details><summary>[o luka e mi]</summary>

![Demo](./assets/demo-2.webp)

</details><br>

sina ken pali suli e 'pi' e sitelen ante sama ni:

<details><summary>[o luka e mi]</summary>

![Demo](./assets/demo-3.webp)

</details><br>

ni li kulupu ale pi nasin sitelen namako:

| nimi Usisa / Juniko     | sitelen "ASCII"                                 | sitelen pona                                         |
|-------------------------|-------------------------------------------------|------------------------------------------------------|
| "Long Glyph"            | `(`: open <br> `)`: pini <br> `_`: linja namako | ![](./assets/sitelen_pona/long-glyph.svg)            |
| "Reverse Long Glyph"    | `{`: open <br> `}`: pini <br> `_`: linja namako | ![](./assets/sitelen_pona/reverse-long-glyph.svg)    |
| "Cartouche"             | `[`: open <br> `]`: pini <br> `=`: linja namako | ![](./assets/sitelen_pona/cartouche.svg)             |
| "Zero Width Joiner"     | `-`                                             | ![](./assets/sitelen_pona/zero-width-joiner.svg)     |
| "Stacking Joiner"       | `+` anu `^`                                     | ![](./assets/sitelen_pona/stacking-joiner.svg)       |
| "Scaling Joiner"        | `*`                                             | ![](./assets/sitelen_pona/scaling-joiner.svg)        |
| "Zero Width Non-Joiner" | `/` anu `\|`                                    | ![](./assets/sitelen_pona/zero-width-non-joiner.svg) |
| "Middle Dot"            | `.`                                             | ![](./assets/sitelen_pona/middle-dot.svg)            |
| "Colon"                 | `:`                                             | ![](./assets/sitelen_pona/colon.svg)                 |
| "Corner Brackets"       | `<` en `>`                                      | ![](./assets/sitelen_pona/corner-brackets.svg)       |
| "Variation Selecor"     | `~`                                             | ![](./assets/sitelen_pona/variation-selector.svg)    |
| "Ideographic Space"     | `z`                                             | ![](./assets/sitelen_pona/ideographic-space.svg)     |


## nasin sitelen lipu

sina lukin pona e sitelen la, o wile kepeken e nasin sitelen lipu pi nasin Usisa <br>
sina ken sitelen e nasin sitelen namako pi ilo ni kepeken nasin sitelen lipu ni pona:

| nasin sitelen lipu | nasin lukin | toki lili                                                                               | nasin tawa lipu                                                               |
|--------------------|-------------|-----------------------------------------------------------------------------------------|-------------------------------------------------------------------------------|
| nasin nanpa        | linja sama  | kepeken lon lipu su; tenpo ni la, ni jo e nasin "Reverse Long Glyph" lon nimi 'la' taso | [GitHub](https://github.com/ETBCOR/nasin-nanpa)                               |
| Fairfax HD         | linja sama  | jo sitelen pona ale; jo e ijo ante mute pi nasin Usisa                                  | [KreativeKorp](https://www.kreativekorp.com/software/fonts/fairfaxhd/)        |
| sitelen seli kiwen | linja luka  | jo sitelen pona ale                                                                     | [KreativeKorp](https://www.kreativekorp.com/software/fonts/sitelenselikiwen/) |

## pali pi pana e ilo

<details>
<summary><span style="font-size: 1.25em; font-weight: bold;">nasin "Arch Linux"</span></summary>

o kepeken poki `fcitx5-sitelen-pona` tan poki tomo "[Arch User Repository](https://aur.archlinux.org/packages/fcitx5-sitelen-pona)" sama ni:
```
yay -S fcitx5-sitelen-pona
```

anu kepeken "Yay" ala sama ni:
```
git clone https://aur.archlinux.org/fcitx5-sitelen-pona.git
cd fcitx5-sitelen-pona
makepkg -si
```

</details><br>

<details>
<summary><span style="font-size: 1.25em; font-weight: bold;">nasin "Linux" ante</span></summary>

ilo ni li wile e ilo ante <br>
ona li `libime` (tawa pali pi lipu ".dict" taso) li `fcitx5-chinese-addons` li `fcitx5` (sina awen sona)

o pana e ilo ante <br>
o pali sama e poki "Git" ni <br>
o open e lipu "install.sh" <br>
o kepeken nasin "Sudo" la, o pana e ilo tawa jan ale pi ilo sona ni <br>
sama ni:
```
git clone https://github.com/Toastberries/fcitx5-sitelen-pona.git
cd fcitx5-sitelen-pona
sudo ./install.sh
```

</details><br>

o pana e nasin sitelen lon "Fcitx5"
