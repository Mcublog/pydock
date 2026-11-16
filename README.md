# pydock

Докер образ для сборки питоновских бинарников

База — Ubuntu 22.04, системный Python 3.10. Несмотря на имя
`p3_11_cups.dockerfile`, Python 3.11 в этом образе не устанавливается.
Включены инструменты для PyInstaller и системные библиотеки Qt6 (GL/EGL,
XCB, xkbcommon, GLib, D-Bus), необходимые для сборки MagnaLock без запуска
`apt` в сборочном pipeline. Python-зависимости приложения устанавливаются
отдельно из его requirements.txt.

```bash
docker build -t mcublog/pydock:22.04 -f ./p3_11_cups.dockerfile .
```

После проверки образ публикуется владельцем репозитория:

```bash
docker push mcublog/pydock:22.04
```

После обновления тега сборочные ноды должны повторно скачать образ
(`docker pull` или `docker run --pull=always`), иначе Docker может
использовать старую локальную версию без библиотек Qt6.
