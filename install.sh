#!/bin/bash
set -euo pipefail

# Сюда мы будем скачивать скрипт
INSTALL_DIR="/usr/local/bin"
SCRIPT_NAME="bimpiRUS"
# ВАЖНО: Замени ВАШ_НИК на свой никнейм на GitHub (судя по коммиту, это bimpi)
SCRIPT_URL="https://raw.githubusercontent.com/ВАШ_НИК/bimpiRUS/main/bimpiRUS"

echo "Устанавливаю bimpiRUS в ${INSTALL_DIR}..."

# Скачиваем основной файл
curl -fsSL "$SCRIPT_URL" -o "/tmp/${SCRIPT_NAME}"

# Делаем его исполняемым
chmod +x "/tmp/${SCRIPT_NAME}"

# Перемещаем в системную папку (потребуется пароль от компа)
sudo mv "/tmp/${SCRIPT_NAME}" "${INSTALL_DIR}/${SCRIPT_NAME}"

echo "Готово! Теперь команда 'bimpiRUS' доступна из любого места."
