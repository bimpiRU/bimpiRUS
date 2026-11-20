<div align="center">
  <h1>🚀 bimpiRUS</h1>
  <p><b>Умный оркестратор разведки и атаки (Tor + Proxychains)</b></p>
  <p>Инструмент для сбора поддоменов, анализа Zero Trust и быстрого поиска уязвимостей.</p>

  ![Bash](https://img.shields.io/badge/Language-Bash-4EAA25?logo=gnu-bash&logoColor=white)
  ![Platform](https://img.shields.io/badge/Platform-Debian%20%7C%20Ubuntu%20%7C%20Kali-orange)
  ![Status](https://img.shields.io/badge/Status-Active-success)
</div>

---

> [!WARNING]
> **ДИСКЛЕЙМЕР** 🛑
> Данный инструмент предназначен **ИСКЛЮЧИТЕЛЬНО** для авторизованного тестирования на проникновение и в образовательных целях.
> Использование `bimpiRUS` против целей без письменного разрешения является **незаконным**. Автор не несет ответственности за любой ущерб.

---

## ⚡ Установка (одна команда)

Поддерживаются системы на базе **Debian, Ubuntu, Kali Linux**. 
Открой терминал и выполни:

```bash
bash -c "$(curl -fsSL https://raw.githubusercontent.com/bimpiRU/bimpiRUS/main/install.sh)"
```
*Скрипт сам скачает файл и положит его в `/usr/local/bin`, чтобы команда `bimpiRUS` работала из любой папки.*

---

## 🛠 Использование

| Флаг | Режим | Описание |
| :--- | :--- | :--- |
| `-h`, `--help` | **Справка** | Показать меню помощи со всеми флагами |
| `-sQ` | **Тихий (Quiet)** | Разведка (поддомены, WAF, CMS) без атак и сканирования портов |
| `-sW` | **Боевой (War)** | Атака (Nmap, Nikto) по найденным уязвимым узлам |

**Примеры:**
```bash
# Посмотреть справку
bimpiRUS -h

# Тихо собрать карту инфраструктуры (без атак)
bimpiRUS -sQ example.com

# Запустить полный боевой цикл
bimpiRUS -sW example.com
```

---

<details>
<summary><b>📦 Нажми, чтобы посмотреть список зависимостей</b></summary>
<br>
Скрипт попытается установить их автоматически через <code>apt</code>, но если что-то пойдет не так, установи вручную:

- `tor`
- `proxychains4`
- `nmap`
- `nikto`
- `host` (пакет dnsutils)
- `curl`
- `whatweb`

> **Важно:** утилиту <code>subfinder</code> нужно устанавливать отдельно (через <code>go install</code> или скачав бинарник с GitHub), так как её часто нет в стандартных репозиториях.
</details>

<br>

<div align="center">
  <i>Сделано с ❤️ для пентестеров и безопасников</i>
</div>
