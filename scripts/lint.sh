# Запускает линтеры

source "$(dirname $0)"/../bash.config.sh

OPTION=${1}

echo -e "${YELLOW}Запускаю линтеры: ${GREEN}eslint, htmllint, markdownlint, npmlint, stylelint...${WHITE}"

npm run lint:eslint --if-present ${OPTION}
npm run lint:stylelint --if-present ${OPTION}
