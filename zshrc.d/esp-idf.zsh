# https://docs.espressif.com/projects/esp-idf/en/latest/get-started/index.html
# https://docs.espressif.com/projects/esp-idf/en/latest/get-started/macos-setup.html
if [[ -d "$HOME/.esp" ]]; then
  path=("$HOME/.esp/xtensa-esp32-elf/bin" $path)
  export IDF_PATH="$HOME/.esp/esp-idf"
fi
