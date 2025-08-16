#!/usr/bin/env bash
set -euo pipefail

SRC_DIR="$(cd "$(dirname "$0")" && pwd)"
TABLE_DIR="$SRC_DIR/fcitx5/table"

do_build() {
    printf "[*] mi pali e lipu \".dict\" tan lipu open... // Building .dict files from source tables...\n"
    mkdir -p "$TABLE_DIR"
    for file in "$SRC_DIR/table_sources"/*; do
        libime_tabledict "$file" "$TABLE_DIR/$(basename "$file" .txt).dict"
    done

    printf "[✓] pali li pini pona! // Successfully built!\n"
}

do_install() {
    if [[ ! -d "$TABLE_DIR" ]] || ! compgen -G "$TABLE_DIR"/* > /dev/null; then
        printf "[✗] pakala la: lipu \".dict\" li kama pali ala // Error: .dict files have not been built yet!\n"
        exit 1
    fi

    # nimi ante "DESTDIR" li lon la, o pilin e ni: ni li ma pi poki pana la, o pana tawa ma "/usr", taso ni li ante kepeken nimi ante "PREFIX"
    # If DESTDIR is set, assume packaging environment and install to "/usr", unless overwritten with PREFIX
    if [[ -z "${PREFIX:-}" ]]; then
        if [[ -n "${DESTDIR:-}" ]]; then
            PREFIX="/usr"
        elif [[ "$(id -u)" -eq 0 ]]; then
            PREFIX="/usr/local"
        else
            confirm_non_root_install
            PREFIX="$HOME/.local"
        fi
    fi

    INSTALL_DIR="${DESTDIR:-}${PREFIX}"
    FCITX5_DIR="$INSTALL_DIR/share/fcitx5"
    ICON_DIR="$INSTALL_DIR/share/icons/hicolor/scalable/status"

    printf "[*] mi pana tawa: \"$INSTALL_DIR\" // Installing to: \"$INSTALL_DIR\"\n"

    printf "[*] mi pana lipu \"Fcitx5\"... // Installing Fcitx5 files...\n"
    for dir in "$SRC_DIR/fcitx5"/*; do
        subdirname="$(basename "$dir")"
        for file in "$dir"/*; do
            filename=$(basename "$file")
            printf "    - \"$subdirname/$filename\" --> \"$FCITX5_DIR/$subdirname/$filename\"\n"
            install -Dm644 "$file" "$FCITX5_DIR/$subdirname/$filename"
        done
    done

    printf "[*] mi pana lipu sitelen... // Installing icons...\n"
    for file in "$SRC_DIR/icons"/*; do
        filename=$(basename "$file")
        printf "    - \"$filename\" --> \"$ICON_DIR/fcitx5-$filename\"\n"
        install -Dm644 "$file" "$ICON_DIR/fcitx5-$filename"
    done

    printf "[✓] pana li pini pona! // Successfully installed!\n"
}

confirm_non_root_install() {
    printf "[?] sina pali kepeken lawa \"Root\" ala! sina wile ala wile pana tawa tomo sina taso? // You are not running as root! Do you wish to install locally only? [y/N] "
    read -r answer
    case "$answer" in
        [Yy]* ) ;;
        * ) printf "[✗] mi open ala e pana! // Installation aborted!\n"; exit 1 ;;
    esac
}

usage() {
    cat >&2 <<EOF
Kepeken la: $0 [pali-taso|pana-taso|ala]
    o open kepeken nasin "Sudo" la, mi pana e ilo tawa jan ale pi ilo sona ni
    nimi ante "DESTDIR" en nimi ante "PREFIX" li lon, ona li sama ilo Autotools
Usage: $0 [build-only|install-only|all]
    Run as sudo to install system-wide.
    Autotools-like DESTDIR and PREFIX environment variables also supported.
EOF
}

MODE="${1:-all}"

case "$MODE" in
    all|ale)
        do_build
        do_install
        ;;
    build-only|pali-taso)
        do_build
        ;;
    install-only|pana-taso)
        do_install
        ;;
    *)
        usage
        exit 1
        ;;
esac
