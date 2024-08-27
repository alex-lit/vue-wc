# Устанавливает все зависимости проекта

source "$(dirname $0)"/../bash.config.sh

# Устанавливает зависимости
install() {
  npm i \
    --legacy-peer-deps \
    --verbose \
    --no-progress

  # npm audit fix
}

echo -e "${YELLOW}Устанавливаю зависимости...${WHITE}"

# root
install

echo -e "${GREEN}Готово!"
