#!/bin/sh
set -e

SHELL_DIR="$(cd "$(dirname "$0")" && pwd)"
SOURCE_LINE="source \"$SHELL_DIR/main\""

# Detect the current shell's rc file
case "$(basename "$SHELL")" in
    zsh)  RC_FILE="$HOME/.zshrc" ;;
    bash)
        # Prefer .bashrc; fall back to .bash_profile on macOS
        if [ -f "$HOME/.bashrc" ]; then
            RC_FILE="$HOME/.bashrc"
        else
            RC_FILE="$HOME/.bash_profile"
        fi
        ;;
    *)
        RC_FILE="$HOME/.profile"
        ;;
esac

if grep -qF "$SOURCE_LINE" "$RC_FILE" 2>/dev/null; then
    echo "Already installed in $RC_FILE"
    exit 0
fi

printf '\n%s\n' "$SOURCE_LINE" >> "$RC_FILE"
echo "Added to $RC_FILE:"
echo "  $SOURCE_LINE"
echo ""
echo "Restart your shell or run: source $RC_FILE"
