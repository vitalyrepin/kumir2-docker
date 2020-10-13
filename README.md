# kumir2-docker
Kumir2.x programming system - dockerizing

The audience of this project are russian speaking students and teachers who need to use Russian-based educational programming language [Kumir](https://github.com/a-a-maly/kumir2). Most of this README is in Russian to make it easier to understand for Russian-speaking students and teachers.

## Сборка контейнера (build)

Запустите скрипт build.sh если необходимо собрать контейнер локально

## Запуск контейнера

Запуск IDE: скрипт kumir-ide.sh.  Этот скрипт использует скрипт run-kumir-component.sh, который позволяет запускать любой компонент системы КуМиР. Пример использования - см. скрипт kumir-ide.sh

Подкаталог Kumir в директории запуска скрипта run-kumir-component.sh доступен для чтения и записи из контейнера с путем /home/kumir/Kumir.
