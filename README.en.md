[toki pona](README.md) | English

# ilo "Fcitx5" pi sitelen pona

## What's this?

This tool is an IME using Fcitx5 <br>
With it, you can easily write toki pona's sitelen pona glyphs <br>
Simply type your words in latin characters, and they'll be changed into sitelen pona

## Usage

Enable the input method with Ctrl + Space (or if you've changed the keybind, then that one) <br>
Write the name of a glyph, or write only the beginning, then press Space or numbers 1-5 <br>
Press "Enter" to keep the text in latin characters <br>
Like this:

<details>
<summary>[Click me!]</summary>

![Demo](./assets/demo-1.webp)

</details><br>

You can combine two glyphs like this:

<details><summary>[Click me!]</summary>

![Demo](./assets/demo-2.webp)

</details><br>

You can make long PIs or other long glyphs like this:

<details><summary>[Click me!]</summary>

![Demo](./assets/demo-3.webp)

</details><br>

Here is the full table of formatting tricks:

| UCSUR / Unicode name    | ASCII character                                 | sitelen pona                                         |
|-------------------------|-------------------------------------------------|------------------------------------------------------|
| "Long Glyph"            | `(`: start <br> `)`: end <br> `_`: extension    | ![](./assets/sitelen_pona/long-glyph.svg)            |
| "Reverse Long Glyph"    | `{`: start <br> `}`: end <br> `_`: extension    | ![](./assets/sitelen_pona/reverse-long-glyph.svg)    |
| "Cartouche"             | `[`: start <br> `]`: end <br> `=`: extension    | ![](./assets/sitelen_pona/cartouche.svg)             |
| "Zero Width Joiner"     | `-`                                             | ![](./assets/sitelen_pona/zero-width-joiner.svg)     |
| "Stacking Joiner"       | `+` or `^`                                      | ![](./assets/sitelen_pona/stacking-joiner.svg)       |
| "Scaling Joiner"        | `*`                                             | ![](./assets/sitelen_pona/scaling-joiner.svg)        |
| "Zero Width Non-Joiner" | `/` or `\|`                                     | ![](./assets/sitelen_pona/zero-width-non-joiner.svg) |
| "Middle Dot"            | `.`                                             | ![](./assets/sitelen_pona/middle-dot.svg)            |
| "Colon"                 | `:`                                             | ![](./assets/sitelen_pona/colon.svg)                 |
| "Corner Brackets"       | `<` and `>`                                     | ![](./assets/sitelen_pona/corner-brackets.svg)       |
| "Variation Selecor"     | `~`                                             | ![](./assets/sitelen_pona/variation-selector.svg)    |
| "Ideographic Space"     | `z`                                             | ![](./assets/sitelen_pona/ideographic-space.svg)     |


## Fonts

To properly see the glyphs, you need to use a USCUR compliant font! <br>
Here are some good options that support the above formatting:

| Font               | Style               | Notes                                                                 | Link                                                                          |
|--------------------|---------------------|-----------------------------------------------------------------------|-------------------------------------------------------------------------------|
| nasin nanpa        | Uniform line weight | Used in lipu su; As of now only supports "li" for reverse long glyphs | [GitHub](https://github.com/ETBCOR/nasin-nanpa)                               |
| Fairfax HD         | Uniform line weight | Completionist, has obscure characters; has a lot of other UCSUR stuff | [KreativeKorp](https://www.kreativekorp.com/software/fonts/fairfaxhd/)        |
| sitelen seli kiwen | Handwritten         | Completionist, has obscure characters                                 | [KreativeKorp](https://www.kreativekorp.com/software/fonts/sitelenselikiwen/) |

## Installation

<details>
<summary><span style="font-size: 1.25em; font-weight: bold;">On Arch Linux</span></summary>

Install the `fcitx5-sitelen-pona` package from the "[Arch User Repository](https://aur.archlinux.org/packages/fcitx5-sitelen-pona)" like this:
```
yay -S fcitx5-sitelen-pona
```

Or without using yay like this:
```
git clone https://aur.archlinux.org/fcitx5-sitelen-pona.git
cd fcitx5-sitelen-pona
makepkg -si
```

</details><br>

<details>
<summary><span style="font-size: 1.25em; font-weight: bold;">On other Linux distributions</span></summary>

The following dependencies are needed: <br>
`libime` (for buildng .dict files only), `fcitx5-chinese-addons`, `fcitx5` (which you probably already knew)

Install the dependencies <br>
Clone the Git repository <br>
Run install.sh <br>
Use sudo to install system-wide <br>
Like this:
```
git clone https://github.com/Toastberries/fcitx5-sitelen-pona.git
cd fcitx5-sitelen-pona
sudo ./install.sh
```

</details><br>

Configure the input method in Fcitx5

