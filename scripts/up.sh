# Обновляет зависимости до указанной версии (latest, newest, greatest, minor, patch)

source "$(dirname $0)"/../bash.config.sh

VERSION=${1:-minor}

echo -e "${YELLOW}Обновляю зависимости пакета ${GREEN}${CURRENT_DIR}${YELLOW} до версии ${GREEN}${VERSION}${YELLOW}...${WHITE}"

if [ ${SKIPED_PACKAGES} != 'NONE' ]; then
  echo -e "${BLUE}--reject ${GREY}${SKIPED_PACKAGES}"
fi

# root
npx npm-check-updates --upgrade --reject ${SKIPED_PACKAGES} --target ${VERSION}
npm i --legacy-peer-deps
npm audit fix

