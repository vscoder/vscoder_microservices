# vscoder_microservices

[![Build Status](https://travis-ci.com/Otus-DevOps-2019-08/vscoder_microservices.svg?branch=master)](https://travis-ci.com/Otus-DevOps-2019-08/vscoder_microservices)

vscoder microservices repository

- [vscoder_microservices](#vscodermicroservices)
- [Makefile](#makefile)
  - [Переменные](#%d0%9f%d0%b5%d1%80%d0%b5%d0%bc%d0%b5%d0%bd%d0%bd%d1%8b%d0%b5)
  - [Цели](#%d0%a6%d0%b5%d0%bb%d0%b8)
- [Домашние задания](#%d0%94%d0%be%d0%bc%d0%b0%d1%88%d0%bd%d0%b8%d0%b5-%d0%b7%d0%b0%d0%b4%d0%b0%d0%bd%d0%b8%d1%8f)
  - [HomeWork 12: Технология контейнеризации. Введение в Docker](#homework-12-%d0%a2%d0%b5%d1%85%d0%bd%d0%be%d0%bb%d0%be%d0%b3%d0%b8%d1%8f-%d0%ba%d0%be%d0%bd%d1%82%d0%b5%d0%b9%d0%bd%d0%b5%d1%80%d0%b8%d0%b7%d0%b0%d1%86%d0%b8%d0%b8-%d0%92%d0%b2%d0%b5%d0%b4%d0%b5%d0%bd%d0%b8%d0%b5-%d0%b2-docker)
    - [Подготовка проекта. Интеграции](#%d0%9f%d0%be%d0%b4%d0%b3%d0%be%d1%82%d0%be%d0%b2%d0%ba%d0%b0-%d0%bf%d1%80%d0%be%d0%b5%d0%ba%d1%82%d0%b0-%d0%98%d0%bd%d1%82%d0%b5%d0%b3%d1%80%d0%b0%d1%86%d0%b8%d0%b8)
    - [Установка docker](#%d0%a3%d1%81%d1%82%d0%b0%d0%bd%d0%be%d0%b2%d0%ba%d0%b0-docker)
    - [Работа с docker](#%d0%a0%d0%b0%d0%b1%d0%be%d1%82%d0%b0-%d1%81-docker)
    - [Задание со \*: Отличия образа и контейнера](#%d0%97%d0%b0%d0%b4%d0%b0%d0%bd%d0%b8%d0%b5-%d1%81%d0%be--%d0%9e%d1%82%d0%bb%d0%b8%d1%87%d0%b8%d1%8f-%d0%be%d0%b1%d1%80%d0%b0%d0%b7%d0%b0-%d0%b8-%d0%ba%d0%be%d0%bd%d1%82%d0%b5%d0%b9%d0%bd%d0%b5%d1%80%d0%b0)
    - [Больше docker-команд](#%d0%91%d0%be%d0%bb%d1%8c%d1%88%d0%b5-docker-%d0%ba%d0%be%d0%bc%d0%b0%d0%bd%d0%b4)
      - [Docker kill & stop](#docker-kill--stop)
      - [docker system df](#docker-system-df)
      - [Docker rm & rmi](#docker-rm--rmi)
    - [Docker контейнеры](#docker-%d0%ba%d0%be%d0%bd%d1%82%d0%b5%d0%b9%d0%bd%d0%b5%d1%80%d1%8b)
      - [GCE](#gce)
      - [Docker machine](#docker-machine)
      - [Работа с namespaces](#%d0%a0%d0%b0%d0%b1%d0%be%d1%82%d0%b0-%d1%81-namespaces)
        - [PID namespace](#pid-namespace)
        - [NET namespace](#net-namespace)
        - [USER namespace](#user-namespace)
      - [Dockerfile](#dockerfile)
      - [Запуск контейнера](#%d0%97%d0%b0%d0%bf%d1%83%d1%81%d0%ba-%d0%ba%d0%be%d0%bd%d1%82%d0%b5%d0%b9%d0%bd%d0%b5%d1%80%d0%b0)
    - [Docker hub](#docker-hub)
    - [Задание со \*: IaC с использованием docker](#%d0%97%d0%b0%d0%b4%d0%b0%d0%bd%d0%b8%d0%b5-%d1%81%d0%be--iac-%d1%81-%d0%b8%d1%81%d0%bf%d0%be%d0%bb%d1%8c%d0%b7%d0%be%d0%b2%d0%b0%d0%bd%d0%b8%d0%b5%d0%bc-docker)
      - [Packer](#packer)
      - [Terraform](#terraform)
        - [Project-wide объекты](#project-wide-%d0%be%d0%b1%d1%8a%d0%b5%d0%ba%d1%82%d1%8b)
        - [Модули](#%d0%9c%d0%be%d0%b4%d1%83%d0%bb%d0%b8)
        - [Stage-окружение](#stage-%d0%be%d0%ba%d1%80%d1%83%d0%b6%d0%b5%d0%bd%d0%b8%d0%b5)
      - [Запуск контейнера средствами ansible](#%d0%97%d0%b0%d0%bf%d1%83%d1%81%d0%ba-%d0%ba%d0%be%d0%bd%d1%82%d0%b5%d0%b9%d0%bd%d0%b5%d1%80%d0%b0-%d1%81%d1%80%d0%b5%d0%b4%d1%81%d1%82%d0%b2%d0%b0%d0%bc%d0%b8-ansible)
    - [Вне ДЗ: безопасность](#%d0%92%d0%bd%d0%b5-%d0%94%d0%97-%d0%b1%d0%b5%d0%b7%d0%be%d0%bf%d0%b0%d1%81%d0%bd%d0%be%d1%81%d1%82%d1%8c)
      - [TODO:](#todo)
      - [Docker Security Benchmark](#docker-security-benchmark)
  - [HomeWork 13: Docker-образы и Микросервисы](#homework-13-docker-%d0%be%d0%b1%d1%80%d0%b0%d0%b7%d1%8b-%d0%b8-%d0%9c%d0%b8%d0%ba%d1%80%d0%be%d1%81%d0%b5%d1%80%d0%b2%d0%b8%d1%81%d1%8b)
    - [Подготовка](#%d0%9f%d0%be%d0%b4%d0%b3%d0%be%d1%82%d0%be%d0%b2%d0%ba%d0%b0)
      - [Dockerfile best practices (collapsed)](#dockerfile-best-practices-collapsed)
        - [FROM](#from)
        - [LABEL](#label)
        - [RUN](#run)
        - [CMD](#cmd)
        - [EXPOSE](#expose)
        - [ENV](#env)
        - [ADD or COPY](#add-or-copy)
        - [ENTRYPOINT](#entrypoint)
        - [VOLUME](#volume)
        - [USER](#user)
        - [WORKDIR](#workdir)
        - [ONBUILD](#onbuild)
    - [Запуск](#%d0%97%d0%b0%d0%bf%d1%83%d1%81%d0%ba)
      - [Новая структура приложения](#%d0%9d%d0%be%d0%b2%d0%b0%d1%8f-%d1%81%d1%82%d1%80%d1%83%d0%ba%d1%82%d1%83%d1%80%d0%b0-%d0%bf%d1%80%d0%b8%d0%bb%d0%be%d0%b6%d0%b5%d0%bd%d0%b8%d1%8f)
      - [Сборка образов](#%d0%a1%d0%b1%d0%be%d1%80%d0%ba%d0%b0-%d0%be%d0%b1%d1%80%d0%b0%d0%b7%d0%be%d0%b2)
      - [Запуск приложения](#%d0%97%d0%b0%d0%bf%d1%83%d1%81%d0%ba-%d0%bf%d1%80%d0%b8%d0%bb%d0%be%d0%b6%d0%b5%d0%bd%d0%b8%d1%8f)
    - [Задание со \*: Переопределение сетевых алиасов](#%d0%97%d0%b0%d0%b4%d0%b0%d0%bd%d0%b8%d0%b5-%d1%81%d0%be--%d0%9f%d0%b5%d1%80%d0%b5%d0%be%d0%bf%d1%80%d0%b5%d0%b4%d0%b5%d0%bb%d0%b5%d0%bd%d0%b8%d0%b5-%d1%81%d0%b5%d1%82%d0%b5%d0%b2%d1%8b%d1%85-%d0%b0%d0%bb%d0%b8%d0%b0%d1%81%d0%be%d0%b2)
      - [Теория](#%d0%a2%d0%b5%d0%be%d1%80%d0%b8%d1%8f)
      - [Реализация](#%d0%a0%d0%b5%d0%b0%d0%bb%d0%b8%d0%b7%d0%b0%d1%86%d0%b8%d1%8f)
    - [Образы](#%d0%9e%d0%b1%d1%80%d0%b0%d0%b7%d1%8b)
    - [Задание со \*: Уменьшаем размер образа](#%d0%97%d0%b0%d0%b4%d0%b0%d0%bd%d0%b8%d0%b5-%d1%81%d0%be--%d0%a3%d0%bc%d0%b5%d0%bd%d1%8c%d1%88%d0%b0%d0%b5%d0%bc-%d1%80%d0%b0%d0%b7%d0%bc%d0%b5%d1%80-%d0%be%d0%b1%d1%80%d0%b0%d0%b7%d0%b0)
      - [Анализ](#%d0%90%d0%bd%d0%b0%d0%bb%d0%b8%d0%b7)
      - [Сборка на основе alpine linux](#%d0%a1%d0%b1%d0%be%d1%80%d0%ba%d0%b0-%d0%bd%d0%b0-%d0%be%d1%81%d0%bd%d0%be%d0%b2%d0%b5-alpine-linux)
        - [ui](#ui)
        - [comment](#comment)
        - [post](#post)
    - [Дальнейшие действия](#%d0%94%d0%b0%d0%bb%d1%8c%d0%bd%d0%b5%d0%b9%d1%88%d0%b8%d0%b5-%d0%b4%d0%b5%d0%b9%d1%81%d1%82%d0%b2%d0%b8%d1%8f)
      - [Проверка работоспособности](#%d0%9f%d1%80%d0%be%d0%b2%d0%b5%d1%80%d0%ba%d0%b0-%d1%80%d0%b0%d0%b1%d0%be%d1%82%d0%be%d1%81%d0%bf%d0%be%d1%81%d0%be%d0%b1%d0%bd%d0%be%d1%81%d1%82%d0%b8)
      - [Создание volume для MongoDB](#%d0%a1%d0%be%d0%b7%d0%b4%d0%b0%d0%bd%d0%b8%d0%b5-volume-%d0%b4%d0%bb%d1%8f-mongodb)
    - [src/Makefile](#srcmakefile)
      - [Переменные](#%d0%9f%d0%b5%d1%80%d0%b5%d0%bc%d0%b5%d0%bd%d0%bd%d1%8b%d0%b5-1)
      - [Цели](#%d0%a6%d0%b5%d0%bb%d0%b8-1)
  - [HomeWork 14: Docker: сети, docker-compose](#homework-14-docker-%d1%81%d0%b5%d1%82%d0%b8-docker-compose)
    - [Работа с сетями в Docker](#%d0%a0%d0%b0%d0%b1%d0%be%d1%82%d0%b0-%d1%81-%d1%81%d0%b5%d1%82%d1%8f%d0%bc%d0%b8-%d0%b2-docker)
      - [Подготовка](#%d0%9f%d0%be%d0%b4%d0%b3%d0%be%d1%82%d0%be%d0%b2%d0%ba%d0%b0-1)
      - [Работа с сетью в Docker](#%d0%a0%d0%b0%d0%b1%d0%be%d1%82%d0%b0-%d1%81-%d1%81%d0%b5%d1%82%d1%8c%d1%8e-%d0%b2-docker)
        - [none](#none)
        - [host](#host)
          - [network namespaces](#network-namespaces)
        - [bridge](#bridge)
          - [Запуск приложения](#%d0%97%d0%b0%d0%bf%d1%83%d1%81%d0%ba-%d0%bf%d1%80%d0%b8%d0%bb%d0%be%d0%b6%d0%b5%d0%bd%d0%b8%d1%8f-1)
          - [Анализ](#%d0%90%d0%bd%d0%b0%d0%bb%d0%b8%d0%b7-1)
    - [Использование docker-compose](#%d0%98%d1%81%d0%bf%d0%be%d0%bb%d1%8c%d0%b7%d0%be%d0%b2%d0%b0%d0%bd%d0%b8%d0%b5-docker-compose)
      - [Установка](#%d0%a3%d1%81%d1%82%d0%b0%d0%bd%d0%be%d0%b2%d0%ba%d0%b0)
      - [docker-compose.yml](#docker-composeyml)
        - [Переменные окружения](#%d0%9f%d0%b5%d1%80%d0%b5%d0%bc%d0%b5%d0%bd%d0%bd%d1%8b%d0%b5-%d0%be%d0%ba%d1%80%d1%83%d0%b6%d0%b5%d0%bd%d0%b8%d1%8f)
        - [Имя проекта](#%d0%98%d0%bc%d1%8f-%d0%bf%d1%80%d0%be%d0%b5%d0%ba%d1%82%d0%b0)
    - [Задание со \*: docker-compose.override.yml](#%d0%97%d0%b0%d0%b4%d0%b0%d0%bd%d0%b8%d0%b5-%d1%81%d0%be--docker-composeoverrideyml)
      - [Анализ](#%d0%90%d0%bd%d0%b0%d0%bb%d0%b8%d0%b7-2)
      - [Реализация](#%d0%a0%d0%b5%d0%b0%d0%bb%d0%b8%d0%b7%d0%b0%d1%86%d0%b8%d1%8f-1)
    - [Вне заданий](#%d0%92%d0%bd%d0%b5-%d0%b7%d0%b0%d0%b4%d0%b0%d0%bd%d0%b8%d0%b9)
  - [HomeWork 15: Устройство Gitlab CI. Построение процесса непрерывной поставки](#homework-15-%d0%a3%d1%81%d1%82%d1%80%d0%be%d0%b9%d1%81%d1%82%d0%b2%d0%be-gitlab-ci-%d0%9f%d0%be%d1%81%d1%82%d1%80%d0%be%d0%b5%d0%bd%d0%b8%d0%b5-%d0%bf%d1%80%d0%be%d1%86%d0%b5%d1%81%d1%81%d0%b0-%d0%bd%d0%b5%d0%bf%d1%80%d0%b5%d1%80%d1%8b%d0%b2%d0%bd%d0%be%d0%b9-%d0%bf%d0%be%d1%81%d1%82%d0%b0%d0%b2%d0%ba%d0%b8)
    - [Развёртывание gitlab](#%d0%a0%d0%b0%d0%b7%d0%b2%d1%91%d1%80%d1%82%d1%8b%d0%b2%d0%b0%d0%bd%d0%b8%d0%b5-gitlab)
      - [Подготовка хоста](#%d0%9f%d0%be%d0%b4%d0%b3%d0%be%d1%82%d0%be%d0%b2%d0%ba%d0%b0-%d1%85%d0%be%d1%81%d1%82%d0%b0)
        - [ansible](#ansible)
        - [packer](#packer-1)
        - [terraform](#terraform-1)
      - [Развёртывание gitlab](#%d0%a0%d0%b0%d0%b7%d0%b2%d1%91%d1%80%d1%82%d1%8b%d0%b2%d0%b0%d0%bd%d0%b8%d0%b5-gitlab-1)
      - [Первоначальная настройка](#%d0%9f%d0%b5%d1%80%d0%b2%d0%be%d0%bd%d0%b0%d1%87%d0%b0%d0%bb%d1%8c%d0%bd%d0%b0%d1%8f-%d0%bd%d0%b0%d1%81%d1%82%d1%80%d0%be%d0%b9%d0%ba%d0%b0)
        - [Работа с репозиторием через ssh](#%d0%a0%d0%b0%d0%b1%d0%be%d1%82%d0%b0-%d1%81-%d1%80%d0%b5%d0%bf%d0%be%d0%b7%d0%b8%d1%82%d0%be%d1%80%d0%b8%d0%b5%d0%bc-%d1%87%d0%b5%d1%80%d0%b5%d0%b7-ssh)
    - [Создание проекта](#%d0%a1%d0%be%d0%b7%d0%b4%d0%b0%d0%bd%d0%b8%d0%b5-%d0%bf%d1%80%d0%be%d0%b5%d0%ba%d1%82%d0%b0)
      - [CI/CD Pipeline](#cicd-pipeline)
    - [Runner](#runner)
    - [Тестирование Reddit](#%d0%a2%d0%b5%d1%81%d1%82%d0%b8%d1%80%d0%be%d0%b2%d0%b0%d0%bd%d0%b8%d0%b5-reddit)
    - [Работа с окружениями](#%d0%a0%d0%b0%d0%b1%d0%be%d1%82%d0%b0-%d1%81-%d0%be%d0%ba%d1%80%d1%83%d0%b6%d0%b5%d0%bd%d0%b8%d1%8f%d0%bc%d0%b8)
      - [dev](#dev)
      - [staging и production](#staging-%d0%b8-production)
      - [Динамические окружения](#%d0%94%d0%b8%d0%bd%d0%b0%d0%bc%d0%b8%d1%87%d0%b5%d1%81%d0%ba%d0%b8%d0%b5-%d0%be%d0%ba%d1%80%d1%83%d0%b6%d0%b5%d0%bd%d0%b8%d1%8f)
    - [Вне заданий: улучшалки](#%d0%92%d0%bd%d0%b5-%d0%b7%d0%b0%d0%b4%d0%b0%d0%bd%d0%b8%d0%b9-%d1%83%d0%bb%d1%83%d1%87%d1%88%d0%b0%d0%bb%d0%ba%d0%b8)
    - [Задание со \*: Автоматизированная сборка приложения reddit](#%d0%97%d0%b0%d0%b4%d0%b0%d0%bd%d0%b8%d0%b5-%d1%81%d0%be--%d0%90%d0%b2%d1%82%d0%be%d0%bc%d0%b0%d1%82%d0%b8%d0%b7%d0%b8%d1%80%d0%be%d0%b2%d0%b0%d0%bd%d0%bd%d0%b0%d1%8f-%d1%81%d0%b1%d0%be%d1%80%d0%ba%d0%b0-%d0%bf%d1%80%d0%b8%d0%bb%d0%be%d0%b6%d0%b5%d0%bd%d0%b8%d1%8f-reddit)
      - [План](#%d0%9f%d0%bb%d0%b0%d0%bd)
      - [Реализация](#%d0%a0%d0%b5%d0%b0%d0%bb%d0%b8%d0%b7%d0%b0%d1%86%d0%b8%d1%8f-2)
        - [Настройка terraform module instance](#%d0%9d%d0%b0%d1%81%d1%82%d1%80%d0%be%d0%b9%d0%ba%d0%b0-terraform-module-instance)
        - [Настройка stage-окружения terraform](#%d0%9d%d0%b0%d1%81%d1%82%d1%80%d0%be%d0%b9%d0%ba%d0%b0-stage-%d0%be%d0%ba%d1%80%d1%83%d0%b6%d0%b5%d0%bd%d0%b8%d1%8f-terraform)
        - [Применение инфраструктуры](#%d0%9f%d1%80%d0%b8%d0%bc%d0%b5%d0%bd%d0%b5%d0%bd%d0%b8%d0%b5-%d0%b8%d0%bd%d1%84%d1%80%d0%b0%d1%81%d1%82%d1%80%d1%83%d0%ba%d1%82%d1%83%d1%80%d1%8b)
        - [Интеграция с Let's Encrypt](#%d0%98%d0%bd%d1%82%d0%b5%d0%b3%d1%80%d0%b0%d1%86%d0%b8%d1%8f-%d1%81-lets-encrypt)
        - [Настройка сборки образов в .gitlab-ci.yml](#%d0%9d%d0%b0%d1%81%d1%82%d1%80%d0%be%d0%b9%d0%ba%d0%b0-%d1%81%d0%b1%d0%be%d1%80%d0%ba%d0%b8-%d0%be%d0%b1%d1%80%d0%b0%d0%b7%d0%be%d0%b2-%d0%b2-gitlab-ciyml)
          - [Попытка решить задачу в лоб (неудачная)](#%d0%9f%d0%be%d0%bf%d1%8b%d1%82%d0%ba%d0%b0-%d1%80%d0%b5%d1%88%d0%b8%d1%82%d1%8c-%d0%b7%d0%b0%d0%b4%d0%b0%d1%87%d1%83-%d0%b2-%d0%bb%d0%be%d0%b1-%d0%bd%d0%b5%d1%83%d0%b4%d0%b0%d1%87%d0%bd%d0%b0%d1%8f)
          - [Анализ](#%d0%90%d0%bd%d0%b0%d0%bb%d0%b8%d0%b7-3)
          - [Подготовка хоста для docker runner](#%d0%9f%d0%be%d0%b4%d0%b3%d0%be%d1%82%d0%be%d0%b2%d0%ba%d0%b0-%d1%85%d0%be%d1%81%d1%82%d0%b0-%d0%b4%d0%bb%d1%8f-docker-runner)
          - [Подготовлен docker-runner](#%d0%9f%d0%be%d0%b4%d0%b3%d0%be%d1%82%d0%be%d0%b2%d0%bb%d0%b5%d0%bd-docker-runner)
          - [Автоматизированная сборка образов](#%d0%90%d0%b2%d1%82%d0%be%d0%bc%d0%b0%d1%82%d0%b8%d0%b7%d0%b8%d1%80%d0%be%d0%b2%d0%b0%d0%bd%d0%bd%d0%b0%d1%8f-%d1%81%d0%b1%d0%be%d1%80%d0%ba%d0%b0-%d0%be%d0%b1%d1%80%d0%b0%d0%b7%d0%be%d0%b2)
        - [Загрузка образов в gitlab registry](#%d0%97%d0%b0%d0%b3%d1%80%d1%83%d0%b7%d0%ba%d0%b0-%d0%be%d0%b1%d1%80%d0%b0%d0%b7%d0%be%d0%b2-%d0%b2-gitlab-registry)
    - [Задание со \*: Деплой контейнера на созданный для ветки сервер](#%d0%97%d0%b0%d0%b4%d0%b0%d0%bd%d0%b8%d0%b5-%d1%81%d0%be--%d0%94%d0%b5%d0%bf%d0%bb%d0%be%d0%b9-%d0%ba%d0%be%d0%bd%d1%82%d0%b5%d0%b9%d0%bd%d0%b5%d1%80%d0%b0-%d0%bd%d0%b0-%d1%81%d0%be%d0%b7%d0%b4%d0%b0%d0%bd%d0%bd%d1%8b%d0%b9-%d0%b4%d0%bb%d1%8f-%d0%b2%d0%b5%d1%82%d0%ba%d0%b8-%d1%81%d0%b5%d1%80%d0%b2%d0%b5%d1%80)
      - [Реализация](#%d0%a0%d0%b5%d0%b0%d0%bb%d0%b8%d0%b7%d0%b0%d1%86%d0%b8%d1%8f-3)
        - [Packer](#packer-2)
        - [Terraform](#terraform-2)
        - [Ansible](#ansible-1)
          - [Поиск решения](#%d0%9f%d0%be%d0%b8%d1%81%d0%ba-%d1%80%d0%b5%d1%88%d0%b5%d0%bd%d0%b8%d1%8f)
          - [Реализация](#%d0%a0%d0%b5%d0%b0%d0%bb%d0%b8%d0%b7%d0%b0%d1%86%d0%b8%d1%8f-4)
          - [Подготовка gitlab-runner](#%d0%9f%d0%be%d0%b4%d0%b3%d0%be%d1%82%d0%be%d0%b2%d0%ba%d0%b0-gitlab-runner)
          - [Проверка](#%d0%9f%d1%80%d0%be%d0%b2%d0%b5%d1%80%d0%ba%d0%b0)
          - [Создание Environment](#%d0%a1%d0%be%d0%b7%d0%b4%d0%b0%d0%bd%d0%b8%d0%b5-environment)
    - [Задание со \*: Автоматизированное создание и регистрация раннеров](#%d0%97%d0%b0%d0%b4%d0%b0%d0%bd%d0%b8%d0%b5-%d1%81%d0%be--%d0%90%d0%b2%d1%82%d0%be%d0%bc%d0%b0%d1%82%d0%b8%d0%b7%d0%b8%d1%80%d0%be%d0%b2%d0%b0%d0%bd%d0%bd%d0%be%d0%b5-%d1%81%d0%be%d0%b7%d0%b4%d0%b0%d0%bd%d0%b8%d0%b5-%d0%b8-%d1%80%d0%b5%d0%b3%d0%b8%d1%81%d1%82%d1%80%d0%b0%d1%86%d0%b8%d1%8f-%d1%80%d0%b0%d0%bd%d0%bd%d0%b5%d1%80%d0%be%d0%b2)
      - [Проработка скейлинга раннеров](#%d0%9f%d1%80%d0%be%d1%80%d0%b0%d0%b1%d0%be%d1%82%d0%ba%d0%b0-%d1%81%d0%ba%d0%b5%d0%b9%d0%bb%d0%b8%d0%bd%d0%b3%d0%b0-%d1%80%d0%b0%d0%bd%d0%bd%d0%b5%d1%80%d0%be%d0%b2)
    - [Задание со \*: Отправка уведомлений о работе pipeline в Slack](#%d0%97%d0%b0%d0%b4%d0%b0%d0%bd%d0%b8%d0%b5-%d1%81%d0%be--%d0%9e%d1%82%d0%bf%d1%80%d0%b0%d0%b2%d0%ba%d0%b0-%d1%83%d0%b2%d0%b5%d0%b4%d0%be%d0%bc%d0%bb%d0%b5%d0%bd%d0%b8%d0%b9-%d0%be-%d1%80%d0%b0%d0%b1%d0%be%d1%82%d0%b5-pipeline-%d0%b2-slack)
    - [Прохождение тестов travis-ci](#%d0%9f%d1%80%d0%be%d1%85%d0%be%d0%b6%d0%b4%d0%b5%d0%bd%d0%b8%d0%b5-%d1%82%d0%b5%d1%81%d1%82%d0%be%d0%b2-travis-ci)
    - [Прочее](#%d0%9f%d1%80%d0%be%d1%87%d0%b5%d0%b5)
  - [HomeWork 16: Введение в мониторинг. Системы мониторинга.](#homework-16-%d0%92%d0%b2%d0%b5%d0%b4%d0%b5%d0%bd%d0%b8%d0%b5-%d0%b2-%d0%bc%d0%be%d0%bd%d0%b8%d1%82%d0%be%d1%80%d0%b8%d0%bd%d0%b3-%d0%a1%d0%b8%d1%81%d1%82%d0%b5%d0%bc%d1%8b-%d0%bc%d0%be%d0%bd%d0%b8%d1%82%d0%be%d1%80%d0%b8%d0%bd%d0%b3%d0%b0)
    - [Prometheus: запуск, конфигурация, знакомство с Web UI](#prometheus-%d0%b7%d0%b0%d0%bf%d1%83%d1%81%d0%ba-%d0%ba%d0%be%d0%bd%d1%84%d0%b8%d0%b3%d1%83%d1%80%d0%b0%d1%86%d0%b8%d1%8f-%d0%b7%d0%bd%d0%b0%d0%ba%d0%be%d0%bc%d1%81%d1%82%d0%b2%d0%be-%d1%81-web-ui)
      - [Запуск docker-machine хоста для prometheus](#%d0%97%d0%b0%d0%bf%d1%83%d1%81%d0%ba-docker-machine-%d1%85%d0%be%d1%81%d1%82%d0%b0-%d0%b4%d0%bb%d1%8f-prometheus)
      - [Запуск prometheus](#%d0%97%d0%b0%d0%bf%d1%83%d1%81%d0%ba-prometheus)
      - [Web-интерфейс](#web-%d0%b8%d0%bd%d1%82%d0%b5%d1%80%d1%84%d0%b5%d0%b9%d1%81)
      - [Targets](#targets)
      - [Список метрик](#%d0%a1%d0%bf%d0%b8%d1%81%d0%be%d0%ba-%d0%bc%d0%b5%d1%82%d1%80%d0%b8%d0%ba)
    - [Мониторинг состояния микросервисов](#%d0%9c%d0%be%d0%bd%d0%b8%d1%82%d0%be%d1%80%d0%b8%d0%bd%d0%b3-%d1%81%d0%be%d1%81%d1%82%d0%be%d1%8f%d0%bd%d0%b8%d1%8f-%d0%bc%d0%b8%d0%ba%d1%80%d0%be%d1%81%d0%b5%d1%80%d0%b2%d0%b8%d1%81%d0%be%d0%b2)
      - [Переупорядочим структуру директорий](#%d0%9f%d0%b5%d1%80%d0%b5%d1%83%d0%bf%d0%be%d1%80%d1%8f%d0%b4%d0%be%d1%87%d0%b8%d0%bc-%d1%81%d1%82%d1%80%d1%83%d0%ba%d1%82%d1%83%d1%80%d1%83-%d0%b4%d0%b8%d1%80%d0%b5%d0%ba%d1%82%d0%be%d1%80%d0%b8%d0%b9)
      - [Создание Docker образа](#%d0%a1%d0%be%d0%b7%d0%b4%d0%b0%d0%bd%d0%b8%d0%b5-docker-%d0%be%d0%b1%d1%80%d0%b0%d0%b7%d0%b0)
      - [Конфигурация](#%d0%9a%d0%be%d0%bd%d1%84%d0%b8%d0%b3%d1%83%d1%80%d0%b0%d1%86%d0%b8%d1%8f)
      - [Создаем образ](#%d0%a1%d0%be%d0%b7%d0%b4%d0%b0%d0%b5%d0%bc-%d0%be%d0%b1%d1%80%d0%b0%d0%b7)
      - [Образы микросервисов](#%d0%9e%d0%b1%d1%80%d0%b0%d0%b7%d1%8b-%d0%bc%d0%b8%d0%ba%d1%80%d0%be%d1%81%d0%b5%d1%80%d0%b2%d0%b8%d1%81%d0%be%d0%b2)
      - [Соберем images](#%d0%a1%d0%be%d0%b1%d0%b5%d1%80%d0%b5%d0%bc-images)
      - [docker-compose.yml](#docker-composeyml-1)
      - [Запуск микросервисов](#%d0%97%d0%b0%d0%bf%d1%83%d1%81%d0%ba-%d0%bc%d0%b8%d0%ba%d1%80%d0%be%d1%81%d0%b5%d1%80%d0%b2%d0%b8%d1%81%d0%be%d0%b2)
      - [Healthchecks](#healthchecks)
      - [Состояние сервиса UI](#%d0%a1%d0%be%d1%81%d1%82%d0%be%d1%8f%d0%bd%d0%b8%d0%b5-%d1%81%d0%b5%d1%80%d0%b2%d0%b8%d1%81%d0%b0-ui)
      - [Fix docker-machine from other host](#fix-docker-machine-from-other-host)
      - [Состояние сервиса UI. Продолжение](#%d0%a1%d0%be%d1%81%d1%82%d0%be%d1%8f%d0%bd%d0%b8%d0%b5-%d1%81%d0%b5%d1%80%d0%b2%d0%b8%d1%81%d0%b0-ui-%d0%9f%d1%80%d0%be%d0%b4%d0%be%d0%bb%d0%b6%d0%b5%d0%bd%d0%b8%d0%b5)
        - [Проверка метрик](#%d0%9f%d1%80%d0%be%d0%b2%d0%b5%d1%80%d0%ba%d0%b0-%d0%bc%d0%b5%d1%82%d1%80%d0%b8%d0%ba)
        - [Поиск проблемы](#%d0%9f%d0%be%d0%b8%d1%81%d0%ba-%d0%bf%d1%80%d0%be%d0%b1%d0%bb%d0%b5%d0%bc%d1%8b)
        - [Самостоятельно](#%d0%a1%d0%b0%d0%bc%d0%be%d1%81%d1%82%d0%be%d1%8f%d1%82%d0%b5%d0%bb%d1%8c%d0%bd%d0%be)
        - [Пересоздание docker-machine](#%d0%9f%d0%b5%d1%80%d0%b5%d1%81%d0%be%d0%b7%d0%b4%d0%b0%d0%bd%d0%b8%d0%b5-docker-machine)
    - [Сбор метрик хоста с использованием экспортера](#%d0%a1%d0%b1%d0%be%d1%80-%d0%bc%d0%b5%d1%82%d1%80%d0%b8%d0%ba-%d1%85%d0%be%d1%81%d1%82%d0%b0-%d1%81-%d0%b8%d1%81%d0%bf%d0%be%d0%bb%d1%8c%d0%b7%d0%be%d0%b2%d0%b0%d0%bd%d0%b8%d0%b5%d0%bc-%d1%8d%d0%ba%d1%81%d0%bf%d0%be%d1%80%d1%82%d0%b5%d1%80%d0%b0)
      - [Node exporter](#node-exporter)
      - [docker-compose.yml](#docker-composeyml-2)
      - [Дополнительно: параметризуем версии образов](#%d0%94%d0%be%d0%bf%d0%be%d0%bb%d0%bd%d0%b8%d1%82%d0%b5%d0%bb%d1%8c%d0%bd%d0%be-%d0%bf%d0%b0%d1%80%d0%b0%d0%bc%d0%b5%d1%82%d1%80%d0%b8%d0%b7%d1%83%d0%b5%d0%bc-%d0%b2%d0%b5%d1%80%d1%81%d0%b8%d0%b8-%d0%be%d0%b1%d1%80%d0%b0%d0%b7%d0%be%d0%b2)
      - [Дополнительно: Makefile target build_prometheus](#%d0%94%d0%be%d0%bf%d0%be%d0%bb%d0%bd%d0%b8%d1%82%d0%b5%d0%bb%d1%8c%d0%bd%d0%be-makefile-target-buildprometheus)
      - [prometheus.yml](#prometheusyml)
      - [Пересоздадим наши сервисы](#%d0%9f%d0%b5%d1%80%d0%b5%d1%81%d0%be%d0%b7%d0%b4%d0%b0%d0%b4%d0%b8%d0%bc-%d0%bd%d0%b0%d1%88%d0%b8-%d1%81%d0%b5%d1%80%d0%b2%d0%b8%d1%81%d1%8b)
      - [Получение информации](#%d0%9f%d0%be%d0%bb%d1%83%d1%87%d0%b5%d0%bd%d0%b8%d0%b5-%d0%b8%d0%bd%d1%84%d0%be%d1%80%d0%bc%d0%b0%d1%86%d0%b8%d0%b8)
    - [Завершение работы](#%d0%97%d0%b0%d0%b2%d0%b5%d1%80%d1%88%d0%b5%d0%bd%d0%b8%d0%b5-%d1%80%d0%b0%d0%b1%d0%be%d1%82%d1%8b)
      - [Makefile targets](#makefile-targets)
      - [Пушим образы](#%d0%9f%d1%83%d1%88%d0%b8%d0%bc-%d0%be%d0%b1%d1%80%d0%b0%d0%b7%d1%8b)
    - [Задания со \*](#%d0%97%d0%b0%d0%b4%d0%b0%d0%bd%d0%b8%d1%8f-%d1%81%d0%be)
      - [MongoDB exporter](#mongodb-exporter)
        - [Установка](#%d0%a3%d1%81%d1%82%d0%b0%d0%bd%d0%be%d0%b2%d0%ba%d0%b0-1)
      - [Cloudprober](#cloudprober)
        - [Реализация](#%d0%a0%d0%b5%d0%b0%d0%bb%d0%b8%d0%b7%d0%b0%d1%86%d0%b8%d1%8f-5)
      - [Makefile](#makefile-1)
    - [Запуск проекта](#%d0%97%d0%b0%d0%bf%d1%83%d1%81%d0%ba-%d0%bf%d1%80%d0%be%d0%b5%d0%ba%d1%82%d0%b0)
      - [Подготовка](#%d0%9f%d0%be%d0%b4%d0%b3%d0%be%d1%82%d0%be%d0%b2%d0%ba%d0%b0-2)
      - [Запуск проекта](#%d0%97%d0%b0%d0%bf%d1%83%d1%81%d0%ba-%d0%bf%d1%80%d0%be%d0%b5%d0%ba%d1%82%d0%b0-1)
  - [HomeWork 17: Мониторинг приложения и инфраструктуры](#homework-17-%d0%9c%d0%be%d0%bd%d0%b8%d1%82%d0%be%d1%80%d0%b8%d0%bd%d0%b3-%d0%bf%d1%80%d0%b8%d0%bb%d0%be%d0%b6%d0%b5%d0%bd%d0%b8%d1%8f-%d0%b8-%d0%b8%d0%bd%d1%84%d1%80%d0%b0%d1%81%d1%82%d1%80%d1%83%d0%ba%d1%82%d1%83%d1%80%d1%8b)
    - [План](#%d0%9f%d0%bb%d0%b0%d0%bd-1)
    - [Мониторинг Docker контейнеров](#%d0%9c%d0%be%d0%bd%d0%b8%d1%82%d0%be%d1%80%d0%b8%d0%bd%d0%b3-docker-%d0%ba%d0%be%d0%bd%d1%82%d0%b5%d0%b9%d0%bd%d0%b5%d1%80%d0%be%d0%b2)
      - [Подготовка окружения](#%d0%9f%d0%be%d0%b4%d0%b3%d0%be%d1%82%d0%be%d0%b2%d0%ba%d0%b0-%d0%be%d0%ba%d1%80%d1%83%d0%b6%d0%b5%d0%bd%d0%b8%d1%8f)
      - [Мониторинг Docker контейнеров](#%d0%9c%d0%be%d0%bd%d0%b8%d1%82%d0%be%d1%80%d0%b8%d0%bd%d0%b3-docker-%d0%ba%d0%be%d0%bd%d1%82%d0%b5%d0%b9%d0%bd%d0%b5%d1%80%d0%be%d0%b2-1)
      - [cAdvisor](#cadvisor)
      - [Файл docker-compose-monitoring.yml](#%d0%a4%d0%b0%d0%b9%d0%bb-docker-compose-monitoringyml)
      - [Файл prometheus.yml](#%d0%a4%d0%b0%d0%b9%d0%bb-prometheusyml)
      - [cAdvisor UI](#cadvisor-ui)
    - [Визуализация метрик: Grafana](#%d0%92%d0%b8%d0%b7%d1%83%d0%b0%d0%bb%d0%b8%d0%b7%d0%b0%d1%86%d0%b8%d1%8f-%d0%bc%d0%b5%d1%82%d1%80%d0%b8%d0%ba-grafana)
      - [Grafana: Web UI](#grafana-web-ui)
      - [Grafana: Добавление источника данных](#grafana-%d0%94%d0%be%d0%b1%d0%b0%d0%b2%d0%bb%d0%b5%d0%bd%d0%b8%d0%b5-%d0%b8%d1%81%d1%82%d0%be%d1%87%d0%bd%d0%b8%d0%ba%d0%b0-%d0%b4%d0%b0%d0%bd%d0%bd%d1%8b%d1%85)
      - [Дашборды](#%d0%94%d0%b0%d1%88%d0%b1%d0%be%d1%80%d0%b4%d1%8b)
      - [Импорт дашборда](#%d0%98%d0%bc%d0%bf%d0%be%d1%80%d1%82-%d0%b4%d0%b0%d1%88%d0%b1%d0%be%d1%80%d0%b4%d0%b0)
    - [Сбор метрик работы приложения](#%d0%a1%d0%b1%d0%be%d1%80-%d0%bc%d0%b5%d1%82%d1%80%d0%b8%d0%ba-%d1%80%d0%b0%d0%b1%d0%be%d1%82%d1%8b-%d0%bf%d1%80%d0%b8%d0%bb%d0%be%d0%b6%d0%b5%d0%bd%d0%b8%d1%8f)
      - [Зачем?](#%d0%97%d0%b0%d1%87%d0%b5%d0%bc)
      - [prometheus.yml](#prometheusyml-1)
      - [Создание дашборда в Grafana](#%d0%a1%d0%be%d0%b7%d0%b4%d0%b0%d0%bd%d0%b8%d0%b5-%d0%b4%d0%b0%d1%88%d0%b1%d0%be%d1%80%d0%b4%d0%b0-%d0%b2-grafana)
      - [Самостоятельно](#%d0%a1%d0%b0%d0%bc%d0%be%d1%81%d1%82%d0%be%d1%8f%d1%82%d0%b5%d0%bb%d1%8c%d0%bd%d0%be-1)
      - [Гистограмма](#%d0%93%d0%b8%d1%81%d1%82%d0%be%d0%b3%d1%80%d0%b0%d0%bc%d0%bc%d0%b0)
      - [Histogram метрика](#histogram-%d0%bc%d0%b5%d1%82%d1%80%d0%b8%d0%ba%d0%b0)
      - [Процентиль](#%d0%9f%d1%80%d0%be%d1%86%d0%b5%d0%bd%d1%82%d0%b8%d0%bb%d1%8c)
        - [Пример процентиль](#%d0%9f%d1%80%d0%b8%d0%bc%d0%b5%d1%80-%d0%bf%d1%80%d0%be%d1%86%d0%b5%d0%bd%d1%82%d0%b8%d0%bb%d1%8c)
        - [95-й процентиль](#95-%d0%b9-%d0%bf%d1%80%d0%be%d1%86%d0%b5%d0%bd%d1%82%d0%b8%d0%bb%d1%8c)
    - [Сбор метрик бизнеслогики](#%d0%a1%d0%b1%d0%be%d1%80-%d0%bc%d0%b5%d1%82%d1%80%d0%b8%d0%ba-%d0%b1%d0%b8%d0%b7%d0%bd%d0%b5%d1%81%d0%bb%d0%be%d0%b3%d0%b8%d0%ba%d0%b8)
    - [Настройка и проверка алертинга](#%d0%9d%d0%b0%d1%81%d1%82%d1%80%d0%be%d0%b9%d0%ba%d0%b0-%d0%b8-%d0%bf%d1%80%d0%be%d0%b2%d0%b5%d1%80%d0%ba%d0%b0-%d0%b0%d0%bb%d0%b5%d1%80%d1%82%d0%b8%d0%bd%d0%b3%d0%b0)
      - [Правила алертинга](#%d0%9f%d1%80%d0%b0%d0%b2%d0%b8%d0%bb%d0%b0-%d0%b0%d0%bb%d0%b5%d1%80%d1%82%d0%b8%d0%bd%d0%b3%d0%b0)
      - [Alertmanager](#alertmanager)
      - [Alert rules](#alert-rules)
      - [prometheus.yml](#prometheusyml-2)
      - [Push slack api url to github ERROR](#push-slack-api-url-to-github-error)
      - [Проверка алерта](#%d0%9f%d1%80%d0%be%d0%b2%d0%b5%d1%80%d0%ba%d0%b0-%d0%b0%d0%bb%d0%b5%d1%80%d1%82%d0%b0)
      - [Чиним slack](#%d0%a7%d0%b8%d0%bd%d0%b8%d0%bc-slack)
        - [Реализация](#%d0%a0%d0%b5%d0%b0%d0%bb%d0%b8%d0%b7%d0%b0%d1%86%d0%b8%d1%8f-6)
      - [Проверка алерта](#%d0%9f%d1%80%d0%be%d0%b2%d0%b5%d1%80%d0%ba%d0%b0-%d0%b0%d0%bb%d0%b5%d1%80%d1%82%d0%b0-1)
    - [Завершение работы](#%d0%97%d0%b0%d0%b2%d0%b5%d1%80%d1%88%d0%b5%d0%bd%d0%b8%d0%b5-%d1%80%d0%b0%d0%b1%d0%be%d1%82%d1%8b-1)
    - [Запуск проекта](#%d0%97%d0%b0%d0%bf%d1%83%d1%81%d0%ba-%d0%bf%d1%80%d0%be%d0%b5%d0%ba%d1%82%d0%b0-2)
      - [Подготовка](#%d0%9f%d0%be%d0%b4%d0%b3%d0%be%d1%82%d0%be%d0%b2%d0%ba%d0%b0-3)
      - [Запуск проекта](#%d0%97%d0%b0%d0%bf%d1%83%d1%81%d0%ba-%d0%bf%d1%80%d0%be%d0%b5%d0%ba%d1%82%d0%b0-3)
    - [Fix travis-ci test](#fix-travis-ci-test)
    - [Задания со \*](#%d0%97%d0%b0%d0%b4%d0%b0%d0%bd%d0%b8%d1%8f-%d1%81%d0%be-1)
      - [Makefile](#makefile-2)
      - [Сбор метрик с docker](#%d0%a1%d0%b1%d0%be%d1%80-%d0%bc%d0%b5%d1%82%d1%80%d0%b8%d0%ba-%d1%81-docker)
      - [Telegraf](#telegraf)
      - [Alertmanager email](#alertmanager-email)
    - [Задания с \*\*](#%d0%97%d0%b0%d0%b4%d0%b0%d0%bd%d0%b8%d1%8f-%d1%81)
      - [Автоматическое развёртывание Grafana](#%d0%90%d0%b2%d1%82%d0%be%d0%bc%d0%b0%d1%82%d0%b8%d1%87%d0%b5%d1%81%d0%ba%d0%be%d0%b5-%d1%80%d0%b0%d0%b7%d0%b2%d1%91%d1%80%d1%82%d1%8b%d0%b2%d0%b0%d0%bd%d0%b8%d0%b5-grafana)
      - [Stackdriver](#stackdriver)
      - [Свои метрики](#%d0%a1%d0%b2%d0%be%d0%b8-%d0%bc%d0%b5%d1%82%d1%80%d0%b8%d0%ba%d0%b8)
    - [Задания со \*\*\*](#%d0%97%d0%b0%d0%b4%d0%b0%d0%bd%d0%b8%d1%8f-%d1%81%d0%be-2)
      - [Tickster](#tickster)
      - [Автоматическое исправление проблем](#%d0%90%d0%b2%d1%82%d0%be%d0%bc%d0%b0%d1%82%d0%b8%d1%87%d0%b5%d1%81%d0%ba%d0%be%d0%b5-%d0%b8%d1%81%d0%bf%d1%80%d0%b0%d0%b2%d0%bb%d0%b5%d0%bd%d0%b8%d0%b5-%d0%bf%d1%80%d0%be%d0%b1%d0%bb%d0%b5%d0%bc)
  - [HomeWork 18: Логирование и распределенная трассировка](#homework-18-%d0%9b%d0%be%d0%b3%d0%b8%d1%80%d0%be%d0%b2%d0%b0%d0%bd%d0%b8%d0%b5-%d0%b8-%d1%80%d0%b0%d1%81%d0%bf%d1%80%d0%b5%d0%b4%d0%b5%d0%bb%d0%b5%d0%bd%d0%bd%d0%b0%d1%8f-%d1%82%d1%80%d0%b0%d1%81%d1%81%d0%b8%d1%80%d0%be%d0%b2%d0%ba%d0%b0)
    - [План](#%d0%9f%d0%bb%d0%b0%d0%bd-2)
    - [Подготовка](#%d0%9f%d0%be%d0%b4%d0%b3%d0%be%d1%82%d0%be%d0%b2%d0%ba%d0%b0-4)
      - [Подготовка окружения](#%d0%9f%d0%be%d0%b4%d0%b3%d0%be%d1%82%d0%be%d0%b2%d0%ba%d0%b0-%d0%be%d0%ba%d1%80%d1%83%d0%b6%d0%b5%d0%bd%d0%b8%d1%8f-1)
    - [Логирование Docker контейнеров](#%d0%9b%d0%be%d0%b3%d0%b8%d1%80%d0%be%d0%b2%d0%b0%d0%bd%d0%b8%d0%b5-docker-%d0%ba%d0%be%d0%bd%d1%82%d0%b5%d0%b9%d0%bd%d0%b5%d1%80%d0%be%d0%b2)
      - [Elastic Stack](#elastic-stack)
      - [docker-compose-logging.yml](#docker-compose-loggingyml)
      - [Fluentd](#fluentd)
    - [Структурированные логи](#%d0%a1%d1%82%d1%80%d1%83%d0%ba%d1%82%d1%83%d1%80%d0%b8%d1%80%d0%be%d0%b2%d0%b0%d0%bd%d0%bd%d1%8b%d0%b5-%d0%bb%d0%be%d0%b3%d0%b8)
      - [Отправка логов во Fluentd](#%d0%9e%d1%82%d0%bf%d1%80%d0%b0%d0%b2%d0%ba%d0%b0-%d0%bb%d0%be%d0%b3%d0%be%d0%b2-%d0%b2%d0%be-fluentd)
      - [Сбор логов Post сервиса](#%d0%a1%d0%b1%d0%be%d1%80-%d0%bb%d0%be%d0%b3%d0%be%d0%b2-post-%d1%81%d0%b5%d1%80%d0%b2%d0%b8%d1%81%d0%b0)
      - [Kibana](#kibana)
        - [memory locking requested for elasticsearch process but memory is not locked](#memory-locking-requested-for-elasticsearch-process-but-memory-is-not-locked)
        - [Kibana продолжение](#kibana-%d0%bf%d1%80%d0%be%d0%b4%d0%be%d0%bb%d0%b6%d0%b5%d0%bd%d0%b8%d0%b5)
      - [Фильтры](#%d0%a4%d0%b8%d0%bb%d1%8c%d1%82%d1%80%d1%8b)
    - [Неструктурированные логи](#%d0%9d%d0%b5%d1%81%d1%82%d1%80%d1%83%d0%ba%d1%82%d1%83%d1%80%d0%b8%d1%80%d0%be%d0%b2%d0%b0%d0%bd%d0%bd%d1%8b%d0%b5-%d0%bb%d0%be%d0%b3%d0%b8)
      - [Логирование UI сервиса](#%d0%9b%d0%be%d0%b3%d0%b8%d1%80%d0%be%d0%b2%d0%b0%d0%bd%d0%b8%d0%b5-ui-%d1%81%d0%b5%d1%80%d0%b2%d0%b8%d1%81%d0%b0)
    - [Парсинг](#%d0%9f%d0%b0%d1%80%d1%81%d0%b8%d0%bd%d0%b3)
      - [Перезапускаем логгинг](#%d0%9f%d0%b5%d1%80%d0%b5%d0%b7%d0%b0%d0%bf%d1%83%d1%81%d0%ba%d0%b0%d0%b5%d0%bc-%d0%bb%d0%be%d0%b3%d0%b3%d0%b8%d0%bd%d0%b3)
      - [Парсинг](#%d0%9f%d0%b0%d1%80%d1%81%d0%b8%d0%bd%d0%b3-1)
    - [Задания co *](#%d0%97%d0%b0%d0%b4%d0%b0%d0%bd%d0%b8%d1%8f-co)
      - [grok](#grok)
        - [Анализ](#%d0%90%d0%bd%d0%b0%d0%bb%d0%b8%d0%b7-4)
        - [Реализация](#%d0%a0%d0%b5%d0%b0%d0%bb%d0%b8%d0%b7%d0%b0%d1%86%d0%b8%d1%8f-7)
    - [Распределенная трасировка](#%d0%a0%d0%b0%d1%81%d0%bf%d1%80%d0%b5%d0%b4%d0%b5%d0%bb%d0%b5%d0%bd%d0%bd%d0%b0%d1%8f-%d1%82%d1%80%d0%b0%d1%81%d0%b8%d1%80%d0%be%d0%b2%d0%ba%d0%b0)
      - [Zipkin](#zipkin)
      - [docker-compose.yml](#docker-composeyml-3)
      - [Networks](#networks)
      - [Пересоздадим наши сервисы](#%d0%9f%d0%b5%d1%80%d0%b5%d1%81%d0%be%d0%b7%d0%b4%d0%b0%d0%b4%d0%b8%d0%bc-%d0%bd%d0%b0%d1%88%d0%b8-%d1%81%d0%b5%d1%80%d0%b2%d0%b8%d1%81%d1%8b-1)
    - [Вне заданий: проблемы с comment](#%d0%92%d0%bd%d0%b5-%d0%b7%d0%b0%d0%b4%d0%b0%d0%bd%d0%b8%d0%b9-%d0%bf%d1%80%d0%be%d0%b1%d0%bb%d0%b5%d0%bc%d1%8b-%d1%81-comment)
    - [Самостоятельное задание со звездочкой \*](#%d0%a1%d0%b0%d0%bc%d0%be%d1%81%d1%82%d0%be%d1%8f%d1%82%d0%b5%d0%bb%d1%8c%d0%bd%d0%be%d0%b5-%d0%b7%d0%b0%d0%b4%d0%b0%d0%bd%d0%b8%d0%b5-%d1%81%d0%be-%d0%b7%d0%b2%d0%b5%d0%b7%d0%b4%d0%be%d1%87%d0%ba%d0%be%d0%b9)
      - [Репозиторий](#%d0%a0%d0%b5%d0%bf%d0%be%d0%b7%d0%b8%d1%82%d0%be%d1%80%d0%b8%d0%b9)
      - [Проблема](#%d0%9f%d1%80%d0%be%d0%b1%d0%bb%d0%b5%d0%bc%d0%b0)
      - [Поиск проблемы](#%d0%9f%d0%be%d0%b8%d1%81%d0%ba-%d0%bf%d1%80%d0%be%d0%b1%d0%bb%d0%b5%d0%bc%d1%8b-1)
      - [Проблема с EFK](#%d0%9f%d1%80%d0%be%d0%b1%d0%bb%d0%b5%d0%bc%d0%b0-%d1%81-efk)
    - [Как запустить проект:](#%d0%9a%d0%b0%d0%ba-%d0%b7%d0%b0%d0%bf%d1%83%d1%81%d1%82%d0%b8%d1%82%d1%8c-%d0%bf%d1%80%d0%be%d0%b5%d0%ba%d1%82)
      - [Подготовка](#%d0%9f%d0%be%d0%b4%d0%b3%d0%be%d1%82%d0%be%d0%b2%d0%ba%d0%b0-5)
      - [Запуск](#%d0%97%d0%b0%d0%bf%d1%83%d1%81%d0%ba-1)
  - [HomeWork 19: Введение в Kubernetes](#homework-19-%d0%92%d0%b2%d0%b5%d0%b4%d0%b5%d0%bd%d0%b8%d0%b5-%d0%b2-kubernetes)
    - [Создание примитивов](#%d0%a1%d0%be%d0%b7%d0%b4%d0%b0%d0%bd%d0%b8%d0%b5-%d0%bf%d1%80%d0%b8%d0%bc%d0%b8%d1%82%d0%b8%d0%b2%d0%be%d0%b2)
    - [Задание](#%d0%97%d0%b0%d0%b4%d0%b0%d0%bd%d0%b8%d0%b5)
    - [Kubernetes The Hard Way](#kubernetes-the-hard-way)
    - [Задание](#%d0%97%d0%b0%d0%b4%d0%b0%d0%bd%d0%b8%d0%b5-1)
    - [Возможные проблемы](#%d0%92%d0%be%d0%b7%d0%bc%d0%be%d0%b6%d0%bd%d1%8b%d0%b5-%d0%bf%d1%80%d0%be%d0%b1%d0%bb%d0%b5%d0%bc%d1%8b)
    - [Задание со \*](#%d0%97%d0%b0%d0%b4%d0%b0%d0%bd%d0%b8%d0%b5-%d1%81%d0%be)
    - [Выполнение задания](#%d0%92%d1%8b%d0%bf%d0%be%d0%bb%d0%bd%d0%b5%d0%bd%d0%b8%d0%b5-%d0%b7%d0%b0%d0%b4%d0%b0%d0%bd%d0%b8%d1%8f)
    - [Проверка деплоя](#%d0%9f%d1%80%d0%be%d0%b2%d0%b5%d1%80%d0%ba%d0%b0-%d0%b4%d0%b5%d0%bf%d0%bb%d0%be%d1%8f)
  - [HomeWork 20: Kubernetes. Запуск кластера и приложения. Модель безопасности.](#homework-20-kubernetes-%d0%97%d0%b0%d0%bf%d1%83%d1%81%d0%ba-%d0%ba%d0%bb%d0%b0%d1%81%d1%82%d0%b5%d1%80%d0%b0-%d0%b8-%d0%bf%d1%80%d0%b8%d0%bb%d0%be%d0%b6%d0%b5%d0%bd%d0%b8%d1%8f-%d0%9c%d0%be%d0%b4%d0%b5%d0%bb%d1%8c-%d0%b1%d0%b5%d0%b7%d0%be%d0%bf%d0%b0%d1%81%d0%bd%d0%be%d1%81%d1%82%d0%b8)
    - [План](#%d0%9f%d0%bb%d0%b0%d0%bd-3)
    - [Разворачиваем Kubernetes локально](#%d0%a0%d0%b0%d0%b7%d0%b2%d0%be%d1%80%d0%b0%d1%87%d0%b8%d0%b2%d0%b0%d0%b5%d0%bc-kubernetes-%d0%bb%d0%be%d0%ba%d0%b0%d0%bb%d1%8c%d0%bd%d0%be)
      - [Kubectl](#kubectl)
      - [minikube](#minikube)
    - [Minikube](#minikube-1)
      - [Before you begin](#before-you-begin)
      - [Installing minikube](#installing-minikube)
      - [Kubectl](#kubectl-1)
      - [Запустим приложение](#%d0%97%d0%b0%d0%bf%d1%83%d1%81%d1%82%d0%b8%d0%bc-%d0%bf%d1%80%d0%b8%d0%bb%d0%be%d0%b6%d0%b5%d0%bd%d0%b8%d0%b5)
        - [Deployment](#deployment)
          - [UI](#ui-1)
          - [Comment](#comment-1)
          - [Post](#post-1)
          - [MongoDB](#mongodb)
      - [Services](#services)
        - [Задание](#%d0%97%d0%b0%d0%b4%d0%b0%d0%bd%d0%b8%d0%b5-2)
        - [Services](#services-1)
      - [Minikube](#minikube-2)
      - [Namespaces](#namespaces)
      - [Dashboard](#dashboard)
    - [Разворачиваем Kubernetes](#%d0%a0%d0%b0%d0%b7%d0%b2%d0%be%d1%80%d0%b0%d1%87%d0%b8%d0%b2%d0%b0%d0%b5%d0%bc-kubernetes)
    - [GKE](#gke)
      - [ОШИБКА: Не отображаются комменты](#%d0%9e%d0%a8%d0%98%d0%91%d0%9a%d0%90-%d0%9d%d0%b5-%d0%be%d1%82%d0%be%d0%b1%d1%80%d0%b0%d0%b6%d0%b0%d1%8e%d1%82%d1%81%d1%8f-%d0%ba%d0%be%d0%bc%d0%bc%d0%b5%d0%bd%d1%82%d1%8b)
    - [Задание](#%d0%97%d0%b0%d0%b4%d0%b0%d0%bd%d0%b8%d0%b5-3)
    - [GKE Dashboard](#gke-dashboard)
    - [Задание со \*](#%d0%97%d0%b0%d0%b4%d0%b0%d0%bd%d0%b8%d0%b5-%d1%81%d0%be-1)
  - [HomeWork 21: Kubernetes. Networks ,Storages](#homework-21-kubernetes-networks-storages)
    - [План](#%d0%9f%d0%bb%d0%b0%d0%bd-4)
    - [Сетевое взаимодействие](#%d0%a1%d0%b5%d1%82%d0%b5%d0%b2%d0%be%d0%b5-%d0%b2%d0%b7%d0%b0%d0%b8%d0%bc%d0%be%d0%b4%d0%b5%d0%b9%d1%81%d1%82%d0%b2%d0%b8%d0%b5)
      - [Service](#service)
      - [Kube-dns](#kube-dns)
      - [Service](#service-1)
      - [kube-dns](#kube-dns-1)
        - [А в рамках кластера?](#%d0%90-%d0%b2-%d1%80%d0%b0%d0%bc%d0%ba%d0%b0%d1%85-%d0%ba%d0%bb%d0%b0%d1%81%d1%82%d0%b5%d1%80%d0%b0)
      - [kubenet](#kubenet)
        - [А в рамках кластера?](#%d0%90-%d0%b2-%d1%80%d0%b0%d0%bc%d0%ba%d0%b0%d1%85-%d0%ba%d0%bb%d0%b0%d1%81%d1%82%d0%b5%d1%80%d0%b0-1)
      - [nodePort](#nodeport)
      - [LoadBalancer](#loadbalancer)
      - [Ingress](#ingress)
        - [Ingress Conroller](#ingress-conroller)
        - [Ingress](#ingress-1)
      - [Secret](#secret)
        - [TLS Termination](#tls-termination)
      - [Задание со \* Secret в виде Kubernetes-манифеста](#%d0%97%d0%b0%d0%b4%d0%b0%d0%bd%d0%b8%d0%b5-%d1%81%d0%be--secret-%d0%b2-%d0%b2%d0%b8%d0%b4%d0%b5-kubernetes-%d0%bc%d0%b0%d0%bd%d0%b8%d1%84%d0%b5%d1%81%d1%82%d0%b0)
        - [Анализ](#%d0%90%d0%bd%d0%b0%d0%bb%d0%b8%d0%b7-5)
        - [Реализация](#%d0%a0%d0%b5%d0%b0%d0%bb%d0%b8%d0%b7%d0%b0%d1%86%d0%b8%d1%8f-8)
      - [Network Policy](#network-policy)
        - [Задание](#%d0%97%d0%b0%d0%b4%d0%b0%d0%bd%d0%b8%d0%b5-4)
    - [Хранилище для базы](#%d0%a5%d1%80%d0%b0%d0%bd%d0%b8%d0%bb%d0%b8%d1%89%d0%b5-%d0%b4%d0%bb%d1%8f-%d0%b1%d0%b0%d0%b7%d1%8b)
      - [Volume](#volume-1)
      - [PersistentVolume](#persistentvolume)
      - [PersistentVolumeClaim](#persistentvolumeclaim)
      - [PersistentVolume](#persistentvolume-1)
      - [PersistentVolumeClaim](#persistentvolumeclaim-1)
      - [Подключим PVC к нашим Pod'ам](#%d0%9f%d0%be%d0%b4%d0%ba%d0%bb%d1%8e%d1%87%d0%b8%d0%bc-pvc-%d0%ba-%d0%bd%d0%b0%d1%88%d0%b8%d0%bc-pod%d0%b0%d0%bc)
      - [Динамическое выделение Volume'ов](#%d0%94%d0%b8%d0%bd%d0%b0%d0%bc%d0%b8%d1%87%d0%b5%d1%81%d0%ba%d0%be%d0%b5-%d0%b2%d1%8b%d0%b4%d0%b5%d0%bb%d0%b5%d0%bd%d0%b8%d0%b5-volume%d0%be%d0%b2)
      - [StorageClass](#storageclass)
      - [PVC + StorageClass](#pvc--storageclass)
      - [Подключение динамического PVC](#%d0%9f%d0%be%d0%b4%d0%ba%d0%bb%d1%8e%d1%87%d0%b5%d0%bd%d0%b8%d0%b5-%d0%b4%d0%b8%d0%bd%d0%b0%d0%bc%d0%b8%d1%87%d0%b5%d1%81%d0%ba%d0%be%d0%b3%d0%be-pvc)
    - [Как запустить](#%d0%9a%d0%b0%d0%ba-%d0%b7%d0%b0%d0%bf%d1%83%d1%81%d1%82%d0%b8%d1%82%d1%8c)
      - [Руками](#%d0%a0%d1%83%d0%ba%d0%b0%d0%bc%d0%b8)
      - [./kubernetes/Makefile](#kubernetesmakefile)
        - [Variables](#variables)
        - [Targets](#targets-1)
  - [HomeWork 22: CI/CD в Kubernetes](#homework-22-cicd-%d0%b2-kubernetes)
    - [План](#%d0%9f%d0%bb%d0%b0%d0%bd-5)
    - [Helm](#helm)
      - [Helm - установка](#helm---%d1%83%d1%81%d1%82%d0%b0%d0%bd%d0%be%d0%b2%d0%ba%d0%b0)
      - [Charts](#charts)
      - [Templates](#templates)
        - [Post](#post-2)
        - [Comment](#comment-2)
        - [Helpers](#helpers)
        - [Задание](#%d0%97%d0%b0%d0%b4%d0%b0%d0%bd%d0%b8%d0%b5-5)
      - [Управление зависимостями](#%d0%a3%d0%bf%d1%80%d0%b0%d0%b2%d0%bb%d0%b5%d0%bd%d0%b8%d0%b5-%d0%b7%d0%b0%d0%b2%d0%b8%d1%81%d0%b8%d0%bc%d0%be%d1%81%d1%82%d1%8f%d0%bc%d0%b8)
      - [helm2 tiller plugin](#helm2-tiller-plugin)
      - [Helm3](#helm3)
    - [GitLab + Kubernetes](#gitlab--kubernetes)
      - [Установим GitLab](#%d0%a3%d1%81%d1%82%d0%b0%d0%bd%d0%be%d0%b2%d0%b8%d0%bc-gitlab)
      - [Запустим проект](#%d0%97%d0%b0%d0%bf%d1%83%d1%81%d1%82%d0%b8%d0%bc-%d0%bf%d1%80%d0%be%d0%b5%d0%ba%d1%82)
        - [ui](#ui-2)
        - [comment](#comment-3)
        - [post](#post-3)
        - [reddit-deploy](#reddit-deploy)
      - [Настроим CI](#%d0%9d%d0%b0%d1%81%d1%82%d1%80%d0%be%d0%b8%d0%bc-ci)
        - [ui](#ui-3)
        - [comment](#comment-4)
        - [post](#post-4)
        - [feature-branch](#feature-branch)
          - [Для `post`](#%d0%94%d0%bb%d1%8f-post)
          - [comment](#comment-5)
      - [Деплоим](#%d0%94%d0%b5%d0%bf%d0%bb%d0%be%d0%b8%d0%bc)
      - [Пайплайн здорового человека](#%d0%9f%d0%b0%d0%b9%d0%bf%d0%bb%d0%b0%d0%b9%d0%bd-%d0%b7%d0%b4%d0%be%d1%80%d0%be%d0%b2%d0%be%d0%b3%d0%be-%d1%87%d0%b5%d0%bb%d0%be%d0%b2%d0%b5%d0%ba%d0%b0)
      - [Evicted](#evicted)
      - [Пайплайн здорового человека: задание](#%d0%9f%d0%b0%d0%b9%d0%bf%d0%bb%d0%b0%d0%b9%d0%bd-%d0%b7%d0%b4%d0%be%d1%80%d0%be%d0%b2%d0%be%d0%b3%d0%be-%d1%87%d0%b5%d0%bb%d0%be%d0%b2%d0%b5%d0%ba%d0%b0-%d0%b7%d0%b0%d0%b4%d0%b0%d0%bd%d0%b8%d0%b5)
        - [Оптимизируем пайплайн ui](#%d0%9e%d0%bf%d1%82%d0%b8%d0%bc%d0%b8%d0%b7%d0%b8%d1%80%d1%83%d0%b5%d0%bc-%d0%bf%d0%b0%d0%b9%d0%bf%d0%bb%d0%b0%d0%b9%d0%bd-ui)
        - [comment + tiller plugin](#comment--tiller-plugin)
        - [post + helm3](#post--helm3)
        - [reddit-deploy](#reddit-deploy-1)
    - [Задание со \*: Автоматический деплой production](#%d0%97%d0%b0%d0%b4%d0%b0%d0%bd%d0%b8%d0%b5-%d1%81%d0%be--%d0%90%d0%b2%d1%82%d0%be%d0%bc%d0%b0%d1%82%d0%b8%d1%87%d0%b5%d1%81%d0%ba%d0%b8%d0%b9-%d0%b4%d0%b5%d0%bf%d0%bb%d0%be%d0%b9-production)
    - [Завершение](#%d0%97%d0%b0%d0%b2%d0%b5%d1%80%d1%88%d0%b5%d0%bd%d0%b8%d0%b5)
  - [HomeWork 23: Kubernetes. Мониторинг и логирование](#homework-23-kubernetes-%d0%9c%d0%be%d0%bd%d0%b8%d1%82%d0%be%d1%80%d0%b8%d0%bd%d0%b3-%d0%b8-%d0%bb%d0%be%d0%b3%d0%b8%d1%80%d0%be%d0%b2%d0%b0%d0%bd%d0%b8%d0%b5)
    - [Подготовка](#%d0%9f%d0%be%d0%b4%d0%b3%d0%be%d1%82%d0%be%d0%b2%d0%ba%d0%b0-6)
      - [Настройка инфраструктуры](#%d0%9d%d0%b0%d1%81%d1%82%d1%80%d0%be%d0%b9%d0%ba%d0%b0-%d0%b8%d0%bd%d1%84%d1%80%d0%b0%d1%81%d1%82%d1%80%d1%83%d0%ba%d1%82%d1%83%d1%80%d1%8b)
      - [Установка nginx-ingress-controller](#%d0%a3%d1%81%d1%82%d0%b0%d0%bd%d0%be%d0%b2%d0%ba%d0%b0-nginx-ingress-controller)
        - [Путь ДЗ](#%d0%9f%d1%83%d1%82%d1%8c-%d0%94%d0%97)
        - [Путь terraform](#%d0%9f%d1%83%d1%82%d1%8c-terraform)
    - [План](#%d0%9f%d0%bb%d0%b0%d0%bd-6)
    - [Мониторинг](#%d0%9c%d0%be%d0%bd%d0%b8%d1%82%d0%be%d1%80%d0%b8%d0%bd%d0%b3)
      - [Стек](#%d0%a1%d1%82%d0%b5%d0%ba)
      - [Установим Prometheus](#%d0%a3%d1%81%d1%82%d0%b0%d0%bd%d0%be%d0%b2%d0%b8%d0%bc-prometheus)
      - [Targets](#targets-2)
      - [Relabel config](#relabel-config)
      - [Metrics](#metrics)
        - [Задание](#%d0%97%d0%b0%d0%b4%d0%b0%d0%bd%d0%b8%d0%b5-6)
      - [Метрики приложений](#%d0%9c%d0%b5%d1%82%d1%80%d0%b8%d0%ba%d0%b8-%d0%bf%d1%80%d0%b8%d0%bb%d0%be%d0%b6%d0%b5%d0%bd%d0%b8%d0%b9)
        - [Задание](#%d0%97%d0%b0%d0%b4%d0%b0%d0%bd%d0%b8%d0%b5-7)
      - [Визуализация](#%d0%92%d0%b8%d0%b7%d1%83%d0%b0%d0%bb%d0%b8%d0%b7%d0%b0%d1%86%d0%b8%d1%8f)
        - [Урашечки, грабельки](#%d0%a3%d1%80%d0%b0%d1%88%d0%b5%d1%87%d0%ba%d0%b8-%d0%b3%d1%80%d0%b0%d0%b1%d0%b5%d0%bb%d1%8c%d0%ba%d0%b8)
      - [Templating](#templating)
        - [UI metrics](#ui-metrics)
        - [Business Logic Monitoring](#business-logic-monitoring)
      - [Смешанные графики](#%d0%a1%d0%bc%d0%b5%d1%88%d0%b0%d0%bd%d0%bd%d1%8b%d0%b5-%d0%b3%d1%80%d0%b0%d1%84%d0%b8%d0%ba%d0%b8)
    - [Задание со \*: alertmanager](#%d0%97%d0%b0%d0%b4%d0%b0%d0%bd%d0%b8%d0%b5-%d1%81%d0%be--alertmanager)
      - [nginx-ingress-controller](#nginx-ingress-controller)
      - [Fix alertmanager](#fix-alertmanager)
      - [Alert rules](#alert-rules-1)
    - [Задание со \*: Prometheus operator](#%d0%97%d0%b0%d0%b4%d0%b0%d0%bd%d0%b8%d0%b5-%d1%81%d0%be--prometheus-operator)
      - [Install prometheus operator](#install-prometheus-operator)
      - [ServiceMonitor](#servicemonitor)
    - [Логгирование](#%d0%9b%d0%be%d0%b3%d0%b3%d0%b8%d1%80%d0%be%d0%b2%d0%b0%d0%bd%d0%b8%d0%b5)
      - [Подготовка](#%d0%9f%d0%be%d0%b4%d0%b3%d0%be%d1%82%d0%be%d0%b2%d0%ba%d0%b0-7)
      - [Стек](#%d0%a1%d1%82%d0%b5%d0%ba-1)
      - [EFK](#efk)
    - [Задание со \*: Helm Chart EFK](#%d0%97%d0%b0%d0%b4%d0%b0%d0%bd%d0%b8%d0%b5-%d1%81%d0%be--helm-chart-efk)

# Makefile

## Переменные

| variable               | default                    | description                                                              |
| ---------------------- | -------------------------- | ------------------------------------------------------------------------ |
| BIN_DIR                | ~/bin                      | Путь для установки исполняемых файлов для целей `install_docker_machine` |
| TEMP_DIR               | /tmp                       | Временная директория для загрузки файлов                                 |
| ENV                    | stage                      | Название окружения                                                       |
| DOCKER_MACHINE_VERSION | v0.16.0                    | Версия docker-machine                                                    |
| DOCKER_MACHINE_OS      | \$(shell uname -s)         | Название операционной системы                                            |
| DOCKER_MACHINE_ARCH    | \$(shell uname -m)         | Название архитектуры                                                     |
| DOCKER_MACHINE         | \${BIN_DIR}/docker-machine | Путь к исполняемому файлу `docker-machine`                               |
| DOCKER_MACHINE_NAME    | docker-host                | Имя инстанса                                                             |
| DOCKER_MACHINE_TYPE    | n1-standard-1              | Тип инстанса                                                             |
| DOCKER_MACHINE_REGION  | europe-west1-b             | Регион                                                                   |
| PACKER_VERSION         | 1.4.4                      | Версия packer                                                            |
| PACKER                 | ${BIN_DIR}/packer          | Путь к исполняемому файлу `packer`                                       |
| ANSIBLE                | ../../.venv/bin/ansible    | Путь к исполняемому файлу `ansible`                                      |
| TERRAFORM_VERSION      | 0.12.12                    | Версия terraform                                                         |
| TERRAFORM              | ${BIN_DIR}/terraform       | Путь к исполняемому файлу `terraform`                                    |
| TFLINT_VERSION         | 0.12.1                     | Версия tflist                                                            |
| TFLINT                 | ${BIN_DIR}/tflint          | Путь к исполняемому файлу `tflint`                                       |
| HADOLINT_VERSION       | 1.17.2                     | Версия hadolint (linter для Dockerfile)                                  |
| HADOLINT               | ${BIN_DIR}/hadolint        | Путь к исполняемому файлу `hadolint`                                     |
| IMAGE_VERSION          | 1.0                        | Версия docker-образа vscoder/otus-reddit для отправки на docker-hub      |

## Цели

| target                                | used variables                                                                  | description                                                                                                                                 |
| ------------------------------------- | ------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------- |
| debug                                 | все                                                                             | Показать значения всех переменных                                                                                                           |
| install_requirements                  | нет                                                                             | Установить в python virualenv [./venv](./venv) зависимости из [requirements.txt](requirements.txt)                                          |
| install_requirements_dev              | нет                                                                             | Выполнить `make install_requirements`, а так же установить зависимости из [requirements-dev.txt](requirements-dev.txt)                      |
| install_requirements_virtualenv       | нет                                                                             | Установить в python virualenv [./venv](./venv) зависимости из [requirements.txt](requirements.txt) используя пакет virtualenv (для python2) |
| install_docker_machine                | DOCKER_MACHINE_BASEURL, DOCKER_MACHINE_VERSION, TEMP_DIR, BIN_DIR               | Скачать и установить в `${BIN_DIR}` исполняемый файл `docker-machine`                                                                       |
| docker_machine_create                 | DOCKER_MACHINE, DOCKER_MACHINE_NAME, DOCKER_MACHINE_TYPE, DOCKER_MACHINE_REGION | Создать инстанс docker-machine в gce                                                                                                        |
| docker_machine_rm                     | DOCKER_MACHINE, DOCKER_MACHINE_NAME                                             | Удалить инстанс                                                                                                                             |
| install_packer                        | TEMP_DIR, PACKER_VERSION, BIN_DIR                                               | Скачать и установить бинарник packer в ${BIN_DIR}                                                                                           |
| monolith_packer_build                 | PACKER                                                                          | Собрать базовый образ из шаблона docker-monolith/packer/docker.json                                                                         |
| monolith_packer_validate              | PACKER                                                                          | Проверить корректность packer-шаблона docker-monolith/packer/docker.json                                                                    |
| install_terraform                     | TEMP_DIR, BIN_DIR, TERRAFORM_VERSION                                            | Установить terraform                                                                                                                        |
| install_tflint                        | TEMP_DIR, BIN_DIR, TFLINT_VERSION                                               | Установить tflint                                                                                                                           |
| install_hadolint                      | TEMP_DIR, BIN_DIR, HADOLINT_VERSION, HADOLINT                                   | Установить hadolint                                                                                                                         |
| monolith_terraform_init               | ENV, TERRAFORM                                                                  | Инициализировать terraform для базового окружения `${ENV}` окружения                                                                        |
| monolith_terraform_init_nobackend     | ENV, TERRAFORM                                                                  | Инициализировать terraform для окружения `${ENV}`, без инициализации remote backend. Используется в автоматизированных проверках            |
| monolith_terraform_validate           | TERRAFORM                                                                       | Выполнить валидацию всех окружений terraform                                                                                                |
| monolith_terraform_tflint             | TFLINT                                                                          | Выполнить tflint для всех окружений terraform                                                                                               |
| monolith_terraform_apply              | ENV, TERRAFORM                                                                  | Применить инфраструктуру terraform для окружения `${ENV}`                                                                                   |
| monolith_terraform_destroy            | ENV, TERRAFORM                                                                  | Уничтожить инфраструктуру terraform для окружения `${ENV}`                                                                                  |
| monolith_ansible_install_requirements | ANSIBLE                                                                         | Установить внешние роли ansible из [requirements.yml](docker-monolith/ansible/environments/stage/requirements.yml)                          |
| monolith_ansible_inventory_list       | ANSIBLE                                                                         | Показать содержимое ansible-inventory ввформате json                                                                                        |
| monolith_ansible_lint                 | ANSIBLE                                                                         | Выполнить ansible-lint для всех плейбуков                                                                                                   |
| monolith_ansible_syntax               | ANSIBLE                                                                         | Проверить синтаксис всех плейбуков                                                                                                          |
| monolith_ansible_reddit_app           | ANSIBLE, ENV                                                                    | Развернуть reddit-app в контейнере                                                                                                          |
| monolith_docker_build                 |                                                                                 | Собрать контейнер из [docker-monolith/Dockerfile](docker-monolith/Dockerfile)                                                               |
| monolith_docker_publish               | IMAGE_VERSION                                                                   | Загрузить образ `vscoder/otus-reddit:${IMAGE_VERSION}` на docker-hub                                                                        |

# Домашние задания

## HomeWork 12: Технология контейнеризации. Введение в Docker

### Подготовка проекта. Интеграции

- Склонирован репозиторий [Otus-DevOps-2019-08/vscoder_microservices
  ](https://github.com/Otus-DevOps-2019-08/vscoder_microservices)
- Выполнена интеграция со slack:
  - workspace `devops-team-otus.slack.com`
  - В чате aleksey_koloskov выполнена команда `/github subscribe Otus-DevOps-2019-08/vscoder_microservices commits:all`
- Настроены уведомления в slack от travis-ci
  - В клиенте: _+ Add apps_ -> _Travis-CI_ -> _Settings_ -> _Add to Slack_
  - В [.travis.yml](.travis.yml) настроены уведомления по инструкции с открывшейся страницы
    ```yaml
    notifications:
      slack: slackchannel:faketoken
    ```
- Добавлен [.gitignore](.gitignore)
- Добавлен Makefile. Цели:
  - install_requirements
  - install_docker_machine

### Установка docker

- Установлен docker как описано в документации https://docs.docker.com/engine/installation/linux/docker-ce/ubuntu/

  <details><summary>docker version</summary>
  <p>

  ```
  Client: Docker Engine - Community
   Version:           19.03.4
   API version:       1.40
   Go version:        go1.12.10
   Git commit:        9013bf583a
   Built:             Fri Oct 18 15:54:09 2019
   OS/Arch:           linux/amd64
   Experimental:      false

  Server: Docker Engine - Community
   Engine:
    Version:          19.03.4
    API version:      1.40 (minimum version 1.12)
    Go version:       go1.12.10
    Git commit:       9013bf583a
    Built:            Fri Oct 18 15:52:40 2019
    OS/Arch:          linux/amd64
    Experimental:     false
   containerd:
    Version:          1.2.10
    GitCommit:        b34a5c8af56e510852c35414db4c1f4fa6172339
   runc:
    Version:          1.0.0-rc8+dev
    GitCommit:        3e425f80a8c931f88e6d94a8c831b9d5aa481657
   docker-init:
    Version:          0.18.0
    GitCommit:        fec3683
  ```

  </p>
  </details>
  <br>
  <details><summary>docker info</summary>
  <p>

  ```
  Client:
   Debug Mode: false

  Server:
   Containers: 0
    Running: 0
    Paused: 0
    Stopped: 0
   Images: 0
   Server Version: 19.03.4
   Storage Driver: overlay2
    Backing Filesystem: extfs
    Supports d_type: true
    Native Overlay Diff: true
   Logging Driver: json-file
   Cgroup Driver: cgroupfs
   Plugins:
    Volume: local
    Network: bridge host ipvlan macvlan null overlay
    Log: awslogs fluentd gcplogs gelf journald json-file local logentries splunk syslog
   Swarm: inactive
   Runtimes: runc
   Default Runtime: runc
   Init Binary: docker-init
   containerd version: b34a5c8af56e510852c35414db4c1f4fa6172339
   runc version: 3e425f80a8c931f88e6d94a8c831b9d5aa481657
   init version: fec3683
   Security Options:
    apparmor
    seccomp
     Profile: default
   Kernel Version: 5.0.0-32-generic
   Operating System: Ubuntu 18.04.3 LTS
   OSType: linux
   Architecture: x86_64
   CPUs: 12
   Total Memory: 31.28GiB
   Name: vsc-home
   ID: RPZE:O6VJ:2IMK:H4GU:AGV7:BHBM:C5HT:MI5X:GYSH:MHZ5:BWDV:HHUC
   Docker Root Dir: /var/lib/docker
   Debug Mode: false
   Registry: https://index.docker.io/v1/
   Labels:
   Experimental: false
   Insecure Registries:
    127.0.0.0/8
   Live Restore Enabled: false

  WARNING: No swap limit support
  ```

  </p>
  </details>
  <br>
  <details><summary>docker run hello-world</summary>
  <p>

  ```
  Unable to find image 'hello-world:latest' locally
  latest: Pulling from library/hello-world
  1b930d010525: Pull complete
  Digest: sha256:c3b4ada4687bbaa170745b3e4dd8ac3f194ca95b2d0518b417fb47e5879d9b5f
  Status: Downloaded newer image for hello-world:latest

  Hello from Docker!
  This message shows that your installation appears to be working correctly.

  To generate this message, Docker took the following steps:
   1. The Docker client contacted the Docker daemon.
   2. The Docker daemon pulled the "hello-world" image from the Docker Hub.
      (amd64)
   3. The Docker daemon created a new container from that image which runs the
      executable that produces the output you are currently reading.
   4. The Docker daemon streamed that output to the Docker client, which sent it
      to your terminal.

  To try something more ambitious, you can run an Ubuntu container with:
   $ docker run -it ubuntu bash

  Share images, automate workflows, and more with a free Docker ID:
   https://hub.docker.com/

  For more examples and ideas, visit:
   https://docs.docker.com/get-started/
  ```

  </p>
  </details>

- Установлен docker-compose в [./venv](.venv)
  ```shell
  docker-compose version 1.24.1, build 4667896
  ```
- Установлен бинарник `docker-machine`
  ```shell
  docker-machine version 0.16.0, build 702c267f
  ```

### Работа с docker

- Список основных команд docker
  
  | Команда                                                                       | Описание                                                                                                                                            |
  | ----------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------- |
  | docker ps                                                                     | Список запущенных контейнеров                                                                                                                       |
  | docker ps -a                                                                  | Список всех контейнеров                                                                                                                             |
  | docker images                                                                 | Список локально сохранённых образов                                                                                                                 |
  | docker run -it ubuntu:16.04 /bin/bash                                         | Запустить `/bin/bash` в контейнере ubuntu:16:04. Каждый раз создаётся новый контейнер. Без флага `--rm` остановленный контейнер останется на диске. |
  | docker ps -a --format "table {{.ID}}\t{{.Image}}\t{{.CreatedAt}}\t{{.Names}}" | Список всех контейнеров. Выводятся таблица с указанными столбцами                                                                                   |
  | docker start <u_container_id>                                                 | Запустить ранее остановленный контейнер                                                                                                             | docker attach <u_container_id> | Подключить терминал к созданному контейнеру. Для отключения нажать `CTRL+p` `CTRL+q` |
  | docker create                                                                 | Создать контейнер, не запуская его                                                                                                                  |
  | docker exec -it <u_container_id> bash                                         | Запустить новый процесс внутри контейнера                                                                                                           |
  | docker commit <u_container_id> yourname/ubuntu-tmp-file                       | Создать образ yourname/ubuntu-tmp-file из контейнера <u_container_id>. Контейнер при этом останется запущенным.                                     |

- Примечание _docker run = docker create + docker start + docker attach\*_ \* _docker attach_ выполняется при наличии опции `-i`
- Основные опции
  
  | Опция        | Описание                                                   |
  | ------------ | ---------------------------------------------------------- |
  | -i           | запускает контейнер в foreground режиме (docker attach)    |
  | -d           | запускает контейнер в background режиме                    |
  | -t           | создает TTY                                                |
  | --entrypoint | позволяет переопределить ENTRYPOINT при запуске контейнера |
- После выполнения команд из ДЗ, список образов сохранён в [docker-monolith/docker-1.log](docker-monolith/docker-1.log)

### Задание со \*: Отличия образа и контейнера

* Сылки по теме:
  * An Image is an ordered collection of root filesystem changes and the corresponding execution parameters for use within a container runtime.
  * [About storage drivers](https://docs.docker.com/storage/storagedriver/)
  * [How the overlay2 driver works](https://docs.docker.com/storage/storagedriver/overlayfs-driver/#how-the-overlay2-driver-works)
  * [Docker Image Specification v1.2.0. Image JSON Field Descriptions](https://github.com/docker/docker-ce/blob/master/components/engine/image/spec/v1.2.md)
  * [Образы и контейнеры Docker в картинках](https://habr.com/en/post/272145/)
  * [What to Inspect When You're Inspecting](https://www.ctl.io/developers/blog/post/what-to-inspect-when-youre-inspecting)
  * [Engine API v1.24](https://docs.docker.com/engine/api/v1.24/)
  * [Подключение контейнера к нескольким сетям](https://success.docker.com/article/multiple-docker-networks)
* Произведён анализ результатов вывода команды `docker inspect <u_image_id>`.
  <details><summary>Результаты</summary>
  <p>

  ```json
  [
    {
      "Id": "sha256:5f2bf26e35249d8b47f002045c57b2ea9d8ba68704f45f3c209182a7a2a9ece5",  # SHA256 hash of its configuration JSON
      "RepoTags": [  # Список тегов образа
        "ubuntu:16.04"
      ],
      "RepoDigests": [  # Чексумма образа
        "ubuntu@sha256:bb5b48c7750a6a8775c74bcb601f7e5399135d0a06de004d000e05fd25c1a71c"
      ],
      "Parent": "",  # ID вышестоящего слоя в хранилище образов. Пуст в связи с отсутствием родительских слоёв в локальном хранилище. Подробнее: https://stackoverflow.com/questions/45820905/docker-image-inspection-json-interpretation Документация: https://docs.docker.com/storage/storagedriver/
      "Comment": "",  # Комментарий
      "Created": "2019-10-31T22:21:29.640561379Z",  # Дата создания образа
      "Container": "363288fa6924e2d1e1b00da6525ffde40bb0de65b1da6ce6e44e363df532614e",  # Временный идентификатор контейнера, созданного во время сборки образа. Docker will create a container during the image construction process, and this identifier is stored in the image data.
      "ContainerConfig": {  # This data again is referring to the temporary container created when the Docker build command was executed
        "Hostname": "363288fa6924",
        "Domainname": "",
        "User": "",
        "AttachStdin": false,
        "AttachStdout": false,
        "AttachStderr": false,
        "Tty": false,
        "OpenStdin": false,
        "StdinOnce": false,
        "Env": [
          "PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"
        ],
        "Cmd": [
          "/bin/sh",
          "-c",
          "#(nop) ",
          "CMD [\"/bin/bash\"]"
        ],
        "ArgsEscaped": true,
        "Image": "sha256:66d791e2304a4caa9fda9b56ad9fff2679e7b933c83d23fca8e3ec3b5595c4dc",
        "Volumes": null,
        "WorkingDir": "",
        "Entrypoint": null,
        "OnBuild": null,
        "Labels": {}
      },
      "DockerVersion": "18.06.1-ce",  # Версия docker, используемая при сборке образа
      "Author": "",  # Автор образа
      "Config": {  # Конфигурационные параметры, которые должны быть взяты за основу при запуске контейнера на основе данного образа. Судя по документации, все эти параметры можно переопределить при создании контейнера
        "Hostname": "",
        "Domainname": "",
        "User": "",  # Пользователь запускаемого контейнера по-умолчанию
        "AttachStdin": false,
        "AttachStdout": false,
        "AttachStderr": false,
        "Tty": false,
        "OpenStdin": false,
        "StdinOnce": false,
        "Env": [  # Переменные окружения
          "PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"
        ],
        "Cmd": [  # CMD по умолчанию
          "/bin/bash"
        ],
        "ArgsEscaped": true,
        "Image": "sha256:66d791e2304a4caa9fda9b56ad9fff2679e7b933c83d23fca8e3ec3b5595c4dc",
        "Volumes": null,  # Тома по-умолчанию
        "WorkingDir": "",  # Рабочая директория по-умолчанию
        "Entrypoint": null,  # ENTRYPOINT по-умолчанию
        "OnBuild": null,
        "Labels": null
      },
      "Architecture": "amd64",  # Архитектура, для которой созданы бинарные файлы образа [i386, amd64, arm]
      "Os": "linux",  # Название ОС, в которой должен запускаться образ
      "Size": 122564827,
      "VirtualSize": 122564827,  # The size of the image reported in bytes
      "GraphDriver": { # https://docs.docker.com/storage/storagedriver/select-storage-driver/
        "Data": {  # https://stackoverflow.com/a/56551786/3488348
          "LowerDir": "/var/lib/docker/overlay2/897edb9e383005a310bb7685eda9b259c5c0b7740d2d65e7d1c44f228dc73ce9/diff:/var/lib/docker/overlay2/bc1b6b3a839591c8870d5aa8ad328af83c5325b82a88163986a0186b11016921/diff:/var/lib/docker/overlay2/11810c8b5bbff1b9b14089bcef62d0029a39ae0686c51a5ce0e616e71f2573bf/diff",
          "MergedDir": "/var/lib/docker/overlay2/8dac1ac5277e9c3bf4e3d7111d947bf2f4553dd85764077b0ed057d3e1b93022/merged",
          "UpperDir": "/var/lib/docker/overlay2/8dac1ac5277e9c3bf4e3d7111d947bf2f4553dd85764077b0ed057d3e1b93022/diff",
          "WorkDir": "/var/lib/docker/overlay2/8dac1ac5277e9c3bf4e3d7111d947bf2f4553dd85764077b0ed057d3e1b93022/work"
        },
        "Name": "overlay2" # https://docs.docker.com/storage/storagedriver/overlayfs-driver/#how-the-overlay2-driver-works
      },
      "RootFS": {  # Ссылается на адреса содержимого слоёв, используемых образом
        "Type": "layers",
        "Layers": [
          "sha256:788b17b748c23d38ec62e913e87b084b7e3efda49843b3c0809b1857559b553e",
          "sha256:a5a5f8c62487121247923a4df970f2094725ac2fea8c1347236466c4a3265ae0",
          "sha256:903669ee720750938f08f95f7c8f1022d7fd7c57602af847b316f0b39efbd01c",
          "sha256:bc72fb2e7b7487b3b9f9135437319525feaf1fab6ba61dab7e2e961e5c1dbb8b"
        ]
      },
      "Metadata": {  # Метаданные
        "LastTagTime": "0001-01-01T00:00:00Z"
      }
    }
  ]
  
  ```

  </p>
  </details>
* Произведён анализ вывода команды `docker inspect <u_container_id>`
  <details><summary>Результаты</summary>
    <p>

  ```json
  [
      {
          "Id": "03a9eea159ef6e417a2e67802c5fa021f4a8d0b634ba377cd0074d6ff5eef511",
          "Created": "2019-11-02T16:08:06.723203393Z",  # Дата создания контейнера
          "Path": "bash",
          "Args": [],
          "State": {  # Описание статуса контейнера
              "Status": "running",  # Текущее состояние
              "Running": true,  # Запущен?
              "Paused": false,  # Приостановлен?
              "Restarting": false,  # Перезапускается?
              "OOMKilled": false,  # Убит OOM-киллером?
              "Dead": false,  # Упал (умер)?
              "Pid": 25711,  # ID процесса контейнера в host os
              "ExitCode": 0,  # Кот завершения (используется для перезапуска после падения)
              "Error": "",  # Ошибка в случае падения
              "StartedAt": "2019-11-02T16:08:07.16481008Z",  # Время запуска
              "FinishedAt": "0001-01-01T00:00:00Z"  # Время завершения
          },
          "Image": "sha256:5f2bf26e35249d8b47f002045c57b2ea9d8ba68704f45f3c209182a7a2a9ece5",  # ID образа, на базе которого создан контейнер
          "ResolvConfPath": "/var/lib/docker/containers/03a9eea159ef6e417a2e67802c5fa021f4a8d0b634ba377cd0074d6ff5eef511/resolv.conf",
          "HostnamePath": "/var/lib/docker/containers/03a9eea159ef6e417a2e67802c5fa021f4a8d0b634ba377cd0074d6ff5eef511/hostname",
          "HostsPath": "/var/lib/docker/containers/03a9eea159ef6e417a2e67802c5fa021f4a8d0b634ba377cd0074d6ff5eef511/hosts",
          "LogPath": "/var/lib/docker/containers/03a9eea159ef6e417a2e67802c5fa021f4a8d0b634ba377cd0074d6ff5eef511/03a9eea159ef6e417a2e67802c5fa021f4a8d0b634ba377cd0074d6ff5eef511-json.log",
          "Name": "/wonderful_blackwell",  # Имя контейнера. Генериться случайным образом, если не задано явно
          "RestartCount": 0,  # Количество перезапусков. Используется для https://docs.docker.com/engine/reference/commandline/run/#restart-policies---restart
          "Driver": "overlay2",
          "Platform": "linux",
          "MountLabel": "",
          "ProcessLabel": "",
          "AppArmorProfile": "docker-default",
          "ExecIDs": null,
          "HostConfig": {  # Конфигурация хост-системы
              "Binds": null,
              "ContainerIDFile": "",
              "LogConfig": {  # Настройки логгирования
                  "Type": "json-file",
                  "Config": {}
              },
              "NetworkMode": "default",  # Sets the networking mode for the container. Supported standard values are: bridge, host, none, and container:<name|id>. Any other value is taken as a custom network’s name to which this container should connect to.
              "PortBindings": {},  # Пробросы портов
              "RestartPolicy": {  # Политика перезапуска https://docs.docker.com/engine/reference/commandline/run/#restart-policies---restart
                  "Name": "no",
                  "MaximumRetryCount": 0
              },
              "AutoRemove": false,  # Автоматически удалять контейнер после установки
              "VolumeDriver": "",  # Driver that this container users to mount volumes.
              "VolumesFrom": null,  # A list of volumes to inherit from another container. Specified in the form <container name>[:<ro|rw>]
              "CapAdd": null,  # A list of kernel capabilities added to the container.
              "CapDrop": null,  # A list of kernel capabilities dropped from the container.
              "Capabilities": null,
              "Dns": [],  # dns-сервера, используемые контейнером
              "DnsOptions": [],
              "DnsSearch": [],
              "ExtraHosts": null,  # Дополнительные записи в /etc/hosts
              "GroupAdd": null,  # A list of additional groups that the container process will run as
              "IpcMode": "private",
              "Cgroup": "",
              "Links": null,  # A list of links for the container. Each link entry is in the form of container_name:alias.
              "OomScoreAdj": 0,  # An integer value containing the score given to the container in order to tune OOM killer preferences.
              "PidMode": "",  # Set the PID (Process) Namespace mode for the container; "container:<name|id>": joins another container’s PID namespace "host": use the host’s PID namespace inside the container
              "Privileged": false,  # Контейнер запущен в привилегированном режиме https://docs.docker.com/engine/reference/run/#runtime-privilege-and-linux-capabilities
              "PublishAllPorts": false,  # Allocates an ephemeral host port for all of a container’s exposed ports. Specified as a boolean value. Ports are de-allocated when the container stops and allocated when the container starts. The allocated port might be changed when restarting the container.
              "ReadonlyRootfs": false,  # Файловая система контейнера смонтирована только для чтения
              "SecurityOpt": null,  # A list of string values to customize labels for MLS systems, such as SELinux.
              "UTSMode": "",
              "UsernsMode": "",  # Sets the usernamespace mode for the container when usernamespace remapping option is enabled. supported values are: host.
              "ShmSize": 67108864,  # Size of /dev/shm in bytes. The size must be greater than 0. If omitted the system uses 64MB.
              "Runtime": "runc",  # Используемый рантайм
              "ConsoleSize": [
                  0,
                  0
              ],
              "Isolation": "",  # isolation=(default	process	hyperv) (Windows daemon only)
              "CpuShares": 0,  # An integer value containing the container’s CPU Shares (ie. the relative weight vs other containers).
              "Memory": 0,  # Memory limit in bytes.
              "NanoCpus": 0,
              "CgroupParent": "",  # Path to cgroups under which the container’s cgroup is created. If the path is not absolute, the path is considered to be relative to the cgroups path of the init process. Cgroups are created if they do not already exist.
              "BlkioWeight": 0,  # Block IO weight (relative weight) accepts a weight value between 10 and 1000.
              "BlkioWeightDevice": [],
              "BlkioDeviceReadBps": null,
              "BlkioDeviceWriteBps": null,
              "BlkioDeviceReadIOps": null,
              "BlkioDeviceWriteIOps": null,
              "CpuPeriod": 0,  # The length of a CPU period in microseconds.
              "CpuQuota": 0,  # Microseconds of CPU time that the container can get in a CPU period.
              "CpuRealtimePeriod": 0,
              "CpuRealtimeRuntime": 0,
              "CpusetCpus": "",  # String value containing the cgroups CpusetCpus to use.
              "CpusetMems": "",  # Memory nodes (MEMs) in which to allow execution (0-3, 0,1). Only effective on NUMA systems.
              "Devices": [],  # A list of devices to add to the container specified as a JSON object in the form { "PathOnHost": "/dev/deviceName", "PathInContainer": "/dev/deviceName", "CgroupPermissions": "mrw"}
              "DeviceCgroupRules": null,
              "DeviceRequests": null,
              "KernelMemory": 0,  # Kernel memory limit in bytes.
              "KernelMemoryTCP": 0,
              "MemoryReservation": 0,  # Memory soft limit in bytes.
              "MemorySwap": 0,  # Total memory limit (memory + swap); -1 is unlimited swap. You must use this with memory and make the swap value larger than memory.
              "MemorySwappiness": null,  # Tune a container’s memory swappiness behavior. Integer between 0 and 100.
              "OomKillDisable": false,  # Boolean value, whether to disable OOM Killer for the container or not.
              "PidsLimit": null,  # A container’s pids limit. -1 if unlimited.
              "Ulimits": null,  # A list of ulimits to set in the container, specified as { "Name": <name>, "Soft": <soft limit>, "Hard": <hard limit> }, for example: Ulimits: { "Name": "nofile", "Soft": 1024, "Hard": 2048 }
              "CpuCount": 0,
              "CpuPercent": 0,  # An integer value containing the usable percentage of the available CPUs. (Windows daemon only)
              "IOMaximumIOps": 0,  # Maximum IO absolute rate in terms of bytes per second.
              "IOMaximumBandwidth": 0,  # Maximum IO absolute rate in terms of IOps.
              "MaskedPaths": [
                  "/proc/asound",
                  "/proc/acpi",
                  "/proc/kcore",
                  "/proc/keys",
                  "/proc/latency_stats",
                  "/proc/timer_list",
                  "/proc/timer_stats",
                  "/proc/sched_debug",
                  "/proc/scsi",
                  "/sys/firmware"
              ],
              "ReadonlyPaths": [
                  "/proc/bus",
                  "/proc/fs",
                  "/proc/irq",
                  "/proc/sys",
                  "/proc/sysrq-trigger"
              ]
          },
          "GraphDriver": {
              "Data": {
                  "LowerDir": "/var/lib/docker/overlay2/7ebf817bfc93f412448a4e804d2f149b25d4072c6985ab185216648194786889-init/diff:/var/lib/docker/overlay2/8dac1ac5277e9c3bf4e3d7111d947bf2f4553dd85764077b0ed057d3e1b93022/diff:/var/lib/docker/overlay2/897edb9e383005a310bb7685eda9b259c5c0b7740d2d65e7d1c44f228dc73ce9/diff:/var/lib/docker/overlay2/bc1b6b3a839591c8870d5aa8ad328af83c5325b82a88163986a0186b11016921/diff:/var/lib/docker/overlay2/11810c8b5bbff1b9b14089bcef62d0029a39ae0686c51a5ce0e616e71f2573bf/diff",
                  "MergedDir": "/var/lib/docker/overlay2/7ebf817bfc93f412448a4e804d2f149b25d4072c6985ab185216648194786889/merged",
                  "UpperDir": "/var/lib/docker/overlay2/7ebf817bfc93f412448a4e804d2f149b25d4072c6985ab185216648194786889/diff",
                  "WorkDir": "/var/lib/docker/overlay2/7ebf817bfc93f412448a4e804d2f149b25d4072c6985ab185216648194786889/work"
              },
              "Name": "overlay2"  # https://docs.docker.com/storage/storagedriver/overlayfs-driver/#how-the-overlay2-driver-works
          },
          "Mounts": [],  # Specification for mounts that was added to containers created as part of the service.
          "Config": {
              "Hostname": "03a9eea159ef",  # Имя хоста
              "Domainname": "",  # Домен
              "User": "",  # Пользователь внутри контейнера
              "AttachStdin": true,  # Attached to stdin
              "AttachStdout": true,  # Attached to stdout
              "AttachStderr": true,  # Attached to stderr
              "Tty": true,  # Standart streams attached to tty
              "OpenStdin": true,
              "StdinOnce": true,
              "Env": [  # A list of environment variables in the form of ["VAR=value", ...]
                  "PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"
              ],
              "Cmd": [  # CMD runned in container
                  "bash"
              ],
              "Image": "ubuntu:16.04",  # Имя образа контейнера
              "Volumes": null,  # An object mapping mount point paths (strings) inside the container to empty objects.
              "WorkingDir": "",  #  string specifying the working directory for commands to run in.
              "Entrypoint": null,  # ENTRYPOINT of a container
              "OnBuild": null,
              "Labels": {}  # A map of labels of a container
          },
          "NetworkSettings": {  # Настройки сети контейнера.
              "Bridge": "",
              "SandboxID": "b8b58bb4f3a477aca4a6d05ee397e6cb62859afa30d8806e64e8e8e130af9e05",
              "HairpinMode": false,  # https://en.wikipedia.org/wiki/Hairpinning
              "LinkLocalIPv6Address": "",
              "LinkLocalIPv6PrefixLen": 0,
              "Ports": {},  #  Mapped ports
              "SandboxKey": "/var/run/docker/netns/b8b58bb4f3a4",
              "SecondaryIPAddresses": null,
              "SecondaryIPv6Addresses": null,
              "EndpointID": "e7f60af3ade6a1ecba41456c0f3252f8edd502287c826a214c6318ef74f8efdf",
              "Gateway": "172.17.0.1",  # Network gateway
              "GlobalIPv6Address": "",
              "GlobalIPv6PrefixLen": 0,
              "IPAddress": "172.17.0.2",  # Container's ip address
              "IPPrefixLen": 16,
              "IPv6Gateway": "",
              "MacAddress": "02:42:ac:11:00:02",  # mac-address
              "Networks": {  # Сети и контейнера
                  "bridge": {
                      "IPAMConfig": null,
                      "Links": null,
                      "Aliases": null,
                      "NetworkID": "156780e8135120a2650a4d34c2a0aee35cd4d3cde3d98fb0e3b1ebfd3a797bfd",
                      "EndpointID": "e7f60af3ade6a1ecba41456c0f3252f8edd502287c826a214c6318ef74f8efdf",
                      "Gateway": "172.17.0.1",
                      "IPAddress": "172.17.0.2",
                      "IPPrefixLen": 16,
                      "IPv6Gateway": "",
                      "GlobalIPv6Address": "",
                      "GlobalIPv6PrefixLen": 0,
                      "MacAddress": "02:42:ac:11:00:02",
                      "DriverOpts": null
                  }
              }
          }
      }
  ]
  ```

  </p>
  </details>
* В файле [docker-monolith/docker-1.log](docker-monolith/docker-1.log) описаны различия между образом и контейнером

### Больше docker-команд

#### Docker kill & stop

Подробнее про [Сигналы в Linux](https://ru.wikipedia.org/wiki/Сигналы_(UNIX))

Описание:
* kill сразу посылает SIGKILL
* stop посылает SIGTERM, и через 10 секунд(настраивается) посылает SIGKILL
* SIGTERM - сигнал остановки приложения
* SIGKILL - безусловное завершение процесса

Практика:
* `docker ps -q`
  ```log
  cc75429464ba
  03a9eea159ef
  ```
* `docker kill cc75429464ba`
  ```log
  cc75429464ba
  ```
* `docker ps -q` - остался один запущенный контейнер
  ```log
  03a9eea159ef
  ```

#### docker system df

* Отображает сколько дискового пространства занято образами, контейнерами и volume’ами
* Отображает сколько из них не используется и возможно удалить

`docker system df`
```log
TYPE                TOTAL               ACTIVE              SIZE                RECLAIMABLE
Images              4                   3                   248.8MB             122.6MB (49%)
Containers          5                   1                   15B                 9B (60%)
Local Volumes       0                   0                   0B                  0B
Build Cache         0                   0                   0B                  0B
```

#### Docker rm & rmi

* rm удаляет контейнер, можно добавить флаг -f, чтобы удалялся работающий container(будет послан sigkill)
* rmi удаляет image, если от него не зависят запущенные контейнеры

`docker rm $(docker ps -a -q)` # удалит все незапущенные контейнеры
```log
cc75429464ba
5d9a698c4c62
2cf9183503e2
89716fceca99
Error response from daemon: You cannot remove a running container 03a9eea159ef6e417a2e67802c5fa021f4a8d0b634ba377cd0074d6ff5eef511. Stop the container before attempting removal or force remove
```

`docker rmi $(docker images -q)`
```log
Untagged: vscoder/ubuntu-tmp-file:latest
Deleted: sha256:e63bb81dd3f064fb9fe854a1e66ca76e30c79fbc54eb9f09c5ab054a8d0d8cd3
Untagged: nginx:latest
Untagged: nginx@sha256:922c815aa4df050d4df476e92daed4231f466acc8ee90e0e774951b0fd7195a4
Deleted: sha256:540a289bab6cb1bf880086a9b803cf0c4cefe38cbb5cdefa199b69614525199f
Deleted: sha256:ab18af7cee69bfb22c1771e54d5e0e68b1a1bf57bb46516142da0380b1771f4a
Deleted: sha256:02f7daf1e14541cd61a3dda1a61cc0f78fee8de2984d488b8ba5bbd3cbad9b57
Deleted: sha256:b67d19e65ef653823ed62a5835399c610a40e8205c16f839c5cc567954fcf594
Untagged: hello-world:latest
Untagged: hello-world@sha256:c3b4ada4687bbaa170745b3e4dd8ac3f194ca95b2d0518b417fb47e5879d9b5f
Deleted: sha256:fce289e99eb9bca977dae136fbe2a82b6b7d4c372474c9235adc1741675f587e
Deleted: sha256:af0b15c8625bb1938f1d7b17081031f649fd14e6b233688eea3c5483994a66a3
Error response from daemon: conflict: unable to delete 5f2bf26e3524 (cannot be forced) - image is being used by running container 03a9eea159ef
```


### Docker контейнеры

#### GCE

* Создан новый проект _docker_ id `docker-257914`
* gcloud SDK установлен ранее
* Выполнен `gcloud init` с созданием новой конфигурации _otus-devops-docker_
* Выполнен `gcloud auth application-default login` чтобы получить файл с авторизационными данными для docker-machine.
  Файл сохранён по пути `/home/<myuser>/.config/gcloud/application_default_credentials.json`

#### Docker machine

Установка в Linux https://docs.docker.com/machine/install-machine/

* docker-machine - встроенный в докер инструмент для создания хостов и установки на них docker engine. Имеет поддержку облаков и систем виртуализации (Virtualbox, GCP и др.)
* Команда создания - `docker-machine create <имя>`. Имен может быть много, переключение между ними через `eval $(docker-machine env <имя>)`. Переключение на локальный докер - `eval $(docker-machine env --unset)`. Удаление - `docker-machine rm <имя>`.
* docker-machine создает хост для докер демона со указываемым образом в --googlemachine-image, в ДЗ используется ubuntu-16.04. Образы которые используются для построения докер контейнеров к этому никак не относятся.
* Все докер команды, которые запускаются в той же консоли после `eval $(docker-machine env <имя>)` работают с удаленным докер демоном в GCP.

* Создан файл [env](env) с переменными окружения, необходимыми для работы с docker-machine
* Для проекта разрешено использование API как было сказано при первой попытке создать машину
* Создана машина
  ```shell
  docker-machine create --driver google \
  --google-machine-image https://www.googleapis.com/compute/v1/projects/ubuntu-os-cloud/global/images/family/ubuntu-1604-lts \
  --google-machine-type n1-standard-1 \
  --google-zone europe-west1-b \
  docker-host
  ```
  ```log
  Running pre-create checks...
  (docker-host) Check that the project exists
  (docker-host) Check if the instance already exists
  Creating machine...
  (docker-host) Generating SSH Key
  (docker-host) Creating host...
  (docker-host) Opening firewall ports
  (docker-host) Creating instance
  (docker-host) Waiting for Instance
  (docker-host) Uploading SSH Key
  Waiting for machine to be running, this may take a few minutes...
  Detecting operating system of created instance...
  Waiting for SSH to be available...
  Detecting the provisioner...
  Provisioning with ubuntu(systemd)...
  Installing Docker...
  Copying certs to the local machine directory...
  Copying certs to the remote machine...
  Setting Docker configuration on the remote daemon...
  Checking connection to Docker...
  Docker is up and running!
  To see how to connect your Docker Client to the Docker Engine running on this virtual machine, run: docker-machine env docker-host
  ```
* docker-machine успешно создана `docker-machine ls`
  ```log
  NAME          ACTIVE   DRIVER   STATE     URL                        SWARM   DOCKER     ERRORS
  docker-host   -        google   Running   tcp://34.76.188.197:2376           v19.03.4
  ```
* Выполнено переключение на созданную машину `eval $(docker-machine env docker-host)`

#### Работа с namespaces

##### PID namespace

* По умолчанию контейнер запускается в отдельном PID namespace
  Команда `docker run --rm -ti tehbilly/htop` результатом своим показывает только запущенный процесс htop
  Команда `docker run --rm -ti ubuntu:16.04 ps auxf` возвращает похожий результат
  ```log
  USER       PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
  root         1  0.0  0.0  25976  1456 pts/0    Rs+  18:29   0:00 ps auxf
  ```
* Запуск контейнера в PID namespace хоста
  Команда `docker run --rm --pid host -ti tehbilly/htop` возвращает все процессы хост-системы
  Команда `docker run --rm --pid host -ti ubuntu:16.04 ps auxf` возвращает похожий
  <details><summary>результат</summary>
  <p>

  ```log
  USER       PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
  root         2  0.0  0.0      0     0 ?        S    15:27   0:00 [kthreadd]
  root         4  0.0  0.0      0     0 ?        I<   15:27   0:00  \_ [kworker/0:
  root         6  0.0  0.0      0     0 ?        I<   15:27   0:00  \_ [mm_percpu_
  root         7  0.0  0.0      0     0 ?        S    15:27   0:00  \_ [ksoftirqd/
  root         8  0.0  0.0      0     0 ?        I    15:27   0:00  \_ [rcu_sched]
  root         9  0.0  0.0      0     0 ?        I    15:27   0:00  \_ [rcu_bh]
  root        10  0.0  0.0      0     0 ?        S    15:27   0:00  \_ [migration/
  root        11  0.0  0.0      0     0 ?        S    15:27   0:00  \_ [watchdog/0
  root        12  0.0  0.0      0     0 ?        S    15:27   0:00  \_ [cpuhp/0]
  root        13  0.0  0.0      0     0 ?        S    15:27   0:00  \_ [kdevtmpfs]
  root        14  0.0  0.0      0     0 ?        I<   15:27   0:00  \_ [netns]
  root        15  0.0  0.0      0     0 ?        S    15:27   0:00  \_ [rcu_tasks_
  root        16  0.0  0.0      0     0 ?        S    15:27   0:00  \_ [kauditd]
  root        17  0.0  0.0      0     0 ?        S    15:27   0:00  \_ [khungtaskd
  root        18  0.0  0.0      0     0 ?        S    15:27   0:00  \_ [oom_reaper
  root        19  0.0  0.0      0     0 ?        I<   15:27   0:00  \_ [writeback]
  root        20  0.0  0.0      0     0 ?        S    15:27   0:00  \_ [kcompactd0
  root        21  0.0  0.0      0     0 ?        SN   15:27   0:00  \_ [ksmd]
  root        22  0.0  0.0      0     0 ?        SN   15:27   0:00  \_ [khugepaged
  root        23  0.0  0.0      0     0 ?        I<   15:27   0:00  \_ [crypto]
  root        24  0.0  0.0      0     0 ?        I<   15:27   0:00  \_ [kintegrity
  root        25  0.0  0.0      0     0 ?        I<   15:27   0:00  \_ [kblockd]
  root        26  0.0  0.0      0     0 ?        I<   15:27   0:00  \_ [ata_sff]
  root        27  0.0  0.0      0     0 ?        I<   15:27   0:00  \_ [md]
  root        28  0.0  0.0      0     0 ?        I<   15:27   0:00  \_ [edac-polle
  root        29  0.0  0.0      0     0 ?        I<   15:27   0:00  \_ [devfreq_wq
  root        30  0.0  0.0      0     0 ?        I<   15:27   0:00  \_ [watchdogd]
  root        34  0.0  0.0      0     0 ?        S    15:27   0:00  \_ [kswapd0]
  root        35  0.0  0.0      0     0 ?        I<   15:27   0:00  \_ [kworker/u3
  root        36  0.0  0.0      0     0 ?        S    15:27   0:00  \_ [ecryptfs-k
  root        78  0.0  0.0      0     0 ?        I<   15:27   0:00  \_ [kthrotld]
  root        79  0.0  0.0      0     0 ?        I<   15:27   0:00  \_ [acpi_therm
  root        80  0.0  0.0      0     0 ?        S    15:27   0:00  \_ [scsi_eh_0]
  root        81  0.0  0.0      0     0 ?        I<   15:27   0:00  \_ [scsi_tmf_0
  root        87  0.0  0.0      0     0 ?        I<   15:27   0:00  \_ [ipv6_addrc
  root        97  0.0  0.0      0     0 ?        I<   15:27   0:00  \_ [kstrp]
  root        99  0.0  0.0      0     0 ?        I<   15:27   0:00  \_ [kworker/0:
  root       115  0.0  0.0      0     0 ?        I<   15:27   0:00  \_ [charger_ma
  root       268  0.0  0.0      0     0 ?        I<   15:27   0:00  \_ [raid5wq]
  root       321  0.0  0.0      0     0 ?        S    15:27   0:00  \_ [jbd2/sda1-
  root       322  0.0  0.0      0     0 ?        I<   15:27   0:00  \_ [ext4-rsv-c
  root       393  0.0  0.0      0     0 ?        I<   15:27   0:00  \_ [iscsi_eh]
  root       403  0.0  0.0      0     0 ?        I<   15:27   0:00  \_ [ib-comp-wq
  root       404  0.0  0.0      0     0 ?        I<   15:27   0:00  \_ [ib_mcast]
  root       405  0.0  0.0      0     0 ?        I<   15:27   0:00  \_ [ib_nl_sa_w
  root       408  0.0  0.0      0     0 ?        I<   15:27   0:00  \_ [rdma_cm]
  root      7628  0.0  0.0      0     0 ?        I    17:41   0:00  \_ [kworker/u2
  root      7678  0.0  0.0      0     0 ?        I    17:44   0:00  \_ [kworker/0:
  root      8019  0.0  0.0      0     0 ?        I    18:10   0:00  \_ [kworker/0:
  root      8094  0.0  0.0      0     0 ?        I    18:15   0:00  \_ [kworker/u2
  root      8189  0.0  0.0      0     0 ?        I    18:23   0:00  \_ [kworker/u2
  root      8254  0.0  0.0      0     0 ?        I    18:27   0:00  \_ [kworker/u2
  root      8385  0.0  0.0      0     0 ?        I    18:27   0:00  \_ [kworker/0:
  root      8601  0.0  0.0      0     0 ?        I    18:29   0:00  \_ [kworker/0:
  root         1  0.0  0.1  37732  5844 ?        Ss   15:27   0:02 /sbin/init
  root       402  0.0  0.1  31808  4304 ?        Ss   15:27   0:00 /lib/systemd/sy
  root       423  0.0  0.0  94772  1580 ?        Ss   15:27   0:00 /sbin/lvmetad -
  root       449  0.0  0.1  43068  4264 ?        Ss   15:27   0:00 /lib/systemd/sy
  root       910  0.0  0.0  16120  2864 ?        Ss   15:27   0:00 /sbin/dhclient 
  root      1133  0.0  0.0   5220   148 ?        Ss   15:27   0:00 /sbin/iscsid
  root      1135  0.0  0.0   5720  3504 ?        S<Ls 15:27   0:01 /sbin/iscsid
  root      1150  0.0  0.0  28620  3024 ?        Ss   15:27   0:00 /lib/systemd/sy
  root      1169  0.0  0.1 272944  5796 ?        Ssl  15:27   0:00 /usr/lib/accoun
  root      1179  0.0  0.0  26068  2492 ?        Ss   15:27   0:00 /usr/sbin/cron 
  root      1207  0.0  0.0   4396  1304 ?        Ss   15:27   0:00 /usr/sbin/acpid
  107       1249  0.0  0.0  42892  3744 ?        Ss   15:27   0:00 /usr/bin/dbus-d
  daemon    1265  0.0  0.0  26044  2184 ?        Ss   15:27   0:00 /usr/sbin/atd -
  root      1297  0.0  0.0  95368  1524 ?        Ssl  15:27   0:00 /usr/bin/lxcfs 
  root      1312  0.0  0.0  81068  2212 ?        Ssl  15:27   0:00 /usr/sbin/sshgu
  root      1351  0.0  0.5 171696 19376 ?        Ssl  15:27   0:00 /usr/bin/python
  root      1357  0.0  0.1 277180  6020 ?        Ssl  15:27   0:00 /usr/lib/policy
  root      1406  0.0  0.0  13372   156 ?        Ss   15:27   0:00 /sbin/mdadm --m
  112       1550  0.0  0.1  40268  4840 ?        Ss   15:27   0:00 /usr/sbin/ntpd 
  root      1553  0.0  0.5  65388 21424 ?        Ss   15:27   0:00 /usr/bin/python
  root      1580  0.0  0.5  65452 21540 ?        Ss   15:27   0:01 /usr/bin/python
  root      1581  0.0  0.5  65368 21264 ?        Ss   15:27   0:00 /usr/bin/python
  root      1595  0.0  0.1  65512  6160 ?        Ss   15:27   0:00 /usr/sbin/sshd 
  root      1602  0.0  0.0  14656  1804 ?        Ss+  15:27   0:00 /sbin/agetty --
  root      1635  0.0  0.0  12840  1780 ?        Ss+  15:27   0:00 /sbin/agetty --
  root      4552  0.1  1.2 440504 46512 ?        Ssl  15:28   0:11 /usr/bin/contai
  root      9754  0.0  0.1 108976  6044 ?        Sl   18:32   0:00  \_ containerd-
  root      9784 20.0  0.0  34560  2904 pts/0    Rs+  18:32   0:00      \_ ps auxf
  root      9817  0.0  0.0      0     0 ?        Z    18:32   0:00      \_ [runc] 
  root      5528  0.0  2.9 502264 109968 ?       Ssl  15:28   0:06 /usr/bin/docker
  _apt      8014  0.0  0.0 256392  3204 ?        Ssl  18:10   0:00 /usr/sbin/rsysl
  ```

  </p>
  </details>

##### NET namespace

Нашёл статью по теме: https://platform9.com/blog/container-namespaces-deep-dive-container-networking/

* Запустил контейнер nginx `docker run --rm --name wwweb -d nginx`
* Подключился по ssh к _docker-machine_ `gcloud compute ssh docker-host`
* `docker ps`
  ```log
  CONTAINER ID        IMAGE               COMMAND                  CREATED             STATUS              PORTS               NAMES
  0e2ba62df689        nginx               "nginx -g 'daemon of…"   4 seconds ago       Up 3 seconds        80/tcp              wwweb
  ```
* По умолчанию, докер не добавляет сетевые неймспейсы контейнеров в `/var/run`. Чтобы это сделать, нужно выполнить последовательность команд:
  ```shell
  CONTAINER_PID="$(docker inspect -f '{{.State.Pid}}' wwweb)"
  echo $CONTAINER_PID
  sudo mkdir -p /var/run/netns
  sudo ln -sf /proc/$CONTAINER_PID/ns/net "/var/run/netns/wwweb"
  ```
* после этого можно посмотреть и получить доступ в network namespace контейнера
  * Список неймспейсов теперь пополнился
    ```shell
    # sudo ip netns list
    wwweb (id: 0)
    ```
* ip-адреса
  * просмотр ip-адресов интерфейсов в неймспейсе
    ```shell
    # sudo ip netns exec wwweb ip addr
    1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN group default qlen 1000
        link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
        inet 127.0.0.1/8 scope host lo
           valid_lft forever preferred_lft forever
    29: eth0@if30: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc noqueue state UP group default 
        link/ether 02:42:ac:11:00:02 brd ff:ff:ff:ff:ff:ff link-netnsid 0
        inet 172.17.0.2/16 brd 172.17.255.255 scope global eth0
           valid_lft forever preferred_lft forever
    ```
  * Список ip-адресов внутри контейнера wwweb (предварительно пришлось установить в контейнере пакет iproute2)
    ```shell
    # docker exec -ti wwweb ip addr
    1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN group default qlen 1000
        link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
        inet 127.0.0.1/8 scope host lo
           valid_lft forever preferred_lft forever
    29: eth0@if30: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc noqueue state UP group default 
        link/ether 02:42:ac:11:00:02 brd ff:ff:ff:ff:ff:ff link-netnsid 0
        inet 172.17.0.2/16 brd 172.17.255.255 scope global eth0
           valid_lft forever preferred_lft forever
    ```
    Как видно, совпадает со списком внутри net namespace
  * Список ip-адресов интерфейсов хоста
    ```shell
    # ip addr
    1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN group default qlen 1000
        link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
        inet 127.0.0.1/8 scope host lo
           valid_lft forever preferred_lft forever
        inet6 ::1/128 scope host 
           valid_lft forever preferred_lft forever
    2: ens4: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1460 qdisc pfifo_fast state UP group default qlen 1000
        link/ether 42:01:0a:84:00:02 brd ff:ff:ff:ff:ff:ff
        inet 10.132.0.2/32 brd 10.132.0.2 scope global ens4
           valid_lft forever preferred_lft forever
        inet6 fe80::4001:aff:fe84:2/64 scope link 
           valid_lft forever preferred_lft forever
    4: docker0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc noqueue state UP group default 
        link/ether 02:42:4c:d3:0b:bb brd ff:ff:ff:ff:ff:ff
        inet 172.17.0.1/16 brd 172.17.255.255 scope global docker0
           valid_lft forever preferred_lft forever
        inet6 fe80::42:4cff:fed3:bbb/64 scope link 
           valid_lft forever preferred_lft forever
    30: veth602f36b@if29: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc noqueue master docker0 state UP group default 
        link/ether 16:c8:f2:fc:08:ce brd ff:ff:ff:ff:ff:ff link-netnsid 0
        inet6 fe80::14c8:f2ff:fefc:8ce/64 scope link 
           valid_lft forever preferred_lft forever
    ```
    Различается со списком внутри неймспейса. При этом так же есть loopback-интерфейс с именем `lo`
* Таблицы маршрутизации
  * Внутри неймспейса
    ```shell
    # sudo ip netns exec wwweb ip route
    default via 172.17.0.1 dev eth0 
    172.17.0.0/16 dev eth0  proto kernel  scope link  src 172.17.0.2
    ```
  * Внутри контейнера
    ```shell
    # docker exec -ti wwweb ip route
    default via 172.17.0.1 dev eth0 
    172.17.0.0/16 dev eth0 proto kernel scope link src 172.17.0.2
    ```
  * Список маршрутов хоста
    ```shell
    # ip route
    default via 10.132.0.1 dev ens4 
    10.132.0.1 dev ens4  scope link 
    172.17.0.0/16 dev docker0  proto kernel  scope link  src 172.17.0.1
    ```
    Таблица маршрутизации отличается
* Открытые порты
  * Внутри неймспейса
    ```shell
    # sudo ip netns exec wwweb netstat -an
    Active Internet connections (servers and established)
    Proto Recv-Q Send-Q Local Address           Foreign Address         State      
    tcp        0      0 0.0.0.0:80              0.0.0.0:*               LISTEN     
    Active UNIX domain sockets (servers and established)
    Proto RefCnt Flags       Type       State         I-Node   Path
    unix  3      [ ]         STREAM     CONNECTED     54759    
    unix  3      [ ]         STREAM     CONNECTED     54758
    ```
  * На хост-системе
    ```shell
    # netstat -an
    Active Internet connections (servers and established)
    Proto Recv-Q Send-Q Local Address           Foreign Address         State      
    tcp        0      0 0.0.0.0:22              0.0.0.0:*               LISTEN     
    tcp        0      0 10.132.0.2:47508        169.254.169.254:80      CLOSE_WAIT 
    tcp        0      0 10.132.0.2:47514        169.254.169.254:80      ESTABLISHED
    tcp        0      0 10.132.0.2:47512        169.254.169.254:80      ESTABLISHED
    tcp        0    316 10.132.0.2:22           176.62.181.4:36416      ESTABLISHED
    tcp        0      0 10.132.0.2:47510        169.254.169.254:80      ESTABLISHED
    tcp6       0      0 :::2376                 :::*                    LISTEN     
    tcp6       0      0 :::22                   :::*                    LISTEN     
    udp        0      0 0.0.0.0:68              0.0.0.0:*                          
    udp        0      0 172.17.0.1:123          0.0.0.0:*                          
    udp        0      0 10.132.0.2:123          0.0.0.0:*                          
    udp        0      0 127.0.0.1:123           0.0.0.0:*                          
    udp        0      0 0.0.0.0:123             0.0.0.0:*                          
    udp6       0      0 fe80::14c8:f2ff:fef:123 :::*                               
    udp6       0      0 fe80::42:4cff:fed3::123 :::*                               
    udp6       0      0 fe80::4001:aff:fe84:123 :::*                               
    udp6       0      0 ::1:123                 :::*                               
    udp6       0      0 :::123                  :::*                               
    ...
    ```
* Запущен контейнер с `--network host`, не использующий отдельного net namespace
  ```shell
  # docker run --rm --name wwwhost --network host -d nginx
  168c62352a51bcda9457f11480f935275202f51bab6232dd55e2edf8ee8f5245
  # docker ps
  CONTAINER ID        IMAGE               COMMAND                  CREATED             STATUS              PORTS               NAMES
  168c62352a51        nginx               "nginx -g 'daemon of…"   3 seconds ago       Up 2 seconds                            wwwhost
  0e2ba62df689        nginx               "nginx -g 'daemon of…"   38 minutes ago      Up 38 minutes       80/tcp              wwweb
  ```
  * Список открытых портов на хост-системе
    ```shell
    # netstat -pan
    Active Internet connections (servers and established)
    Proto Recv-Q Send-Q Local Address           Foreign Address         State       PID/Program name
    tcp        0      0 0.0.0.0:80              0.0.0.0:*               LISTEN      13390/nginx: master
    tcp        0      0 0.0.0.0:22              0.0.0.0:*               LISTEN      1595/sshd       
    tcp        0      0 10.132.0.2:47556        169.254.169.254:80      CLOSE_WAIT  1581/python3    
    tcp        0      0 10.132.0.2:47562        169.254.169.254:80      ESTABLISHED 1581/python3    
    tcp        0      0 10.132.0.2:47560        169.254.169.254:80      ESTABLISHED 1553/python3    
    tcp        0      0 10.132.0.2:47558        169.254.169.254:80      ESTABLISHED 1580/python3    
    tcp        0    332 10.132.0.2:22           176.62.181.4:36416      ESTABLISHED 10854/sshd: vscoder
    tcp6       0      0 :::2376                 :::*                    LISTEN      5528/dockerd    
    tcp6       0      0 :::22                   :::*                    LISTEN      1595/sshd       
    udp        0      0 0.0.0.0:68              0.0.0.0:*                           910/dhclient    
    udp        0      0 172.17.0.1:123          0.0.0.0:*                           1550/ntpd       
    udp        0      0 10.132.0.2:123          0.0.0.0:*                           1550/ntpd       
    udp        0      0 127.0.0.1:123           0.0.0.0:*                           1550/ntpd       
    udp        0      0 0.0.0.0:123             0.0.0.0:*                           1550/ntpd       
    udp6       0      0 fe80::14c8:f2ff:fef:123 :::*                                1550/ntpd       
    udp6       0      0 fe80::42:4cff:fed3::123 :::*                                1550/ntpd       
    udp6       0      0 fe80::4001:aff:fe84:123 :::*                                1550/ntpd       
    udp6       0      0 ::1:123                 :::*                                1550/ntpd       
    udp6       0      0 :::123                  :::*                                1550/ntpd
    ...
    ```
    видно, что запущен процесс nginx на порту 80
  * Та же команда из контейнера
    ```shell
    # docker exec -ti wwwhost netstat -pan
    Active Internet connections (servers and established)
    Proto Recv-Q Send-Q Local Address           Foreign Address         State       PID/Program name    
    tcp        0      0 0.0.0.0:80              0.0.0.0:*               LISTEN      1/nginx: master pro 
    tcp        0      0 0.0.0.0:22              0.0.0.0:*               LISTEN      -                   
    tcp        0      0 10.132.0.2:47608        169.254.169.254:80      ESTABLISHED -                   
    tcp        0      0 10.132.0.2:35058        217.196.149.233:80      TIME_WAIT   -                   
    tcp        0      0 10.132.0.2:39352        151.101.120.204:80      TIME_WAIT   -                   
    tcp        0      0 10.132.0.2:39340        151.101.120.204:80      TIME_WAIT   -                   
    tcp        0      0 10.132.0.2:52780        130.89.148.77:80        TIME_WAIT   -                   
    tcp        0      0 10.132.0.2:47578        169.254.169.254:80      CLOSE_WAIT  -                   
    tcp        0      0 10.132.0.2:34988        149.20.4.15:80          TIME_WAIT   -                   
    tcp        0      0 10.132.0.2:39358        151.101.120.204:80      TIME_WAIT   -                   
    tcp        0      0 10.132.0.2:47594        169.254.169.254:80      ESTABLISHED -                   
    tcp        0      0 10.132.0.2:39338        151.101.120.204:80      TIME_WAIT   -                   
    tcp        0      0 10.132.0.2:39344        151.101.120.204:80      TIME_WAIT   -                   
    tcp        0      0 10.132.0.2:22           176.62.181.4:36416      ESTABLISHED -                   
    tcp        0      0 10.132.0.2:34996        149.20.4.15:80          TIME_WAIT   -                   
    tcp        0      0 10.132.0.2:34974        149.20.4.15:80          TIME_WAIT   -                   
    tcp        0      0 10.132.0.2:35072        217.196.149.233:80      TIME_WAIT   -                   
    tcp        0      0 10.132.0.2:47580        169.254.169.254:80      ESTABLISHED -                   
    tcp        0      0 10.132.0.2:39354        151.101.120.204:80      TIME_WAIT   -                   
    tcp6       0      0 :::2376                 :::*                    LISTEN      -                   
    tcp6       0      0 :::22                   :::*                    LISTEN      -                   
    udp        0      0 0.0.0.0:68              0.0.0.0:*                           -                   
    udp        0      0 172.17.0.1:123          0.0.0.0:*                           -                   
    udp        0      0 10.132.0.2:123          0.0.0.0:*                           -                   
    udp        0      0 127.0.0.1:123           0.0.0.0:*                           -                   
    udp        0      0 0.0.0.0:123             0.0.0.0:*                           -                   
    udp6       0      0 fe80::14c8:f2ff:fef:123 :::*                                -                   
    udp6       0      0 fe80::42:4cff:fed3::123 :::*                                -                   
    udp6       0      0 fe80::4001:aff:fe84:123 :::*                                -                   
    udp6       0      0 ::1:123                 :::*                                -                   
    udp6       0      0 :::123                  :::*                                -
    ...
    ```
    Видно все открытые порты хоста

* Попытка перехватить трафик
  * Создано 2 контейнера nginx
    ```shell
    docker run --rm --name wwweb1 -d nginx
    docker run --rm --name wwweb2 -d nginx
    ```
  * В контенере wwweb1 запущен периодический `curl` на wwweb2
    wwweb1:
    ```shell
    while sleep 1; do curl 172.17.0.2; done
    Ctrl+p Ctrl+q
    ```
  * На хост-системе выполнен захват пакетов на интерфейсе docker0
    <details><summary><b>tcpdump</b></summary>
    <p>

    ```shell
    # tcpdump -ni docker0 
    tcpdump: verbose output suppressed, use -v or -vv for full protocol decode
    listening on docker0, link-type EN10MB (Ethernet), capture size 262144 bytes
    19:55:33.578680 IP 172.17.0.3.54102 > 172.17.0.2.80: Flags [S], seq 2237485892, win 29200, options [mss 1460,sackOK,TS val 4136154315 ecr 0,nop,wscale 7], length 0
    19:55:33.578763 IP 172.17.0.2.80 > 172.17.0.3.54102: Flags [S.], seq 3234450953, ack 2237485893, win 28960, options [mss 1460,sackOK,TS val 1810839543 ecr 4136154315,nop,wscale 7], length 0
    19:55:33.578783 IP 172.17.0.3.54102 > 172.17.0.2.80: Flags [.], ack 1, win 229, options [nop,nop,TS val 4136154315 ecr 1810839543], length 0
    19:55:33.579042 IP 172.17.0.3.54102 > 172.17.0.2.80: Flags [P.], seq 1:75, ack 1, win 229, options [nop,nop,TS val 4136154315 ecr 1810839543], length 74: HTTP: GET / HTTP/1.1
    19:55:33.579059 IP 172.17.0.2.80 > 172.17.0.3.54102: Flags [.], ack 75, win 227, options [nop,nop,TS val 1810839543 ecr 4136154315], length 0
    19:55:33.579146 IP 172.17.0.2.80 > 172.17.0.3.54102: Flags [P.], seq 1:239, ack 75, win 227, options [nop,nop,TS val 1810839543 ecr 4136154315], length 238: HTTP: HTTP/1.1 200 OK
    19:55:33.579410 IP 172.17.0.2.80 > 172.17.0.3.54102: Flags [P.], seq 239:851, ack 75, win 227, options [nop,nop,TS val 1810839543 ecr 4136154315], length 612: HTTP
    19:55:33.582222 IP 172.17.0.3.54102 > 172.17.0.2.80: Flags [F.], seq 75, ack 851, win 247, options [nop,nop,TS val 4136154318 ecr 1810839543], length 0
    19:55:33.582351 IP 172.17.0.2.80 > 172.17.0.3.54102: Flags [F.], seq 851, ack 76, win 227, options [nop,nop,TS val 1810839546 ecr 4136154318], length 0
    19:55:33.582364 IP 172.17.0.3.54102 > 172.17.0.2.80: Flags [.], ack 852, win 247, options [nop,nop,TS val 4136154318 ecr 1810839546], length 0
    19:55:34.593306 IP 172.17.0.3.54104 > 172.17.0.2.80: Flags [S], seq 3311237005, win 29200, options [mss 1460,sackOK,TS val 4136155329 ecr 0,nop,wscale 7], length 0
    19:55:34.593393 IP 172.17.0.2.80 > 172.17.0.3.54104: Flags [S.], seq 1172657176, ack 3311237006, win 28960, options [mss 1460,sackOK,TS val 1810840557 ecr 4136155329,nop,wscale 7], length 0
    19:55:34.593414 IP 172.17.0.3.54104 > 172.17.0.2.80: Flags [.], ack 1, win 229, options [nop,nop,TS val 4136155329 ecr 1810840557], length 0
    19:55:34.593738 IP 172.17.0.3.54104 > 172.17.0.2.80: Flags [P.], seq 1:75, ack 1, win 229, options [nop,nop,TS val 4136155330 ecr 1810840557], length 74: HTTP: GET / HTTP/1.1
    19:55:34.593754 IP 172.17.0.2.80 > 172.17.0.3.54104: Flags [.], ack 75, win 227, options [nop,nop,TS val 1810840558 ecr 4136155330], length 0
    19:55:34.593911 IP 172.17.0.2.80 > 172.17.0.3.54104: Flags [P.], seq 1:239, ack 75, win 227, options [nop,nop,TS val 1810840558 ecr 4136155330], length 238: HTTP: HTTP/1.1 200 OK
    19:55:34.594329 IP 172.17.0.2.80 > 172.17.0.3.54104: Flags [P.], seq 239:851, ack 75, win 227, options [nop,nop,TS val 1810840558 ecr 4136155330], length 612: HTTP
    19:55:34.594439 IP 172.17.0.3.54104 > 172.17.0.2.80: Flags [.], ack 239, win 237, options [nop,nop,TS val 4136155330 ecr 1810840558], length 0
    19:55:34.594493 IP 172.17.0.3.54104 > 172.17.0.2.80: Flags [.], ack 851, win 247, options [nop,nop,TS val 4136155330 ecr 1810840558], length 0
    19:55:34.597087 IP 172.17.0.3.54104 > 172.17.0.2.80: Flags [F.], seq 75, ack 851, win 247, options [nop,nop,TS val 4136155333 ecr 1810840558], length 0
    19:55:34.597247 IP 172.17.0.2.80 > 172.17.0.3.54104: Flags [F.], seq 851, ack 76, win 227, options [nop,nop,TS val 1810840561 ecr 4136155333], length 0
    19:55:34.597261 IP 172.17.0.3.54104 > 172.17.0.2.80: Flags [.], ack 852, win 247, options [nop,nop,TS val 4136155333 ecr 1810840561], length 0
    19:55:35.608138 IP 172.17.0.3.54106 > 172.17.0.2.80: Flags [S], seq 3998885043, win 29200, options [mss 1460,sackOK,TS val 4136156344 ecr 0,nop,wscale 7], length 0
    19:55:35.608228 IP 172.17.0.2.80 > 172.17.0.3.54106: Flags [S.], seq 1711094452, ack 3998885044, win 28960, options [mss 1460,sackOK,TS val 1810841572 ecr 4136156344,nop,wscale 7], length 0
    19:55:35.608247 IP 172.17.0.3.54106 > 172.17.0.2.80: Flags [.], ack 1, win 229, options [nop,nop,TS val 4136156344 ecr 1810841572], length 0
    19:55:35.608587 IP 172.17.0.3.54106 > 172.17.0.2.80: Flags [P.], seq 1:75, ack 1, win 229, options [nop,nop,TS val 4136156344 ecr 1810841572], length 74: HTTP: GET / HTTP/1.1
    19:55:35.608602 IP 172.17.0.2.80 > 172.17.0.3.54106: Flags [.], ack 75, win 227, options [nop,nop,TS val 1810841573 ecr 4136156344], length 0
    19:55:35.608776 IP 172.17.0.2.80 > 172.17.0.3.54106: Flags [P.], seq 1:239, ack 75, win 227, options [nop,nop,TS val 1810841573 ecr 4136156344], length 238: HTTP: HTTP/1.1 200 OK
    19:55:35.609098 IP 172.17.0.2.80 > 172.17.0.3.54106: Flags [P.], seq 239:851, ack 75, win 227, options [nop,nop,TS val 1810841573 ecr 4136156344], length 612: HTTP
    19:55:35.609252 IP 172.17.0.3.54106 > 172.17.0.2.80: Flags [.], ack 239, win 237, options [nop,nop,TS val 4136156345 ecr 1810841573], length 0
    19:55:35.609309 IP 172.17.0.3.54106 > 172.17.0.2.80: Flags [.], ack 851, win 247, options [nop,nop,TS val 4136156345 ecr 1810841573], length 0
    19:55:35.611656 IP 172.17.0.3.54106 > 172.17.0.2.80: Flags [F.], seq 75, ack 851, win 247, options [nop,nop,TS val 4136156348 ecr 1810841573], length 0
    19:55:35.611775 IP 172.17.0.2.80 > 172.17.0.3.54106: Flags [F.], seq 851, ack 76, win 227, options [nop,nop,TS val 1810841576 ecr 4136156348], length 0
    19:55:35.611788 IP 172.17.0.3.54106 > 172.17.0.2.80: Flags [.], ack 852, win 247, options [nop,nop,TS val 4136156348 ecr 1810841576], length 0
    ^C
    34 packets captured
    36 packets received by filter
    2 packets dropped by kernel
    ```

    </p>
    </details>
    В результате видим преиодические запросы на 172.17.0.2.80 от 172.17.0.3, и ответы.
    Вывод: для диагностики может пригодиться такая возможность


##### USER namespace

Документация по теме https://docs.docker.com/engine/security/userns-remap/
Известные ограничения https://docs.docker.com/engine/security/userns-remap/#user-namespace-known-limitations

Одно из ограничений:
This re-mapping is transparent to the container, but introduces some configuration complexity in situations where the container needs access to resources on the Docker host, such as bind mounts into areas of the filesystem that the system user cannot write to.

Важно про RHEL/CentOS
The way the namespace remapping is handled on the host is using two files, `/etc/subuid` and `/etc/subgid`. These files are typically managed automatically when you add or remove users or groups, but on a few distributions such as RHEL and CentOS 7.3, you may need to manage these files manually.

Пример `/etc/subuid`:
```
testuser:231072:65536
```
This means that user-namespaced processes started by testuser are owned by host UID 231072 (which looks like UID 0 inside the namespace) through 296607 (231072 + 65536 - 1). These ranges should not overlap, to ensure that namespaced processes cannot access each other’s namespaces.

Про достуа к ресурсам `/var/lib/docker`:
Enabling userns-remap effectively masks existing image and container layers, as well as other Docker objects within /var/lib/docker/. This is because Docker needs to adjust the ownership of these resources and actually stores them in a subdirectory within /var/lib/docker/. It is best to enable this feature on a new Docker installation rather than an existing one.

Along the same lines, if you disable userns-remap you can’t access any of the resources created while it was enabled.


* В `/etc/docker/daemon.json` добавлен `userns-remap`
  ```json
  {
    "userns-remap": "testuser"
  }
  ```
* docker перезапущен `systemctl restart docker`
* автоматически создан пользователь `dockremap`
  ```shell
  # id dockremap
  uid=113(dockremap) gid=117(dockremap) groups=117(dockremap)
  # grep dockremap /etc/subuid
  dockremap:362144:65536
  # grep dockremap /etc/subgid
  dockremap:362144:65536
  ```
* ранее загруженные образы недоступны
  ```shell
  # docker image ls
  REPOSITORY          TAG                 IMAGE ID            CREATED             SIZE
  ```
* запущен контейнер `hello-world`
  ```shell
  # docker run hello-world
  Unable to find image 'hello-world:latest' locally
  latest: Pulling from library/hello-world
  1b930d010525: Pull complete 
  Digest: sha256:c3b4ada4687bbaa170745b3e4dd8ac3f194ca95b2d0518b417fb47e5879d9b5f
  Status: Downloaded newer image for hello-world:latest
  ...
  ```
  образ заново загружен
* проверка наличия namspace-директории
  ```shell
  # sudo ls -ld /var/lib/docker/362144.362144/
  drwx------ 14 362144 362144 4096 Nov  3 20:21 /var/lib/docker/362144.362144/
  ```
  и её содержимого
  ```shell
  # sudo ls -l /var/lib/docker/362144.362144/
  total 48
  drwx------ 2 root   root   4096 Nov  3 20:21 builder
  drwx--x--x 4 root   root   4096 Nov  3 20:21 buildkit
  drwx------ 3 362144 362144 4096 Nov  3 20:25 containers
  drwx------ 3 root   root   4096 Nov  3 20:21 image
  drwxr-x--- 3 root   root   4096 Nov  3 20:21 network
  drwx------ 6 362144 362144 4096 Nov  3 20:25 overlay2
  drwx------ 4 root   root   4096 Nov  3 20:21 plugins
  drwx------ 2 root   root   4096 Nov  3 20:21 runtimes
  drwx------ 2 root   root   4096 Nov  3 20:21 swarm
  drwx------ 2 362144 362144 4096 Nov  3 20:25 tmp
  drwx------ 2 root   root   4096 Nov  3 20:21 trust
  drwx------ 2 362144 362144 4096 Nov  3 20:21 volumes
  ```
* Отключить user ns для контенйера: `--userns=host`
  There is a side effect when using this flag: user remapping will not be enabled for that container but, because the read-only (image) layers are shared between containers, ownership of the the containers filesystem will still be remapped.
  What this means is that the whole container filesystem will belong to the user specified in the `--userns-remap` daemon config (362144 in the example above). This can lead to unexpected behavior of programs inside the container. For instance sudo (which checks that its binaries belong to user 0) or binaries with a setuid flag.


#### Dockerfile

* Создан конфиг MongoDB [docker-monolith/mongod.conf](docker-monolith/mongod.conf)
* Создан скрипт запуска приложения [docker-monolith/start.sh](docker-monolith/start.sh)
* Создан скрипт с переменной окружения `DBATABASE_URL` [docker-monolith/db_config](docker-monolith/db_config)

* Создан [docker-monolith/Dockerfile](docker-monolith/Dockerfile)
  * Основан на `ubuntu:16.04`
    ```dockerfile
    FROM ubuntu:16.04
    ```
  * Установка необходимых пакетов
    ```dockerfile
    RUN apt-get update
    RUN apt-get install -y mongodb-server ruby-full ruby-dev build-essential git
    RUN gem install bundler
    ```
  * Загрузка приложения
    ```dockerfile
    RUN git clone -b monolith https://github.com/express42/reddit.git
    ```
  * Копирование необходимых файлов в контейнер
    ```dockerfile
    COPY mongod.conf /etc/mongod.conf
    COPY db_config /reddit/db_config
    COPY start.sh /start.sh
    ```
  * Установка зависимостей приложения
    ```dockerfile
    RUN cd /reddit && bundle install
    RUN chmod 0777 /start.sh
    ```
  * Запуск приложения
    ```dockerfile
    CMD ["/start.sh"]
    ```

* В [Makefile](Makefile) добавлена цель, создающая инстанс docker-machine
* Образ собран `cd docker-monolith && docker build -t reddit:latest .` (так же можно выполнить `docker build -t reddit:latest -f docker-monolith/Dockerfile ./docker-monolith` из корня репозитория)
* Список всех образов (включая промежуточные)
  ```shell
  # docker images -a 
  REPOSITORY          TAG                 IMAGE ID            CREATED             SIZE
  reddit              latest              0d1864425483        7 minutes ago       689MB
  <none>              <none>              29597f97cbd2        7 minutes ago       689MB
  <none>              <none>              6094762c8147        7 minutes ago       689MB
  <none>              <none>              1030f7038c6a        8 minutes ago       645MB
  <none>              <none>              1218af463fd2        8 minutes ago       645MB
  <none>              <none>              8a7e652e5f9c        8 minutes ago       645MB
  <none>              <none>              f3eeecf3fe0f        8 minutes ago       645MB
  <none>              <none>              f7f5048a5c4c        8 minutes ago       645MB
  <none>              <none>              6985497bf7cd        8 minutes ago       642MB
  <none>              <none>              e08fb2f1ff85        9 minutes ago       148MB
  ubuntu              16.04               5f2bf26e3524        3 days ago          123MB
  ```

#### Запуск контейнера

* Запущен контейнер из образа reddit `docker run --name reddit -d --network=host reddit:latest`
* Проверка доступности приложения
  ```shell
  # docker-machine ls
  NAME          ACTIVE   DRIVER   STATE     URL                        SWARM   DOCKER     ERRORS
  docker-host   *        google   Running   tcp://35.233.86.180:2376           v19.03.4
  ```
* При попытке зайти на [http://35.233.86.180:9292/](http://35.233.86.180:9292/) не удалось открыть страницу
* Создано правило фаервола
  ```shell
  gcloud compute firewall-rules create reddit-app \
   --allow tcp:9292 \
   --target-tags=docker-machine \
   --description="Allow PUMA connections" \
   --direction=INGRESS
  ```
  ```log
  Creating firewall...⠶Created [https://www.googleapis.com/compute/v1/projects/docker-257914/global/firewalls/reddit-app].
  Creating firewall...done.
  NAME        NETWORK  DIRECTION  PRIORITY  ALLOW     DENY  DISABLED
  reddit-app  default  INGRESS    1000      tcp:9292        False
  ```
* Попытка открыть сайт увенчалась успехом

### Docker hub

* Выполнен вход на https://hub.docker.com/
* Выполнена авторизация docker на dockerhub `docker login`
* docker-образ загружен на докер хаб
  ```shell
  # docker tag reddit:latest vscoder/otus-reddit:1.0
  # docker push vscoder/otus-reddit:1.0

  The push refers to repository [docker.io/vscoder/otus-reddit]
  9c56f25ab809: Pushed 
  9964405a2b79: Pushed 
  f3e1d374270d: Pushed 
  87badc7881a7: Pushed 
  dcc1149e9964: Pushed 
  bbeefc7b2d69: Pushed 
  038504099637: Pushed 
  28567395a615: Pushed 
  3c326a42d554: Pushed 
  bc72fb2e7b74: Mounted from library/ubuntu 
  903669ee7207: Mounted from library/ubuntu 
  a5a5f8c62487: Mounted from library/ubuntu 
  788b17b748c2: Mounted from library/ubuntu 
  1.0: digest: sha256:54828cee832eefa1a0379e4b128f7ce92ba0278c488686d8ba4ff3bdf2fc0c9d size: 3034
  ```
* Выполнена попытка запустить образ на локальном докере
  ```shell
  docker run --name reddit -d -p 9292:9292 vscoder/otus-reddit:1.0
  ```
* Образ успешно скачался с docker hub и приложение запустилось
  ```shell
  curl 127.0.0.1:9292
  ```
* Выполнен ряд проверок
  * `docker logs reddit -f` следить за логами контейнера
  * `docker exec -it reddit bash` выполнить bash в запущенном контейнере
    * `ps aux` список процессов
    * `killall5 1` послать сигнал SIGHUP всем приложениям
  * `docker start reddit` запустить ранее созданный контейнер с именем `reddit`
  * `docker stop reddit && docker rm reddit` остановить и удалить контейнер `reddit`
  * `docker run --name reddit --rm -it vscoder/otus-reddit:1.0 bash` скачать и запустить контейнер `vscoder/otus-reddit:1.0` из docker hub, удалить после остановки, в контейнере запустить `bash` вместо инструкции `CMD`
    * `ps aux` список процессов
    * `exit` выйти (с завершением `bash`)
  * Проверка что контейнер остановлен и удалён
    ```shell
    # docker container ps -a
    CONTAINER ID        IMAGE               COMMAND             CREATED             STATUS              PORTS               NAMES
    03a9eea159ef        ubuntu:16.04        "bash"              41 hours ago        Up 21 hours                             wonderful_blackwell
    ```
* И ещё
  * `docker inspect vscoder/otus-reddit:1.0` посмотреть подробную информацию об образе
  * `docker inspect vscoder/otus-reddit:1.0 -f '{{.ContainerConfig.Cmd}}'` команда по-умолчанию при старте контейнера (директива `CMD` Dockerfile)
  * `docker run --name reddit -d -p 9292:9292 vscoder/otus-reddit:1.0` запустить контейнер
  * `docker exec -it reddit bash` запустить bash в уже запущенном контейнере
    * `mkdir /test1234` создать директорию /test1234 (внутри контейнера)
    * `touch /test1234/testfile` создать файл /test1234/testfile
    * `rmdir /opt` удалить лиректорию /opt
    * `exit` выйти из контейнера
  * `docker diff reddit` посмотреть изменения в перезаписываемом слое контейнера
    ```shell
    C /tmp
    A /tmp/mongodb-27017.sock
    C /var
    C /var/log
    A /var/log/mongod.log
    C /var/lib
    C /var/lib/mongodb
    A /var/lib/mongodb/_tmp
    A /var/lib/mongodb/journal
    A /var/lib/mongodb/journal/j._0
    A /var/lib/mongodb/local.0
    A /var/lib/mongodb/local.ns
    A /var/lib/mongodb/mongod.lock
    C /root
    A /root/.bash_history
    A /test1234
    A /test1234/testfile
    D /opt
    ```
  * `docker stop reddit && docker rm reddit` остановить и удалить контейнер
  * `docker run --name reddit --rm -it vscoder/otus-reddit:1.0 bash` снова запустить контейнер
  * `ls /` посмотреть содержимое корневой директории.
    Так как контейнер создан заново, /test1234 отсутствует, а /opt на месте


### Задание со \*: IaC с использованием docker

#### Packer

* Подготовлены необходимые цели в [Makefile](Makefile).
* Создан [шаблон packer](docker-monolith/packer/docker.json) и [скрипт-обёртка](docker-monolith/packer/scripts/ansible-playbook.sh) для подготовки базового образа
* Создан ansible-playbook [docker.yml](docker-monolith/ansible/playbooks/docker.yml) для провиженинга packer-образа.
  Использована galaxy-роль `geerlingguy.docker`
* Созданы необходимые для работы ansible файлы
  * Обновлены зависимости в [requirements.txt](requirements.txt)
  * Создана конфигурация [ansible.cfg](docker-monolith/ansible/ansible.cfg)
  * Добавлен файл с внешними зависимостями ansible [requirements.yml](docker-monolith/ansible/inventory/requirements.yml)
* Средствами packer подготовлен базовый образ `make monolith_packer_build`

#### Terraform

##### Project-wide объекты

* Добавлены необходимые цели в [Makefile](Makefile)
* С помощью terraform:
  * Создан bucket для хранения состояния terraform
  * Настроен projeckt-wide ssh ключ
    ```shell
    make monolith_terraform_apply ENV=""
    ```

##### Модули

Создан модуль [instance](docker-monolith/terraform/modules/instance/), описывающий абстрактный Goocle Compute Instance

Описание переменных:

| Переменная          | Описание                    | Значение по умолчанию | Тип    |
| ------------------- | --------------------------- | --------------------- | ------ |
| project             | Project ID                  |                       | string |
| region              | Region                      | europe-west1          | string |
| zone                | Zone                        | europe-west1-d        | string |
| instance_disk_image | Instance base disk image    |                       | string |
| vpc_network_name    | Network name                | default               | string |
| environment         | Environment name            |                       | string |
| machine_type        | Machine type                | g1-small              | string |
| tags                | Tags list                   | []                    | list   |
| instance_count      | instances count             | 1                     | int    |
| name_prefix         | Name prefix of instance     | instance              | strint |
| tcp_ports           | TCP ports list to open list | []                    | list   |


##### Stage-окружение

Создана stage-инфраструктура. Особенности:
* Количество инстансов берётся из переменной `docker_app_instance_count`
* Префикс имени инстанса `docker_app_name_prefix`
* Список тегов `docker_app_tags`
* Список tcp-портов для фаервола `docker_app_tcp_ports`

Описание прочих переменных можно посмотреть в [variables.tf](docker-monolith/terraform/stage/variables.tf)

#### Запуск контейнера средствами ansible

* Создана роль [docker-monolith/ansible/roles/reddit-monolith-docker](docker-monolith/ansible/roles/reddit-monolith-docker)
  Подробности в [docker-monolith/ansible/roles/reddit-monolith-docker/README.md](docker-monolith/ansible/roles/reddit-monolith-docker/README.md)
* Ностроено использование динамического инвентори `gcp_compute`
* Зависимости `requirements.yml` перемещены в [docker-monolith/ansible/environments/stage/requirements.yml](docker-monolith/ansible/environments/stage/requirements.yml)
* В [docker-monolith/terraform/modules/instance/main.tf](docker-monolith/terraform/modules/instance/main.tf) добавлены `labels` к `google_compute_instance`
* Добавлен плейбук [reddit-app.yml](docker-monolith/ansible/playbooks/reddit-app.yml) для деплоя контейнера
* Добавлены [Makefile](Makefile) цели
  
  | Цель                            | Описание                                             |
  | ------------------------------- | ---------------------------------------------------- |
  | monolith_ansible_inventory_list | Показать содержимое ansible-inventory ввформате json |
  | monolith_ansible_lint           | Выполнить ansible-lint для всех плейбуков            |
  | monolith_ansible_syntax         | Проверить синтаксис всех плейбуков                   |
* Добавлена [Makefile](Makefile) цель
  
  | Цель                        | Описание                           |
  | --------------------------- | ---------------------------------- |
  | monolith_ansible_reddit_app | Развернуть reddit-app в контейнере |
* Добавлены [Makefile](Makefile) цели
  
  | Цель                    | Описание                                                                      |
  | ----------------------- | ----------------------------------------------------------------------------- |
  | monolith_docker_build   | Собрать контейнер из [docker-monolith/Dockerfile](docker-monolith/Dockerfile) |
  | monolith_docker_publish | Загрузить образ `vscoder/otus-reddit:${IMAGE_VERSION}` на docker-hub          |
* В [README.md](README.md) добавлено оглавление
* В [README.md](README.md) добавлен статус тестов на travis-ci

**ВАЖНО!!!** В файл `.travis.yml` Был закоммичен token для уведомлений в slack. Для предотвращения спам-уведомлений в чат, был перегенерирован slack-токен и запиисан в `.travis.yml` в зашифрованом виде, как сказано в [инструкции](https://docs.travis-ci.com/user/notifications#configuring-slack-notifications)
```shell
travis encrypt "<account>:<token>" --add notifications.slack.rooms
```
Так же были почищены все коммиты бренча с помощью `git filter-branch`
```shell
# git filter-branch --tree-filter "sed -e's#slackchannel:slacktoken#faketoken#' -i .travis.yml" HEAD
### Got error, cuz in 1st commit .travis.yml does not exist!
Rewrite 9339a0dd5666e037f747c991df6436dfb4ae6ee5 (1/59) (0 seconds passed, remaining 0 predicted)    sed: невозможно прочитать .travis.yml: Нет такого файла или каталога
tree filter failed: sed -e's#slackchannel:slacktoken#faketoken#' -i .travis.yml
# git filter-branch --tree-filter "sed -e's#slackchannel:slacktoken#faketoken#' -i .travis.yml || true" HEAD
### It WORKS!
Rewrite 9339a0dd5666e037f747c991df6436dfb4ae6ee5 (1/59) (0 seconds passed, remaining 0 predicted)    sed: невозможно прочитать .travis.yml: Нет такого файла или каталога
Rewrite 4eb535e678dc189fb7fc8d6f0a0e967e2db2853d (59/59) (3 seconds passed, remaining 0 predicted)    
Ref 'refs/heads/docker-2' was rewritten
# git filter-branch --tree-filter "sed -e's#slackchannel:slacktoken#slackchannel:faketoken#' -i README.md || true" HEAD  
### Got error!
Cannot create a new backup.
A previous backup already exists in refs/original/
Force overwriting the backup with -f
# git filter-branch -f --tree-filter "sed -e's#slackchannel:slacktoken#slackchannel:faketoken#' -i README.md || true" HEAD
### It WORKS!
Rewrite 72dd8d0f6648a3432c086c0e803ade075c62d862 (53/59) (3 seconds passed, remaining 0 predicted)    
Ref 'refs/heads/docker-2' was rewritten
# git reflog expire --expire=now --all && git gc --prune=now --aggressive 
Подсчет объектов: 569, готово.
Delta compression using up to 12 threads.
Сжатие объектов: 100% (547/547), готово.
Запись объектов: 100% (569/569), готово.
Total 569 (delta 323), reused 3 (delta 0)
# git push origin --force --all
Подсчет объектов: 289, готово.
Delta compression using up to 12 threads.
Сжатие объектов: 100% (188/188), готово.
Запись объектов: 100% (289/289), 68.17 KiB | 22.72 MiB/s, готово.
Total 289 (delta 140), reused 223 (delta 79)
remote: Resolving deltas: 100% (140/140), done.
To github.com:Otus-DevOps-2019-08/vscoder_microservices.git
 + 4eb535e...5503b94 docker-2 -> docker-2 (forced update)
```
После этого, при попытке создать PR в master, github выдал ошибку There isn’t anything to compare. **master** and **docker-2** are entirely different commit histories.
Для исправления ошибки, в ветке **docker-2** был выполнен `git rebase master`
<details><summary>результат</summary>
<p>

```log
First, rewinding head to replay your work on top of it...
Applying: Add PR template and travis checks
Applying: Update README.md. Add slack-integration description
Applying: Provide travis-ci notifications to slack
Applying: Add .gitignore
Applying: Add Makefile
Applying: Update README.md. Describe docker installation
Applying: Update README.md. Add variables descrioption
Applying: Update README.md. Add Makefile targets description
Applying: Describe some useful docker commands
Applying: Add output of dokcer inspect commands
Applying: Update README.md. Describe results docker inspect image
Applying: Update README.md. Describe dockker inspect container output
Applying: Describe image and container differences
Applying: Update README.md. Describe docker kill
Applying: Update README.md. Describe docker system df
Applying: Update README.md. Describe docker rm and rmi
Applying: Update README.md. Describe GCE initialisation
Applying: Update README.md. Describe docker-machine
Applying: Update README.md Describe PID and NET namespaces
Applying: Update README.md. Describe tcpdump
Applying: Update README.md. Describe USER namespaces
Applying: Fix README.md syntax
Applying: Move example json output files to examples/
Applying: Add files, necessary to Dockerfile
Applying: Add Dockerfile
Applying: Update Makefile. Add target docker_machine_create
Applying: Update README.md. Describe docker image creation
Applying: Update README.md. Describe container run
Applying: Update README.md. Describe log in to docker hub
Applying: Update DEADME.md. Push image to docker hub
Applying: Update README.md. Describe some checks
Applying: Update MAkefile. Add target docker_machine_rm
Applying: Update .gitignore. Ignore all imported roles
Applying: Add packer-related Makefile targets
Applying: Add packer json template
Applying: Add ansible playbook to provision packer image
Applying: Add terraform-related Makefile targets
Applying: Add project-wide terraform infra
Applying: Add terraform module instance
Applying: Add terraform stage environment
Applying: Add role dreddit-monolith-docker
Applying: Use dynamic inventory gcp_plugin
Applying: Move requirements.yml
Applying: Add labels to terraform-created instances
Applying: Add playbook reddit-app.yml
Applying: Add ansible-related Makefile targets
Applying: Update README.md. Add security TODO
Applying: Update READEM.md. Docker bench security
Applying: Update README.md. Add useful link
Applying: Add Makefile target monolith_ansible_reddit_app
Applying: Add Makefile targets monolith_docker_build and monolith_docker_publish
Applying: Fix README.md syntax
Applying: Add TOC to README.md
Applying: Add travis-ci badger to README.md
Applying: Fix README.md syntax
Applying: Fix README.md syntax
Applying: Update Makefile target monolith_terraform_init
Applying: Regenerate and encrypt slack's travis-ci token
Applying: Update README.md. Describe git filter-branch
Applying: Add Makefile target install_requirements_dev
Applying: Add Makefile target install_requirements_virtualenv
Applying: Fix Makefile target install_requirements_virtualenv
Applying: Fix requirements.txt Install latest versions of docker-compose and ansible-lint
Applying: Add packer variables example
Applying: Add travis-ci tests
```

</p>
</details>

Затем снова `git push --force`

```log
Counting objects: 311, done.
Delta compression using up to 8 threads.
Compressing objects: 100% (147/147), done.
Writing objects: 100% (311/311), 73.70 KiB | 10.53 MiB/s, done.
Total 311 (delta 156), reused 221 (delta 141)
remote: Resolving deltas: 100% (156/156), done.
To github.com:Otus-DevOps-2019-08/vscoder_microservices.git
 + 557c2fa...a1dbeab docker-2 -> docker-2 (forced update)
```

После этого удалось создать PR

Ссылки по теме:
- https://git-scm.com/docs/git-filter-branch
- https://habr.com/ru/post/76084/
- https://pro-prof.com/forums/topic/git-%D1%83%D0%B4%D0%B0%D0%BB%D0%B5%D0%BD%D0%B8%D0%B5-%D1%84%D0%B0%D0%B9%D0%BB%D0%BE%D0%B2-%D0%B8%D0%B7-%D0%B2%D1%81%D0%B5%D1%85-%D0%BA%D0%BE%D0%BC%D0%BC%D0%B8%D1%82%D0%BE%D0%B2


### Вне ДЗ: безопасность

https://habr.com/ru/company/flant/blog/474012/

#### TODO:

[Docker Security Benchmark](https://github.com/docker/docker-bench-security)
- [ ] !Автоматизированть выполнение Docker Security Benchmark в рамках отдельной роли
- [ ] ОС хоста
- [ ] ?Правила аудита
- [ ] Режим FIPS
- [ ] [Docker Secrets](https://docs.docker.com/engine/swarm/secrets/)
- [ ] !Файл конфигурации Docker'а (логирование на удалённый сервер) фича в рамках отдельной роли
- [ ] Безопасность транспортного уровня (TLS при доступе к API снаружи)
- [ ] [Плагины авторизации](https://docs.docker.com/engine/extend/plugins_authorization/)
- [ ] !Параметры демона -- проверить наличие при запуске
  - [ ] `--live-restore`
  - [ ] `--userland-proxy=false`
  - [ ] `--no-new-privileges`
  - [ ] `--seccomp-profile /path/to/profile`
- [ ] [Seccomp](https://docs.docker.com/engine/security/seccomp/)

Конфигурация контейнеров и файлов сборки
- [ ] !Создание пользователя
- [ ] Удаленный доступ (запретить доступ снаружи или защитить сервтификатами)
- [ ] !Изолируйте пространство имен пользователя
- [ ] !Healthcheck'и
- [ ] ?SELinux (AppArmor)
- [ ] !Сетевые интерфейсы
- [ ] ?Кэшированные версии образов
- [ ] !Сетевой мост
- [ ] !Предупреждение о сокете Docker'а

- [ресурсе Play with Docker](https://training.play-with-docker.com/ops-stage2/) — см. секцию «Security».
- Нашёл роль на ansible-galaxy [haxorof.docker_ce](https://galaxy.ansible.com/haxorof/docker_ce). Рассмотреть!
- Ещё статья про [запуск контейнера под текущим пользователем](https://medium.com/redbubble/running-a-docker-container-as-a-non-root-user-7d2e00f8ee15)

#### Docker Security Benchmark

Первый прогон на созданном хосте:
```shell
docker run -it --net host --pid host --userns host --cap-add audit_control \
    -e DOCKER_CONTENT_TRUST=$DOCKER_CONTENT_TRUST \
    -v /etc:/etc:ro \
    -v /usr/bin/docker-containerd:/usr/bin/docker-containerd:ro \
    -v /usr/bin/docker-runc:/usr/bin/docker-runc:ro \
    -v /usr/lib/systemd:/usr/lib/systemd:ro \
    -v /var/lib:/var/lib:ro \
    -v /var/run/docker.sock:/var/run/docker.sock:ro \
    --label docker_bench_security \
    docker/docker-bench-security
```
<details><summary>CLICK ME</summary>
<p>

```log
$ sudo docker run -it --net host --pid host --userns host --cap-add audit_control \
>     -e DOCKER_CONTENT_TRUST=$DOCKER_CONTENT_TRUST \
>     -v /etc:/etc:ro \
>     -v /usr/bin/docker-containerd:/usr/bin/docker-containerd:ro \
>     -v /usr/bin/docker-runc:/usr/bin/docker-runc:ro \
>     -v /usr/lib/systemd:/usr/lib/systemd:ro \
>     -v /var/lib:/var/lib:ro \
>     -v /var/run/docker.sock:/var/run/docker.sock:ro \
>     --label docker_bench_security \
>     docker/docker-bench-security
Unable to find image 'docker/docker-bench-security:latest' locally
latest: Pulling from docker/docker-bench-security
cd784148e348: Pull complete 
48fe0d48816d: Pull complete 
164e5e0f48c5: Pull complete 
378ed37ea5ff: Pull complete 
Digest: sha256:ddbdf4f86af4405da4a8a7b7cc62bb63bfeb75e85bf22d2ece70c204d7cfabb8
Status: Downloaded newer image for docker/docker-bench-security:latest
# ------------------------------------------------------------------------------
# Docker Bench for Security v1.3.4
#
# Docker, Inc. (c) 2015-
#
# Checks for dozens of common best-practices around deploying Docker containers in production.
# Inspired by the CIS Docker Community Edition Benchmark v1.1.0.
# ------------------------------------------------------------------------------

Initializing Sat Nov  9 06:52:32 UTC 2019


[INFO] 1 - Host Configuration
[WARN] 1.1  - Ensure a separate partition for containers has been created
[NOTE] 1.2  - Ensure the container host has been Hardened
[INFO] 1.3  - Ensure Docker is up to date
[INFO]      * Using 19.03.4, verify is it up to date as deemed necessary
[INFO]      * Your operating system vendor may provide support and security maintenance for Docker
[INFO] 1.4  - Ensure only trusted users are allowed to control Docker daemon
[INFO]      * docker:x:999
[WARN] 1.5  - Ensure auditing is configured for the Docker daemon
[WARN] 1.6  - Ensure auditing is configured for Docker files and directories - /var/lib/docker
[WARN] 1.7  - Ensure auditing is configured for Docker files and directories - /etc/docker
[INFO] 1.8  - Ensure auditing is configured for Docker files and directories - docker.service
[INFO]      * File not found
[INFO] 1.9  - Ensure auditing is configured for Docker files and directories - docker.socket
[INFO]      * File not found
[WARN] 1.10  - Ensure auditing is configured for Docker files and directories - /etc/default/docker
[INFO] 1.11  - Ensure auditing is configured for Docker files and directories - /etc/docker/daemon.json
[INFO]      * File not found
[INFO] 1.12  - Ensure auditing is configured for Docker files and directories - /usr/bin/docker-containerd
[INFO]      * File not found
[INFO] 1.13  - Ensure auditing is configured for Docker files and directories - /usr/bin/docker-runc
[INFO]      * File not found


[INFO] 2 - Docker daemon configuration
[WARN] 2.1  - Ensure network traffic is restricted between containers on the default bridge
[PASS] 2.2  - Ensure the logging level is set to 'info'
[PASS] 2.3  - Ensure Docker is allowed to make changes to iptables
[PASS] 2.4  - Ensure insecure registries are not used
[PASS] 2.5  - Ensure aufs storage driver is not used
[INFO] 2.6  - Ensure TLS authentication for Docker daemon is configured
[INFO]      * Docker daemon not listening on TCP
[INFO] 2.7  - Ensure the default ulimit is configured appropriately
[INFO]      * Default ulimit doesn't appear to be set
[WARN] 2.8  - Enable user namespace support
[PASS] 2.9  - Ensure the default cgroup usage has been confirmed
[PASS] 2.10  - Ensure base device size is not changed until needed
[WARN] 2.11  - Ensure that authorization for Docker client commands is enabled
[WARN] 2.12  - Ensure centralized and remote logging is configured
[INFO] 2.13  - Ensure operations on legacy registry (v1) are Disabled (Deprecated)
[WARN] 2.14  - Ensure live restore is Enabled
[WARN] 2.15  - Ensure Userland Proxy is Disabled
[PASS] 2.16  - Ensure daemon-wide custom seccomp profile is applied, if needed
[PASS] 2.17  - Ensure experimental features are avoided in production
[WARN] 2.18  - Ensure containers are restricted from acquiring new privileges


[INFO] 3 - Docker daemon configuration files
[INFO] 3.1  - Ensure that docker.service file ownership is set to root:root
[INFO]      * File not found
[INFO] 3.2  - Ensure that docker.service file permissions are set to 644 or more restrictive
[INFO]      * File not found
[INFO] 3.3  - Ensure that docker.socket file ownership is set to root:root
[INFO]      * File not found
[INFO] 3.4  - Ensure that docker.socket file permissions are set to 644 or more restrictive
[INFO]      * File not found
[PASS] 3.5  - Ensure that /etc/docker directory ownership is set to root:root
[PASS] 3.6  - Ensure that /etc/docker directory permissions are set to 755 or more restrictive
[INFO] 3.7  - Ensure that registry certificate file ownership is set to root:root
[INFO]      * Directory not found
[INFO] 3.8  - Ensure that registry certificate file permissions are set to 444 or more restrictive
[INFO]      * Directory not found
[INFO] 3.9  - Ensure that TLS CA certificate file ownership is set to root:root
[INFO]      * No TLS CA certificate found
[INFO] 3.10  - Ensure that TLS CA certificate file permissions are set to 444 or more restrictive
[INFO]      * No TLS CA certificate found
[INFO] 3.11  - Ensure that Docker server certificate file ownership is set to root:root
[INFO]      * No TLS Server certificate found
[INFO] 3.12  - Ensure that Docker server certificate file permissions are set to 444 or more restrictive
[INFO]      * No TLS Server certificate found
[INFO] 3.13  - Ensure that Docker server certificate key file ownership is set to root:root
[INFO]      * No TLS Key found
[INFO] 3.14  - Ensure that Docker server certificate key file permissions are set to 400
[INFO]      * No TLS Key found
[PASS] 3.15  - Ensure that Docker socket file ownership is set to root:docker
[PASS] 3.16  - Ensure that Docker socket file permissions are set to 660 or more restrictive
[INFO] 3.17  - Ensure that daemon.json file ownership is set to root:root
[INFO]      * File not found
[INFO] 3.18  - Ensure that daemon.json file permissions are set to 644 or more restrictive
[INFO]      * File not found
[PASS] 3.19  - Ensure that /etc/default/docker file ownership is set to root:root
[PASS] 3.20  - Ensure that /etc/default/docker file permissions are set to 644 or more restrictive


[INFO] 4 - Container Images and Build File
[INFO] 4.1  - Ensure a user for the container has been created
[INFO]      * No containers running
[NOTE] 4.2  - Ensure that containers use trusted base images
[NOTE] 4.3  - Ensure unnecessary packages are not installed in the container
[NOTE] 4.4  - Ensure images are scanned and rebuilt to include security patches
[WARN] 4.5  - Ensure Content trust for Docker is Enabled
[PASS] 4.6  - Ensure HEALTHCHECK instructions have been added to the container image
[PASS] 4.7  - Ensure update instructions are not use alone in the Dockerfile
[NOTE] 4.8  - Ensure setuid and setgid permissions are removed in the images
[INFO] 4.9  - Ensure COPY is used instead of ADD in Dockerfile
[INFO]      * ADD in image history: [docker/docker-bench-security:latest]
[NOTE] 4.10  - Ensure secrets are not stored in Dockerfiles
[NOTE] 4.11  - Ensure verified packages are only Installed


[INFO] 5 - Container Runtime
[INFO]      * No containers running, skipping Section 5


[INFO] 6 - Docker Security Operations
[INFO] 6.1  - Avoid image sprawl
[INFO]      * There are currently: 1 images
[INFO] 6.2  - Avoid container sprawl
[INFO]      * There are currently a total of 1 containers, with 1 of them currently running


[INFO] 7 - Docker Swarm Configuration
[PASS] 7.1  - Ensure swarm mode is not Enabled, if not needed
[PASS] 7.2  - Ensure the minimum number of manager nodes have been created in a swarm (Swarm mode not enabled)
[PASS] 7.3  - Ensure swarm services are binded to a specific host interface (Swarm mode not enabled)
[PASS] 7.4  - Ensure data exchanged between containers are encrypted on different nodes on the overlay network
[PASS] 7.5  - Ensure Docker's secret management commands are used for managing secrets in a Swarm cluster (Swarm mode not enabled)
[PASS] 7.6  - Ensure swarm manager is run in auto-lock mode (Swarm mode not enabled)
[PASS] 7.7  - Ensure swarm manager auto-lock key is rotated periodically (Swarm mode not enabled)
[PASS] 7.8  - Ensure node certificates are rotated as appropriate (Swarm mode not enabled)
[PASS] 7.9  - Ensure CA certificates are rotated as appropriate (Swarm mode not enabled)
[PASS] 7.10  - Ensure management plane traffic has been separated from data plane traffic (Swarm mode not enabled)

[INFO] Checks: 74
[INFO] Score: 12
appuser@reddit-docker-stage-001:~$
```

</p>
</details>

## HomeWork 13: Docker-образы и Микросервисы

### Подготовка

- Создан Makefile target `install_hadolint`

#### Dockerfile best practices (collapsed)

<details><summary>Dockerfile best practices</summary>
<p>

https://docs.docker.com/develop/develop-images/dockerfile_best-practices/

##### FROM

https://docs.docker.com/develop/develop-images/#from

We recommend the Alpine image as it is tightly controlled and small in size (currently under 5 MB), while still being a full Linux distribution.

##### LABEL

https://docs.docker.com/develop/develop-images/#label

For each label, add a line beginning with LABEL and with one or more key-value pairs.

##### RUN

https://docs.docker.com/develop/develop-images/#run

Always combine RUN apt-get update with apt-get install in the same RUN statement. For example:
```Dockerfile
RUN apt-get update && apt-get install -y \
    package-bar \
    package-baz \
    package-foo
```

You can also achieve cache-busting by specifying a package version. This is known as version pinning, for example:
```Dockerfile
RUN apt-get update && apt-get install -y \
    package-bar \
    package-baz \
    package-foo=1.3.*
```

If you want the command to fail due to an error at any stage in the pipe, prepend set -o pipefail && to ensure that an unexpected error prevents the build from inadvertently succeeding. For example:
```Dockerfile
RUN set -o pipefail && wget -O - https://some.site | wc -l > /number
```

##### CMD

https://docs.docker.com/develop/develop-images/#cmd

`CMD` should almost always be used in the form of `CMD ["executable", "param1", "param2"…]`. Thus, if the image is for a service, such as Apache and Rails, you would run something like `CMD ["apache2","-DFOREGROUND"]`.

`CMD` should rarely be used in the manner of `CMD ["param", "param"]` in conjunction with `ENTRYPOINT`.

##### EXPOSE

https://docs.docker.com/develop/develop-images/#expose

you should use the common, traditional port for your application
For example, an image containing the Apache web server would use `EXPOSE 80`, while an image containing MongoDB would use `EXPOSE 27017` and so on.
For container linking, Docker provides environment variables for the path from the recipient container back to the source (ie, `MYSQL_PORT_3306_TCP`).


##### ENV

https://docs.docker.com/develop/develop-images/#env

For example, `ENV PATH /usr/local/nginx/bin:$PATH` ensures that `CMD ["nginx"]` just works.

The `ENV` instruction is also useful for providing required environment variables specific to services you wish to containerize, such as Postgres’s `PGDATA`.

Lastly, `ENV` can also be used to set commonly used version numbers so that version bumps are easier to maintain. Similar to having constant variables in a program (as opposed to hard-coding values), this approach lets you change a single ENV instruction to auto-magically bump the version of the software in your container.

Each `ENV` line creates a new intermediate layer, just like `RUN` commands. This means that even if you unset the environment variable in a future layer, it still persists in this layer and its value can be dumped. To prevent this, and really unset the environment variable, use a RUN command with shell commands.

##### ADD or COPY

https://docs.docker.com/develop/develop-images/#add-or-copy

Although `ADD` and `COPY` are functionally similar, generally speaking, `COPY` is preferred. That’s because it’s more transparent than ADD. COPY only supports the basic copying of local files into the container, while ADD has some features (like local-only tar extraction and remote URL support) that are not immediately obvious. 
Consequently, the best use for ADD is local tar file auto-extraction into the image, as in `ADD rootfs.tar.xz /`.

If you have multiple `Dockerfile` steps that use different files from your context, `COPY` them individually, rather than all at once.
For example:
```Dockerfile
COPY requirements.txt /tmp/
RUN pip install --requirement /tmp/requirements.txt
COPY . /tmp/
```
Results in fewer cache invalidations for the `RUN` step, than if you put the `COPY . /tmp/` before it.

Because image size matters, using ADD to fetch packages from remote URLs is strongly discouraged; you should use curl or wget instead. That way you can delete the files you no longer need after they’ve been extracted and you don’t have to add another layer in your image.
do something like:
```Dockerfile
RUN mkdir -p /usr/src/things \
    && curl -SL http://example.com/big.tar.xz \
    | tar -xJC /usr/src/things \
    && make -C /usr/src/things all
```

##### ENTRYPOINT

https://docs.docker.com/develop/develop-images/#entrypoint

The best use for ENTRYPOINT is to set the image’s main command, allowing that image to be run as though it was that command (and then use CMD as the default flags).
```Dockerfile
ENTRYPOINT ["s3cmd"]
CMD ["--help"]
```

Postgres official image `ENTRYPOINT`
```shell
#!/bin/bash
set -e

if [ "$1" = 'postgres' ]; then
    chown -R postgres "$PGDATA"

    if [ -z "$(ls -A "$PGDATA")" ]; then
        gosu postgres initdb
    fi

    exec gosu postgres "$@"
fi

exec "$@"
```

Configure app as PID 1
This script uses [the `exec` Bash command](http://wiki.bash-hackers.org/commands/builtin/exec) so that the final running application becomes the container’s `PID 1`. This allows the application to receive any Unix signals sent to the container. For more, see the [`ENTRYPOINT` reference](https://docs.docker.com/engine/reference/builder/#entrypoint).

##### VOLUME

https://docs.docker.com/develop/develop-images/#volume

The VOLUME instruction should be used to expose any database storage area, configuration storage, or files/folders created by your docker container. You are strongly encouraged to use VOLUME for any mutable and/or user-serviceable parts of your image.

##### USER

https://docs.docker.com/develop/develop-images/dockerfile_best-practices/#user

If a service can run without privileges, use `USER` to change to a non-root user. Start by creating the user and group in the Dockerfile with something like 
```Dockerfile
RUN groupadd -r postgres && useradd --no-log-init -r -g postgres postgres
```

WARNING: [unresolved bug](https://github.com/golang/go/issues/13548)

Avoid installing or using `sudo` as it has unpredictable TTY and signal-forwarding behavior that can cause problems. If you absolutely need functionality similar to `sudo`, such as initializing the daemon as root but running it as non-root, consider using `“gosu”`.

##### WORKDIR

https://docs.docker.com/develop/develop-images/#workdir

For clarity and reliability, you should always use absolute paths for your `WORKDIR`. Also, you should use `WORKDIR` instead of proliferating instructions like `RUN cd … && do-something`, which are hard to read, troubleshoot, and maintain.

##### ONBUILD

https://docs.docker.com/develop/develop-images/#onbuild

An `ONBUILD` command executes after the current `Dockerfile` build completes. `ONBUILD` executes in any child image derived FROM the current image. Think of the `ONBUILD` command as an instruction the parent `Dockerfile` gives to the child `Dockerfile`.
`ONBUILD` is useful for images that are going to be built `FROM` a given image.
[Ruby’s ONBUILD variants](https://github.com/docker-library/ruby/blob/c43fef8a60cea31eb9e7d960a076d633cb62ba8d/2.4/jessie/onbuild/Dockerfile)
Images built with `ONBUILD` should get a separate tag, for example: `ruby:1.9-onbuild` or `ruby:2.0-onbuild`.

</p>
</details>

### Запуск

#### Новая структура приложения

- Скачан и распакован архив [microservices.zip](https://github.com/express42/reddit/archive/microservices.zip)
  ```shell
  wget https://github.com/express42/reddit/archive/microservices.zip && \
    unzip microservices.zip && \
    rm microservices.zip
  ```
- Каталог `reddit-microservices` переименован в `src`
  ```shell
  mv reddit-microservices src
  ```
- Создан файл [src/post-py/Dockerfile](src/post-py/Dockerfile)
- В файле [src/post-py/Dockerfile](src/post-py/Dockerfile) рабочий каталог параметризирован
- Создан файл [src/comment/Dockerfile](src/comment/Dockerfile)
- Создан файл [src/ui/Dockerfile](src/ui/Dockerfile)
- Скачан последний образ MongoDB
  ```shell
  docker pull mongo:latest
  ```
- Подготовлен [Makefile](src/Makefile) с набороми часто используемых действий

#### Сборка образов

- Сборка образа `post-py` завершилась ошибкой
  ```log
  unable to execute 'gcc': No such file or directory
  error: command 'gcc' failed with exit status 1
  ```
- Собран образ comment `make build_comment`
- Собран образ ui `make build_ui`

- Проблема с `post-py` решена следующим образом
  ```Dockerfile
  RUN apk add --no-cache --virtual .build-deps build-base \
    && pip install -r $APP_HOME/requirements.txt \
    && apk del .build-deps
  ```
  Перед установкой `requirements.txt`, ставится пакет `build-base`. После установки `requirements.txt`, все необходимые для сборки пакеты удаляются. Это всё происходит в рамках одной инструкции `RUN`, чтобы не создавать лишний слой с установленными зависимостями.

Сборка `ui` началась не с первого шага, потому что слой с установленным пакетом `build-essential` уже был создан на этапе сборки `comment`, а сейчас был взят из build-cache вместо ссборки с нуля.

#### Запуск приложения

Работа ведётся в директории [src/](src/)

- Собраны все образы `make build_all`
- В [Makefile](src/Makefile) добавлена цель `run_all`, которая
  - Создаёт сеть `${REDDIT_NETWORK_NAME}`
  - Запускает контейнеры в сети `${REDDIT_NETWORK_NAME}` из образов
    - `mongodb:latest`
    - `${DOCKERHUB_LOGIN}/post:${POST_VERSION}`
    - `${DOCKERHUB_LOGIN}/comment:${COMMENT_VERSION}`
    - `${DOCKERHUB_LOGIN}/ui:${UI_VERSION}`
- В [Makefile](src/Makefile) добавлена цель `kill_all`, которая
  - Убивает все запущенные контейнеры (**ВНИМАНИЕ**: вообще все! О чём выдаётся предупреждение с возможностью отмены.)
  - Удаляет сеть `${REDDIT_NETWORK_NAME}`
- Создана сеть и запущены контейнеры `make run_all`
- Зайти на http://127.0.0.1:9292 удалось
- Написать пост удалось
- Всё убито `make kill_all`

### Задание со \*: Переопределение сетевых алиасов

#### Теория

https://docs.docker.com/engine/reference/commandline/run/#set-environment-variables--e---env---env-file

Use the `-e`, `--env`, and `--env-file` flags to set simple (non-array) environment variables in the container you’re running, or overwrite variables that are defined in the Dockerfile of the image you’re running.

```shell
$ docker run --env VAR1=value1 --env VAR2=value2 ubuntu env | grep VAR
VAR1=value1
VAR2=value2
```

```shell
export VAR1=value1
export VAR2=value2

$ docker run --env VAR1 --env VAR2 ubuntu env | grep VAR
VAR1=value1
VAR2=value2
```

```shell
$ cat env.list
# This is a comment
VAR1=value1
VAR2=value2
USER

$ docker run --env-file env.list ubuntu env | grep VAR
VAR1=value1
VAR2=value2
USER=denis
```

#### Реализация

Создание сети и запуск контейнеров с другими алиасами и переопределением переменных
```shell
docker network create reddit
docker run -d --network=reddit \
  --network-alias=posts_db1 \
  --network-alias=comment_db1 \
  mongo:latest
docker run -d --network=reddit \
  --network-alias=post1 \
  --env POST_DATABASE_HOST=posts_db1 \
  vscoder/post:1.0
docker run -d --network=reddit \
  --network-alias=comment1 \
  --env COMMENT_DATABASE_HOST=comment_db1 \
  vscoder/comment:1.0
docker run -d --network=reddit \
  --env POST_SERVICE_HOST=post1 \
  --env COMMENT_SERVICE_HOST=comment1 \
  -p 9292:9292 \
  vscoder/ui:1.0
```

Сеть создана, контейнеры запущены. Работоспособность приложения проверена.

### Образы

Список образов `docker images`

```shell
REPOSITORY            TAG                 IMAGE ID            CREATED             SIZE
vscoder/ui            1.0                 aacf973cbc5d        About an hour ago   772MB
vscoder/comment       1.0                 188232c05d67        About an hour ago   770MB
vscoder/post          1.0                 f22acc632909        About an hour ago   109MB
reddit                latest              fce89963a387        5 days ago          691MB
vscoder/otus-reddit   1.0                 fce89963a387        5 days ago          691MB
mongo                 latest              965553e202a4        2 weeks ago         363MB
ubuntu                16.04               5f2bf26e3524        2 weeks ago         123MB
ruby                  2.2                 6c8e6f9667b2        18 months ago       715MB
python                3.6.0-alpine        cb178ebbf0f2        2 years ago         88.6MB
```

- Уменьшен убраз `ui`, засчёт пересборки его на основе `ubuntu:16.04`. Новый [Dockerfile](src/ui/Dockerfile)
- В [Makefile](src/Makefile) изменена версия ui на 2.0
- Образ пересобран `make build_ui`

Список образов `docker images`

```shell
REPOSITORY            TAG                 IMAGE ID            CREATED             SIZE
vscoder/ui            2.0                 ebb79fd1384f        2 minutes ago       458MB
vscoder/ui            1.0                 aacf973cbc5d        About an hour ago   772MB
vscoder/comment       1.0                 188232c05d67        About an hour ago   770MB
vscoder/post          1.0                 f22acc632909        About an hour ago   109MB
reddit                latest              fce89963a387        5 days ago          691MB
vscoder/otus-reddit   1.0                 fce89963a387        5 days ago          691MB
mongo                 latest              965553e202a4        2 weeks ago         363MB
ubuntu                16.04               5f2bf26e3524        2 weeks ago         123MB
ruby                  2.2                 6c8e6f9667b2        18 months ago       715MB
python                3.6.0-alpine        cb178ebbf0f2        2 years ago         88.6MB
```

### Задание со \*: Уменьшаем размер образа

#### Анализ

Ссылки:

- [Официальная wiki](https://wiki.alpinelinux.org/wiki)
- [Статья на habr](https://habr.com/ru/company/digdes/blog/415279/)
- [Статья на habr](https://habr.com/ru/company/digdes/blog/440658/)
- [Получаем максимум от Docker. Микроконтейнеры и Alpine Linux](https://youtu.be/ClX9jbiVLaY)
- Утилита по исследованию образов [dive](https://github.com/wagoodman/dive)
  Пример использования:
  - Для интерактивного анализа
    ```shell
    docker run --rm -it \
      -v /var/run/docker.sock:/var/run/docker.sock \
      wagoodman/dive:latest <ui image id>
    ```
  - Для интеграции с CI
    ```shell
    docker run --rm -it \
      -v /var/run/docker.sock:/var/run/docker.sock \
      -e CI=true \
      wagoodman/dive:latest <ui image id>
    ```

Варианты решения:

- Образы на основе alpine-linux. 
  - '+' Очень эффективно (результаты далее) за счёт минималистичного базового образа.
  - '-' Могут возникнуть сложности при отсутствии каких-либо пакетов в репозитории.
- Образы на основе [scratch](https://hub.docker.com/_/scratch), то есть на основе пустого образа
  - '+' На несколько мегабайт эффективнее чем alpine-linux.
  - '-' Очень сильно усложняет обслуживание образов.
- Использование промежуточных образов, Многоступенчатая сборка.
  - '+' Позволяет все зависимости, необходимые для сборки исполняемого файла, иметь в отдельном образе. В основном используется для компиляции исполняемых файлов с последующим копированием их в итоговый образ.
  - '-' Усложняет обслуживание. Сложно применимо в ряде случаев (например для интерпретируемых языков).
  - Для используемых образов (python и ruby) можно в промежуточном образе установить зависимости, необходимые для компиляции, установить зависимости приложения (`pip` или `bundle`), получить с помощью `dive` добавленные файлы и скопировать их в итоговый образ. Но это **чрезмерно** усложнит обслуживание образа, что делает возможную выгоду несущественной.

Выводы:

Наиболее эффективным решением быдет использование для приложений образов на основе alpine-linux

#### Сборка на основе alpine linux

##### ui

- Образ пересобран на базе `ruby:2.2-alpine`. Установка зависимостей потребовала установки `build-base`. Установка `build-base`, установка зависимостей и удаление `build-base` выполняется одниой инструкцией `RUN`, чтобы избежать создания лишних образов.
```Dockerfile
FROM ruby:2.2-alpine

ENV POST_SERVICE_HOST post
ENV POST_SERVICE_PORT 5000
ENV COMMENT_SERVICE_HOST comment
ENV COMMENT_SERVICE_PORT 9292
ENV APP_HOME /app

RUN mkdir $APP_HOME
WORKDIR $APP_HOME
COPY Gemfile* $APP_HOME/

RUN apk add --no-cache --virtual .build-deps build-base \
    && bundle install \
    && apk del .build-deps

COPY . $APP_HOME

CMD ["puma"]
```
- Занимаемый объём уменьшился `docker images | grep vscoder/ui`
```log
vscoder/ui            3.0                 25f038173527        13 minutes ago      158MB
vscoder/ui            2.0                 ebb79fd1384f        4 hours ago         458MB
vscoder/ui            1.0                 aacf973cbc5d        6 hours ago         772MB
```
- Результат работы `dive`
  ```shell
  make dive_ui
  docker run --rm -it \
          -v /var/run/docker.sock:/var/run/docker.sock \
          -e CI=true \
          wagoodman/dive:latest $(docker images -q vscoder/ui:3.0)
  ```

<details><summary>результат</summary>
<p>

```log
Image Source: docker://7d3825b1f360
Fetching image... (this can take a while for large images)
Analyzing image...
  efficiency: 99.4482 %

  wastedBytes: 892115 bytes (892 kB)

  userWastedPercent: 0.5820 %

Inefficient Files:
Count  Wasted Space  File Path
    3        324 kB  /lib/apk/db/installed
    2        113 kB  /bin/ps
    2         83 kB  /usr/bin/top
    2         70 kB  /usr/bin/bunzip2
    2         70 kB  /usr/bin/bzip2
    2         70 kB  /usr/bin/bzcat
    3         32 kB  /lib/apk/db/scripts.tar
    2         26 kB  /usr/bin/pmap
    2         22 kB  /usr/bin/pgrep
    2         22 kB  /usr/bin/pkill
    2         18 kB  /sbin/sysctl
    2         14 kB  /usr/bin/free
    2         10 kB  /usr/bin/uptime
    2        9.9 kB  /usr/bin/pwdx
    2        3.7 kB  /app/Gemfile.lock
    3         500 B  /lib/apk/db/triggers
    2         474 B  /app/Gemfile
    3         181 B  /etc/apk/world
    2           0 B  /usr/bin/sort
    2           0 B  /usr/bin/test
    2           0 B  /usr/bin/fold
    2           0 B  /usr/bin/tail
    2           0 B  /usr/bin/tac
    2           0 B  /usr/bin/sum
    3           0 B  /usr/bin/strings
    2           0 B  /usr/bin/split
    2           0 B  /usr/bin/timeout
    2           0 B  /usr/bin/shuf
    2           0 B  /usr/bin/sha512sum
    2           0 B  /usr/bin/sha256sum
    2           0 B  /usr/bin/sha1sum
    2           0 B  /usr/bin/seq
    2           0 B  /usr/bin/realpath
    2           0 B  /usr/bin/readlink
    2           0 B  /usr/bin/tr
    2           0 B  /usr/bin/printf
    2           0 B  /usr/bin/truncate
    2           0 B  /usr/bin/tty
    2           0 B  /usr/bin/unexpand
    2           0 B  /usr/bin/od
    2           0 B  /usr/bin/nohup
    2           0 B  /usr/bin/mkfifo
    2           0 B  /usr/bin/md5sum
    2           0 B  /usr/bin/lzma
    2           0 B  /usr/bin/lzcat
    2           0 B  /usr/bin/install
    2           0 B  /usr/bin/id
    2           0 B  /usr/bin/hostid
    2           0 B  /usr/bin/head
    2           0 B  /usr/bin/groups
    2           0 B  /usr/bin/uniq
    2           0 B  /usr/bin/tee
    2           0 B  /usr/bin/expr
    2           0 B  /usr/bin/expand
    2           0 B  /usr/bin/env
    2           0 B  /usr/bin/du
    2           0 B  /usr/bin/dirname
    2           0 B  /usr/bin/cut
    2           0 B  /usr/bin/comm
    2           0 B  /usr/bin/cksum
    2           0 B  /usr/bin/unlink
    2           0 B  /usr/bin/unlzma
    2           0 B  /usr/bin/unxz
    2           0 B  /usr/bin/basename
    2           0 B  /usr/bin/[
    3           0 B  /tmp
    2           0 B  /usr/bin/wc
    2           0 B  /root
    2           0 B  /usr/bin/whoami
    2           0 B  /usr/bin/xzcat
    3           0 B  /lib/apk/db/lock
    2           0 B  /usr/bin/yes
    2           0 B  /usr/sbin/chroot
    2           0 B  /bin/uname
    2           0 B  /bin/true
    2           0 B  /bin/touch
    2           0 B  /bin/tar
    2           0 B  /bin/sync
    2           0 B  /bin/stty
    2           0 B  /bin/stat
    2           0 B  /bin/sleep
    2           0 B  /bin/rmdir
    2           0 B  /bin/rm
    2           0 B  /bin/pwd
    3           0 B  /var/cache/misc
    2           0 B  /bin/printenv
    2           0 B  /bin/nice
    2           0 B  /bin/mv
    2           0 B  /bin/mktemp
    2           0 B  /bin/mknod
    2           0 B  /bin/mkdir
    2           0 B  /bin/ls
    2           0 B  /bin/ln
    2           0 B  /bin/false
    2           0 B  /bin/echo
    2           0 B  /bin/df
    2           0 B  /bin/dd
    2           0 B  /bin/date
    2           0 B  /bin/cp
    2           0 B  /bin/chown
    2           0 B  /bin/chmod
    2           0 B  /bin/chgrp
    2           0 B  /bin/cat
    2           0 B  /bin/base64
Results:
  PASS: highestUserWastedPercent
  SKIP: highestWastedBytes: rule disabled
  PASS: lowestEfficiency
Result:PASS [Total:3] [Passed:2] [Failed:0] [Warn:0] [Skipped:1]
```

</p>
</details>

- На шаге установки зависимостей, была добавлена очистка кеша `bundle clean`, что позволило уменьшить итоговый образ на 1Мб.
  ```shell
  # docker images vscoder/ui  
  REPOSITORY          TAG                 IMAGE ID            CREATED             SIZE
  vscoder/ui          3.0-alpine          f54689080dbe        17 minutes ago      157MB
  vscoder/ui          3.0                 7d3825b1f360        2 hours ago         158MB
  vscoder/ui          2.0                 ebb79fd1384f        26 hours ago        458MB
  vscoder/ui          1.0                 aacf973cbc5d        28 hours ago        772MB
  ```

##### comment

- Dockerfile
```Dockerfile
FROM ruby:2.2-alpine

ENV COMMENT_DATABASE_HOST comment_db
ENV COMMENT_DATABASE comments
ENV APP_HOME /app

RUN mkdir $APP_HOME
WORKDIR $APP_HOME

# Application requiremets (fat layer)
COPY Gemfile* $APP_HOME/
RUN apk add --no-cache --virtual .build-deps build-base \
    && bundle install \
    && apk del .build-deps

# Application (frequently changing layer)
COPY . $APP_HOME

CMD ["puma"]
```

- Размер `docker images | grep vscoder/comment`
```log
vscoder/comment       2.0                 a85ccabc510d        15 seconds ago      156MB
vscoder/comment       1.0                 188232c05d67        6 hours ago         770MB
```
- Результат работы `dive`
  ```shell
  # make dive_comment 
  docker run --rm -it \
          -v /var/run/docker.sock:/var/run/docker.sock \
          -e CI=true \
          wagoodman/dive:latest $(docker images -q vscoder/comment:2.0)
  ```
<details><summary>результат</summary>
<p>

```log
  Using default CI config
Image Source: docker://a85ccabc510d
Fetching image... (this can take a while for large images)
Analyzing image...
  efficiency: 99.4405 %

  wastedBytes: 890157 bytes (890 kB)

  userWastedPercent: 0.5898 %

Inefficient Files:
Count  Wasted Space  File Path
    3        324 kB  /lib/apk/db/installed
    2        113 kB  /bin/ps
    2         83 kB  /usr/bin/top
    2         70 kB  /usr/bin/bunzip2
    2         70 kB  /usr/bin/bzip2
    2         70 kB  /usr/bin/bzcat
    3         32 kB  /lib/apk/db/scripts.tar
    2         26 kB  /usr/bin/pmap
    2         22 kB  /usr/bin/pgrep
    2         22 kB  /usr/bin/pkill
    2         18 kB  /sbin/sysctl
    2         14 kB  /usr/bin/free
    2         10 kB  /usr/bin/uptime
    2        9.9 kB  /usr/bin/pwdx
    2        1.8 kB  /app/Gemfile.lock
    3         500 B  /lib/apk/db/triggers
    2         364 B  /app/Gemfile
    3         181 B  /etc/apk/world
    2           0 B  /usr/bin/sort
    2           0 B  /usr/bin/test
    2           0 B  /usr/bin/fold
    2           0 B  /usr/bin/tail
    2           0 B  /usr/bin/tac
    2           0 B  /usr/bin/sum
    3           0 B  /usr/bin/strings
    2           0 B  /usr/bin/split
    2           0 B  /usr/bin/timeout
    2           0 B  /usr/bin/shuf
    2           0 B  /usr/bin/sha512sum
    2           0 B  /usr/bin/sha256sum
    2           0 B  /usr/bin/sha1sum
    2           0 B  /usr/bin/seq
    2           0 B  /usr/bin/realpath
    2           0 B  /usr/bin/readlink
    2           0 B  /usr/bin/tr
    2           0 B  /usr/bin/printf
    2           0 B  /usr/bin/truncate
    2           0 B  /usr/bin/tty
    2           0 B  /usr/bin/unexpand
    2           0 B  /usr/bin/od
    2           0 B  /usr/bin/nohup
    2           0 B  /usr/bin/mkfifo
    2           0 B  /usr/bin/md5sum
    2           0 B  /usr/bin/lzma
    2           0 B  /usr/bin/lzcat
    2           0 B  /usr/bin/install
    2           0 B  /usr/bin/id
    2           0 B  /usr/bin/hostid
    2           0 B  /usr/bin/head
    2           0 B  /usr/bin/groups
    2           0 B  /usr/bin/uniq
    2           0 B  /usr/bin/tee
    2           0 B  /usr/bin/expr
    2           0 B  /usr/bin/expand
    2           0 B  /usr/bin/env
    2           0 B  /usr/bin/du
    2           0 B  /usr/bin/dirname
    2           0 B  /usr/bin/cut
    2           0 B  /usr/bin/comm
    2           0 B  /usr/bin/cksum
    2           0 B  /usr/bin/unlink
    2           0 B  /usr/bin/unlzma
    2           0 B  /usr/bin/unxz
    2           0 B  /usr/bin/basename
    2           0 B  /usr/bin/[
    3           0 B  /tmp
    2           0 B  /usr/bin/wc
    2           0 B  /root
    2           0 B  /usr/bin/whoami
    2           0 B  /usr/bin/xzcat
    3           0 B  /lib/apk/db/lock
    2           0 B  /usr/bin/yes
    2           0 B  /usr/sbin/chroot
    2           0 B  /bin/uname
    2           0 B  /bin/true
    2           0 B  /bin/touch
    2           0 B  /bin/tar
    2           0 B  /bin/sync
    2           0 B  /bin/stty
    2           0 B  /bin/stat
    2           0 B  /bin/sleep
    2           0 B  /bin/rmdir
    2           0 B  /bin/rm
    2           0 B  /bin/pwd
    3           0 B  /var/cache/misc
    2           0 B  /bin/printenv
    2           0 B  /bin/nice
    2           0 B  /bin/mv
    2           0 B  /bin/mktemp
    2           0 B  /bin/mknod
    2           0 B  /bin/mkdir
    2           0 B  /bin/ls
    2           0 B  /bin/ln
    2           0 B  /bin/false
    2           0 B  /bin/echo
    2           0 B  /bin/df
    2           0 B  /bin/dd
    2           0 B  /bin/date
    2           0 B  /bin/cp
    2           0 B  /bin/chown
    2           0 B  /bin/chmod
    2           0 B  /bin/chgrp
    2           0 B  /bin/cat
    2           0 B  /bin/base64
Results:
  PASS: highestUserWastedPercent
  SKIP: highestWastedBytes: rule disabled
  PASS: lowestEfficiency
Result:PASS [Total:3] [Passed:2] [Failed:0] [Warn:0] [Skipped:1]
```

</p>
</details>

- На шаге установки зависимостей, была добавлена очистка кеша `bundle clean`, что позволило уменьшить итоговый образ на 1Мб.
  ```shell
  # docker images vscoder/comment
  REPOSITORY          TAG                 IMAGE ID            CREATED             SIZE
  vscoder/comment     2.0-alpine          333b8da781a5        17 minutes ago      156MB
  vscoder/comment     2.0                 a85ccabc510d        22 hours ago        156MB
  vscoder/comment     1.0                 188232c05d67        28 hours ago        770MB
  ```

##### post

- Образ post изначально бдыл основан на alpine, в связи с этим модификация не потребовалась.
  ```shell
  # docker images vscoder/post
  REPOSITORY          TAG                 IMAGE ID            CREATED             SIZE
  vscoder/post        1.0                 f22acc632909        27 hours ago        109MB
  ```
- Результат работы `dive`
  ```shell
  make dive_post 
  docker run --rm -it \
          -v /var/run/docker.sock:/var/run/docker.sock \
          -e CI=true \
          wagoodman/dive:latest $(docker images -q vscoder/post:1.0)
  ```
<details><summary>результат</summary>
<p>

```log
  Using default CI config
Image Source: docker://f22acc632909
Fetching image... (this can take a while for large images)
Analyzing image...
  efficiency: 98.7017 %

  wastedBytes: 2357680 bytes (2.4 MB)

  userWastedPercent: 2.2600 %

Inefficient Files:
Count  Wasted Space  File Path
    2        1.1 MB  /lib/ld-musl-x86_64.so.1
    2        549 kB  /etc/ssl/certs/ca-certificates.crt
    4        465 kB  /lib/apk/db/installed
    2         73 kB  /usr/bin/getent
    2         63 kB  /usr/bin/getconf
    4         45 kB  /lib/apk/db/scripts.tar
    2         41 kB  /usr/bin/iconv
    4         812 B  /lib/apk/db/triggers
    2         786 B  /sbin/ldconfig
    4         284 B  /etc/apk/world
    2         216 B  /app/requirements.txt
    2           0 B  /usr/bin/unlzma
    3           0 B  /usr/bin/strings
    2           0 B  /usr/bin/lzma
    2           0 B  /usr/bin/lzcat
    3           0 B  /tmp
    2           0 B  /root
    2           0 B  /usr/bin/xzcat
    2           0 B  /bin/tar
    4           0 B  /var/cache/misc
    2           0 B  /lib/apk/db/lock
    2           0 B  /lib/libc.musl-x86_64.so.1
    2           0 B  /usr/bin/ldd
    2           0 B  /usr/bin/unxz
Results:
  PASS: highestUserWastedPercent
  SKIP: highestWastedBytes: rule disabled
  PASS: lowestEfficiency
Result:PASS [Total:3] [Passed:2] [Failed:0] [Warn:0] [Skipped:1]
```

</p>
</details>

- При установке зависимостей была добавлена опция `--no-cache-dir` к `pip`, что позволило уменьшить итоговый образ на 3Мб
  ```shell
  # docker images vscoder/post
  REPOSITORY          TAG                 IMAGE ID            CREATED             SIZE
  vscoder/post        2.0-alpine          6cadaa2065a7        2 minutes ago       106MB
  vscoder/post        1.0                 f22acc632909        28 hours ago        109MB
  ```

### Дальнейшие действия

#### Проверка работоспособности

- К тегам образов добавлен суффикс `-alpine`
- Пересобраны все образы `make build_all`
- Остановлены ранее запущенные инстансы `make kill_all`
- Контейнеры запущены заново на основе свежих образов `make run_all`
- Работоспособность проверена. Пост создан успешно. Ранее созданный пост не сохоанился.

#### Создание volume для MongoDB

- В Makefile target run_all добавлено создание volume в случае отсутствия
  ```shell
  docker volume inspect ${REDDIT_DB_VOLUME_NAME} 1>/dev/null || docker volume create ${REDDIT_DB_VOLUME_NAME}
  ```
- В Makefile target run_all при создании контейнера с mongodb монтируется volume
  ```Makefile
  -v reddit_db:/data/db
  ```
- В результате Makefile target run_all выглядит следующим образом:
  ```Makefile
  run_all:
	docker network inspect ${REDDIT_NETWORK_NAME} 1>/dev/null || docker network create ${REDDIT_NETWORK_NAME}
	docker volume inspect ${REDDIT_DB_VOLUME_NAME} 1>/dev/null || docker volume create ${REDDIT_DB_VOLUME_NAME}
	docker run -d --network=${REDDIT_NETWORK_NAME} \
		--network-alias=post_db \
		--network-alias=comment_db \
		-v reddit_db:/data/db \
		mongo:latest
	docker run -d --network=${REDDIT_NETWORK_NAME} \
		--network-alias=post ${DOCKERHUB_LOGIN}/post:${POST_VERSION}
	docker run -d --network=${REDDIT_NETWORK_NAME} \
		--network-alias=comment ${DOCKERHUB_LOGIN}/comment:${COMMENT_VERSION}
	docker run -d --network=${REDDIT_NETWORK_NAME} \
		-p 9292:9292 ${DOCKERHUB_LOGIN}/ui:${UI_VERSION}
  ```
- Работоспособность проверена

### src/Makefile

#### Переменные

| переменная            | значение по-умолчанию | описание                                    |
| --------------------- | --------------------- | ------------------------------------------- |
| DOCKERHUB_LOGIN       | vscoder               | логин на hub.docker.com                     |
| POST_VERSION          | 1.0                   | версия сервиса post-py                      |
| COMMENT_VERSION       | 1.0                   | версия сервиса comment                      |
| UI_VERSION            | 1.0                   | версия сервиса ui                           |
| REDDIT_NETWORK_NAME   | reddit                | Имя docker-сети                             |
| REDDIT_DB_VOLUME_NAME | reddit_db             | Название volume для хранения данных mongodb |

#### Цели

| цель          | описание                                                                                         |
| ------------- | ------------------------------------------------------------------------------------------------ |
| build_post    | собирает контейнер post:${POST_VERSION} из контекста ./post-py                                   |
| dive_post     | анализ образа post:${POST_VERSION} на эффективность средствами `dive`                            |
| build_comment | собирает контейнер comment:${COMMENT_VERSION} из контекста ./comment                             |
| dive_comment  | анализ образа comment:${COMMENT_VERSION} на эффективность средствами `dive`                      |
| build_ui      | собирает контейнер ui:${UI_VERSION} из контекста ./ui                                            |
| dive_ui       | анализ образа ui:${UI_VERSION} на эффективность средствами `dive`                                |
| build_all     | собрать все контейнеры                                                                           |
| run_all       | запустить контейнеры из образов mongodb и 3х наших сервисов                                      |
| kill_all      | Убить **все запущенные** контейнеры и удалить сеть (том `${REDDIT_DB_VOLUME_NAME}` не удаляется) |


## HomeWork 14: Docker: сети, docker-compose

### Работа с сетями в Docker

#### Подготовка

- Создаём новый docker-machine и подключаемся к нему
  ```shell
  make docker_machine_create
  docker-machine ls
  ```
  ```log
  NAME          ACTIVE   DRIVER   STATE     URL                        SWARM   DOCKER     ERRORS
  docker-host   -        google   Running   tcp://35.241.253.37:2376           v19.03.5
  ```
  ```shell
  eval $(docker-machine env docker-host)
  ```

#### Работа с сетью в Docker

##### none

- Запуск контейнера с режимом сети `none`
  ```shell
  docker run -ti --rm --network none joffotron/docker-net-tools -c "ifconfig; ping -c4 localhost"
  lo        Link encap:Local Loopback  
            inet addr:127.0.0.1  Mask:255.0.0.0
            UP LOOPBACK RUNNING  MTU:65536  Metric:1
            RX packets:0 errors:0 dropped:0 overruns:0 frame:0
            TX packets:0 errors:0 dropped:0 overruns:0 carrier:0
            collisions:0 txqueuelen:1000 
            RX bytes:0 (0.0 B)  TX bytes:0 (0.0 B)

  PING localhost (127.0.0.1): 56 data bytes
  64 bytes from 127.0.0.1: seq=0 ttl=64 time=0.040 ms
  64 bytes from 127.0.0.1: seq=1 ttl=64 time=0.062 ms
  64 bytes from 127.0.0.1: seq=2 ttl=64 time=0.064 ms
  64 bytes from 127.0.0.1: seq=3 ttl=64 time=0.064 ms

  --- localhost ping statistics ---
  4 packets transmitted, 4 packets received, 0% packet loss
  round-trip min/avg/max = 0.040/0.057/0.064 ms
  ```
  - Видим только `lo` интерфейс. Сетевой стек внутри контейнера работает.
  - Может быть применимо для тестирования или для фанимуляции с файлами в volume.

##### host

- Запуск контейнера в сетевом пространстве имён хоста
  ```shell
  docker run -ti --rm --network host joffotron/docker-net-tools -c ifconfig

  docker0   Link encap:Ethernet  HWaddr 02:42:34:B5:56:3D  
            inet addr:172.17.0.1  Bcast:172.17.255.255  Mask:255.255.0.0
            UP BROADCAST MULTICAST  MTU:1500  Metric:1
            RX packets:0 errors:0 dropped:0 overruns:0 frame:0
            TX packets:0 errors:0 dropped:0 overruns:0 carrier:0
            collisions:0 txqueuelen:0 
            RX bytes:0 (0.0 B)  TX bytes:0 (0.0 B)

  ens4      Link encap:Ethernet  HWaddr 42:01:0A:84:00:14  
            inet addr:10.132.0.20  Bcast:10.132.0.20  Mask:255.255.255.255
            inet6 addr: fe80::4001:aff:fe84:14%32617/64 Scope:Link
            UP BROADCAST RUNNING MULTICAST  MTU:1460  Metric:1
            RX packets:5504 errors:0 dropped:0 overruns:0 frame:0
            TX packets:4356 errors:0 dropped:0 overruns:0 carrier:0
            collisions:0 txqueuelen:1000 
            RX bytes:108677168 (103.6 MiB)  TX bytes:447776 (437.2 KiB)

  lo        Link encap:Local Loopback  
            inet addr:127.0.0.1  Mask:255.0.0.0
            inet6 addr: ::1%32617/128 Scope:Host
            UP LOOPBACK RUNNING  MTU:65536  Metric:1
            RX packets:0 errors:0 dropped:0 overruns:0 frame:0
            TX packets:0 errors:0 dropped:0 overruns:0 carrier:0
            collisions:0 txqueuelen:1000 
            RX bytes:0 (0.0 B)  TX bytes:0 (0.0 B)
   ```
- Для сравнения, `ifconfig` на хосте docker-machine
  ```shell
  docker0   Link encap:Ethernet  HWaddr 02:42:34:b5:56:3d  
            inet addr:172.17.0.1  Bcast:172.17.255.255  Mask:255.255.0.0
            UP BROADCAST MULTICAST  MTU:1500  Metric:1
            RX packets:0 errors:0 dropped:0 overruns:0 frame:0
            TX packets:0 errors:0 dropped:0 overruns:0 carrier:0
            collisions:0 txqueuelen:0 
            RX bytes:0 (0.0 B)  TX bytes:0 (0.0 B)
  ens4      Link encap:Ethernet  HWaddr 42:01:0a:84:00:14  
            inet addr:10.132.0.20  Bcast:10.132.0.20  Mask:255.255.255.255
            inet6 addr: fe80::4001:aff:fe84:14/64 Scope:Link
            UP BROADCAST RUNNING MULTICAST  MTU:1460  Metric:1
            RX packets:5779 errors:0 dropped:0 overruns:0 frame:0
            TX packets:4570 errors:0 dropped:0 overruns:0 carrier:0
            collisions:0 txqueuelen:1000 
            RX bytes:108738036 (108.7 MB)  TX bytes:480943 (480.9 KB)
  lo        Link encap:Local Loopback  
            inet addr:127.0.0.1  Mask:255.0.0.0
            inet6 addr: ::1/128 Scope:Host
            UP LOOPBACK RUNNING  MTU:65536  Metric:1
            RX packets:0 errors:0 dropped:0 overruns:0 frame:0
            TX packets:0 errors:0 dropped:0 overruns:0 carrier:0
            collisions:0 txqueuelen:1000 
            RX bytes:0 (0.0 B)  TX bytes:0 (0.0 B)
  ```
- Видим, что они идентичны
- docker machine host пересоздан из за проблем подулючения по ssh
- запущен nginx
  ```shell
  docker run --network host -d nginx
  ...
  docker ps
  
  CONTAINER ID        IMAGE               COMMAND                  CREATED             STATUS              PORTS               NAMES
  faa0e86c423f        nginx               "nginx -g 'daemon of…"   6 seconds ago       Up 3 seconds                            distracted_bell
  ```
- запущен ещё один nginx (и ещё, и ещё), результат всегда одинаков
  ```shell
  docker ps

  CONTAINER ID        IMAGE               COMMAND                  CREATED             STATUS              PORTS               NAMES
  faa0e86c423f        nginx               "nginx -g 'daemon of…"   5 minutes ago       Up 5 minutes                            distracted_bell
  ```
- попытка запуска с анализом логов
  ```shell
  docker run --network host -d nginx; docker logs $(docker ps -q | head -n1)
  ```
  ```log
  0d82882d485d9678ad273ea048d2b4631652f3feb1bfb5443efb6ffee6bd8fa0
  2019/11/17 13:01:30 [emerg] 1#1: bind() to 0.0.0.0:80 failed (98: Address already in use)
  nginx: [emerg] bind() to 0.0.0.0:80 failed (98: Address already in use)
  2019/11/17 13:01:30 [emerg] 1#1: bind() to 0.0.0.0:80 failed (98: Address already in use)
  nginx: [emerg] bind() to 0.0.0.0:80 failed (98: Address already in use)
  ```
  Из лога видно, что причина падения -- уже занятый порт 80 в неймспейсе хоста.
- все запущенные контейнеры остановлены
  ```shell
  docker kill $(docker ps -q)
  ```

###### network namespaces

- на docker-host создан симлинк, позволяющий видеть неймспейсы командой `sudo ip netns`
  ```shell
  sudo ln -s /var/run/docker/netns /var/run/netns
  ```
- список неймспейсов без запущенных контейнеров
  ```shell
  $ sudo ip netns
  default
  ```
- список неймспейсов при запущенном контейнере с сетью `none`
  ```shell
  docker run --network none -d nginx
  docker ps
  CONTAINER ID        IMAGE               COMMAND                  CREATED             STATUS              PORTS               NAMES
  d227262ccf99        nginx               "nginx -g 'daemon of…"   6 seconds ago       Up 5 seconds                            zen_mclean
  ```
  на docker-machine
  ```shell
  $ sudo ip netns
  743e31b95726
  default
  ```
  видим, появился новый namespace. Запускаем ещё один контейнер
  ```shell
  docker run --network none -d nginx

  160ca7fec220c182d05a522a1a74143b0114af78220d9ef0370f2bf7be7290c6
  ```
  ```shell
  docker ps                         

  CONTAINER ID        IMAGE               COMMAND                  CREATED              STATUS              PORTS               NAMES
  160ca7fec220        nginx               "nginx -g 'daemon of…"   2 seconds ago        Up 1 second                             crazy_bardeen
  d227262ccf99        nginx               "nginx -g 'daemon of…"   About a minute ago   Up About a minute                       zen_mclean
  ```
  на docker-machine
  ```shell
  $ sudo ip netns
  73f504acb923
  743e31b95726
  default
  ```
  видим 2 неймспейса
- убили все контейнеры `docker kill $(docker ps -q)`
- используем сеть `host`
  ```shell
  docker run --network host -d nginx

  7eda8485e28a626e507d310aecaf6e45bc5aa053266ef8338b196f90df93955c
  ```
  на docker-machine
  ```shell
  $ sudo ip netns

  default
  ```
  неймспейсов создано не было. Вывод - используется неймспейс хоста))
- убили все контейнеры `docker kill $(docker ps -q)`

##### bridge

###### Запуск приложения

- контейнеры запущены с использованием bridge-сети `reddit` и назначенных контейнерам сетевых алиасов
  ```shell
  # make run_all  
  docker network inspect reddit 1>/dev/null || docker network create reddit
  docker volume inspect reddit_db 1>/dev/null || docker volume create reddit_db
  docker run -d --network=reddit \
          --network-alias=post_db \
          --network-alias=comment_db \
          -v reddit_db:/data/db \
          mongo:latest
  0ba10d8e3d43ce40c15a7b622ad09142f8ea2c9dcbe7e828287db98cc2fd5479
  docker run -d --network=reddit \
          --network-alias=post vscoder/post:2.0-alpine
  7df2e80b66e19d0335685a78bb07348c3c02124cef97732124cb745615f1d05a
  docker run -d --network=reddit \
          --network-alias=comment vscoder/comment:2.0-alpine
  37744b362a5838ddda44462e1b9bc580748eaf809c8885ba044f482815c693d2
  docker run -d --network=reddit \
          -p 9292:9292 vscoder/ui:3.0-alpine
  5281ed3316e3050d16e4c2a7d2a54145ad5d72cc127261f3c2b1169f5f52c728
  ```
  ```shell
  # docker ps
  CONTAINER ID        IMAGE                        COMMAND                  CREATED             STATUS              PORTS                    NAMES
  5281ed3316e3        vscoder/ui:3.0-alpine        "puma"                   7 minutes ago       Up 7 minutes        0.0.0.0:9292->9292/tcp   elated_gagarin
  37744b362a58        vscoder/comment:2.0-alpine   "puma"                   7 minutes ago       Up 7 minutes                                 heuristic_murdock
  7df2e80b66e1        vscoder/post:2.0-alpine      "python3 post_app.py"    7 minutes ago       Up 7 minutes                                 jolly_kirch
  5b04e0482132        mongo:latest                 "docker-entrypoint.s…"   8 minutes ago       Up 8 minutes        27017/tcp                modest_proskuriakova
  ```
  приложение доступно по адресу http://35.241.253.37:9292
- Использованы 2 сети reddit_back и reddit_front. 
  - Контейнер ui подключен к сети reddit_front. 
  - Остальные контейнеры подключены к сети reddit_back. 
  - Так как при создании контейнеру можно указать только одну сеть, post и comment подключены к reddit_front после создания.
- Теперь Makefile target выглядит следующим образом
  ```Makefile
  run_all:
  	docker network inspect ${REDDIT_NETWORK_NAME}_back 1>/dev/null || docker network create ${REDDIT_NETWORK_NAME}_back
  	docker network inspect ${REDDIT_NETWORK_NAME}_front 1>/dev/null || docker network create ${REDDIT_NETWORK_NAME}_front
  	docker volume inspect ${REDDIT_DB_VOLUME_NAME} 1>/dev/null || docker volume create ${REDDIT_DB_VOLUME_NAME}
  	docker run -d \
      --name mongo_db \
  		--network=${REDDIT_NETWORK_NAME}_back \
  		--network-alias=post_db \
  		--network-alias=comment_db \
  		-v reddit_db:/data/db \
  		mongo:latest
  	docker run -d \
      --name post \
  		--network=${REDDIT_NETWORK_NAME}_back \
  		--network-alias=post \
  		${DOCKERHUB_LOGIN}/post:${POST_VERSION}
  	docker network connect ${REDDIT_NETWORK_NAME}_front post
  	docker run -d \
      --name comment \
  		--network=${REDDIT_NETWORK_NAME}_back \
  		--network-alias=comment \
  		${DOCKERHUB_LOGIN}/comment:${COMMENT_VERSION}
  	docker network connect ${REDDIT_NETWORK_NAME}_front comment
  	docker run -d \
      --name ui \
  		--network=${REDDIT_NETWORK_NAME}_front \
  		-p 9292:9292 \
  		${DOCKERHUB_LOGIN}/ui:${UI_VERSION}
  ```
- Запущены все контейнеры
  ```shell
  # make run_all
  docker network inspect reddit_back 1>/dev/null || docker network create reddit_back
  docker network inspect reddit_front 1>/dev/null || docker network create reddit_front
  docker volume inspect reddit_db 1>/dev/null || docker volume create reddit_db
  docker run -d \
          --name mongo_db \
          --network=reddit_back \
          --network-alias=post_db \
          --network-alias=comment_db \
          -v reddit_db:/data/db \
          mongo:latest
  596f3227b31e1f90c0ab8fae012659378d7cbc99e047be6d9595ab898a2b7e8c
  docker run -d \
          --name post \
          --network=reddit_back \
          --network-alias=post \
          vscoder/post:2.0-alpine
  f272a11ca047c347e53e253ce4aafef301aa289e62ad5def39847c27c910578d
  docker network connect reddit_front post
  docker run -d \
          --name comment \
          --network=reddit_back \
          --network-alias=comment \
          vscoder/comment:2.0-alpine
  b2ebe7a9d3d8c2e6dbf6169410e8ad61740a6c7564310591ec0a0a023940d8cd
  docker network connect reddit_front comment
  docker run -d \
          --name ui \
          --network=reddit_front \
          -p 9292:9292 \
          vscoder/ui:3.0-alpine
  82db30416d495c1b590a0cefca7d9e8612cbc4b0564dd0c3937ba757ccc48811
  ```
- Работоспособность приложения проверена

###### Анализ

- Список docker-сетей на docker-machine
  ```shell
  $ sudo  docker network ls
  NETWORK ID          NAME                DRIVER              SCOPE
  0166874dac87        bridge              bridge              local
  d183b24032cc        host                host                local
  2c181ec206b6        none                null                local
  7e75ed405d47        reddit_back         bridge              local
  7c243bd0da8a        reddit_front        bridge              local
  ```
- Список br-* интерфейсов на docker-machine
  ```shell
  $ ifconfig | grep br
  br-7c243bd0da8a Link encap:Ethernet  HWaddr 02:42:7a:38:6c:0a  
  br-7e75ed405d47 Link encap:Ethernet  HWaddr 02:42:b4:2d:1a:09
  ```
  имена интефейсов бриджей совпадают с id сетей
- состав бриджей
  ```shell
  $ brctl show br-7c243bd0da8a
  bridge name     bridge id               STP enabled     interfaces
  br-7c243bd0da8a         8000.02427a386c0a       no      veth234d18b
                                                          vethf4cf7bf
                                                          vethfde16ca
  ```
  ```shell
  $ brctl show br-7e75ed405d47
  bridge name     bridge id               STP enabled     interfaces
  br-7e75ed405d47         8000.0242b42d1a09       no      veth257dc23
                                                          veth5af2b40
                                                          veth83d031a
  ```
  veth-интерфейсы соответствуют интерфейсам контейнеров в соответтсвующем бридже
- iptables
  ```shell
  $ sudo iptables -vnL -t nat
  Chain PREROUTING (policy ACCEPT 2523 packets, 151K bytes)
   pkts bytes target     prot opt in     out     source               destination         
    153 13027 DOCKER     all  --  *      *       0.0.0.0/0            0.0.0.0/0            ADDRTYPE match dst-type LOCAL

  Chain INPUT (policy ACCEPT 9 packets, 440 bytes)
   pkts bytes target     prot opt in     out     source               destination         

  Chain OUTPUT (policy ACCEPT 82 packets, 5229 bytes)
   pkts bytes target     prot opt in     out     source              destination         
      0     0 DOCKER     all  --  *      *       0.0.0.0/0           !127.0.0.0/8          ADDRTYPE match dst-type LOCAL

  Chain POSTROUTING (policy ACCEPT 2598 packets, 156K bytes)
   pkts bytes target      prot opt in     out               source               destination         
      0     0 MASQUERADE  all  --  *      !br-7c243bd0da8a  172.20.0.0/16        0.0.0.0/0           
      0     0 MASQUERADE  all  --  *      !br-7e75ed405d47  172.19.0.0/16        0.0.0.0/0           
    254 15387 MASQUERADE  all  --  *      !docker0          172.17.0.0/16        0.0.0.0/0           
      0     0 MASQUERADE  tcp  --  *      *                 172.20.0.4           172.20.0.4           tcp dpt:9292

  Chain DOCKER (2 references)
   pkts bytes target     prot opt in               out    source               destination         
      0     0 RETURN     all  --  br-7c243bd0da8a  *      0.0.0.0/0            0.0.0.0/0           
      0     0 RETURN     all  --  br-7e75ed405d47  *      0.0.0.0/0            0.0.0.0/0           
      0     0 RETURN     all  --  docker0          *      0.0.0.0/0            0.0.0.0/0           
      2   120 DNAT       tcp  --  !br-7c243bd0da8a *      0.0.0.0/0            0.0.0.0/0            tcp dpt:9292 to:172.20.0.4:9292
  ```
  - здесь видно, что перед определением маршрута, весь трафик с `dst-type LOCAL` попадает в цепочку `DOCKER`, в которой
    - возвращается обратно в `PREROUTING`, если пришёл с одного из docker-бриджей
    - если пришёл не с `reddit_front` и на tcp-порт 9292, выполняется редирект на `172.20.0.4:9292` (ui)
  - в цепочке `POSTROUTING` трафик, исходящий из docker-сетей маскируется перед выходом с других интерфейсов
    - так же маскируется трафик между любыми интерфейсами с ip 172.20.0.4 на тот же ip 172.20.0.4 порт назначения tcp 9292
      TODO: разобраться зачем это нужно
- docker-proxy
  ```shell
  $ ps ax | grep docker-proxy
  16085 ?        Sl     0:00 /usr/bin/docker-proxy -proto tcp -host-ip 0.0.0.0 -host-port 9292 -container-ip 172.20.0.4 -container-port 9292
  ```
  запущен 1 процесс `cocker-proxy`
- netstat и lsof
  ```shell
  $ sudo lsof -nPi | grep 9292
  docker-pr 16085        root    4u  IPv6 102960      0t0  TCP *:9292 (LISTEN)
  ```
  видим docker-proxy слушает TCPv6 порт 9292
  ```shell
  $ sudo netstat -apn | grep 9292 
  tcp6       0      0 :::9292                 :::*                    LISTEN      16085/docker-proxy
  ```
  то же самое
  TODO: почему ipv6?

### Использование docker-compose

#### Установка

- В [requirements.txt](requirements.txt) ранее уже был добавлен `docker-compose>=1.24.1`

#### docker-compose.yml

- Создан [src/docker-compose.yml](src/docker-compose.yml)
- В [env](env) добавлеа переменная для экспорта
  ```shell
  export USERNAME=vscoder
  ```
- Сборка образов и запуск контейнеров `docker-compose up -d`
  ```log
  ...
  Creating src_post_1    ... done
  Creating src_ui_1      ... done
  Creating src_comment_1 ... done
  Creating src_post_db_1 ... done
  ```
- `docker ps`
  ```log
  CONTAINER ID        IMAGE                 COMMAND                  CREATED             STATUS              PORTS                    NAMES
  232065aa859d        vscoder/comment:1.0   "puma"                   2 minutes ago       Up About a minute                            src_comment_1
  4d18a821d1a6        mongo:3.2             "docker-entrypoint.s…"   2 minutes ago       Up About a minute   27017/tcp                src_post_db_1
  f7631f5ae799        vscoder/ui:1.0        "puma"                   2 minutes ago       Up About a minute   0.0.0.0:9292->9292/tcp   src_ui_1
  afd5a3874d23        vscoder/post:1.0      "python3 post_app.py"    2 minutes ago       Up About a minute                            src_post_1
  ```
- В браузере открыт http://35.240.72.210:9292/
- всё работает, посты создаются

- Отступление: убрана лишняя директива `RUN` из `src/*/Dockerfile`, создающая рабочий каталок перед заданием `WORKDIR`, так как это делает `WORKDIR` автоматически.
  > If the WORKDIR doesn’t exist, it will be created even if it’s not used in any subsequent Dockerfile instruction.

- Файл [src/docker-compose.yml](src/docker-compose.yml) изменён для использования нескольких сетей
  ```yaml
  version: "3.3"
  services:
    post_db:
      image: mongo:${MONGO_VERSION-3.2}
      volumes:
        - post_db:/data/db
      networks:
        - reddit_back
    ui:
      build: ./ui
      image: ${USERNAME}/ui:${UI_VERSION-1.0}
      ports:
        - 9292:9292/tcp
      networks:
        - reddit_front
    post:
      build: ./post-py
      image: ${USERNAME}/post:${POST_VERSION-1.0}
      networks:
        - reddit_front
        - reddit_back
    comment:
      build: ./comment
      image: ${USERNAME}/comment:${COMMENT_VERSION-1.0}
      networks:
        - reddit_front
        - reddit_back

  volumes:
    post_db:

  networks:
    reddit_front:
    reddit_back:
  ```

##### Переменные окружения

Приоритет источников для значения переменных в контейнере:

When you set the same environment variable in multiple files, here’s the priority used by Compose to choose which value to use:

1. Compose file
2. Shell environment variables
3. Environment file
4. Dockerfile
5. Variable is not defined

- Подробнее про 
  - переменные окружения https://docs.docker.com/compose/environment-variables/
  - подстановку переменных окружения https://docs.docker.com/compose/compose-file/#variable-substitution
    > Important: The .env file feature only works when you use the docker-compose up command and does not work with docker stack deploy.
  - `docker-compose config` чтобы посмотреть отрезолвленный compose-файл https://docs.docker.com/compose/reference/config/
  - Compose CLI environment variables https://docs.docker.com/compose/reference/envvars/
- Создан файл [src/.env](src/.env) со значениями переменных по умолчанию
- Параметризованы следующие параметры
  - `MONGO_VERSION=3.2` - версия mongodb
  - `UI_VERSION=1.0` - версия ui
  - `POST_VERSION=1.0` - версия post-py
  - `COMMENT_VERSION=1.0` - версия comment
  - `UI_PORT=9292` - порт публикации ui
  - `USERNAME=vscoder` - имя пользователя для подстановки в имя образа.
    Например `image: ${USERNAME}/ui:${UI_VERSION}`
- Проверка `docker-compose config`
  ```yaml
  networks:
    reddit_back: {}
    reddit_front: {}
  services:
    comment:
      build:
        context: /mnt/calculate/home/vscoder/projects/otus/devops201908/vscoder_microservices/src/comment
      image: vscoder/comment:1.0
      networks:
        reddit_back: null
        reddit_front: null
    post:
      build:
        context: /mnt/calculate/home/vscoder/projects/otus/devops201908/vscoder_microservices/src/post-py
      image: vscoder/post:1.0
      networks:
        reddit_back: null
        reddit_front: null
    post_db:
      image: mongo:3.2
      networks:
        reddit_back: null
      volumes:
      - post_db:/data/db:rw
    ui:
      build:
        context: /mnt/calculate/home/vscoder/projects/otus/devops201908/vscoder_microservices/src/ui
      image: vscoder/ui:1.0
      networks:
        reddit_front: null
      ports:
      - protocol: tcp
        published: 9292
        target: 9292
  version: '3.7'
  volumes:
    post_db: {}
  ```
- Выполнен запуск всего с публикацией приложения на 80 порту (доступ на 80 разрешён в фаерволе). `export UI_PORT=80 && docker-compose up -d`
- Проверка показала, что приложение доступно на 80 порту

##### Имя проекта

- https://docs.docker.com/compose/#multiple-isolated-environments-on-a-single-host
- Имя проекта по умолчанию берётся из `basename` директории проекта
- Переопределить имя проекта можно 
  - using the [-p command line option](https://docs.docker.com/compose/reference/overview/)
  - using [COMPOSE_PROJECT_NAME environment variable](https://docs.docker.com/compose/reference/envvars/#compose_project_name)

### Задание со \*: docker-compose.override.yml

#### Анализ

[Share Compose configurations between files and projects](https://docs.docker.com/compose/extends/)

By default, Compose reads two files, a docker-compose.yml and an optional docker-compose.override.yml file.
If a service is defined in both files, Compose merges the configurations.
To use multiple override files, or an override file with a different name, you can use the -f option to specify the list of files. Compose merges files in the order they’re specified on the command line.

#### Реализация

- Добавлен файл [src/docker-compose.override.yml](src/docker-compose.override.yml)
- В [src/docker-compose.override.yml](src/docker-compose.override.yml) переопределены следующие параметры:
  - В `/app` контейнера `post` монтируется локальная директория `./post-py`
  - В `/app` контейнера `comment` монтируется локальная директория `./comment`
  - Сервис `puma` в `ui` запускается с параметрами `--debug -w 2`
- В [src/docker-compose.override.yml](src/docker-compose.override.yml) добавлена версия
  ```yaml
  version: "3.3"
  ```
- В [src/docker-compose.override.yml](src/docker-compose.override.yml) описание сервисов помещено в секцию `services:`
- Для каждого сервиса в [src/docker-compose.override.yml](src/docker-compose.override.yml) директория с кодом монтируется в директорию, указанную в соответтсвующей переменной окружения
- Итоговое содержимое [src/docker-compose.override.yml](src/docker-compose.override.yml)
  ```yaml
  ---
  version: "3.3"

  services:
    post:
      volumes:
        - "./post-py:${POST_APP_HOME}"
    comment:
      volumes:
        - "./comment:${COMMENT_APP_HOME}"
    ui:
      volumes:
        - "./ui:${UI_APP_HOME}"
      command: puma --debug -w 2
  ```
- **ВАЖНО** не работает из коробки с docker-machine, необходимо колдовать с [docker-machine mount](https://docs.docker.com/machine/reference/mount/)
- Версия формата докерфайла изменена с `3.7` на `3.3` в связи с тем, что travis-ci не поддерживает более высокую версию

### Вне заданий

- С целью улучшения читаемости, из [.travis.yml] в шелл-скрипты перенесены команды из секций
  - `install` в [.travis-scripts/install.sh](.travis-scripts/install.sh)
  - `before_script` в [.travis-scripts/before_script.sh](.travis-scripts/before_script.sh)


## HomeWork 15: Устройство Gitlab CI. Построение процесса непрерывной поставки

### Развёртывание gitlab

#### Подготовка хоста

- Создана директория [gitlab](gitlab)
- Создан [Makefile](gitlab-ci/Makefile) с набором целей для развёртывания инфраструктуры под gitlab средствами packer, teraform и ansible

##### ansible

- На основе [docker-monolith/ansible](docker-monolith/ansible) создана директория [gitlab-ci/ansible](gitlab-ci/ansible)
- Удалены лишние файлы и директории.
- Оставлен только плейбук [gitlab-ci/ansible/playbooks/docker.yml](gitlab-ci/ansible/playbooks/docker.yml), необходимый для развёртывания docker в packer-образе
- Установлены вынешние ansible-роли

##### packer

- На основе [docker-monolith packer](docker-monolith/packer) создана директория [gitlab-ci/packer](gitlab-ci/packer)
- Дополнен файл с примерами переменных [gitlab-ci/packer/variables.json.example](gitlab-ci/packer/variables.json.example)
  ```json
  {
    "project_id": "docker-ID",
    "source_image_family": "ubuntu-1604-lts",
    "machine_type": "n1-standart-1",
    "disk_size": "60"
  }
  ```
- Заполнены переменные [gitlab-ci/packer/variables.json](gitlab-ci/packer/variables.json)
- Проверена конфигурация packer
  ```shell
  # make packer_validate
  ~/bin/packer --version
  1.4.4
  ~/bin/packer validate -var-file=packer/variables.json packer/docker.json
  Template validated successfully.
  ```
- Собран образ `"image_family": "gitlab-docker-base"`
  ```shell
  # make packer_build
  ...
  ==> Builds finished. The artifacts of successful builds are:
  --> googlecompute: A disk image was created: gitlab-docker-base-1574589582
  ```

##### terraform

- Директория [docker-monolith/terraform](docker-monolith/terraform) скопирована в [gitlab-ci/terraform](gitlab-ci/terraform)
- В [gitlab-ci/terraform/stage/backend.tf](gitlab-ci/terraform/stage/backend.tf) значение `prefix` установлено в `"terraform/gitlab/stage"`
- В [gitlab-ci/terraform/stage/terraform.tfvars.example](gitlab-ci/terraform/stage/terraform.tfvars.example) изменены значения следующих переменных
  ```hcl
  docker_app_disk_image     = "gitlab-docker-base"
  docker_app_tags           = ["gitlab-docker-app"]
  docker_app_tcp_ports      = ["80", "443"]
  ```
- Так же добавлены переменные
  ```hcl
  docker_app_name_prefix    = "gitlab"
  docker_app_machine_type   = "n1-standard-1"
  ```
- Те же переменные добавлены/изменены в [gitlab-ci/terraform/terraform.tfvars](gitlab-ci/terraform/terraform.tfvars)
- Выполнена инициализация terraform
  ```shell
  # make terraform_init
  ...
  Terraform has been successfully initialized!
  ...
  ```
- Выполнена валидация `make terraform_validate`
- Выполнен линтинг `make terraform_tflint`
- Создана инфраструктура `make terraform_apply`
  ```json
  Apply complete! Resources: 2 added, 0 changed, 0 destroyed.

  Outputs:

  docker_app_external_ip = [
    "34.76.206.37",
  ]
  ```

#### Развёртывание gitlab

Все действия выполняются на удалённой машине, развёрнутой в предыдущем пункте

- Созданы необходимые директории
  ```shell
  sudo mkdir -p /srv/gitlab/config /srv/gitlab/data /srv/gitlab/logs
  cd /srv/gitlab/
  sudo touch docker-compose.yml
  ```
- Содержимое `docker-compose.yml`
```yaml
web:
  image: 'gitlab/gitlab-ce:latest'
  restart: always
  hostname: 'gitlab.example.com'
  environment:
    GITLAB_OMNIBUS_CONFIG: |
      external_url 'http://34.76.206.37'
      gitlab_rails['gitlab_shell_ssh_port'] = 2222
  ports:
    - '80:80'
    - '443:443'
    - '2222:22'
  volumes:
    - '/srv/gitlab/config:/etc/gitlab'
    - '/srv/gitlab/logs:/var/log/gitlab'
    - '/srv/gitlab/data:/var/opt/gitlab'
```
- Запущено развёртывание `sudo docker-compose up -d`
- Спустя несколько минут установка завершена
- Задан пароль для пользователя `root` (пользователь по умолчанию)
- Успешно выполнен вход

#### Первоначальная настройка

- Отменена возможность регистрации новых пользователей
  *settings -> general -> sign-up restrictions ->sign-up enabled = false*, *save changes*
- Изменён логин пользователя *Administrator* чтобы усложнить подбор пароля перебором

##### Работа с репозиторием через ssh

- Пользователю добавлен публичный ssh-ключ
- В [gitlab-ci/terraform/stage/terraform.tfvars](gitlab-ci/terraform/stage/terraform.tfvars) разрешён порт `2222`
  ```hcl
  docker_app_tcp_ports = ["80", "443", "2222"]
  ```
- В `docker-comnpose.yml` добавлен параметр `gitlab_rails['gitlab_shell_ssh_port'] = 2222` для работы с git-репозиторием через ssh по порту `2222`

### Создание проекта

- Создана приватная группа `homework`
- Создан приватный проект `example`
- В репозиторий `vscoder_microservices` добавлен удалённый репозиторий созданного проекта
```shell
git remote add gitlab ssh://git@34.76.206.37:2222/otus/example.git
git push gitlab gitlab-ci-1
```

#### CI/CD Pipeline

- Добавлен [.gitlab-ci.yml](.gitlab-ci.yml) содержащий шаблон пайплайна
```yaml
stages:
  - build
  - test
  - deploy

build_job:
  stage: build
  script:
    - echo 'Building'

test_unit_job:
  stage: test
  script:
    - echo 'Testing 1'

test_integration_job:
  stage: test
  script:
    - echo 'Testing 2'

deploy_job:
  stage: deploy
  script:
    - echo 'Deploy'
```

### Runner

- На хосте с gitlab запущен раннер
```shell
docker run -d --name gitlab-runner --restart always \
  -v /srv/gitlab-runner/config:/etc/gitlab-runner \
  -v /var/run/docker.sock:/var/run/docker.sock \
  gitlab/gitlab-runner:latest
```
- Раннер зарегистрирован в gitlab
```shell
docker exec -it gitlab-runner gitlab-runner register --run-untagged --locked=false
```
```shell
> Runtime platform                                    arch=amd64 os=linux pid=13 revision=577f813d version=12.5.0
> Running in system-mode.                            
>                                                    
> Please enter the gitlab-ci coordinator URL (e.g. https://gitlab.com/):
http://34.76.206.37/
> Please enter the gitlab-ci token for this runner:
here_is_token
> Please enter the gitlab-ci description for this runner:
[b1ae79ee8481]: gce-docker-runnel
> Please enter the gitlab-ci tags for this runner (comma separated):
linux,xenial,ubuntu,docker
> Registering runner... succeeded                     runner=QW4GxkHH
> Please enter the executor: parallels, shell, virtualbox, docker+machine, docker-ssh+machine, custom, docker, docker-ssh, ssh, kubernetes:
docker
> Please enter the default Docker image (e.g. ruby:2.6):
alpine:latest
> Runner registered successfully. Feel free to start it, but if it's running already the config should be automatically reloaded!
```
- Пайплайн автоматически был запущен и выполнен успешно

### Тестирование Reddit

- Код приложения склонирован из репозитория
```shell
git clone https://github.com/express42/reddit.git && rm -rf ./reddit/.git
git add reddit/
git commit -m "Add reddit app"
git push gitlab gitlab-ci-1
```
- В [.gitlab-ci.yml](.gitlab-ci.yml) добавлены элементы пайпалйна для тестирования приложения. Новое содержимое
```yaml
---
image: ruby:2.4.2

stages:
  - build
  - test
  - deploy

variables:
  DATABASE_URL: "mongodb://mongo/user_posts"

before_script:
  - cd reddit
  - bundle install

build_job:
  stage: build
  script:
    - echo 'Building'

test_unit_job:
  stage: test
  services:
    - mongo:latest
  script:
    - ruby simpletest.rb
    # - echo 'Testing 1'

test_integration_job:
  stage: test
  script:
    - echo 'Testing 2'

deploy_job:
  stage: deploy
  script:
    - echo 'Deploy'
```
- В [reddit/simpletest.rb](reddit/simpletest.rb) добавлен простой тест
```ruby
require_relative './app'
require 'test/unit'
require 'rack/test'

set :environment, :test

class MyAppTest < Test::Unit::TestCase
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  def test_get_request
    get '/'
    assert last_response.ok?
  end
end
```
- В [reddit/Gemfile](reddit/Gemfile) добавлена библиотека для тестирования
```ruby
gem 'rack-test'
```
- Изменения закоммичены и запушены в gitlab
```shell
git add .
git ci -m"Add reddit app tests to pipeline"
git push gitlab gitlab-ci-1
```
- Job succeeded

### Работа с окружениями

#### dev

- В [.gitlab-ci.yml](.gitlab-ci.yml) stage `deploy` переименован в `review`
```yaml
stages:
  - build
  - test
  - review
```
- Job `deploy_job` переименован в `deploy_dev_job` и приведён к следующему виду
```yaml
deploy_dev_job:
  stage: review
  script:
    - echo 'Deploy'
  environment:
    name: dev
    url: http://dev.example.com
```
- Выполнен commit и push
```shell
git add .
git ci -m"Add deploy dev environment"
git push gitlab gitlab-ci-1
```
- В проекте в *operations* -> *environments* появилось окружение **dev**
- При нажатии на *View deployment* происходит переход на указанный url

#### staging и production

- В [.gitlab-ci.yml](.gitlab-ci.yml) добавлены jobs `staging` и `production`
```yaml
staging:
  stage: stage
  when: manual  # ручной запуск
  script:
    - echo 'Deploy'
  environment:
    name: stage
    url: https://beta.example.com

production:
  stage: production
  when: manual  # ручной запуск
  script:
    - echo 'Deploy'
  environment:
    name: production
    url: https://example.com
```
- Стадии stage и production были запущены вручную
- В оба стейджа добавлено условие возможности запуска только с тэгом, соответствуюжем трйм числам, раздёлённым точкой
```yaml
only:
  - /^\d+\.\d+\.\d+/
```
- После пуша без тега, стадии stage и production недоступны
- Выполнен пуш с тегом
```shell
git add .
git commit -m "Add tag and push"
git tag 2.4.10
git push gitlab gitlab-ci-1
git push gitlab gitlab-ci-1 --tags
```
- Для job-а с тегом снова доступны стадии stage и prod

#### Динамические окружения

- Добавлен job `branch review`
```yaml
branch review:
  stage: review  # имя стадии
  script: echo "Deploy to $CI_ENVIRONMENT_SLUG"
  environment:
    name: branch/$CI_COMMIT_REF_NAME  # имя бренча в имени окружения
    url: http://$CI_ENVIRONMENT_SLUG.example.com  # имя бренча в url
  only:
    - branches  # запуск для каждой ветки репозитория
  except:
    - master  # не запускать для мастера
```
Этот job определяет динамическое окружение для каждой ветки в репозитории, кроме ветки master
- Проверено: была создана ветка `new-feature`. Создалось 2 окружения
  - `branch/gitlab-ci-1` для текущего бренча
  - `branch/new-feature` для созданного бренча


### Вне заданий: улучшалки

- Добавлен [gitlab-ci/README.md](gitlab-ci/README.md) с описанием Makefile целей и переменных

### Задание со \*: Автоматизированная сборка приложения reddit

В шаг build добавить сборку контейнера с приложением reddit. Деплойте контейнер с reddit на созданный для ветки сервер.

#### План

- [x] Настроить [gitlab registry](https://docs.gitlab.com/ee/user/packages/container_registry/index.html)
  - [x] Включить интеграцию с [Let’s Encrypt](https://docs.gitlab.com/omnibus/settings/ssl.html#lets-encrypt-integration)
    - [x] Создать привязку к доменному имени
      - [x] Создать постоянный ip средствами terraform
      - [x] В последствии, решить проблему с формированием url для `environment.url` в `.gitlab-ci.yml`
  - [x] registry добжен включиться автоматически [GitLab Container Registry administration](https://docs.gitlab.com/ee/administration/packages/container_registry.html)
- [x] Настроить в `.gitlab-ci.yml` автоматизированную сборку образов средствами [docker build](https://docs.docker.com/engine/reference/commandline/build/)
  - [x] решить проблему со сборкой образов раннером типа docker https://docs.gitlab.com/сe/ci/docker/using_docker_build.html
- [x] Следующим шагом необходимо загрузить образ в registry, настроенный ранее
- [x] Подготовить инфраструктуру:
  - [x] создать сервер с установленным docker для деплоя ветки (terraform)
- [x] создать ansible-playbook для деплоя приложения на созданный сервер средствами docker-compose
- [x] реализовать деплой в `.gitlab-ci.yml`

#### Реализация

**ПРИМЕЧАНИЕ** Возможно, более правильно использовать `google_dns_managed_zone` для управления dns-записями на gitlab и branch-окружения. **TODO:** разобраться

В рамках данного ДЗ, для интеграции Let's Encrypt будет использован постоянный IP и собственный домен `vscoder.ru`

##### Настройка terraform module instance

- В [gitlab-ci/terraform/modules/instance/main.tf](gitlab-ci/terraform/modules/instance/main.tf) настроено использование статического ip
```hcl
resource "google_compute_instance" "instance" {
  ...
  network_interface {
    ...
    access_config {
      nat_ip = var.use_static_ip ? google_compute_address.instance_ip[0].address : null
    }
  }
}
...
resource "google_compute_address" "instance_ip" {
  name  = "reddit-app-ip-${var.environment}"
  count = var.use_static_ip ? 1 : 0
}
```
- В [gitlab-ci/terraform/modules/instance/variables.tf](gitlab-ci/terraform/modules/instance/variables.tf) добавлено описание переменной `use_static_ip`
```hcl
variable use_static_ip {
  description = "Need to create static ip for instance?"
  default     = false
}
```

##### Настройка stage-окружения terraform

- В [gitlab-ci/terraform/stage/main.tf](gitlab-ci/terraform/stage/main.tf) включено использование статического ip для gitlab instance
```hcl
# GitLab instance
module "docker-app" {
  instance_count      = 1  # Количество 1 так как у нас единственный инстанс gitlab
  ...
  use_static_ip       = true
}
```

##### Применение инфраструктуры

- Применение
```shell
cd gitlab && make terraform_apply
```
```log
module.docker-app.google_compute_address.instance_ip[0]: Creating...
module.docker-app.google_compute_address.instance_ip[0]: Creation complete after 4s [id=docker-257914/europe-west1/reddit-app-ip-stage]
module.docker-app.google_compute_instance.instance[0]: Modifying... [id=gitlab-stage-001]
module.docker-app.google_compute_instance.instance[0]: Still modifying... [id=gitlab-stage-001, 10s elapsed]
module.docker-app.google_compute_instance.instance[0]: Modifications complete after 16s [id=gitlab-stage-001]

Apply complete! Resources: 1 added, 1 changed, 0 destroyed.

Outputs:

docker_app_external_ip = [
  "35.195.25.130",
]
```
- Создано доменная запись `gitlab.vscoder.ru A 35.195.25.130`
- После истечения таймаута, GitLab доступен по адресу http://gitlab.vscoder.ru
- Забыл пароль. Восстановление https://docs.gitlab.com/ee/security/reset_root_password.html
```shell
ssh -i ~/.ssh/<private_key> appuser@35.195.25.130
cd /srv/gitlab
sudo docker-compose exec web bash
gitlab-rails console -e production
```
```ruby
user = User.where(id: 1).first
user.password = 'secret_pass'
user.password_confirmation = 'secret_pass'
user.save!
```
- Вход выполнен успешно

##### Интеграция с Let's Encrypt

- На хосте с gitlab в `/srv/gitlab/docker-compose.yml` включена [интеграция с Let's Encrypt](https://docs.gitlab.com/omnibus/settings/ssl.html#primary-gitlab-instance)
```yaml
...
web:
  ...
  environment:
    GITLAB_OMNIBUS_CONFIG: |
      gitlab_rails['gitlab_shell_ssh_port'] = 2222
      letsencrypt['enable'] = true
      external_url "https://gitlab.vscoder.ru"
```
- Гитлаб перезапущен
```sh
sudo docker-compose down; sudo docker-compose up -d && sudo docker-compose logs -f
# wait ~3-5min for ditlab starts
```
```log
...
Recipe: letsencrypt::enable
   * crond_job[letsencrypt-renew] action create
     * file[/var/opt/gitlab/crond/letsencrypt-renew] action create
       - create new file /var/opt/gitlab/crond/letsencrypt-renew
       - update content in file /var/opt/gitlab/crond/letsencrypt-renew from none to d7e87c
       --- /var/opt/gitlab/crond/letsencrypt-renew      2019-11-27 16:19:49.916624624 +0000
       +++ /var/opt/gitlab/crond/.chef-letsencrypt-renew20191127-22-k2j9ix      2019-11-27 16:19:49.916624624 +0000
       @@ -1 +1,2 @@
       +18 0 */4 * * root /opt/gitlab/bin/gitlab-ctl renew-le-certs
       - change owner from '' to 'root'
       - change group from '' to 'root'
   
   * ruby_block[display_le_message] action nothing (skipped due to action :nothing)
   * ruby_block[save_auto_enabled] action run
     - execute the ruby block save_auto_enabled
...
```
- Успешно выполнен вход на https://gitlab.vscoder.ru/
- В Admin Area видно, что встроенный Container Registry стал активным
- Актуальный `docker-compose.yml`
```yaml
web:
  image: 'gitlab/gitlab-ce:latest'
  restart: always
  hostname: 'gitlab.example.com'
  environment:
    GITLAB_OMNIBUS_CONFIG: |
      gitlab_rails['gitlab_shell_ssh_port'] = 2222
      letsencrypt['enable'] = true
      external_url "https://gitlab.vscoder.ru"
  ports:
    - '80:80'
    - '443:443'
    - '2222:22'
  volumes:
    - '/srv/gitlab/config:/etc/gitlab'
    - '/srv/gitlab/logs:/var/log/gitlab'
    - '/srv/gitlab/data:/var/opt/gitlab'
```

##### Настройка сборки образов в .gitlab-ci.yml

###### Попытка решить задачу в лоб (неудачная)

- Удалён вызов фейковых тестов, добавленных ранее в качестве примера
- В [.gitlab-ci.yml](.gitlab-ci.yml) в задачу `build_job` добавлена сборка всех контейнеров
- В репозитории `vscoder_microservices` изменён удалённый репозиторий созданного проекта
```shell
git remote rm gitlab
git remote add gitlab ssh://git@gitlab.vscoder.ru:2222/otus/example.git
git push gitlab gitlab-ci-1
```
- В [gitlab-ci/Makefile](gitlab-ci/Makefile) добавлена цель `push_gitlab` для пуша в remote named _gitlab_
- Выполнен пуш в гитлаб
- Ранее запущенный раннер оказался неактивен из за смены URL gitlab на https://gitlab.vscoder.ru
- Выполнено подключение к контейнеру `sudo docker exec -it gitlab-runner bash`
- В конфиге раннера `/etc/gitlab-runner/gitlab.toml` изменён url с `url = "http://34.76.206.37/"` на `url = "https://gitlab.vscoder.ru/"`
- Контейнер перезапущен
```shell
sudo docker restart gitlab-runner
```
- gitlab-rrunner `gce-docker-runnel` снова стал активен
- pipeline завершилсф ошибкой
```shell
$ cd src && make build_all
docker build -t vscoder/post:2.0-alpine ./post-py
make: docker: Command not found
```
  - Причина - сборка в образе `image: ruby:2.4.2`
- Попытка решения: использование [образа](https://hub.docker.com/_/docker) `docker:stable` для `build_job`
- Ошибка `/bin/sh: eval: line 87: make: not found`
- В [.gitlab-ci.yml](.gitlab-ci.yml) добавлена установка `make`
```yaml
script:
  - echo 'Building'
  - sudo apt install make
  - cd src && make build_all
```
- Ошибка
```log
$ sudo apt install make
/bin/sh: eval: line 87: sudo: not found
```
- убрал sudo
```yaml
script:
  - echo 'Building'
  - apt install make
  - cd src && make build_all
```
- ошибка `/bin/sh: eval: line 87: apt: not found`
- Мы же в alpine linux)) заменил `apt` на `apk`
```yaml
script:
  - echo 'Building'
  - apk install make
  - cd src && make build_all
```
- ошибка `ERROR: 'install' is not an apk command. See 'apk --help'.`
нет чтобы заглянуть в свой старый код (например сборку оборазов на основе alpine))
- заменил `install` на `add`
```yaml
script:
  - echo 'Building'
  - apk add make
  - cd src && make build_all
```
- ошибка
```log
docker build -t vscoder/post:2.0-alpine ./post-py
time="2019-11-27T17:53:26Z" level=error msg="failed to dial gRPC: cannot connect to the Docker daemon. Is 'docker daemon' running on this host?: dial tcp: lookup docker on 169.254.169.254:53: no such host"
error during connect: Post http://docker:2375/v1.40/build?buildargs=%7B%7D&cachefrom=%5B%5D&cgroupparent=&cpuperiod=0&cpuquota=0&cpusetcpus=&cpusetmems=&cpushares=0&dockerfile=Dockerfile&labels=%7B%7D&memory=0&memswap=0&networkmode=default&rm=1&session=d831lkik8627vo4jczmd2jqvm&shmsize=0&t=vscoder%2Fpost%3A2.0-alpine&target=&ulimits=null&version=1: context canceled
make: *** [Makefile:11: build_post] Error 1
```
- попытка решения: указать `DOCKER_HOST: unix:///var/run/docker.sock` так как мы не используем сервис docker-in-docker
- не сработало `Cannot connect to the Docker daemon at unix:///var/run/docker.sock. Is the docker daemon running?`

###### Анализ

- Конец танцам с бубном, время читать документацию: https://docs.gitlab.com/сe/ci/docker/using_docker_build.html
- Самый простой способ -- [использовать shell executor](https://docs.gitlab.com/ce/ci/docker/using_docker_build.html#use-shell-executor)
  - предполагается использование отдельного хоста
  - By adding gitlab-runner to the docker group you are effectively granting gitlab-runner full root permissions
- Так же возможно использовать [docker-in-docker workflow with Docker executor](https://docs.gitlab.com/ce/ci/docker/using_docker_build.html#use-docker-in-docker-workflow-with-docker-executor)
  - Читать https://jpetazzo.github.io/2015/09/03/do-not-use-docker-in-docker-for-ci/ до просветления, почему так лучше не делать
- Тертий способ -- [Use Docker socket binding](https://docs.gitlab.com/ce/ci/docker/using_docker_build.html#use-docker-socket-binding)
  - **WARNING** Docker in privileged mode

Минусы решения **docker-in-docker**
- Проблемы при использовании SElinux или AppArmor
- Проблемы при использовании DeviceMapper (DM not namespaced)
- Или отказ от использования кэша образов, или возможность повреждения данных в случае использования кэша хоста
  > But try to do something more involved (pull the same image from two different instances…) and watch the world burn.
- Рекомендации от автора статьи
  > And the simplest way is to just expose the Docker socket to your CI container, by bind-mounting it with the -v flag.
  > ...
  > And the simplest way is to just expose the Docker socket to your CI container, by bind-mounting it with the -v flag.

Минусы docker sockert binding

> By sharing the docker daemon, you are effectively disabling all the security mechanisms of containers and exposing your host to privilege escalation which can lead to container breakout. For example, if a project ran docker rm -f $(docker ps -a -q) it would remove the GitLab Runner containers.

> Concurrent jobs may not work; if your tests create containers with specific names, they may conflict with each other.

> Sharing files and directories from the source repo into containers may not work as expected since volume mounting is done in the context of the host machine, not the build container. For example:

Было принято решение поднять раннер на отдельном хосте

###### Подготовка хоста для docker runner

- В [gitlab-ci/packer/docker.json](gitlab-ci/packer/docker.json) параметризован параметр `image_family`
- Создан файл [gitlab-ci/packer/variables-gitlab-runner.json](gitlab-ci/packer/variables-gitlab-runner.json) со значениями для образа с gitlab-runner
- **ЗАМЕЧАНИЕ** переменная `project_id` осталась в файле `variables.json`
- В [gitlab-ci/packer/docker.json](gitlab-ci/packer/docker.json) параметризован параметр `playbook_file` для провиженинга образа. Необходимо указывать имя файла плейбука относительно директории `gitlab-ci/ansible/playbooks/docker.yml`. По умолчанию `docker.yml`
- В [gitlab-ci/packer/docker.json](gitlab-ci/packer/docker.json) заданы значения по умолчанию для переменных
```json
{
  ...
  "source_image_family": "ubuntu-1604-lts",
  "image_family": "docker-base",
  ...
}
```
- Переменные,, относящиеся к образу gitlab-сервера, вынесены в отдельный файл [gitlab-ci/packer/variables-gitlab.json](gitlab-ci/packer/variables-gitlab.json)
- Создан плейбук [gitlab-ci/ansible/playbooks/packer-gitlab-runner.yml](gitlab-ci/ansible/playbooks/packer-gitlab-runner.yml), устанавливающий докер и гитлаб-раннер
```yaml
---
- name: Provision image with docker and gitlab-runner
  hosts: all
  become: true
  roles:
    - role: geerlingguy.docker
    - role: riemers.gitlab-runner
```
- В зависимости ансибл [gitlab-ci/ansible/environments/stage/requirements.yml](gitlab-ci/ansible/environments/stage/requirements.yml) добавлена зависимость от роли 
- Установлены зависимости ansible `make ansible_install_requirements`
- В Makefile targets `packer_build` и `packer_validate` добавлено использование переменный из `packer/variables.json`
- В Makefile targets `packer_build` и `packer_validate`, помимо предыдущего пункта, добавлено использование переменных из `PACKER_VAR_FILE?=packer/variables-gitlab-runner.json`
```json
{
  "source_image_family": "ubuntu-1604-lts",
  "image_family": "gitlab-runner-base",
  "machine_type": "n1-standard-1",
  "disk_size": "40",
  "playbook_name": "packer-gitlab-runner.yml"
}
```
- В [gitlab-ci/packer/scripts/ansible-playbook.sh](gitlab-ci/packer/scripts/ansible-playbook.sh) исправлен путь к исполняемому файлу `ansible`
- Выполнена сборка packer-образа gitlab-runner `make packer_build PACKER_VAR_FILE=packer/variables-gitlab-runner.json`
  - **ОШИБКА** `Version '12.5.2' for 'gitlab-runner' was not found`
  - из [gitlab-ci/ansible/playbooks/packer-gitlab-runner.yml](gitlab-ci/ansible/playbooks/packer-gitlab-runner.yml) удален параметр версии `gitlab_runner_package_version`
  - сборка прошла успешно
- В [gitlab-ci/terraform/stage/main.tf](gitlab-ci/terraform/stage/main.tf) создан ещё один хост
```hcl
# Gitlab Runner
module "gitlab-runner" {
  instance_count      = 1
  source              = "../modules/instance"
  project             = var.project
  zone                = var.zone
  environment         = var.environment
  name_prefix         = "gitlab-runner"
  machine_type        = "g1-small"
  instance_disk_image = "gitlab-runner-base"
  tags                = ["gitlab-runner"]
  tcp_ports           = ["22"]
  vpc_network_name    = var.vpc_network_name
  use_static_ip       = false
}
```
- В [gitlab-ci/terraform/stage/main.tf](gitlab-ci/terraform/stage/main.tf) часть параметров хостов задаётся явно, а не из переменных
- Создан инстанс хоста для gitlab-runner `make terraform_apply`
```log
Outputs:

docker_app_external_ip = [
  "35.195.25.130",
]
```
- Проверяем что ансибл увидел хост
```shell
make ansible_inventory_list
```
```json
...
    "all": {
        "children": [
            "env_stage",
            "gitlab_docker_app",
            "gitlab_runner",
            "ungrouped"
        ]
    },
    "env_stage": {
        "hosts": [
            "gitlab-runner-stage-001",
            "gitlab-stage-001"
        ]
    },
    "gitlab_docker_app": {
        "hosts": [
            "gitlab-stage-001"
        ]
    },
    "gitlab_runner": {
        "hosts": [
            "gitlab-runner-stage-001"
        ]
    }
...
```

###### Подготовлен docker-runner

- Создан плейбук [gitlab-ci/ansible/playbooks/gitlab-runner.yml](gitlab-ci/ansible/playbooks/gitlab-runner.yml), запускающий и регистрирующий раннеры
```yaml
---
- name: Provision image with docker and gitlab-runner
  hosts: gitlab_runner
  become: true
  roles:
    - role: riemers.gitlab-runner
```
- Создай файл [gitlab-ci/ansible/environments/stage/group_vars/gitlab_runner](gitlab-ci/ansible/environments/stage/group_vars/gitlab_runner), содержащий переменные необходимые для работы плейбука. При этом значение токена берётся из переменной окружения
```yaml
gitlab_runner_registration_token: "{{ lookup('env','GITLAB_RUNNER_REGISTRATION_TOKEN') }}"
```

- Применение плейбука завершается ошибкой
```log
TASK [riemers.gitlab-runner : Register runner to GitLab] *****************************************************************************************************************
fatal: [gitlab-runner-stage-001]: FAILED! => {"censored": "the output has been hidden due to the fact that 'no_log: true' was specified for this result", "changed": true}
```
- Запуск в режиме дебага `ANSIBLE_DEBUG=true ansible-playbook -i environments/stage/inventory.gcp.yml playbooks/gitlab-runner.yml` помог выявить ошибку: в [конфиге](gitlab-ci/ansible/environments/stage/group_vars/gitlab_runner) раннеров с типом `docker` не был указан образ по умолчанию (парфметр `docker_image: `)
- Новая ошибка
```log
TASK [riemers.gitlab-runner : Assemble new config.toml] ******************************************************************************************************************
fatal: [gitlab-runner-stage-001]: FAILED! => {"changed": false, "msg": "failed to validate: rc:1 error:Runtime platform                                  \u001b[0;m  arch\u001b[0;m=amd64 os\u001b[0;m=linux pid\u001b[0;m=14766 revision\u001b[0;m=577f813d version\u001b[0;m=12.5.0\nRunning in system-mode.                           \u001b[0;m \n                                                  \u001b[0;m \n\u001b[31;1mFATAL: Near line 29 (last key parsed 'runners.docker.sysctls'): bare keys cannot contain '.'\u001b[0;m \n"}
```
проблема в наличии точек в параметрах `runners.docker.sysctls: `
  - попытка поместить параметры в кавычки успехом не увенчалась
  - принято решение убрать данные параметры из конфига в связи с отсутствием в них необходимости
- новая ошибка
```log
TASK [riemers.gitlab-runner : Assemble new config.toml] ******************************************************************************************************************
fatal: [gitlab-runner-stage-001]: FAILED! => {"changed": false, "msg": "failed to validate: rc:1 error:Runtime platform                                  \u001b[0;m  arch\u001b[0;m=amd64 os\u001b[0;m=linux pid\u001b[0;m=24632 revision\u001b[0;m=577f813d version\u001b[0;m=12.5.0\nRunning in system-mode.                           \u001b[0;m \n                                                  \u001b[0;m \n\u001b[31;1mFATAL: toml: cannot load TOML value of type map[string]interface {} into a Go string\u001b[0;m \n"}
```
- проблема была в раннере `GitLab Runner shell`
```yaml
  - name: "GitLab Runner shell"
    executor: shell
    tags:
      - shell
    run_untagged: false
```
данный раннер был исключён из списка, после чего плейбук успешно применился
- в итоге было зарезервировано 2 раннера 
  - `GitLab Runner dind` для сборки докер-образов
  - `GitLab Runner docker` для запуска всего остального
- **ВАЖНО** было обнаркжено, что раннер `GitLab Runner docker` недоступен. После явного указания тега образа в конфиге раннера и перезапуска gitlab-runner.service, раннер снова связался с сервером. Соответствующие изменения внесены в переменные группы gitlab-runner[gitlab-ci/ansible/environments/stage/group_vars/gitlab_runner](gitlab-ci/ansible/environments/stage/group_vars/gitlab_runner)

###### Автоматизированная сборка образов

- В [.gitlab-ci.yml](.gitlab-ci.yml) в `build_job` добавлен параметр `tags: ["dind"]` чтобы запуск билда выполнялся на правильном раннере. Так же:
  - удалён пунки `image: ruby:2.4.2`
- Сборка образов **прошла успешно**!

##### Загрузка образов в gitlab registry

https://docs.gitlab.com/ee/user/packages/container_registry/index.html

https://docs.gitlab.com/ee/ci/variables/predefined_variables.html#variables-reference

- Проверяем что registry включен для проекта _Packages_ > _Container Registry_ [документация](https://docs.gitlab.com/ee/user/packages/container_registry/index.html#enable-the-container-registry-for-your-project)
- Логинимся, для этого в `build_job` `before_script` добавляем `docker login`
```yaml
...
build_job:
  stage: build
  before_script:
    - docker info
    - docker login -u $CI_REGISTRY_USER -p $CI_REGISTRY_PASSWORD $CI_REGISTRY
...
```
- после прочтения документации https://docs.gitlab.com/ee/ci/yaml/#before_script-and-after_script логин в регистри перенесён в секцию `script`
```yaml
...
build_job:
  ...
  script:
    # login
    - docker info
    - docker login -u $CI_REGISTRY_USER -p $CI_REGISTRY_PASSWORD $CI_REGISTRY
    ...
...
```
- Изменена сборка образов. Теперь они собираются вручную, без использования make. **НА БУДУЩЕЕ** в целях избежания разбухания make-файла, сборка образов для гитлаб в него добавлена не была.
```yaml
build_job:
  ...
  script:
    # login
    ...
    # build
    - cd src && docker build -t ${CI_REGISTRY_IMAGE}/post:${CI_COMMIT_REF_NAME} ./post
    - cd src && docker build -t ${CI_REGISTRY_IMAGE}/comment:${CI_COMMIT_REF_NAME} ./comment
    - cd src && docker build -t ${CI_REGISTRY_IMAGE}/ui:${CI_COMMIT_REF_NAME} ./ui
```
- Добавлена загрузка образов в gitlab registry
```yaml
build_job:
  ...
  script:
    # login
    ...
    # build
    ...
    # push
    - docker push ${CI_REGISTRY_IMAGE}/post:${CI_COMMIT_REF_NAME}
    - docker push ${CI_REGISTRY_IMAGE}/comment:${CI_COMMIT_REF_NAME}
    - docker push ${CI_REGISTRY_IMAGE}/ui:${CI_COMMIT_REF_NAME}
```
- Попытка прогона пайплайна: ошибка
```log
Error response from daemon: Get https://gitlab.vscoder.ru:5050/v2/: net/http: request canceled while waiting for connection (Client.Timeout exceeded while awaiting headers)
```
подозрение на фаервол
- В [gitlab-ci/terraform/stage/main.tf](gitlab-ci/terraform/stage/main.tf) порт `5050` добавлен в список разрешённых для gitlab-сервера. Конфигурация применена `make terraform_apply`. **НА БУДУЩЕЕ** Правильным будет создание отдельного правила, разрешающего доступ к регистри только с раннеров. Но подобные правила удобнее использовать при плоской (без использования модулей) структуре проекта terraform.
- Сохранены изменения в [.gitlab-ci.yml](.gitlab-ci.yml), удаляющие установку `make` из `build_job`
- Следующая попытка выполнить пайплайн `make push_gitlab`
```log
Error response from daemon: Get https://gitlab.vscoder.ru:5050/v2/: dial tcp 35.195.25.130:5050: connect: connection refused
```
похоже что порт registry не проброшен при запуске gitlab-server
- маппинг порта `5050:5050` добавлен в `docker-compose.yml` на хосте _gitlab.flexline.ru_. Гитлаб перезапущен `cd /srv/gitlab && sudo docker-compose restart`
- Повторная попытка ... та же ошибка
- gitlab-сервер перезапущен через `sudo docker-compose down; docker-compose up -d` и логин прошёл успешно!
- новая ошибка:
```log
unable to prepare context: path "./post" not found
```
  - добавлено немного дебага в пайплайн... больше дебага))
  ```yaml
  # debug
  - pwd
  - ls -la
  - ls -la ./src
  - apk add tree
  - tree
  ```
  - при сборке образов использованы относительные пути с `./src` вместо `src`
  - причина проблемы была в том, что директория с приложением `post` называется не `post`, а `post-py`. В - внимательность! Нужно было нормально скопипастить или проверить.
  - Убран дебаг
  - Исправлен путь на `./post-py`
- При запуске пайплайна -- ошибка
```log
Successfully tagged gitlab.vscoder.ru:5050/otus/example/post:gitlab-ci-1
$ cd ./src && docker build -t ${CI_REGISTRY_IMAGE}/comment:${CI_COMMIT_REF_NAME} ./comment
$ cd ./src && docker build -t ${CI_REGISTRY_IMAGE}/ui:${CI_COMMIT_REF_NAME} ./ui
$ docker push ${CI_REGISTRY_IMAGE}/post:${CI_COMMIT_REF_NAME}
/bin/sh: cd: line 92: can't cd to ./src: No such file or directory
/bin/sh: cd: line 94: can't cd to ./src: No such file or directory
...
$ docker push ${CI_REGISTRY_IMAGE}/comment:${CI_COMMIT_REF_NAME}
The push refers to repository [gitlab.vscoder.ru:5050/otus/example/comment]
An image does not exist locally with the tag: gitlab.vscoder.ru:5050/otus/example/comment
```
это вам не Makefile! все команды `script` выполняются в одном shell
  - Пайплайн изменён. `cd` выполняется только один раз
    ```yaml
      # build
      - cd ./src
      - docker build
    ```
- **СБОРКА ПРОШЛА УСПЕШНО!!!**
- Итоговый `build_job`
```yaml
build_job:
  stage: build
  variables:
    DOCKER_HOST: unix:///var/run/docker.sock
  script:
    # login
    - docker info
    - docker login -u $CI_REGISTRY_USER -p $CI_REGISTRY_PASSWORD $CI_REGISTRY
    # build
    - cd ./src
    - docker build -t ${CI_REGISTRY_IMAGE}/post:${CI_COMMIT_REF_NAME} ./post-py
    - docker build -t ${CI_REGISTRY_IMAGE}/comment:${CI_COMMIT_REF_NAME} ./comment
    - docker build -t ${CI_REGISTRY_IMAGE}/ui:${CI_COMMIT_REF_NAME} ./ui
    # push
    - docker push ${CI_REGISTRY_IMAGE}/post:${CI_COMMIT_REF_NAME}
    - docker push ${CI_REGISTRY_IMAGE}/comment:${CI_COMMIT_REF_NAME}
    - docker push ${CI_REGISTRY_IMAGE}/ui:${CI_COMMIT_REF_NAME}
  tags:
    - dind
```

### Задание со \*: Деплой контейнера на созданный для ветки сервер

Деплойте контейнер с reddit на созданный для ветки сервер.

Примерный план:
- в packer подготовить образ с docker
- в terraform на базе образа описать хост
- в ansible реализовать запуск приложения средствами `docker-compose` из ранее собранных образов

#### Реализация

##### Packer

- Создан playbook устанавливающий docker и необходимые для провиженинга ansible-ом пакеты [gitlab-ci/ansible/playbooks/packer-stage-server.yml](gitlab-ci/ansible/playbooks/packer-stage-server.yml)
```yaml
---
- import_playbook: docker.yml

- name: Install docker on all hosts
  hosts: all
  become: true
  vars:
    ansible_python_interpreter: /usr/bin/python3
  tasks:
    - name: Ensure necessary packages are installed
      apt:
        name:
          - python3-pip
          - libffi-dev
          - libssl-dev
        state: present

    - name: Ensure docker-compose and docker is installed
      pip:
        executable: /usr/bin/pip3
        name:
          - docker
          - docker-compose
        state: present
```
- Создан [gitlab-ci/packer/variables-stage-server.json](gitlab-ci/packer/variables-stage-server.json) файл с переменными описывающими stage-сервер
```json
{
  "source_image_family": "ubuntu-1604-lts",
  "image_family": "stage-server-base",
  "machine_type": "g1-small",
  "disk_size": "40",
  "playbook_name": "packer-gitlab-runner.yml"
}
```
- Валидация `make packer_validate PACKER_VAR_FILE=packer/variables-stage-server.json` успешна
- Собран образ `make packer_build PACKER_VAR_FILE=packer/variables-stage-server.json`

##### Terraform

- В [gitlab-ci/terraform/stage/main.tf](gitlab-ci/terraform/stage/main.tf) добавлен `Stage server`
```hcl
# Stage server
module "stage-server" {
  instance_count      = 1
  source              = "../modules/instance"
  project             = var.project
  zone                = var.zone
  environment         = var.environment
  name_prefix         = "stage-server"
  machine_type        = "g1-small"
  instance_disk_image = "stage-server-base"
  tags                = ["stage-server"]
  tcp_ports           = ["22", "80", "443"]
  vpc_network_name    = var.vpc_network_name
  use_static_ip       = false
}
```
- в [gitlab-ci/terraform/stage/outputs.tf](gitlab-ci/terraform/stage/outputs.tf) добавлено отображение внешнего ip
```hcl
...
output "stage_server_external_ip" {
  value = module.stage-server.instances_external_ip
}
```
- terraform проинициализирован `make terraform_init`
- инфраструктура применена `make terraform_apply`

##### Ansible

###### Поиск решения

[Ansible Docker Guide](https://docs.ansible.com/ansible/latest/scenario_guides/guide_docker.html)

Для реализации задачи можно использовать модули:

- [docker_container](https://docs.ansible.com/ansible/latest/modules/docker_container_module.html)
- [docker_compose](https://docs.ansible.com/ansible/latest/modules/docker_compose_module.html)

После беглого изучения, было принято решение использовать `docker_compose` как более простое решение

###### Реализация

- Создан плейбук [gitlab-ci/ansible/playbooks/deploy-dev.yml](gitlab-ci/ansible/playbooks/deploy-dev.yml)
- Содержимое compose-файла скопировано из [src/docker-compose.yml](src/docker-compose.yml) в [gitlab-ci/ansible/playbooks/deploy-dev.yml](gitlab-ci/ansible/playbooks/deploy-dev.yml)
- При запуске плейбука `ansible-playbook -i environments/stage/inventory.gcp.yml playbooks/stage-server.yml --check` ошибка:
```log
fatal: [stage-server-stage-001]: FAILED! => {"ansible_facts": {"discovered_interpreter_python": "/usr/bin/python"}, "changed": false, "msg": "Unable to find any of pip2, pip to use.  pip needs to be installed."}
```
- В результате был перепакован базовый образ. Подробности в описании packer
- Применение плейбука `cd gitlab-ci/ansible && ansible-playbook -i environments/stage/inventory.gcp.yml playbooks/stage-server.yml`
- Ошибка
```log
fatal: [stage-server-stage-001]: FAILED! => {"ansible_facts": {"discovered_interpreter_python": "/usr/bin/python"}, "changed": false, "module_stderr": "Shared connection to 35.240.27.254 closed.\r\n", "module_stdout": "\r\nTraceback (most recent call last):\r\n  File \"/home/appuser/.ansible/tmp/ansible-tmp-1575154178.6186209-224854152348994/AnsiballZ_docker_compose.py\", line 102, in <module>\r\n    _ansiballz_main()\r\n  File \"/home/appuser/.ansible/tmp/ansible-tmp-1575154178.6186209-224854152348994/AnsiballZ_docker_compose.py\", line 94, in _ansiballz_main\r\n    invoke_module(zipped_mod, temp_path, ANSIBALLZ_PARAMS)\r\n  File \"/home/appuser/.ansible/tmp/ansible-tmp-1575154178.6186209-224854152348994/AnsiballZ_docker_compose.py\", line 40, in invoke_module\r\n    runpy.run_module(mod_name='ansible.modules.cloud.docker.docker_compose', init_globals=None, run_name='__main__', alter_sys=True)\r\n  File \"/usr/lib/python2.7/runpy.py\", line 188, in run_module\r\n    fname, loader, pkg_name)\r\n  File \"/usr/lib/python2.7/runpy.py\", line 82, in _run_module_code\r\n    mod_name, mod_fname, mod_loader, pkg_name)\r\n  File \"/usr/lib/python2.7/runpy.py\", line 72, in _run_code\r\n    exec code in run_globals\r\n  File \"/tmp/ansible_docker_compose_payload_oSfl3K/ansible_docker_compose_payload.zip/ansible/modules/cloud/docker/docker_compose.py\", line 483, in <module>\r\n  File \"/usr/local/lib/python2.7/dist-packages/compose/cli/command.py\", line 12, in <module>\r\n    from .. import config\r\n  File \"/usr/local/lib/python2.7/dist-packages/compose/config/__init__.py\", line 6, in <module>\r\n    from .config import ConfigurationError\r\n  File \"/usr/local/lib/python2.7/dist-packages/compose/config/config.py\", line 50, in <module>\r\n    from .validation import match_named_volumes\r\n  File \"/usr/local/lib/python2.7/dist-packages/compose/config/validation.py\", line 12, in <module>\r\n    from jsonschema import Draft4Validator\r\n  File \"/usr/local/lib/python2.7/dist-packages/jsonschema/__init__.py\", line 33, in <module>\r\n    import importlib_metadata as metadata\r\n  File \"/usr/local/lib/python2.7/dist-packages/importlib_metadata/__init__.py\", line 9, in <module>\r\n    import zipp\r\n  File \"/usr/local/lib/python2.7/dist-packages/zipp.py\", line 12, in <module>\r\n    import more_itertools\r\n  File \"/usr/local/lib/python2.7/dist-packages/more_itertools/__init__.py\", line 1, in <module>\r\n    from more_itertools.more import *  # noqa\r\n  File \"/usr/local/lib/python2.7/dist-packages/more_itertools/more.py\", line 460\r\n    yield from iterable\r\n             ^\r\nSyntaxError: invalid syntax\r\n", "msg": "MODULE FAILURE\nSee stdout/stderr for the exact error", "rc": 1}
```
  - Проблема проявилась только для docker-compose на python2.
  - Выполнена адаптация [gitlab-ci/ansible/playbooks/packer-stage-server.yml](gitlab-ci/ansible/playbooks/packer-stage-server.yml) для работы с python3. Для этогоъ
    - В play задана переменная `ansible_python_interpreter: /usr/bin/python3`
    - Установлены необходимые для docker-compose пакеты
    ```yaml
    - python3-pip
    - libffi-dev
    - libssl-dev
    ```
    - Для модуля `pip: ` задан параметр `executable: /usr/bin/pip3`
  - Пересборка базового образа и редеплой хоста
  ```shell
  make packer_build PACKER_VAR_FILE=packer/variables-stage-server.json
  cd terraform/stage
  terraform taint "module.stage-server.google_compute_instance.instance[0]"
  cd ../../
  make terraform_apply
  yes
  ```
- Попытка накатить плейбук `cd ./ansible && ansible-playbook -i environments/stage/inventory.gcp.yml playbooks/stage-server.yml`
- УРА! Новыя ошибка))
```log
"Error starting project 400 Client Error: Bad Request (\"no such image: comment:: invalid reference format\")"
```
образов нет в регистри или неверно формируется имя образа
TODO: пора спать 
**ПРИЧИНА** загрузка образов должна осуществляться на gitlab-runner для корректной подстановки переменных
- В [.gitlab-ci.yml](.gitlab-ci.yml) будем работать с `deploy_dev_job: `

###### Подготовка gitlab-runner

Задача - деплой с gitlab-runner средствами ansible

Варианты решения:
- Проброс ssh-ключей с раннера в контейнер https://www.bevuta.com/en/blog/continuous-delivery-with-gitlab-ci-and-ansible-part-1/
- Пример `.gitlab-ci.yml` где ключ пердаётся переменной https://github.com/mikhno-s/gitlab-ci-deploy-ansible/blob/master/.gitlab-ci.yml
- Похожее решение, но описанное в статье https://ealebed.github.io/posts/2017/gitlab-ci-часть-9-этап-deploy-в-.gitlab-ci.yml/ При этом ansible не используется -- но описан интересный способ проброса ключа

Подробнее про работу ansible с gce https://docs.ansible.com/ansible/latest/scenario_guides/guide_gce.html

Для деплоя выбран docker-образ [cytopia/ansible:2.9](https://hub.docker.com/r/cytopia/ansible). Преимущества описаны по ссылке. Анализ команд (глазками), использованных для сборки, противопоказаний не выявил. **ПРИМЕЧАНИЕ**: можно было бы прикрутить автоматизированный анализ на безопасность и проие плюшки -- но это правильнее оставлять на разработчиков образа. Образ достаточно популярный (10М+).

Описание `deploy_dev_job`
- Первым делом установка зависимостей
```shell
ansible-galaxy install -r environments/stage/requirements.yml
```
- Затем отобразим наш inventory, но для этого нужно раннеру передать gcp `credentials.json`
  - В рамках проекта создана переменная `GCP_SERVICE_ACCOUNT_FILE` типа file с содержимым `~/.gce/docker-257914-ansible-inventory.json` в качестве значения
  - показать inventory `ansible-invfentory -i environments/stage/inventory.gcp.yml list`
- Ошибка парсинга `inventory.gcp.yml` по причине отсутствия необходимых библиотек.
  - Ставим библиотеки `pip3 install requests google-auth`
- Ошибка, не находит `/root/.gce/docker-257914-ansible-inventory.json`
  - Добавлено отладочное сообщение `echo GCP_SERVICE_ACCOUNT_FILE=$GCP_SERVICE_ACCOUNT_FILE`
  - Отображает имя файла. Похоже баг инвентори-модуля
  - Комментирование параметра `service_account_file` в [gitlab-ci/ansible/environments/stage/inventory.gcp.yml](gitlab-ci/ansible/environments/stage/inventory.gcp.yml) **помогло**
  - Для раннера создан отдельный inventory [gitlab-ci/ansible/environments/stage/runner-inventory.gcp.yml](gitlab-ci/ansible/environments/stage/runner-inventory.gcp.yml) без указания `service_account_file`
- Пайплайн завершился успехом
- Плейбук `gitlab-ci/ansible/playbooks/stage-server.yml` переименован в [gitlab-ci/ansible/playbooks/deploy-dev.yml](gitlab-ci/ansible/playbooks/deploy-dev.yml)
- Следующим шагом применяем плейбук `ansible-playbook -i environments/stage/runner-inventory.gcp.yml playbooks/deploy-dev.yml -vvvv`
  - **ЗАМЕЧЕНИЕ** не используется конфиг
  ```log
  [WARNING]: Ansible is being run in a world writable directory
  (/builds/otus/example/gitlab/ansible), ignoring it as an ansible.cfg source.
  For more information see
  https://docs.ansible.com/ansible/devel/reference_appendices/config.html#cfg-in-
  world-writable-dir
  ansible-playbook 2.9.1
    config file = None
    configured module search path = ['/root/.ansible/plugins/modules', '/usr/share/ansible/plugins/modules']
    ansible python module location = /usr/lib/python3.6/site-packages/ansible
    executable location = /usr/bin/ansible-playbook
    python version = 3.6.9 (default, Oct 17 2019, 11:10:22) [GCC 8.3.0]
  No config file found; using defaults
  ```
- Ошибка `FileNotFoundError: [Errno 2] No such file or directory: b'ssh': b'ssh'`. Проблема -- отсутствие ssh-клиента
  - Установка ssh-клиента `"which ssh-agent || (apk update && apk add openssh-client)"`
- Ошибка `Host key verification failed.`
  - Игнорирование ключа хоста `export ANSIBLE_HOST_KEY_CHECKING=False`
- Ошибка `Permission denied (publickey).` Нужно пробросить ключ.
  - Необходимо пробросить ключ. Ссылка по теме https://docs.gitlab.com/ce/ci/ssh_keys/
  - Использовать ключ с паролем возможно, но пароль должен быть передан через переменную. Вприанты описаны [здесь](https://unix.stackexchange.com/questions/90853/how-can-i-run-ssh-add-automatically-without-a-password-prompt). Но для production-среды нужно использовать другие механизмы
  - Сгенерирован ключ без пароля (чтобы не вводить излишних усложнений)
  ```shell
  ssh-keygen -t rsa -f ~/.ssh/id_rsa_appuser_deploy_stage
  ```
  - В gitlab проект добавлена переменная `SSH_PRIVATE_KEY`, типа `file`, содержащая приватный ssh-ключ для подключения к stage-server
  - В [gitlab-ci/ansible/playbooks/packer-stage-server.yml](gitlab-ci/ansible/playbooks/packer-stage-server.yml) -- плейбук, используемый при прожиге образа packer-ом, реализовано добавление ssh-ключа для деплоя
  - Собран новый базовый образ ВМ
  - terraform-инстанс переименован в dev-server
  - Пересоздан инстанс `make terraform_apply`
  - Ключ в [gitlab-ci/ansible/playbooks/packer-stage-server.yml](gitlab-ci/ansible/playbooks/packer-stage-server.yml) теперь берётся из файла вместо хардкода
- Попытка выполнить пайплайн
- Ошибка
```shell
$ echo "$SSH_PRIVATE_KEY" | tr -d '\r' | ssh-add -
Error loading key "(stdin)": invalid format
```
Проблема в том, что тип переменной `file`. Исправлено на 
```shell
cat "$SSH_PRIVATE_KEY" | tr -d '\r' | ssh-add -
```
- Попытка выполнить пайплайн
- Успешно не выполнился)) `[WARNING]: Could not match supplied host pattern, ignoring: stage_server`
  - Исправлен целевой хост плейбука на `hosts: dev_server`
- Ошибка: плейбук не видит ssh-ключ
  - Вместо использования `ssh-agent`, путь к ssh ключу указан в переменной окружения
  ```shell
  export ANSIBLE_SSH_PRIVATE_KEY_FILE="$SSH_PRIVATE_KEY"
  ```
  - Указан пользователь 
  ```shell
  export ANSIBLE_SSH_USER=appuser
  ```
  - Отключен `become: true`
  - Та же ошибка
  ```log
  <35.195.42.124> ESTABLISH SSH CONNECTION FOR USER: None
  <35.195.42.124> SSH: EXEC ssh -vvv -C -o ControlMaster=auto -o ControlPersist=60s -o StrictHostKeyChecking=no -o KbdInteractiveAuthentication=no -o PreferredAuthentications=gssapi-with-mic,gssapi-keyex,hostbased,publickey -o PasswordAuthentication=no -o ConnectTimeout=10 -o ControlPath=/root/.ansible/cp/1ae30ff2c4 35.195.42.124 '/bin/sh -c '"'"'echo ~ && sleep 0'"'"''
  ```
  Похоже что переменные не имеют эффекта
  - НУЖНО ЧИТАТЬ ДОКУМЕНТАЦИЮ!!!
  - Изменены имена переменных
  ```shell
  export ANSIBLE_REMOTE_USER=appuser
  export ANSIBLE_PRIVATE_KEY_FILE="$SSH_PRIVATE_KEY"
  ```
  - Исправлены разрешения на private key
  ```shell
  chmod 0600 "$SSH_PRIVATE_KEY"
  ```
- Параметризован пользователь `appuser`, с использованием значения по-умолчанию (**ВАЖНО!** добавлено позже, не тестировалось. Будет чем заняться вечером)). Ссылка на источник [StackOverflow](https://stackoverflow.com/questions/2013547/assigning-default-values-to-shell-variables-with-a-single-command-in-bash)
  ```shell
  export ANSIBLE_REMOTE_USER=${ANSIBLE_USER:-appuser}
  ```
- Результат последнего пайплайна: ошибка
```log
"msg": "Error connecting: Error while fetching server API version: ('Connection aborted.', PermissionError(13, 'Permission denied'))"
```
  - предполагаемая причина: невозможность подключиться к docker-демону из под текущего пользователя
  - Варианты решения:
    - [x] дать права пользователю appuser
    - [ ] запускать композ с `become: yes`
  - Выбран первый вариант как наиболее правильный с точки зрения безопасности
    - В [gitlab-ci/ansible/playbooks/packer-stage-server.yml](gitlab-ci/ansible/playbooks/packer-stage-server.yml) при импорте плейбука `docker.yml` добавлены переменные
      ```yaml
      - import_playbook: docker.yml
        vars:
          docker_users:
            - appuser
      ...
      ```
  - Пересборка packer-образа, пересоздание инстанса
  ```shell
  # packer
  make packer_validate packer_build PACKER_VAR_FILE=packer/variables-stage-server.json
  # terraform
  cd terraform/stage
  terraform state list
  terraform taint "module.dev-server.google_compute_instance.instance[0]"
  cd -
  make terraform_apply
  ```
  - Запуск пайплайна...
- Ошибка
```log
"msg": "Error starting project 400 Client Error: Bad Request (\"no such image: ui:: invalid reference format\")"
```
проблема: не работает подстановка переменных
  - Подстановка переменных выполнена через `lookup('env','VAR_NAME')` в [gitlab-ci/ansible/playbooks/deploy-dev.yml](gitlab-ci/ansible/playbooks/deploy-dev.yml)
  ```yaml
  vars:
    ...
    ci_registry_image: "{{ lookup('env','CI_REGISTRY_IMAGE') }}"
    ci_commit_ref_name: "{{ lookup('env','CI_COMMIT_REF_NAME') }}"
  ```
  - Добавлен дебаг значений переменных
  ```yaml
  - name: Debug vars
      debug:
        msg: |
          ci_registry_image: {{ ci_registry_image }}
          ci_commit_ref_name: {{ ci_commit_ref_name }}
  ```
- Запуск пайплайна: ожидается необходимосто логина в регистри
- Как и ожидалось, ошибка
```log
"msg": "Error starting project 500 Server Error: Internal Server Error (\"Get https://gitlab.vscoder.ru:5050/v2/otus/example/ui/manifests/gitlab-ci-1: denied: access forbidden\")"
```
лекарство: нужен [docker_login](https://docs.ansible.com/ansible/latest/modules/docker_login_module.html)
- Добавлен логин в докер
```yaml
vars:
  ci_registry: "{{ lookup('env','CI_REGISTRY') }}"
  ci_registry_user: "{{ lookup('env','CI_REGISTRY_USER') }}"
  ci_job_token: "{{ lookup('env','CI_JOB_TOKEN') }}"
  ...
tasks:
  - name: Login to gitlab docker registry
    docker_login:
      username: "{{ ci_registry_user }}"
      password: "{{ ci_job_token }}"
      state: present
      #debug: false
      registry_url: "{{ ci_registry }}"
```
- Запускаем пайплайн... **УРА!!!!!!!!!!**
  ```log
  Job succeeded
  ```

###### Проверка

Подключиться к http://34.76.75.218:9292/ не удалось. Причина - фаервол.
В [gitlab-ci/terraform/stage/main.tf](gitlab-ci/terraform/stage/main.tf) `module "dev-server"` список портов приведён к `tcp_ports = ["22", "9292"]`

Приложение открылось, но не работают комментарии...

Предположительно, причиной является отсутствие сервиса (или алиаса) `comment_db`. Сервис создан:
```yaml
service:
  ...
  comment_db:
    image: mongo:3.2
    volumes:
      - comment_db:/data/db
    networks:
        - reddit_back
  ...
```

Запуск пайплайна... ошибка, не было добавлено описание тома `comment_db` в `volumes:`. Fixed.
Запуск пайплайна прошёл **успешно**.
Проверка: http://34.76.75.218:9292
Комментарии создаются. Комментарии видны.

Данная задача **завершена успешно**!

###### Создание Environment

Для добавления корректной ссылки, можно сделать следующее:
- [x] в dns создана wildcard-запись `*.vscoder.ru  A 35.195.25.130`, указывающая на ip с gitlab-сервером
- [x] во время пайплайна на хосте 35.195.25.130 ansible-ом поднимать контейнер с nginx, который будет выступать в роли reverse-proxy к нашему dev-server
  - ip of dev-server можно получать из ansible inventory
  - для авторизации ansible на gitlab.vscoder.ru можно использовать ssh-ключ appuser_docker, который добавляется terraform-ом
  - для деплоя контейнера с nginx можно использовать ansible-модуль `docker_container` или `docker_compose`. Будет использован `docker_compose` как уже провереный.

Поехали:

В terraform [gitlab-ci/terraform/stage/main.tf](gitlab-ci/terraform/stage/main.tf) добавлен тег к gitlab-server и открыт порт `8080`.

```hcl
...
module "docker-app" {
  ...
  tags                = ["gitlab-server", "branch-proxy"]
  tcp_ports           = ["80", "443", "22", "2222", "5050", "8080"]
  ...
}
...
```
`make terraform_apply`

В dns создана wildcard-запись `*.vscoder.ru  A 35.195.25.130`, указывающая на ip с gitlab-сервером

В [gitlab-ci/ansible/playbooks/deploy-dev.yml](gitlab-ci/ansible/playbooks/deploy-dev.yml) добавлен play
```yaml
- name: "Provide nginx reverse-proxy for branch {{ ci_commit_ref_name }}"
  hosts: branch_proxy
  gather_facts: no
  vars:
    ansible_python_interpreter: /usr/bin/python3
    nginx_image_tag: "1.17.6-alpine"
    ci_commit_ref_name: "{{ lookup('env','CI_COMMIT_REF_NAME') }}"
    ci_registry: "{{ lookup('env','CI_REGISTRY') }}"
    ci_registry_user: "{{ lookup('env','CI_REGISTRY_USER') }}"
    ci_job_token: "{{ lookup('env','CI_JOB_TOKEN') }}"
  tasks:
    - name: Debug vars
      debug:
        msg: |
          nginx_image_tag: {{ nginx_image_tag }}
          ci_commit_ref_name: {{ ci_commit_ref_name }}
          ci_registry: {{ ci_registry }}
          ci_registry_user: {{ ci_registry_user }}
          ci_job_token: {{ ci_job_token }}
    - name: Provide nginx config
      copy:
        dest: /etc/nginx.conf
        mode: 0444
        content: |
          events {
            worker_connections  1024;
          }
          http {
            server {
              listen 80;
              listen [::]:80;

              server_name {{ ci_commit_ref_name }}-branch.vscoder.ru;

              location / {
                  proxy_pass http://{{ hostvars['dev-server-stage-001']['ansible_default_ipv4']['address'] }}:9292/;
              }
            }
          }
    - name: Login to gitlab docker registry
      docker_login:
        username: "{{ ci_registry_user }}"
        password: "{{ ci_job_token }}"
        state: present
        #debug: false
        registry_url: "{{ ci_registry }}"
    - name: Deploy nginx
      docker_compose:
        project_name: branchproxy
        debug: yes
        definition:
          version: "3.3"
          services:
            nginx:
              image: "nginx:{{ nginx_image_tag }}"
              ports:
                - 8080:80
              volumes:
                - /etc/nginx.conf:/etc/nginx/nginx.conf:ro
      register: output

    - debug:
        var: output

    - assert:
        that:
          - "nginx.branchproxy_nginx_1.state.running"
```

В [.gitlab-ci.yml](.gitlab-ci.yml) добавлен environment
```yaml
environment:
  name: dev
  url: http://${CI_COMMIT_REF_NAME}-branch.vscoder.ru
```

Запуск пайплайна... Ошибка:
```log
"msg": "The task includes an option with an undefined variable. The error was: 'ansible.vars.hostvars.HostVarsVars object' has no attribute 'default_ipv4'\n\nThe error appears to be in '/builds/otus/example/gitlab/ansible/playbooks/deploy-dev.yml': line 103, column 7, but may\nbe elsewhere in the file depending on the exact syntax problem.\n\nThe offending line appears to be:\n\n          ci_job_token: {{ ci_job_token }}\n    - name: Provide nginx config\n      ^ here\n"
```
Предполагаемая причина: не получены факты о хосте `dev-server-stage-001` в рамках данного play.

Получаем факты:
```yaml
- name: "Get facts about {{ branch_server }}"
  setup:
  delegate_to: "{{ branch_server }}"
  delegate_facts: yes
```

Запуск пайплайна... Ошибка та же. Но дебаг - штука хорошая)

Исправлена переменная, получающая ip o fbranch_server
```log
hostvars['dev-server-stage-001']['ansible_default_ipv4']['address']
```

Запуск пайплайна... Ошибка
```log
appuser@35.195.25.130: Permission denied (publickey).
```
Причина: для gitlab-runner у нас свой ssh-ключ без пароля.

Необходимо доставить ключ на gitlab-server. На данном этапе это будет сделано руками, так как пересборка образа packer-ом повлечёт пересоздание инстанса gitlab, что в свою очередь обнулит конфигурацию gitlab. TODO: продумать возможность вносить подобные изменения без потери данных.

Ключ добавлен. Запускаем пайплайн... Ошибка
```log
TASK [Provide nginx config] ****************************************************
...
"msg": "Destination /etc not writable"
```

Добавляем `become: yes` в TASK [Provide nginx config]

Запускаем пайплайн... Ошибка:
```log
"msg": "Failed to import the required Python library (Docker SDK for Python: docker (Python >= 2.7) or docker-py (Python 2.6)) on gitlab-stage-001's Python /usr/bin/python3. Please read module documentation and install in the appropriate location. If the required library is installed, but Ansible is using the wrong Python interpreter, please consult the documentation on ansible_python_interpreter, for example via `pip install docker` or `pip install docker-py` (Python 2.6). The error was: No module named 'docker'"
```

Знакомые грабли))

Утащено из [gitlab-ci/ansible/playbooks/packer-stage-server.yml](gitlab-ci/ansible/playbooks/packer-stage-server.yml) (но правильнее было бы добавить в базовый образ для gitlab-server)
```yaml
- name: Ensure necessary packages are installed
  apt:
    name:
      - python3-pip
      - libffi-dev
      - libssl-dev
    state: present

- name: Ensure docker-compose and docker is installed
  pip:
    executable: /usr/bin/pip3
    name:
      - docker
      - docker-compose
    state: present
```

Запуск пайплайна... снова нехватает пермишнов.

Добавил `become: yes` на уровень play, так как appuser на gitlab-server не в группе docker

Запуск пайплайна... **УРА!!!** пайплайн отработал.

Заходим на http://gitlab-ci-1-branch.vscoder.ru:8080/ и получаем connection reset. Потому что в конфиге nginx порт 8080, а у нас перенаправление на контейнер 80. Исправлен конфиг nginx.

Запуск пайплайна... То же самое.
```shell
sudo docker ps
```
поазал отсутствие запущенного nginx
```shell
sudo docker ps -a
```
показал что контейнер остановлен
```shell
sudo docker logs branchproxy_nginx_1
```
```log
2019/12/03 20:41:39 [emerg] 1#1: "server" directive is not allowed here in /etc/nginx/nginx.conf:1
nginx: [emerg] "server" directive is not allowed here in /etc/nginx/nginx.conf:1
2019/12/03 20:47:09 [emerg] 1#1: "server" directive is not allowed here in /etc/nginx/nginx.conf:1
nginx: [emerg] "server" directive is not allowed here in /etc/nginx/nginx.conf:1
```
ну да, кривовато я конфиг написал)) Исправлено. Описано выше.

Запуск пайплайна... Ошибка конфига. Поправлено.

Запуск пайплайна... **IT WORKS!!!** по ссылке открылся сайт))

Исправлена ссылка в `environment:` пайплайна. Сайт открывается по ссылке.

Рефакторинг [.gitlab-ci.yml](.gitlab-ci.yml) произведён не будет. Дебаг переменных, подробный вывод и прочие отладочные сообщения остаются в качестве примера для использования в будущем. Главное -- кож рабочий и задокументирован.

В [.gitlab-ci.yml](.gitlab-ci.yml) `deploy_dev_job` имя environment-а теперь задаётся значением `${CI_COMMIT_REF_NAME}`
Протестировано.

### Задание со \*: Автоматизированное создание и регистрация раннеров

Продумайте автоматизацию развертывания и регистрации Gitlab CI Runner. В больших организациях количество Runners может превышать 50 и более, сетапить их руками становится проблематично.
Реализацию функционала добавьте в репозиторий в папку gitlab-ci;

Реализовано в рамках задачи по сборке образов.

С целью соблюсти условия ДЗ, директория `gitlab/` переименована в `gitlab-ci/`, с исправлением ссылок в [.gitlab-ci.yml](.gitlab-ci.yml) и [README.md](README.md)

Проверены все пайплайны... успешно!

#### Проработка скейлинга раннеров

В terraform [gitlab-ci/terraform/stage/main.tf](gitlab-ci/terraform/stage/main.tf) количество инстансов `module "gitlab-runner"` установлено в 3.
```hcl
# Gitlab Runner
module "gitlab-runner" {
  instance_count      = 3
  ...
```
Применена инфраструктура `make terraform_apply`
Выполнен провиженинг раннеров `cd ./ansible && ansible-playbook -i environments/stage/inventory.gcp.yml playbooks/gitlab-runner.yml`. Без ошибок.

НО новые раннеры не зарегистрированы. Предположительная причина: переменная `gitlab_runner_registration_token` берётся из переменной окружения `$GITLAB_RUNNER_REGISTRATION_TOKEN` на машине, с которой запускается плейбук. Данная переменная не задана. Лечение:
```shell
export GITLAB_RUNNER_REGISTRATION_TOKEN="hereisatoken"
```

Заново запущен плейбук `ansible-playbook -i environments/stage/inventory.gcp.yml playbooks/gitlab-runner.yml`

Новые раннеры появились в списке.

Все пайплайны пройдены успешно. Пйплайны отработали на новых раннерах.

### Задание со \*: Отправка уведомлений о работе pipeline в Slack

Настройте интеграцию вашего Pipeline с тестовым Slack-чатом, который вы использовали ранее. Для этого перейдите в Project Settings > Integrations > Slack notifications. Нужно установить active, выбрать события и заполнить поля с URL вашего Slack webhook.
Добавьте ссылку на канал в слаке, в котором можно проверить работу оповещений, в файл README.md;

Про slack webhooks https://api.slack.com/messaging/webhooks

1. Create a Slack app (if you don't have one already). Link is in docs
2. Enable Incoming Webhooks
3. Create an Incoming Webhook
4. webhook прописан в gitlab
> Slack notifications activated.

Ссылка на канал: https://devops-team-otus.slack.com/archives/CMZK1KA02


### Прохождение тестов travis-ci

В [.gitlab-ci.yml](.gitlab-ci.yml) возвращены ранее удалённые команды, необходимые для запуска фейкового тестирования приложения reddit.
Тесты travis-ci проходят.

Запущен пайплайн в gitlab - ошибка:
```log
ERROR: The ruby:2.4.2 is not present on list of allowed images
- docker:*
```
Причина - ограничение на раннере.

Лечение: для build_job явно указан `image: docker:19.03.1` 

Проверка пайплайна: `make push_gitlab`

Ошибка
```log
$ bundle install
/bin/sh: eval: line 94: bundle: not found
ERROR: Job failed: exit code 127
```
Проблема: отсутствие в образ docker утилиты bundler, которая запускается `before_script`. Так как в рамках нашего pipeline в `build_job` не нужен bundler, пробуем переопределить `before_script` в `build_job`.
```yaml
before_script:
  - echo 'Before script override for build_job'
```

Запуск пайплайна... Та же ошибка для deploy_dev_job. Fixed:
```yaml
deploy_dev_job:
  before_script:
    - echo 'Before script override for deploy_dev_job'
...
```

Пайплайн gitlab-ci прошёл успешно.
Пайплайн travis-ci прошёл успешно.

TODO: можно ли в сообщении так же слать ссылку на environment?


### Прочее

Добавлен [gitlab-ci/docker-compose.yml](gitlab-ci/docker-compose.yml) для развёртывания gitlab-сервера.

## HomeWork 16: Введение в мониторинг. Системы мониторинга.

### Prometheus: запуск, конфигурация, знакомство с Web UI

#### Запуск docker-machine хоста для prometheus

Создадим правило фаервола для Prometheus и Puma:

```shell
gcloud compute firewall-rules create prometheus-default --allow tcp:9090
gcloud compute firewall-rules create puma-default --allow tcp:9292
```

Создадим Docker хост в GCE и настроим локальное окружение на работу с ним
```shell
export GOOGLE_PROJECT=<project_id>

docker-machine create --driver google \
  --google-machine-image https://www.googleapis.com/compute/v1/projects/ubuntu-os-cloud/global/images/family/ubuntu-1604-lts \
  --google-machine-type n1-standard-1 \
  --google-zone europe-west1-b \
  docker-host

eval $(docker-machine env docker-host)
```

#### Запуск prometheus

Систему мониторинга Prometheus будем запускать внутри Docker контейнера. Для начального знакомства воспользуемся готовым образом с DockerHub (использована последняя версия - более новая версия, чем в ДЗ)
```shell
docker run --rm -p 9090:9090 -d --name prometheus prom/prometheus:v2.14.0
```
```log
Digest: sha256:907e20b3b0f8b0a76a33c088fe9827e8edc180e874bd2173c27089eade63d8b8
Status: Downloaded newer image for prom/prometheus:v2.14.0
ba7f92afa8bc8e3542d60f25faae8f76f1459fa3ea2aeb5c4e954b2bda73957c
```

Список запущенных контейнеров
```shell
docker ps
```
```log
CONTAINER ID        IMAGE                     COMMAND                  CREATED             STATUS              PORTS                    NAMES
ba7f92afa8bc        prom/prometheus:v2.14.0   "/bin/prometheus --c…"   49 seconds ago      Up 45 seconds       0.0.0.0:9090->9090/tcp   prometheus
```

#### Web-интерфейс

IP запущенной docker-machine
```shell
docker-machine ip docker-host
```
```log
34.76.241.120
```

Веб-интерфейс открыт http://34.76.241.120:9090

По умолчанию prometheus собирает статистику о своей работе. Выберем, например, метрику `prometheus_build_info` и нажмем Execute, чтобы посмотреть информацию о версии.
```log
prometheus_build_info{branch="HEAD",goversion="go1.13.4",instance="localhost:9090",job="prometheus",revision="edeb7a44cbf745f1d8be4ea6f215e79e651bfe19",version="2.14.0"}	
```

`prometheus_build_info` - название метрики - идентификатор собранной информации.

`branch`, `goversion`, `instance`, etc... - лейбл - добавляет метаданных метрике, уточняет ее. Использование лейблов дает нам возможность не ограничиваться лишь одним названием метрик для идентификации получаемой информации. Лейблы содержаться в `{}` скобках и представлены наборами "ключ=значение".

`"HEAD"`, `"go1.13.4"`, etc... - значение метрики - численное значение метрики, либо NaN, если значение недоступно


#### Targets

Targets (цели) - представляют собой системы или процессы, за которыми следит Prometheus. Помним, что Prometheus является pull системой, поэтому он постоянно делает HTTP запросы на имеющиеся у него адреса (endpoints). Посмотрим текущий список целей:

Status -> Targets

В Targets сейчас мы видим только сам Prometheus. У каждой цели есть свой список адресов _(endpoints)_, по которым следует обращаться для получения информации.

В веб интерфейсе мы можем видеть состояние каждого endpoint-а (up); лейбл (`instance="someURL"`), который Prometheus автоматически добавляет к каждой метрике, получаемой с данного endpoint-а; а также время, прошедшее с момента последней операции сбора информации с endpoint-а.

Также здесь отображаются ошибки при их наличии и можно отфильтровать только неживые таргеты.

Обратите внимание на endpoint, который мы с вами видели на предыдущем слайде.

Мы можем открыть страницу в веб браузере по данному HTTP пути (host:port/metrics), чтобы посмотреть, как выглядит та информация, которую собирает Prometheus. **Примечение** В веб-интерфейсе отображается url http://localhost:9090/metrics, который ссылается на localhost вместо ip удалённого интсанса. Чтобы посмотреть метрики, необходимо вручную указать ip http://34.76.241.120:9090/metrics

<details><summary>Список метрик</summary>
<p>

#### Список метрик

```log
# HELP go_gc_duration_seconds A summary of the GC invocation durations.
# TYPE go_gc_duration_seconds summary
go_gc_duration_seconds{quantile="0"} 5.955e-06
go_gc_duration_seconds{quantile="0.25"} 1.6163e-05
go_gc_duration_seconds{quantile="0.5"} 2.141e-05
go_gc_duration_seconds{quantile="0.75"} 2.5613e-05
go_gc_duration_seconds{quantile="1"} 4.4607e-05
go_gc_duration_seconds_sum 0.00047029
go_gc_duration_seconds_count 22
# HELP go_goroutines Number of goroutines that currently exist.
# TYPE go_goroutines gauge
go_goroutines 40
# HELP go_info Information about the Go environment.
# TYPE go_info gauge
go_info{version="go1.13.4"} 1
# HELP go_memstats_alloc_bytes Number of bytes allocated and still in use.
# TYPE go_memstats_alloc_bytes gauge
go_memstats_alloc_bytes 1.410276e+07
# HELP go_memstats_alloc_bytes_total Total number of bytes allocated, even if freed.
# TYPE go_memstats_alloc_bytes_total counter
go_memstats_alloc_bytes_total 5.9071968e+07
# HELP go_memstats_buck_hash_sys_bytes Number of bytes used by the profiling bucket hash table.
# TYPE go_memstats_buck_hash_sys_bytes gauge
go_memstats_buck_hash_sys_bytes 1.464544e+06
# HELP go_memstats_frees_total Total number of frees.
# TYPE go_memstats_frees_total counter
go_memstats_frees_total 480971
# HELP go_memstats_gc_cpu_fraction The fraction of this program's available CPU time used by the GC since the program started.
# TYPE go_memstats_gc_cpu_fraction gauge
go_memstats_gc_cpu_fraction 1.0147006692597942e-05
# HELP go_memstats_gc_sys_bytes Number of bytes used for garbage collection system metadata.
# TYPE go_memstats_gc_sys_bytes gauge
go_memstats_gc_sys_bytes 2.398208e+06
# HELP go_memstats_heap_alloc_bytes Number of heap bytes allocated and still in use.
# TYPE go_memstats_heap_alloc_bytes gauge
go_memstats_heap_alloc_bytes 1.410276e+07
# HELP go_memstats_heap_idle_bytes Number of heap bytes waiting to be used.
# TYPE go_memstats_heap_idle_bytes gauge
go_memstats_heap_idle_bytes 5.0233344e+07
# HELP go_memstats_heap_inuse_bytes Number of heap bytes that are in use.
# TYPE go_memstats_heap_inuse_bytes gauge
go_memstats_heap_inuse_bytes 1.622016e+07
# HELP go_memstats_heap_objects Number of allocated objects.
# TYPE go_memstats_heap_objects gauge
go_memstats_heap_objects 72304
# HELP go_memstats_heap_released_bytes Number of heap bytes released to OS.
# TYPE go_memstats_heap_released_bytes gauge
go_memstats_heap_released_bytes 4.825088e+07
# HELP go_memstats_heap_sys_bytes Number of heap bytes obtained from system.
# TYPE go_memstats_heap_sys_bytes gauge
go_memstats_heap_sys_bytes 6.6453504e+07
# HELP go_memstats_last_gc_time_seconds Number of seconds since 1970 of last garbage collection.
# TYPE go_memstats_last_gc_time_seconds gauge
go_memstats_last_gc_time_seconds 1.5757971694422157e+09
# HELP go_memstats_lookups_total Total number of pointer lookups.
# TYPE go_memstats_lookups_total counter
go_memstats_lookups_total 0
# HELP go_memstats_mallocs_total Total number of mallocs.
# TYPE go_memstats_mallocs_total counter
go_memstats_mallocs_total 553275
# HELP go_memstats_mcache_inuse_bytes Number of bytes in use by mcache structures.
# TYPE go_memstats_mcache_inuse_bytes gauge
go_memstats_mcache_inuse_bytes 1736
# HELP go_memstats_mcache_sys_bytes Number of bytes used for mcache structures obtained from system.
# TYPE go_memstats_mcache_sys_bytes gauge
go_memstats_mcache_sys_bytes 16384
# HELP go_memstats_mspan_inuse_bytes Number of bytes in use by mspan structures.
# TYPE go_memstats_mspan_inuse_bytes gauge
go_memstats_mspan_inuse_bytes 145656
# HELP go_memstats_mspan_sys_bytes Number of bytes used for mspan structures obtained from system.
# TYPE go_memstats_mspan_sys_bytes gauge
go_memstats_mspan_sys_bytes 163840
# HELP go_memstats_next_gc_bytes Number of heap bytes when next garbage collection will take place.
# TYPE go_memstats_next_gc_bytes gauge
go_memstats_next_gc_bytes 2.6305792e+07
# HELP go_memstats_other_sys_bytes Number of bytes used for other system allocations.
# TYPE go_memstats_other_sys_bytes gauge
go_memstats_other_sys_bytes 348184
# HELP go_memstats_stack_inuse_bytes Number of bytes in use by the stack allocator.
# TYPE go_memstats_stack_inuse_bytes gauge
go_memstats_stack_inuse_bytes 655360
# HELP go_memstats_stack_sys_bytes Number of bytes obtained from system for stack allocator.
# TYPE go_memstats_stack_sys_bytes gauge
go_memstats_stack_sys_bytes 655360
# HELP go_memstats_sys_bytes Number of bytes obtained from system.
# TYPE go_memstats_sys_bytes gauge
go_memstats_sys_bytes 7.1500024e+07
# HELP go_threads Number of OS threads created.
# TYPE go_threads gauge
go_threads 9
# HELP net_conntrack_dialer_conn_attempted_total Total number of connections attempted by the given dialer a given name.
# TYPE net_conntrack_dialer_conn_attempted_total counter
net_conntrack_dialer_conn_attempted_total{dialer_name="alertmanager"} 0
net_conntrack_dialer_conn_attempted_total{dialer_name="default"} 0
net_conntrack_dialer_conn_attempted_total{dialer_name="prometheus"} 1
# HELP net_conntrack_dialer_conn_closed_total Total number of connections closed which originated from the dialer of a given name.
# TYPE net_conntrack_dialer_conn_closed_total counter
net_conntrack_dialer_conn_closed_total{dialer_name="alertmanager"} 0
net_conntrack_dialer_conn_closed_total{dialer_name="default"} 0
net_conntrack_dialer_conn_closed_total{dialer_name="prometheus"} 0
# HELP net_conntrack_dialer_conn_established_total Total number of connections successfully established by the given dialer a given name.
# TYPE net_conntrack_dialer_conn_established_total counter
net_conntrack_dialer_conn_established_total{dialer_name="alertmanager"} 0
net_conntrack_dialer_conn_established_total{dialer_name="default"} 0
net_conntrack_dialer_conn_established_total{dialer_name="prometheus"} 1
# HELP net_conntrack_dialer_conn_failed_total Total number of connections failed to dial by the dialer a given name.
# TYPE net_conntrack_dialer_conn_failed_total counter
net_conntrack_dialer_conn_failed_total{dialer_name="alertmanager",reason="refused"} 0
net_conntrack_dialer_conn_failed_total{dialer_name="alertmanager",reason="resolution"} 0
net_conntrack_dialer_conn_failed_total{dialer_name="alertmanager",reason="timeout"} 0
net_conntrack_dialer_conn_failed_total{dialer_name="alertmanager",reason="unknown"} 0
net_conntrack_dialer_conn_failed_total{dialer_name="default",reason="refused"} 0
net_conntrack_dialer_conn_failed_total{dialer_name="default",reason="resolution"} 0
net_conntrack_dialer_conn_failed_total{dialer_name="default",reason="timeout"} 0
net_conntrack_dialer_conn_failed_total{dialer_name="default",reason="unknown"} 0
net_conntrack_dialer_conn_failed_total{dialer_name="prometheus",reason="refused"} 0
net_conntrack_dialer_conn_failed_total{dialer_name="prometheus",reason="resolution"} 0
net_conntrack_dialer_conn_failed_total{dialer_name="prometheus",reason="timeout"} 0
net_conntrack_dialer_conn_failed_total{dialer_name="prometheus",reason="unknown"} 0
# HELP net_conntrack_listener_conn_accepted_total Total number of connections opened to the listener of a given name.
# TYPE net_conntrack_listener_conn_accepted_total counter
net_conntrack_listener_conn_accepted_total{listener_name="http"} 15
# HELP net_conntrack_listener_conn_closed_total Total number of connections closed that were made to the listener of a given name.
# TYPE net_conntrack_listener_conn_closed_total counter
net_conntrack_listener_conn_closed_total{listener_name="http"} 11
# HELP process_cpu_seconds_total Total user and system CPU time spent in seconds.
# TYPE process_cpu_seconds_total counter
process_cpu_seconds_total 1.42
# HELP process_max_fds Maximum number of open file descriptors.
# TYPE process_max_fds gauge
process_max_fds 1.048576e+06
# HELP process_open_fds Number of open file descriptors.
# TYPE process_open_fds gauge
process_open_fds 14
# HELP process_resident_memory_bytes Resident memory size in bytes.
# TYPE process_resident_memory_bytes gauge
process_resident_memory_bytes 5.9609088e+07
# HELP process_start_time_seconds Start time of the process since unix epoch in seconds.
# TYPE process_start_time_seconds gauge
process_start_time_seconds 1.57579509824e+09
# HELP process_virtual_memory_bytes Virtual memory size in bytes.
# TYPE process_virtual_memory_bytes gauge
process_virtual_memory_bytes 1.65691392e+08
# HELP process_virtual_memory_max_bytes Maximum amount of virtual memory available in bytes.
# TYPE process_virtual_memory_max_bytes gauge
process_virtual_memory_max_bytes -1
# HELP prometheus_api_remote_read_queries The current number of remote read queries being executed or waiting.
# TYPE prometheus_api_remote_read_queries gauge
prometheus_api_remote_read_queries 0
# HELP prometheus_build_info A metric with a constant '1' value labeled by version, revision, branch, and goversion from which prometheus was built.
# TYPE prometheus_build_info gauge
prometheus_build_info{branch="HEAD",goversion="go1.13.4",revision="edeb7a44cbf745f1d8be4ea6f215e79e651bfe19",version="2.14.0"} 1
# HELP prometheus_config_last_reload_success_timestamp_seconds Timestamp of the last successful configuration reload.
# TYPE prometheus_config_last_reload_success_timestamp_seconds gauge
prometheus_config_last_reload_success_timestamp_seconds 1.5757950994458635e+09
# HELP prometheus_config_last_reload_successful Whether the last configuration reload attempt was successful.
# TYPE prometheus_config_last_reload_successful gauge
prometheus_config_last_reload_successful 1
# HELP prometheus_engine_queries The current number of queries being executed or waiting.
# TYPE prometheus_engine_queries gauge
prometheus_engine_queries 0
# HELP prometheus_engine_queries_concurrent_max The max number of concurrent queries.
# TYPE prometheus_engine_queries_concurrent_max gauge
prometheus_engine_queries_concurrent_max 20
# HELP prometheus_engine_query_duration_seconds Query timings
# TYPE prometheus_engine_query_duration_seconds summary
prometheus_engine_query_duration_seconds{slice="inner_eval",quantile="0.5"} NaN
prometheus_engine_query_duration_seconds{slice="inner_eval",quantile="0.9"} NaN
prometheus_engine_query_duration_seconds{slice="inner_eval",quantile="0.99"} NaN
prometheus_engine_query_duration_seconds_sum{slice="inner_eval"} 9.1966e-05
prometheus_engine_query_duration_seconds_count{slice="inner_eval"} 5
prometheus_engine_query_duration_seconds{slice="prepare_time",quantile="0.5"} NaN
prometheus_engine_query_duration_seconds{slice="prepare_time",quantile="0.9"} NaN
prometheus_engine_query_duration_seconds{slice="prepare_time",quantile="0.99"} NaN
prometheus_engine_query_duration_seconds_sum{slice="prepare_time"} 0.00018078700000000002
prometheus_engine_query_duration_seconds_count{slice="prepare_time"} 5
prometheus_engine_query_duration_seconds{slice="queue_time",quantile="0.5"} NaN
prometheus_engine_query_duration_seconds{slice="queue_time",quantile="0.9"} NaN
prometheus_engine_query_duration_seconds{slice="queue_time",quantile="0.99"} NaN
prometheus_engine_query_duration_seconds_sum{slice="queue_time"} 2.2108e-05
prometheus_engine_query_duration_seconds_count{slice="queue_time"} 5
prometheus_engine_query_duration_seconds{slice="result_sort",quantile="0.5"} NaN
prometheus_engine_query_duration_seconds{slice="result_sort",quantile="0.9"} NaN
prometheus_engine_query_duration_seconds{slice="result_sort",quantile="0.99"} NaN
prometheus_engine_query_duration_seconds_sum{slice="result_sort"} 0
prometheus_engine_query_duration_seconds_count{slice="result_sort"} 0
# HELP prometheus_http_request_duration_seconds Histogram of latencies for HTTP requests.
# TYPE prometheus_http_request_duration_seconds histogram
prometheus_http_request_duration_seconds_bucket{handler="/",le="0.1"} 1
prometheus_http_request_duration_seconds_bucket{handler="/",le="0.2"} 1
prometheus_http_request_duration_seconds_bucket{handler="/",le="0.4"} 1
prometheus_http_request_duration_seconds_bucket{handler="/",le="1"} 1
prometheus_http_request_duration_seconds_bucket{handler="/",le="3"} 1
prometheus_http_request_duration_seconds_bucket{handler="/",le="8"} 1
prometheus_http_request_duration_seconds_bucket{handler="/",le="20"} 1
prometheus_http_request_duration_seconds_bucket{handler="/",le="60"} 1
prometheus_http_request_duration_seconds_bucket{handler="/",le="120"} 1
prometheus_http_request_duration_seconds_bucket{handler="/",le="+Inf"} 1
prometheus_http_request_duration_seconds_sum{handler="/"} 3.6641e-05
prometheus_http_request_duration_seconds_count{handler="/"} 1
prometheus_http_request_duration_seconds_bucket{handler="/api/v1/label/:name/values",le="0.1"} 1
prometheus_http_request_duration_seconds_bucket{handler="/api/v1/label/:name/values",le="0.2"} 1
prometheus_http_request_duration_seconds_bucket{handler="/api/v1/label/:name/values",le="0.4"} 1
prometheus_http_request_duration_seconds_bucket{handler="/api/v1/label/:name/values",le="1"} 1
prometheus_http_request_duration_seconds_bucket{handler="/api/v1/label/:name/values",le="3"} 1
prometheus_http_request_duration_seconds_bucket{handler="/api/v1/label/:name/values",le="8"} 1
prometheus_http_request_duration_seconds_bucket{handler="/api/v1/label/:name/values",le="20"} 1
prometheus_http_request_duration_seconds_bucket{handler="/api/v1/label/:name/values",le="60"} 1
prometheus_http_request_duration_seconds_bucket{handler="/api/v1/label/:name/values",le="120"} 1
prometheus_http_request_duration_seconds_bucket{handler="/api/v1/label/:name/values",le="+Inf"} 1
prometheus_http_request_duration_seconds_sum{handler="/api/v1/label/:name/values"} 0.001905385
prometheus_http_request_duration_seconds_count{handler="/api/v1/label/:name/values"} 1
prometheus_http_request_duration_seconds_bucket{handler="/api/v1/query",le="0.1"} 5
prometheus_http_request_duration_seconds_bucket{handler="/api/v1/query",le="0.2"} 5
prometheus_http_request_duration_seconds_bucket{handler="/api/v1/query",le="0.4"} 5
prometheus_http_request_duration_seconds_bucket{handler="/api/v1/query",le="1"} 5
prometheus_http_request_duration_seconds_bucket{handler="/api/v1/query",le="3"} 5
prometheus_http_request_duration_seconds_bucket{handler="/api/v1/query",le="8"} 5
prometheus_http_request_duration_seconds_bucket{handler="/api/v1/query",le="20"} 5
prometheus_http_request_duration_seconds_bucket{handler="/api/v1/query",le="60"} 5
prometheus_http_request_duration_seconds_bucket{handler="/api/v1/query",le="120"} 5
prometheus_http_request_duration_seconds_bucket{handler="/api/v1/query",le="+Inf"} 5
prometheus_http_request_duration_seconds_sum{handler="/api/v1/query"} 0.0043781110000000005
prometheus_http_request_duration_seconds_count{handler="/api/v1/query"} 5
prometheus_http_request_duration_seconds_bucket{handler="/graph",le="0.1"} 1
prometheus_http_request_duration_seconds_bucket{handler="/graph",le="0.2"} 1
prometheus_http_request_duration_seconds_bucket{handler="/graph",le="0.4"} 1
prometheus_http_request_duration_seconds_bucket{handler="/graph",le="1"} 1
prometheus_http_request_duration_seconds_bucket{handler="/graph",le="3"} 1
prometheus_http_request_duration_seconds_bucket{handler="/graph",le="8"} 1
prometheus_http_request_duration_seconds_bucket{handler="/graph",le="20"} 1
prometheus_http_request_duration_seconds_bucket{handler="/graph",le="60"} 1
prometheus_http_request_duration_seconds_bucket{handler="/graph",le="120"} 1
prometheus_http_request_duration_seconds_bucket{handler="/graph",le="+Inf"} 1
prometheus_http_request_duration_seconds_sum{handler="/graph"} 0.001959785
prometheus_http_request_duration_seconds_count{handler="/graph"} 1
prometheus_http_request_duration_seconds_bucket{handler="/metrics",le="0.1"} 142
prometheus_http_request_duration_seconds_bucket{handler="/metrics",le="0.2"} 142
prometheus_http_request_duration_seconds_bucket{handler="/metrics",le="0.4"} 142
prometheus_http_request_duration_seconds_bucket{handler="/metrics",le="1"} 142
prometheus_http_request_duration_seconds_bucket{handler="/metrics",le="3"} 142
prometheus_http_request_duration_seconds_bucket{handler="/metrics",le="8"} 142
prometheus_http_request_duration_seconds_bucket{handler="/metrics",le="20"} 142
prometheus_http_request_duration_seconds_bucket{handler="/metrics",le="60"} 142
prometheus_http_request_duration_seconds_bucket{handler="/metrics",le="120"} 142
prometheus_http_request_duration_seconds_bucket{handler="/metrics",le="+Inf"} 142
prometheus_http_request_duration_seconds_sum{handler="/metrics"} 0.5661348470000002
prometheus_http_request_duration_seconds_count{handler="/metrics"} 142
prometheus_http_request_duration_seconds_bucket{handler="/static/*filepath",le="0.1"} 23
prometheus_http_request_duration_seconds_bucket{handler="/static/*filepath",le="0.2"} 25
prometheus_http_request_duration_seconds_bucket{handler="/static/*filepath",le="0.4"} 26
prometheus_http_request_duration_seconds_bucket{handler="/static/*filepath",le="1"} 26
prometheus_http_request_duration_seconds_bucket{handler="/static/*filepath",le="3"} 26
prometheus_http_request_duration_seconds_bucket{handler="/static/*filepath",le="8"} 26
prometheus_http_request_duration_seconds_bucket{handler="/static/*filepath",le="20"} 26
prometheus_http_request_duration_seconds_bucket{handler="/static/*filepath",le="60"} 26
prometheus_http_request_duration_seconds_bucket{handler="/static/*filepath",le="120"} 26
prometheus_http_request_duration_seconds_bucket{handler="/static/*filepath",le="+Inf"} 26
prometheus_http_request_duration_seconds_sum{handler="/static/*filepath"} 0.6096292270000001
prometheus_http_request_duration_seconds_count{handler="/static/*filepath"} 26
prometheus_http_request_duration_seconds_bucket{handler="/targets",le="0.1"} 1
prometheus_http_request_duration_seconds_bucket{handler="/targets",le="0.2"} 1
prometheus_http_request_duration_seconds_bucket{handler="/targets",le="0.4"} 1
prometheus_http_request_duration_seconds_bucket{handler="/targets",le="1"} 1
prometheus_http_request_duration_seconds_bucket{handler="/targets",le="3"} 1
prometheus_http_request_duration_seconds_bucket{handler="/targets",le="8"} 1
prometheus_http_request_duration_seconds_bucket{handler="/targets",le="20"} 1
prometheus_http_request_duration_seconds_bucket{handler="/targets",le="60"} 1
prometheus_http_request_duration_seconds_bucket{handler="/targets",le="120"} 1
prometheus_http_request_duration_seconds_bucket{handler="/targets",le="+Inf"} 1
prometheus_http_request_duration_seconds_sum{handler="/targets"} 0.001879882
prometheus_http_request_duration_seconds_count{handler="/targets"} 1
# HELP prometheus_http_requests_total Counter of HTTP requests.
# TYPE prometheus_http_requests_total counter
prometheus_http_requests_total{code="200",handler="/api/v1/label/:name/values"} 1
prometheus_http_requests_total{code="200",handler="/api/v1/query"} 5
prometheus_http_requests_total{code="200",handler="/graph"} 1
prometheus_http_requests_total{code="200",handler="/metrics"} 142
prometheus_http_requests_total{code="200",handler="/static/*filepath"} 26
prometheus_http_requests_total{code="200",handler="/targets"} 1
prometheus_http_requests_total{code="302",handler="/"} 1
# HELP prometheus_http_response_size_bytes Histogram of response size for HTTP requests.
# TYPE prometheus_http_response_size_bytes histogram
prometheus_http_response_size_bytes_bucket{handler="/",le="100"} 1
prometheus_http_response_size_bytes_bucket{handler="/",le="1000"} 1
prometheus_http_response_size_bytes_bucket{handler="/",le="10000"} 1
prometheus_http_response_size_bytes_bucket{handler="/",le="100000"} 1
prometheus_http_response_size_bytes_bucket{handler="/",le="1e+06"} 1
prometheus_http_response_size_bytes_bucket{handler="/",le="1e+07"} 1
prometheus_http_response_size_bytes_bucket{handler="/",le="1e+08"} 1
prometheus_http_response_size_bytes_bucket{handler="/",le="1e+09"} 1
prometheus_http_response_size_bytes_bucket{handler="/",le="+Inf"} 1
prometheus_http_response_size_bytes_sum{handler="/"} 29
prometheus_http_response_size_bytes_count{handler="/"} 1
prometheus_http_response_size_bytes_bucket{handler="/api/v1/label/:name/values",le="100"} 0
prometheus_http_response_size_bytes_bucket{handler="/api/v1/label/:name/values",le="1000"} 0
prometheus_http_response_size_bytes_bucket{handler="/api/v1/label/:name/values",le="10000"} 1
prometheus_http_response_size_bytes_bucket{handler="/api/v1/label/:name/values",le="100000"} 1
prometheus_http_response_size_bytes_bucket{handler="/api/v1/label/:name/values",le="1e+06"} 1
prometheus_http_response_size_bytes_bucket{handler="/api/v1/label/:name/values",le="1e+07"} 1
prometheus_http_response_size_bytes_bucket{handler="/api/v1/label/:name/values",le="1e+08"} 1
prometheus_http_response_size_bytes_bucket{handler="/api/v1/label/:name/values",le="1e+09"} 1
prometheus_http_response_size_bytes_bucket{handler="/api/v1/label/:name/values",le="+Inf"} 1
prometheus_http_response_size_bytes_sum{handler="/api/v1/label/:name/values"} 1397
prometheus_http_response_size_bytes_count{handler="/api/v1/label/:name/values"} 1
prometheus_http_response_size_bytes_bucket{handler="/api/v1/query",le="100"} 2
prometheus_http_response_size_bytes_bucket{handler="/api/v1/query",le="1000"} 5
prometheus_http_response_size_bytes_bucket{handler="/api/v1/query",le="10000"} 5
prometheus_http_response_size_bytes_bucket{handler="/api/v1/query",le="100000"} 5
prometheus_http_response_size_bytes_bucket{handler="/api/v1/query",le="1e+06"} 5
prometheus_http_response_size_bytes_bucket{handler="/api/v1/query",le="1e+07"} 5
prometheus_http_response_size_bytes_bucket{handler="/api/v1/query",le="1e+08"} 5
prometheus_http_response_size_bytes_bucket{handler="/api/v1/query",le="1e+09"} 5
prometheus_http_response_size_bytes_bucket{handler="/api/v1/query",le="+Inf"} 5
prometheus_http_response_size_bytes_sum{handler="/api/v1/query"} 700
prometheus_http_response_size_bytes_count{handler="/api/v1/query"} 5
prometheus_http_response_size_bytes_bucket{handler="/graph",le="100"} 0
prometheus_http_response_size_bytes_bucket{handler="/graph",le="1000"} 0
prometheus_http_response_size_bytes_bucket{handler="/graph",le="10000"} 1
prometheus_http_response_size_bytes_bucket{handler="/graph",le="100000"} 1
prometheus_http_response_size_bytes_bucket{handler="/graph",le="1e+06"} 1
prometheus_http_response_size_bytes_bucket{handler="/graph",le="1e+07"} 1
prometheus_http_response_size_bytes_bucket{handler="/graph",le="1e+08"} 1
prometheus_http_response_size_bytes_bucket{handler="/graph",le="1e+09"} 1
prometheus_http_response_size_bytes_bucket{handler="/graph",le="+Inf"} 1
prometheus_http_response_size_bytes_sum{handler="/graph"} 5967
prometheus_http_response_size_bytes_count{handler="/graph"} 1
prometheus_http_response_size_bytes_bucket{handler="/metrics",le="100"} 0
prometheus_http_response_size_bytes_bucket{handler="/metrics",le="1000"} 0
prometheus_http_response_size_bytes_bucket{handler="/metrics",le="10000"} 142
prometheus_http_response_size_bytes_bucket{handler="/metrics",le="100000"} 142
prometheus_http_response_size_bytes_bucket{handler="/metrics",le="1e+06"} 142
prometheus_http_response_size_bytes_bucket{handler="/metrics",le="1e+07"} 142
prometheus_http_response_size_bytes_bucket{handler="/metrics",le="1e+08"} 142
prometheus_http_response_size_bytes_bucket{handler="/metrics",le="1e+09"} 142
prometheus_http_response_size_bytes_bucket{handler="/metrics",le="+Inf"} 142
prometheus_http_response_size_bytes_sum{handler="/metrics"} 971753
prometheus_http_response_size_bytes_count{handler="/metrics"} 142
prometheus_http_response_size_bytes_bucket{handler="/static/*filepath",le="100"} 0
prometheus_http_response_size_bytes_bucket{handler="/static/*filepath",le="1000"} 3
prometheus_http_response_size_bytes_bucket{handler="/static/*filepath",le="10000"} 10
prometheus_http_response_size_bytes_bucket{handler="/static/*filepath",le="100000"} 23
prometheus_http_response_size_bytes_bucket{handler="/static/*filepath",le="1e+06"} 26
prometheus_http_response_size_bytes_bucket{handler="/static/*filepath",le="1e+07"} 26
prometheus_http_response_size_bytes_bucket{handler="/static/*filepath",le="1e+08"} 26
prometheus_http_response_size_bytes_bucket{handler="/static/*filepath",le="1e+09"} 26
prometheus_http_response_size_bytes_bucket{handler="/static/*filepath",le="+Inf"} 26
prometheus_http_response_size_bytes_sum{handler="/static/*filepath"} 993190
prometheus_http_response_size_bytes_count{handler="/static/*filepath"} 26
prometheus_http_response_size_bytes_bucket{handler="/targets",le="100"} 0
prometheus_http_response_size_bytes_bucket{handler="/targets",le="1000"} 0
prometheus_http_response_size_bytes_bucket{handler="/targets",le="10000"} 1
prometheus_http_response_size_bytes_bucket{handler="/targets",le="100000"} 1
prometheus_http_response_size_bytes_bucket{handler="/targets",le="1e+06"} 1
prometheus_http_response_size_bytes_bucket{handler="/targets",le="1e+07"} 1
prometheus_http_response_size_bytes_bucket{handler="/targets",le="1e+08"} 1
prometheus_http_response_size_bytes_bucket{handler="/targets",le="1e+09"} 1
prometheus_http_response_size_bytes_bucket{handler="/targets",le="+Inf"} 1
prometheus_http_response_size_bytes_sum{handler="/targets"} 5850
prometheus_http_response_size_bytes_count{handler="/targets"} 1
# HELP prometheus_notifications_alertmanagers_discovered The number of alertmanagers discovered and active.
# TYPE prometheus_notifications_alertmanagers_discovered gauge
prometheus_notifications_alertmanagers_discovered 0
# HELP prometheus_notifications_dropped_total Total number of alerts dropped due to errors when sending to Alertmanager.
# TYPE prometheus_notifications_dropped_total counter
prometheus_notifications_dropped_total 0
# HELP prometheus_notifications_queue_capacity The capacity of the alert notifications queue.
# TYPE prometheus_notifications_queue_capacity gauge
prometheus_notifications_queue_capacity 10000
# HELP prometheus_notifications_queue_length The number of alert notifications in the queue.
# TYPE prometheus_notifications_queue_length gauge
prometheus_notifications_queue_length 0
# HELP prometheus_remote_storage_highest_timestamp_in_seconds Highest timestamp that has come into the remote storage via the Appender interface, in seconds since epoch.
# TYPE prometheus_remote_storage_highest_timestamp_in_seconds gauge
prometheus_remote_storage_highest_timestamp_in_seconds 1.57579722e+09
# HELP prometheus_remote_storage_samples_in_total Samples in to remote storage, compare to samples out for queue managers.
# TYPE prometheus_remote_storage_samples_in_total counter
prometheus_remote_storage_samples_in_total 64123
# HELP prometheus_remote_storage_string_interner_zero_reference_releases_total The number of times release has been called for strings that are not interned.
# TYPE prometheus_remote_storage_string_interner_zero_reference_releases_total counter
prometheus_remote_storage_string_interner_zero_reference_releases_total 0
# HELP prometheus_rule_evaluation_duration_seconds The duration for a rule to execute.
# TYPE prometheus_rule_evaluation_duration_seconds summary
prometheus_rule_evaluation_duration_seconds{quantile="0.5"} NaN
prometheus_rule_evaluation_duration_seconds{quantile="0.9"} NaN
prometheus_rule_evaluation_duration_seconds{quantile="0.99"} NaN
prometheus_rule_evaluation_duration_seconds_sum 0
prometheus_rule_evaluation_duration_seconds_count 0
# HELP prometheus_rule_evaluation_failures_total The total number of rule evaluation failures.
# TYPE prometheus_rule_evaluation_failures_total counter
prometheus_rule_evaluation_failures_total 0
# HELP prometheus_rule_evaluations_total The total number of rule evaluations.
# TYPE prometheus_rule_evaluations_total counter
prometheus_rule_evaluations_total 0
# HELP prometheus_rule_group_duration_seconds The duration of rule group evaluations.
# TYPE prometheus_rule_group_duration_seconds summary
prometheus_rule_group_duration_seconds{quantile="0.01"} NaN
prometheus_rule_group_duration_seconds{quantile="0.05"} NaN
prometheus_rule_group_duration_seconds{quantile="0.5"} NaN
prometheus_rule_group_duration_seconds{quantile="0.9"} NaN
prometheus_rule_group_duration_seconds{quantile="0.99"} NaN
prometheus_rule_group_duration_seconds_sum 0
prometheus_rule_group_duration_seconds_count 0
# HELP prometheus_rule_group_iterations_missed_total The total number of rule group evaluations missed due to slow rule group evaluation.
# TYPE prometheus_rule_group_iterations_missed_total counter
prometheus_rule_group_iterations_missed_total 1
# HELP prometheus_rule_group_iterations_total The total number of scheduled rule group evaluations, whether executed or missed.
# TYPE prometheus_rule_group_iterations_total counter
prometheus_rule_group_iterations_total 0
# HELP prometheus_sd_consul_rpc_duration_seconds The duration of a Consul RPC call in seconds.
# TYPE prometheus_sd_consul_rpc_duration_seconds summary
prometheus_sd_consul_rpc_duration_seconds{call="service",endpoint="catalog",quantile="0.5"} NaN
prometheus_sd_consul_rpc_duration_seconds{call="service",endpoint="catalog",quantile="0.9"} NaN
prometheus_sd_consul_rpc_duration_seconds{call="service",endpoint="catalog",quantile="0.99"} NaN
prometheus_sd_consul_rpc_duration_seconds_sum{call="service",endpoint="catalog"} 0
prometheus_sd_consul_rpc_duration_seconds_count{call="service",endpoint="catalog"} 0
prometheus_sd_consul_rpc_duration_seconds{call="services",endpoint="catalog",quantile="0.5"} NaN
prometheus_sd_consul_rpc_duration_seconds{call="services",endpoint="catalog",quantile="0.9"} NaN
prometheus_sd_consul_rpc_duration_seconds{call="services",endpoint="catalog",quantile="0.99"} NaN
prometheus_sd_consul_rpc_duration_seconds_sum{call="services",endpoint="catalog"} 0
prometheus_sd_consul_rpc_duration_seconds_count{call="services",endpoint="catalog"} 0
# HELP prometheus_sd_consul_rpc_failures_total The number of Consul RPC call failures.
# TYPE prometheus_sd_consul_rpc_failures_total counter
prometheus_sd_consul_rpc_failures_total 0
# HELP prometheus_sd_discovered_targets Current number of discovered targets.
# TYPE prometheus_sd_discovered_targets gauge
prometheus_sd_discovered_targets{config="00592cee302b53b01a6cbb27b6147722",name="notify"} 0
prometheus_sd_discovered_targets{config="prometheus",name="scrape"} 1
# HELP prometheus_sd_dns_lookup_failures_total The number of DNS-SD lookup failures.
# TYPE prometheus_sd_dns_lookup_failures_total counter
prometheus_sd_dns_lookup_failures_total 0
# HELP prometheus_sd_dns_lookups_total The number of DNS-SD lookups.
# TYPE prometheus_sd_dns_lookups_total counter
prometheus_sd_dns_lookups_total 0
# HELP prometheus_sd_failed_configs Current number of service discovery configurations that failed to load.
# TYPE prometheus_sd_failed_configs gauge
prometheus_sd_failed_configs{name="notify"} 0
prometheus_sd_failed_configs{name="scrape"} 0
# HELP prometheus_sd_file_read_errors_total The number of File-SD read errors.
# TYPE prometheus_sd_file_read_errors_total counter
prometheus_sd_file_read_errors_total 0
# HELP prometheus_sd_file_scan_duration_seconds The duration of the File-SD scan in seconds.
# TYPE prometheus_sd_file_scan_duration_seconds summary
prometheus_sd_file_scan_duration_seconds{quantile="0.5"} NaN
prometheus_sd_file_scan_duration_seconds{quantile="0.9"} NaN
prometheus_sd_file_scan_duration_seconds{quantile="0.99"} NaN
prometheus_sd_file_scan_duration_seconds_sum 0
prometheus_sd_file_scan_duration_seconds_count 0
# HELP prometheus_sd_kubernetes_cache_last_resource_version Last resource version from the Kubernetes API.
# TYPE prometheus_sd_kubernetes_cache_last_resource_version gauge
prometheus_sd_kubernetes_cache_last_resource_version 0
# HELP prometheus_sd_kubernetes_cache_list_duration_seconds Duration of a Kubernetes API call in seconds.
# TYPE prometheus_sd_kubernetes_cache_list_duration_seconds summary
prometheus_sd_kubernetes_cache_list_duration_seconds_sum 0
prometheus_sd_kubernetes_cache_list_duration_seconds_count 0
# HELP prometheus_sd_kubernetes_cache_list_items Count of items in a list from the Kubernetes API.
# TYPE prometheus_sd_kubernetes_cache_list_items summary
prometheus_sd_kubernetes_cache_list_items_sum 0
prometheus_sd_kubernetes_cache_list_items_count 0
# HELP prometheus_sd_kubernetes_cache_list_total Total number of list operations.
# TYPE prometheus_sd_kubernetes_cache_list_total counter
prometheus_sd_kubernetes_cache_list_total 0
# HELP prometheus_sd_kubernetes_cache_short_watches_total Total number of short watch operations.
# TYPE prometheus_sd_kubernetes_cache_short_watches_total counter
prometheus_sd_kubernetes_cache_short_watches_total 0
# HELP prometheus_sd_kubernetes_cache_watch_duration_seconds Duration of watches on the Kubernetes API.
# TYPE prometheus_sd_kubernetes_cache_watch_duration_seconds summary
prometheus_sd_kubernetes_cache_watch_duration_seconds_sum 0
prometheus_sd_kubernetes_cache_watch_duration_seconds_count 0
# HELP prometheus_sd_kubernetes_cache_watch_events Number of items in watches on the Kubernetes API.
# TYPE prometheus_sd_kubernetes_cache_watch_events summary
prometheus_sd_kubernetes_cache_watch_events_sum 0
prometheus_sd_kubernetes_cache_watch_events_count 0
# HELP prometheus_sd_kubernetes_cache_watches_total Total number of watch operations.
# TYPE prometheus_sd_kubernetes_cache_watches_total counter
prometheus_sd_kubernetes_cache_watches_total 0
# HELP prometheus_sd_kubernetes_events_total The number of Kubernetes events handled.
# TYPE prometheus_sd_kubernetes_events_total counter
prometheus_sd_kubernetes_events_total{event="add",role="endpoints"} 0
prometheus_sd_kubernetes_events_total{event="add",role="ingress"} 0
prometheus_sd_kubernetes_events_total{event="add",role="node"} 0
prometheus_sd_kubernetes_events_total{event="add",role="pod"} 0
prometheus_sd_kubernetes_events_total{event="add",role="service"} 0
prometheus_sd_kubernetes_events_total{event="delete",role="endpoints"} 0
prometheus_sd_kubernetes_events_total{event="delete",role="ingress"} 0
prometheus_sd_kubernetes_events_total{event="delete",role="node"} 0
prometheus_sd_kubernetes_events_total{event="delete",role="pod"} 0
prometheus_sd_kubernetes_events_total{event="delete",role="service"} 0
prometheus_sd_kubernetes_events_total{event="update",role="endpoints"} 0
prometheus_sd_kubernetes_events_total{event="update",role="ingress"} 0
prometheus_sd_kubernetes_events_total{event="update",role="node"} 0
prometheus_sd_kubernetes_events_total{event="update",role="pod"} 0
prometheus_sd_kubernetes_events_total{event="update",role="service"} 0
# HELP prometheus_sd_received_updates_total Total number of update events received from the SD providers.
# TYPE prometheus_sd_received_updates_total counter
prometheus_sd_received_updates_total{name="notify"} 2
prometheus_sd_received_updates_total{name="scrape"} 2
# HELP prometheus_sd_updates_total Total number of update events sent to the SD consumers.
# TYPE prometheus_sd_updates_total counter
prometheus_sd_updates_total{name="notify"} 1
prometheus_sd_updates_total{name="scrape"} 1
# HELP prometheus_target_interval_length_seconds Actual intervals between scrapes.
# TYPE prometheus_target_interval_length_seconds summary
prometheus_target_interval_length_seconds{interval="15s",quantile="0.01"} 14.999937952
prometheus_target_interval_length_seconds{interval="15s",quantile="0.05"} 14.999957145
prometheus_target_interval_length_seconds{interval="15s",quantile="0.5"} 15.000026261
prometheus_target_interval_length_seconds{interval="15s",quantile="0.9"} 15.000070811
prometheus_target_interval_length_seconds{interval="15s",quantile="0.99"} 15.000122811
prometheus_target_interval_length_seconds_sum{interval="15s"} 2115.003722788
prometheus_target_interval_length_seconds_count{interval="15s"} 141
# HELP prometheus_target_scrape_pool_reloads_failed_total Total number of failed scrape loop reloads.
# TYPE prometheus_target_scrape_pool_reloads_failed_total counter
prometheus_target_scrape_pool_reloads_failed_total 0
# HELP prometheus_target_scrape_pool_reloads_total Total number of scrape loop reloads.
# TYPE prometheus_target_scrape_pool_reloads_total counter
prometheus_target_scrape_pool_reloads_total 0
# HELP prometheus_target_scrape_pool_sync_total Total number of syncs that were executed on a scrape pool.
# TYPE prometheus_target_scrape_pool_sync_total counter
prometheus_target_scrape_pool_sync_total{scrape_job="prometheus"} 1
# HELP prometheus_target_scrape_pools_failed_total Total number of scrape pool creations that failed.
# TYPE prometheus_target_scrape_pools_failed_total counter
prometheus_target_scrape_pools_failed_total 0
# HELP prometheus_target_scrape_pools_total Total number of scrape pool creation attempts.
# TYPE prometheus_target_scrape_pools_total counter
prometheus_target_scrape_pools_total 1
# HELP prometheus_target_scrapes_cache_flush_forced_total How many times a scrape cache was flushed due to getting big while scrapes are failing.
# TYPE prometheus_target_scrapes_cache_flush_forced_total counter
prometheus_target_scrapes_cache_flush_forced_total 0
# HELP prometheus_target_scrapes_exceeded_sample_limit_total Total number of scrapes that hit the sample limit and were rejected.
# TYPE prometheus_target_scrapes_exceeded_sample_limit_total counter
prometheus_target_scrapes_exceeded_sample_limit_total 0
# HELP prometheus_target_scrapes_sample_duplicate_timestamp_total Total number of samples rejected due to duplicate timestamps but different values
# TYPE prometheus_target_scrapes_sample_duplicate_timestamp_total counter
prometheus_target_scrapes_sample_duplicate_timestamp_total 0
# HELP prometheus_target_scrapes_sample_out_of_bounds_total Total number of samples rejected due to timestamp falling outside of the time bounds
# TYPE prometheus_target_scrapes_sample_out_of_bounds_total counter
prometheus_target_scrapes_sample_out_of_bounds_total 0
# HELP prometheus_target_scrapes_sample_out_of_order_total Total number of samples rejected due to not being out of the expected order
# TYPE prometheus_target_scrapes_sample_out_of_order_total counter
prometheus_target_scrapes_sample_out_of_order_total 0
# HELP prometheus_target_sync_length_seconds Actual interval to sync the scrape pool.
# TYPE prometheus_target_sync_length_seconds summary
prometheus_target_sync_length_seconds{scrape_job="prometheus",quantile="0.01"} NaN
prometheus_target_sync_length_seconds{scrape_job="prometheus",quantile="0.05"} NaN
prometheus_target_sync_length_seconds{scrape_job="prometheus",quantile="0.5"} NaN
prometheus_target_sync_length_seconds{scrape_job="prometheus",quantile="0.9"} NaN
prometheus_target_sync_length_seconds{scrape_job="prometheus",quantile="0.99"} NaN
prometheus_target_sync_length_seconds_sum{scrape_job="prometheus"} 0.000126029
prometheus_target_sync_length_seconds_count{scrape_job="prometheus"} 1
# HELP prometheus_template_text_expansion_failures_total The total number of template text expansion failures.
# TYPE prometheus_template_text_expansion_failures_total counter
prometheus_template_text_expansion_failures_total 0
# HELP prometheus_template_text_expansions_total The total number of template text expansions.
# TYPE prometheus_template_text_expansions_total counter
prometheus_template_text_expansions_total 0
# HELP prometheus_treecache_watcher_goroutines The current number of watcher goroutines.
# TYPE prometheus_treecache_watcher_goroutines gauge
prometheus_treecache_watcher_goroutines 0
# HELP prometheus_treecache_zookeeper_failures_total The total number of ZooKeeper failures.
# TYPE prometheus_treecache_zookeeper_failures_total counter
prometheus_treecache_zookeeper_failures_total 0
# HELP prometheus_tsdb_blocks_loaded Number of currently loaded data blocks
# TYPE prometheus_tsdb_blocks_loaded gauge
prometheus_tsdb_blocks_loaded 0
# HELP prometheus_tsdb_checkpoint_creations_failed_total Total number of checkpoint creations that failed.
# TYPE prometheus_tsdb_checkpoint_creations_failed_total counter
prometheus_tsdb_checkpoint_creations_failed_total 0
# HELP prometheus_tsdb_checkpoint_creations_total Total number of checkpoint creations attempted.
# TYPE prometheus_tsdb_checkpoint_creations_total counter
prometheus_tsdb_checkpoint_creations_total 0
# HELP prometheus_tsdb_checkpoint_deletions_failed_total Total number of checkpoint deletions that failed.
# TYPE prometheus_tsdb_checkpoint_deletions_failed_total counter
prometheus_tsdb_checkpoint_deletions_failed_total 0
# HELP prometheus_tsdb_checkpoint_deletions_total Total number of checkpoint deletions attempted.
# TYPE prometheus_tsdb_checkpoint_deletions_total counter
prometheus_tsdb_checkpoint_deletions_total 0
# HELP prometheus_tsdb_compaction_chunk_range_seconds Final time range of chunks on their first compaction
# TYPE prometheus_tsdb_compaction_chunk_range_seconds histogram
prometheus_tsdb_compaction_chunk_range_seconds_bucket{le="100"} 0
prometheus_tsdb_compaction_chunk_range_seconds_bucket{le="400"} 0
prometheus_tsdb_compaction_chunk_range_seconds_bucket{le="1600"} 0
prometheus_tsdb_compaction_chunk_range_seconds_bucket{le="6400"} 0
prometheus_tsdb_compaction_chunk_range_seconds_bucket{le="25600"} 0
prometheus_tsdb_compaction_chunk_range_seconds_bucket{le="102400"} 0
prometheus_tsdb_compaction_chunk_range_seconds_bucket{le="409600"} 0
prometheus_tsdb_compaction_chunk_range_seconds_bucket{le="1.6384e+06"} 0
prometheus_tsdb_compaction_chunk_range_seconds_bucket{le="6.5536e+06"} 0
prometheus_tsdb_compaction_chunk_range_seconds_bucket{le="2.62144e+07"} 0
prometheus_tsdb_compaction_chunk_range_seconds_bucket{le="+Inf"} 0
prometheus_tsdb_compaction_chunk_range_seconds_sum 0
prometheus_tsdb_compaction_chunk_range_seconds_count 0
# HELP prometheus_tsdb_compaction_chunk_samples Final number of samples on their first compaction
# TYPE prometheus_tsdb_compaction_chunk_samples histogram
prometheus_tsdb_compaction_chunk_samples_bucket{le="4"} 0
prometheus_tsdb_compaction_chunk_samples_bucket{le="6"} 0
prometheus_tsdb_compaction_chunk_samples_bucket{le="9"} 0
prometheus_tsdb_compaction_chunk_samples_bucket{le="13.5"} 0
prometheus_tsdb_compaction_chunk_samples_bucket{le="20.25"} 0
prometheus_tsdb_compaction_chunk_samples_bucket{le="30.375"} 0
prometheus_tsdb_compaction_chunk_samples_bucket{le="45.5625"} 0
prometheus_tsdb_compaction_chunk_samples_bucket{le="68.34375"} 0
prometheus_tsdb_compaction_chunk_samples_bucket{le="102.515625"} 0
prometheus_tsdb_compaction_chunk_samples_bucket{le="153.7734375"} 0
prometheus_tsdb_compaction_chunk_samples_bucket{le="230.66015625"} 0
prometheus_tsdb_compaction_chunk_samples_bucket{le="345.990234375"} 0
prometheus_tsdb_compaction_chunk_samples_bucket{le="+Inf"} 0
prometheus_tsdb_compaction_chunk_samples_sum 0
prometheus_tsdb_compaction_chunk_samples_count 0
# HELP prometheus_tsdb_compaction_chunk_size_bytes Final size of chunks on their first compaction
# TYPE prometheus_tsdb_compaction_chunk_size_bytes histogram
prometheus_tsdb_compaction_chunk_size_bytes_bucket{le="32"} 0
prometheus_tsdb_compaction_chunk_size_bytes_bucket{le="48"} 0
prometheus_tsdb_compaction_chunk_size_bytes_bucket{le="72"} 0
prometheus_tsdb_compaction_chunk_size_bytes_bucket{le="108"} 0
prometheus_tsdb_compaction_chunk_size_bytes_bucket{le="162"} 0
prometheus_tsdb_compaction_chunk_size_bytes_bucket{le="243"} 0
prometheus_tsdb_compaction_chunk_size_bytes_bucket{le="364.5"} 0
prometheus_tsdb_compaction_chunk_size_bytes_bucket{le="546.75"} 0
prometheus_tsdb_compaction_chunk_size_bytes_bucket{le="820.125"} 0
prometheus_tsdb_compaction_chunk_size_bytes_bucket{le="1230.1875"} 0
prometheus_tsdb_compaction_chunk_size_bytes_bucket{le="1845.28125"} 0
prometheus_tsdb_compaction_chunk_size_bytes_bucket{le="2767.921875"} 0
prometheus_tsdb_compaction_chunk_size_bytes_bucket{le="+Inf"} 0
prometheus_tsdb_compaction_chunk_size_bytes_sum 0
prometheus_tsdb_compaction_chunk_size_bytes_count 0
# HELP prometheus_tsdb_compaction_duration_seconds Duration of compaction runs
# TYPE prometheus_tsdb_compaction_duration_seconds histogram
prometheus_tsdb_compaction_duration_seconds_bucket{le="1"} 0
prometheus_tsdb_compaction_duration_seconds_bucket{le="2"} 0
prometheus_tsdb_compaction_duration_seconds_bucket{le="4"} 0
prometheus_tsdb_compaction_duration_seconds_bucket{le="8"} 0
prometheus_tsdb_compaction_duration_seconds_bucket{le="16"} 0
prometheus_tsdb_compaction_duration_seconds_bucket{le="32"} 0
prometheus_tsdb_compaction_duration_seconds_bucket{le="64"} 0
prometheus_tsdb_compaction_duration_seconds_bucket{le="128"} 0
prometheus_tsdb_compaction_duration_seconds_bucket{le="256"} 0
prometheus_tsdb_compaction_duration_seconds_bucket{le="512"} 0
prometheus_tsdb_compaction_duration_seconds_bucket{le="+Inf"} 0
prometheus_tsdb_compaction_duration_seconds_sum 0
prometheus_tsdb_compaction_duration_seconds_count 0
# HELP prometheus_tsdb_compaction_populating_block Set to 1 when a block is currently being written to the disk.
# TYPE prometheus_tsdb_compaction_populating_block gauge
prometheus_tsdb_compaction_populating_block 0
# HELP prometheus_tsdb_compactions_failed_total Total number of compactions that failed for the partition.
# TYPE prometheus_tsdb_compactions_failed_total counter
prometheus_tsdb_compactions_failed_total 0
# HELP prometheus_tsdb_compactions_total Total number of compactions that were executed for the partition.
# TYPE prometheus_tsdb_compactions_total counter
prometheus_tsdb_compactions_total 0
# HELP prometheus_tsdb_compactions_triggered_total Total number of triggered compactions for the partition.
# TYPE prometheus_tsdb_compactions_triggered_total counter
prometheus_tsdb_compactions_triggered_total 35
# HELP prometheus_tsdb_head_active_appenders Number of currently active appender transactions
# TYPE prometheus_tsdb_head_active_appenders gauge
prometheus_tsdb_head_active_appenders 0
# HELP prometheus_tsdb_head_chunks Total number of chunks in the head block.
# TYPE prometheus_tsdb_head_chunks gauge
prometheus_tsdb_head_chunks 838
# HELP prometheus_tsdb_head_chunks_created_total Total number of chunks created in the head
# TYPE prometheus_tsdb_head_chunks_created_total counter
prometheus_tsdb_head_chunks_created_total 838
# HELP prometheus_tsdb_head_chunks_removed_total Total number of chunks removed in the head
# TYPE prometheus_tsdb_head_chunks_removed_total counter
prometheus_tsdb_head_chunks_removed_total 0
# HELP prometheus_tsdb_head_gc_duration_seconds Runtime of garbage collection in the head block.
# TYPE prometheus_tsdb_head_gc_duration_seconds summary
prometheus_tsdb_head_gc_duration_seconds_sum 0
prometheus_tsdb_head_gc_duration_seconds_count 0
# HELP prometheus_tsdb_head_max_time Maximum timestamp of the head block. The unit is decided by the library consumer.
# TYPE prometheus_tsdb_head_max_time gauge
prometheus_tsdb_head_max_time 1.575797220433e+12
# HELP prometheus_tsdb_head_max_time_seconds Maximum timestamp of the head block.
# TYPE prometheus_tsdb_head_max_time_seconds gauge
prometheus_tsdb_head_max_time_seconds 1.575797220433e+09
# HELP prometheus_tsdb_head_min_time Minimum time bound of the head block. The unit is decided by the library consumer.
# TYPE prometheus_tsdb_head_min_time gauge
prometheus_tsdb_head_min_time 1.575795105433e+12
# HELP prometheus_tsdb_head_min_time_seconds Minimum time bound of the head block.
# TYPE prometheus_tsdb_head_min_time_seconds gauge
prometheus_tsdb_head_min_time_seconds 1.575795105433e+09
# HELP prometheus_tsdb_head_samples_appended_total Total number of appended samples.
# TYPE prometheus_tsdb_head_samples_appended_total counter
prometheus_tsdb_head_samples_appended_total 64123
# HELP prometheus_tsdb_head_series Total number of series in the head block.
# TYPE prometheus_tsdb_head_series gauge
prometheus_tsdb_head_series 491
# HELP prometheus_tsdb_head_series_created_total Total number of series created in the head
# TYPE prometheus_tsdb_head_series_created_total counter
prometheus_tsdb_head_series_created_total 491
# HELP prometheus_tsdb_head_series_not_found_total Total number of requests for series that were not found.
# TYPE prometheus_tsdb_head_series_not_found_total counter
prometheus_tsdb_head_series_not_found_total 0
# HELP prometheus_tsdb_head_series_removed_total Total number of series removed in the head
# TYPE prometheus_tsdb_head_series_removed_total counter
prometheus_tsdb_head_series_removed_total 0
# HELP prometheus_tsdb_head_truncations_failed_total Total number of head truncations that failed.
# TYPE prometheus_tsdb_head_truncations_failed_total counter
prometheus_tsdb_head_truncations_failed_total 0
# HELP prometheus_tsdb_head_truncations_total Total number of head truncations attempted.
# TYPE prometheus_tsdb_head_truncations_total counter
prometheus_tsdb_head_truncations_total 0
# HELP prometheus_tsdb_lowest_timestamp Lowest timestamp value stored in the database. The unit is decided by the library consumer.
# TYPE prometheus_tsdb_lowest_timestamp gauge
prometheus_tsdb_lowest_timestamp 1.575795105433e+12
# HELP prometheus_tsdb_lowest_timestamp_seconds Lowest timestamp value stored in the database.
# TYPE prometheus_tsdb_lowest_timestamp_seconds gauge
prometheus_tsdb_lowest_timestamp_seconds 1.575795105433e+09
# HELP prometheus_tsdb_reloads_failures_total Number of times the database failed to reload block data from disk.
# TYPE prometheus_tsdb_reloads_failures_total counter
prometheus_tsdb_reloads_failures_total 0
# HELP prometheus_tsdb_reloads_total Number of times the database reloaded block data from disk.
# TYPE prometheus_tsdb_reloads_total counter
prometheus_tsdb_reloads_total 1
# HELP prometheus_tsdb_retention_limit_bytes Max number of bytes to be retained in the tsdb blocks, configured 0 means disabled
# TYPE prometheus_tsdb_retention_limit_bytes gauge
prometheus_tsdb_retention_limit_bytes 0
# HELP prometheus_tsdb_size_retentions_total The number of times that blocks were deleted because the maximum number of bytes was exceeded.
# TYPE prometheus_tsdb_size_retentions_total counter
prometheus_tsdb_size_retentions_total 0
# HELP prometheus_tsdb_storage_blocks_bytes The number of bytes that are currently used for local storage by all blocks.
# TYPE prometheus_tsdb_storage_blocks_bytes gauge
prometheus_tsdb_storage_blocks_bytes 0
# HELP prometheus_tsdb_symbol_table_size_bytes Size of symbol table on disk (in bytes)
# TYPE prometheus_tsdb_symbol_table_size_bytes gauge
prometheus_tsdb_symbol_table_size_bytes 0
# HELP prometheus_tsdb_time_retentions_total The number of times that blocks were deleted because the maximum time limit was exceeded.
# TYPE prometheus_tsdb_time_retentions_total counter
prometheus_tsdb_time_retentions_total 0
# HELP prometheus_tsdb_tombstone_cleanup_seconds The time taken to recompact blocks to remove tombstones.
# TYPE prometheus_tsdb_tombstone_cleanup_seconds histogram
prometheus_tsdb_tombstone_cleanup_seconds_bucket{le="0.005"} 0
prometheus_tsdb_tombstone_cleanup_seconds_bucket{le="0.01"} 0
prometheus_tsdb_tombstone_cleanup_seconds_bucket{le="0.025"} 0
prometheus_tsdb_tombstone_cleanup_seconds_bucket{le="0.05"} 0
prometheus_tsdb_tombstone_cleanup_seconds_bucket{le="0.1"} 0
prometheus_tsdb_tombstone_cleanup_seconds_bucket{le="0.25"} 0
prometheus_tsdb_tombstone_cleanup_seconds_bucket{le="0.5"} 0
prometheus_tsdb_tombstone_cleanup_seconds_bucket{le="1"} 0
prometheus_tsdb_tombstone_cleanup_seconds_bucket{le="2.5"} 0
prometheus_tsdb_tombstone_cleanup_seconds_bucket{le="5"} 0
prometheus_tsdb_tombstone_cleanup_seconds_bucket{le="10"} 0
prometheus_tsdb_tombstone_cleanup_seconds_bucket{le="+Inf"} 0
prometheus_tsdb_tombstone_cleanup_seconds_sum 0
prometheus_tsdb_tombstone_cleanup_seconds_count 0
# HELP prometheus_tsdb_vertical_compactions_total Total number of compactions done on overlapping blocks.
# TYPE prometheus_tsdb_vertical_compactions_total counter
prometheus_tsdb_vertical_compactions_total 0
# HELP prometheus_tsdb_wal_completed_pages_total Total number of completed pages.
# TYPE prometheus_tsdb_wal_completed_pages_total counter
prometheus_tsdb_wal_completed_pages_total 23
# HELP prometheus_tsdb_wal_corruptions_total Total number of WAL corruptions.
# TYPE prometheus_tsdb_wal_corruptions_total counter
prometheus_tsdb_wal_corruptions_total 0
# HELP prometheus_tsdb_wal_fsync_duration_seconds Duration of WAL fsync.
# TYPE prometheus_tsdb_wal_fsync_duration_seconds summary
prometheus_tsdb_wal_fsync_duration_seconds{quantile="0.5"} NaN
prometheus_tsdb_wal_fsync_duration_seconds{quantile="0.9"} NaN
prometheus_tsdb_wal_fsync_duration_seconds{quantile="0.99"} NaN
prometheus_tsdb_wal_fsync_duration_seconds_sum 0
prometheus_tsdb_wal_fsync_duration_seconds_count 0
# HELP prometheus_tsdb_wal_page_flushes_total Total number of page flushes.
# TYPE prometheus_tsdb_wal_page_flushes_total counter
prometheus_tsdb_wal_page_flushes_total 312
# HELP prometheus_tsdb_wal_segment_current WAL segment index that TSDB is currently writing to.
# TYPE prometheus_tsdb_wal_segment_current gauge
prometheus_tsdb_wal_segment_current 0
# HELP prometheus_tsdb_wal_truncate_duration_seconds Duration of WAL truncation.
# TYPE prometheus_tsdb_wal_truncate_duration_seconds summary
prometheus_tsdb_wal_truncate_duration_seconds_sum 0
prometheus_tsdb_wal_truncate_duration_seconds_count 0
# HELP prometheus_tsdb_wal_truncations_failed_total Total number of WAL truncations that failed.
# TYPE prometheus_tsdb_wal_truncations_failed_total counter
prometheus_tsdb_wal_truncations_failed_total 0
# HELP prometheus_tsdb_wal_truncations_total Total number of WAL truncations attempted.
# TYPE prometheus_tsdb_wal_truncations_total counter
prometheus_tsdb_wal_truncations_total 0
# HELP promhttp_metric_handler_requests_in_flight Current number of scrapes being served.
# TYPE promhttp_metric_handler_requests_in_flight gauge
promhttp_metric_handler_requests_in_flight 1
# HELP promhttp_metric_handler_requests_total Total number of scrapes by HTTP status code.
# TYPE promhttp_metric_handler_requests_total counter
promhttp_metric_handler_requests_total{code="200"} 142
promhttp_metric_handler_requests_total{code="500"} 0
promhttp_metric_handler_requests_total{code="503"} 0
```

</p>
</details>

Остановим контейнер
```shell
docker stop prometheus
```

### Мониторинг состояния микросервисов

#### Переупорядочим структуру директорий

До перехода к следующему шагу приведем структуру каталогов в более четкий/удобный вид:

1. Создадим директорию [docker](docker) в корне репозитория и перенесем в нее директорию `docker-monolith` и файлы `docker-compose.*` и все `.env` (`.env` должен быть в [.gitgnore](.gitgnore)), в репозиторий закоммичен [.env.example](.env.example), из которого создается `.env`
2. Создадим в корне репозитория директорию [monitoring](monitoring). В ней будет хранится все, что относится к мониторингу
3. Не забываем про [.gitgnore](.gitgnore) и актуализируем записи при необходимости (добавлена запись `.env`)

**P.S.** С этого момента сборка сервисов отделена от `docker-compose`, поэтому инструкции `build` **удалены** из [src/docker-compose.yml](src/docker-compose.yml).

#### Создание Docker образа

Познакомившись с веб интерфейсом Prometheus и его стандартной конфигурацией, соберем на основе готового образа с DockerHub свой Docker образ с конфигурацией для мониторинга наших микросервисов.

Создайте директорию [monitoring/prometheus](monitoring/prometheus). Затем в этой директории создайте простой [Dockerfile](monitoring/prometheus/Dockerfile), который будет копировать файл конфигурации с нашей машины внутрь контейнера:
```shell
mkdir -p monitoring/prometheus && touch Dockerfile
```
```dockerfile
FROM prom/prometheus:v2.1.0
ADD prometheus.yml /etc/prometheus/
```

#### Конфигурация

Вся конфигурация Prometheus, в отличие от многих других систем мониторинга, происходит через файлы конфигурации и опции командной строки.

Мы определим простой конфигурационный файл для сбора метрик с наших микросервисов. В директории [monitoring/prometheus](monitoring/prometheus) создан файл [prometheus.yml](monitoring/prometheus/prometheus.yml) со следующим содержимым:
```yaml
---
global:
  scrape_interval: '5s'

scrape_configs:
  - job_name: 'prometheus'
    static_configs:
      - targets:
        - 'localhost:9090'

  - job_name: 'ui'
    static_configs:
      - targets:
        - 'ui:9292'

  - job_name: 'comment'
    static_configs:
      - targets:
        - 'comment:9292'
```

- Файл [monitoring/prometheus/Dockerfile](monitoring/prometheus/Dockerfile) исправлен в соответсвии с указаниями линтера (replace `ADD` with `COPY`)

#### Создаем образ

В директории prometheus собираем Docker образ:
```shell
export USER_NAME=dockerhub_login
cd monitoring/prometheus
docker build -t $USER_NAME/prometheus .
```

В конце занятия нужно будет запушить на DockerHub собранные вами на этом занятии образы.

#### Образы микросервисов

В коде микросервисов есть healthcheck-и для проверки работоспособности приложения.

Сборку образов теперь необходимо производить при помощи скриптов `docker_build.sh`, которые есть в директории каждого сервиса. С его помощью мы добавим информацию из Git в наш healthcheck.

Пример скрипта
```shell
#!/bin/bash

echo `git show --format="%h" HEAD | head -1` > build_info.txt
echo `git rev-parse --abbrev-ref HEAD` >> build_info.txt

docker build -t $USER_NAME/ui .
```

#### Соберем images

Выполните сборку образов при помощи скриптов `docker_build.sh` в директории каждого сервиса.
```shell
cd src/comment && bash ./docker_build.sh && cd -
cd src/post-py && bash ./docker_build.sh && cd -
cd src/ui && bash ./docker_build.sh && cd -
```

Или все сразу из корня репозитория
```shell
for i in ui post-py comment; do cd src/$i; bash docker_build.sh cd -; done
```

В [Makefile](Makefile) добавлены цели для сборки всех образов по отдельности и вместе.

Образы собраны `make build`


#### docker-compose.yml

Все `docker-compose.*` файлы перемещены из [src/](src/) в [docker/](docker/)

Будем поднимать наш Prometheus совместно с микросервисами. Определите в вашем [docker/docker-compose.yml](docker/docker-compose.yml) файле новый сервис.
```yaml
services:
...
  prometheus:
    image: ${USERNAME}/prometheus
    ports:
      - '9090:9090'
    volumes:
      - prometheus_data:/prometheus
    command:  # доп. параметры коммандной строки
      - '--config.file=/etc/prometheus/prometheus.yml'  # путь к конфигурационному файлу внутри контейнера
      - '--storage.tsdb.path=/prometheus'  # путь к директории с данными внутри контейнера
      - '--storage.tsdb.retention=1d'  # хранить данные за последние сутки

volumes:
  prometheus_data:
```

Мы будем использовать Prometheus для мониторинга всех наших микросервисов, поэтому нам необходимо, чтобы контейнер с ним мог общаться по сети со всеми другими сервисами, определенными в компоуз файле.

```yaml
    networks:
      - reddit_front
      - reddit_back
```

Также проверьте актуальность версий сервисов
в `.env` и `.env.example`

Файлы `.env*` перемещены из [src/](src/) в [docker/](docker/)

#### Запуск микросервисов

Поднимем сервисы, определенные в docker/dockercompose.yml

```shell
cd docker && docker-compose up -d
```

Ошибка
```log
Pulling ui (vscoder/ui:1.0)...
ERROR: manifest for vscoder/ui:1.0 not found: manifest unknown: manifest unknown
```
Причина -- отсутствие образов нужной версии?

Версии сервисов в [docker/.env](docker/.env) заменены на `latest`

Запуск
```shell
docker-compose up -d
```
Успешно!
```log
Creating docker_post_db_1    ... done
Creating docker_post_1       ... done
Creating docker_ui_1         ... done
Creating docker_prometheus_1 ... done
Creating docker_comment_1    ... done
```

**Ошибка!** Приложение не запустилось

Диагностика:

Список запущенных сервисов
```shell
docker-compose ps
```
```log
       Name                      Command               State            Ports         
--------------------------------------------------------------------------------------
docker_comment_1      puma                             Exit 1                         
docker_post_1         python3 post_app.py              Exit 2                         
docker_post_db_1      docker-entrypoint.sh mongod      Up       27017/tcp             
docker_prometheus_1   /bin/prometheus --config.f ...   Up       0.0.0.0:9090->9090/tcp
docker_ui_1           puma --debug -w 2                Exit 1
```

Логи контейнеров:

comment
```shell
docker logs docker_comment_1 
```
```log
/usr/local/lib/ruby/site_ruby/2.2.0/bundler/definition.rb:33:in `build': /app/Gemfile not found (Bundler::GemfileNotFound)
        from /usr/local/lib/ruby/site_ruby/2.2.0/bundler.rb:135:in `definition'
        from /usr/local/lib/ruby/site_ruby/2.2.0/bundler.rb:101:in `setup'
        from /usr/local/lib/ruby/site_ruby/2.2.0/bundler/setup.rb:20:in `<top (required)>'
        from /usr/local/lib/ruby/site_ruby/2.2.0/rubygems/core_ext/kernel_require.rb:59:in `require'
        from /usr/local/lib/ruby/site_ruby/2.2.0/rubygems/core_ext/kernel_require.rb:59:in `require'
        from /usr/local/bundle/bin/puma:27:in `<main>'
```

ui
```shell
docker logs docker_ui_1  
```
```log
/usr/local/lib/ruby/site_ruby/2.2.0/bundler/definition.rb:33:in `build': /app/Gemfile not found (Bundler::GemfileNotFound)
        from /usr/local/lib/ruby/site_ruby/2.2.0/bundler.rb:135:in `definition'
        from /usr/local/lib/ruby/site_ruby/2.2.0/bundler.rb:101:in `setup'
        from /usr/local/lib/ruby/site_ruby/2.2.0/bundler/setup.rb:20:in `<top (required)>'
        from /usr/local/lib/ruby/site_ruby/2.2.0/rubygems/core_ext/kernel_require.rb:59:in `require'
        from /usr/local/lib/ruby/site_ruby/2.2.0/rubygems/core_ext/kernel_require.rb:59:in `require'
        from /usr/local/bundle/bin/puma:27:in `<main>'
```

post
```shell
docker logs docker_post_1
```
```log
python3: can't open file 'post_app.py': [Errno 2] No such file or directory
```

Причина [docker/docker-compose.override.yml](docker/docker-compose.override.yml), в котором указано монтирование директорий с кодом с локального хоста.

`docker/docker-compose.override.yml` переименован в [docker/docker-compose.override.yml.example](docker/docker-compose.override.yml.example)

Перезапускаем всё
Запуск
```shell
docker-compose down; docker-compose up -d
```
Успешно!
```log
Stopping docker_prometheus_1 ... done
Stopping docker_post_db_1    ... done
Removing docker_ui_1         ... done
Removing docker_comment_1    ... done
Removing docker_prometheus_1 ... done
Removing docker_post_1       ... done
Removing docker_post_db_1    ... done
Removing network docker_reddit_back
Removing network docker_reddit_front
Creating network "docker_reddit_back" with the default driver
Creating network "docker_reddit_front" with the default driver
Creating docker_post_1       ... done
Creating docker_prometheus_1 ... done
Creating docker_post_db_1    ... done
Creating docker_ui_1         ... done
Creating docker_comment_1    ... done
```

Проверяем
```shell
docker ps
```
```log
CONTAINER ID        IMAGE                    COMMAND                  CREATED             STATUS              PORTS                    NAMES
1571f4db0a45        vscoder/comment:latest   "puma"                   31 seconds ago      Up 27 seconds                                docker_comment_1
acdd2f17984a        vscoder/prometheus       "/bin/prometheus --c…"   31 seconds ago      Up 28 seconds       0.0.0.0:9090->9090/tcp   docker_prometheus_1
eb95127cf57e        vscoder/ui:latest        "puma"                   31 seconds ago      Up 26 seconds       0.0.0.0:9292->9292/tcp   docker_ui_1
2071c6919eb5        mongo:3.2                "docker-entrypoint.s…"   31 seconds ago      Up 27 seconds       27017/tcp                docker_post_db_1
65ad65dd8276        vscoder/post:latest      "python3 post_app.py"    31 seconds ago      Up 28 seconds                                docker_post_1
```

Приложение открывается http://34.76.241.120:9292/
Prometheus доступен http://34.76.241.120:9090
В prometheus появились активные endpoint-ы `comment` и `ui` http://34.76.241.120:9090/targets


#### Healthchecks

Healthcheck-и представляют собой проверки того, что наш сервис здоров и работает в ожидаемом режиме. В нашем случае healthcheck выполняется внутри кода микросервиса и выполняет проверку того, что все сервисы, от которых зависит его работа, ему доступны.

Если требуемые для его работы сервисы здоровы, то healthcheck проверка возвращает status = 1, что соответсвует тому, что сам сервис здоров.

Если один из нужных ему сервисов нездоров или недоступен, то проверка вернет status = 0.

#### Состояние сервиса UI

В веб интерфейсе Prometheus выполните поиск по названию метрики `ui_health`.

Действительно, есть такой.
```log
ui_health{branch="monitoring-1",commit_hash="2dec0f4",instance="ui:9292",job="ui",version="0.0.1"}	
```

Построим график того, как менялось значение метрики ui_health со временем: вкладка _Graph_

**Обратим внимание**, что, помимо имени метрики и ее значения, мы также видим информацию в лейблах о версии приложения, комите и ветке кода в Git-е.

Видим, что статус UI сервиса был стабильно 1 (но это не так!), что означает, что сервис работал. Данный график оставьте открытым.

**P.S.** Если у вас статус не равен 1, проверьте какой сервис
недоступен (слайд 32), и что у вас заданы все aliases для DB.

#### Fix docker-machine from other host

В связи с тем, что работа продолжена с другого хоста, возникли проблемы с подключением к docker-machine. Команда `docker-machine ls` не видела созданных инстансов. Для того чтобы увидеть ранее созданный инстанс `docker-host`, с первого хоста была скопирована директория `~/.docker`, содержащая параметры docker-machine и текущий стейт.

Так как инстанс ранее был остановлен `docker-machine stop docker-host`, его потребовалось запустить `docker-machine start docker-host`.

При выполнении `docker-machine env docker-host` возникла ошибка
```log
Error checking TLS connection: Error checking and/or regenerating the certs: There was an error validating certificates for host "35.241.249.240:2376": x509: certificate is valid for 34.76.241.120, not 35.241.249.240
You can attempt to regenerate them using 'docker-machine regenerate-certs [name]'.
Be advised that this will trigger a Docker daemon restart which might stop running containers.
```

Причина: изменился внешний ip.

Решение: перегенерируем сертификаты `docker-machine regenerate-certs docker-host`. После чего удалось успешно активировать окружение `docker-machine env docker-host`

Но при заходе на `docker-host` по ssh `docker-machine ssh docker-host`, обнаружилось отсутствие запущзенных контейнеров.
```shell
sudo docker ps -a
```
```log
CONTAINER ID        IMAGE                    COMMAND                  CREATED             STATUS                    PORTS               NAMES
1571f4db0a45        vscoder/comment:latest   "puma"                   24 hours ago        Exited (1) 20 hours ago                       docker_comment_1
acdd2f17984a        vscoder/prometheus       "/bin/prometheus --c…"   24 hours ago        Exited (0) 20 hours ago                       docker_prometheus_1
eb95127cf57e        vscoder/ui:latest        "puma"                   24 hours ago        Exited (1) 20 hours ago                       docker_ui_1
2071c6919eb5        mongo:3.2                "docker-entrypoint.s…"   24 hours ago        Exited (0) 20 hours ago                       docker_post_db_1
65ad65dd8276        vscoder/post:latest      "python3 post_app.py"    24 hours ago        Exited (0) 20 hours ago                       docker_post_1
```

Возможное решение: заново поднять все сервисы по описанной ранее инструкции в README.md
```shell
export GOOGLE_PROJECT=<project_id_here>
docker run --rm -p 9090:9090 -d --name prometheus prom/prometheus:v2.14.0
docker-machine ip docker-host
http://35.241.249.240:9090/graph
docker stop prometheus
# И зачем я всё это делал? =)

source ./.venv/bin/sctivate
cd docker
docker-compose up -d
```

Ошибка
```log
WARNING: The MONGO_VERSION variable is not set. Defaulting to a blank string.
WARNING: The UI_APP_HOME variable is not set. Defaulting to a blank string.
WARNING: The USERNAME variable is not set. Defaulting to a blank string.
WARNING: The UI_VERSION variable is not set. Defaulting to a blank string.
WARNING: The UI_PORT variable is not set. Defaulting to a blank string.
WARNING: The POST_APP_HOME variable is not set. Defaulting to a blank string.
WARNING: The POST_VERSION variable is not set. Defaulting to a blank string.
WARNING: The COMMENT_APP_HOME variable is not set. Defaulting to a blank string.
WARNING: The COMMENT_VERSION variable is not set. Defaulting to a blank string.
ERROR: The Compose file './docker-compose.yml' is invalid because:
services.ui.ports contains an invalid type, it should be a number, or an object
```
Причина: на новом хосте нет env-файла

Решение: копировать с первого хоста
```shell
scp ...
docker-compose up -d
```
Всё поднялось. Приложение доступно http://35.241.249.240:9292/

Затрачено: ~25 мин.

#### Состояние сервиса UI. Продолжение

Итак, `ui_health` равно 0.

Причина: сервис comment ищет БД на хосте `comment_db`, которого нет.

Решалось в HomeWork 15 поднятием отдельного инстанса с БД с правильным именем.

В этот раз попробуем использовать [сетевые alias-ы](https://docs.docker.com/compose/networking/#links). В [docker/docker-compose.yml](docker/docker-compose.yml) сервису post_db добавлены `links:`
```yaml
services:
  comment:
    ...
    links:
      - "post_db:comment_db"
```

Тестируем:
```shell
docker-compose up -d
```
```log
docker_ui_1 is up-to-date
docker_prometheus_1 is up-to-date
docker_post_1 is up-to-date
docker_post_db_1 is up-to-date
Recreating docker_comment_1 ... done
```
Сервис `docker_comment` был пересоздан. Проверяем: http://35.241.249.240:9090/graph?g0.range_input=1h&g0.expr=ui_health&g0.tab=0

Значение `ui_health` теперь равно 1.


##### Проверка метрик

Остановим post сервис

Мы говорили, что условились считать сервис здоровым, если все сервисы, от которых он зависит также являются здоровыми.

Попробуем остановить сервис post на некоторое время и проверим, как изменится статус ui сервиса, который зависим от post. 

```shell
docker-compose stop post
```
```log
Stopping docker_post_1 ... done
```

После обновления графика метрика `ui_health` снова изменила значение на `0`.


##### Поиск проблемы

Помимо статуса сервиса, мы также собираем статусы сервисов, от которых он зависит. Названия метрик, значения которых соответствует данным статусам, имеет формат `ui_health_<service-name>`.

Посмотрим, не случилось ли чего плохого с сервисами, от которых зависит UI сервис.

Наберем в строке выражений ui_health_ и Prometheus нам предложит дополнить названия метрик.

Проверим comment сервис. Видим, что сервис свой статус не менял в данный промежуток времени: `ui_health_comment_availability`

А с post сервисом все плохо: `ui_health_post_availability`

Чиним. Проблему мы обнаружили и знаем, как ее поправить (ведь мы же ее и создали :)). Поднимем post сервис.
```shell
docker-compose start post
```
```log
Starting post ... done
```
Post сервис поправился: `ui_health_post_availability`
UI сервис тоже: `ui_health


##### Самостоятельно

При желании, можно попробовать остановить comment сервис или БД для какого-то из сервисов и провести аналогичные операции по мониторингу ситуации.

Попробоал потушить БД.

##### Пересоздание docker-machine

Машина `docker-host` удалена после окончания текущей задачи.

На новом хосте заново поднят docker-host и всё приложение
```shell
make docker_machine_create
eval $(docker-machine env docker-host)
docker-machine ip docker-host
```

Собираем образы приложения
```shell
export USER_NAME=vscoder
make build
```


### Сбор метрик хоста с использованием экспортера

Экспортер похож на вспомогательного агента для сбора метрик.

В ситуациях, когда мы не можем реализовать отдачу метрик Prometheus в коде приложения, мы можем использовать экспортер, который будет транслировать метрики приложения или системы в формате доступном для чтения Prometheus.

Экспортер это:
- Программа, которая делает метрики доступными для сбора Prometheus
- Дает возможность конвертировать метрики в нужный для Prometheus формат
- Используется когда нельзя поменять код приложения
- Примеры: PostgreSQL, RabbitMQ, Nginx, Node exporter, cAdvisor

#### Node exporter

Воспользуемся [Node экспортер](https://github.com/prometheus/node_exporter) для сбора информации о работе Docker хоста (виртуалки, где у нас запущены контейнеры) и предоставлению этой информации в Prometheus.

#### docker-compose.yml

Node экспортер будем запускать также в контейнере. Определим еще один сервис в [docker/docker-compose.yml](docker/docker-compose.yml) файле.

Не забудьте также добавить определение сетей для сервиса node-exporter, чтобы обеспечить доступ Prometheus к экспортеру.

```yaml
services:
  ...
  node-exporter:
    image: prom/node-exporter:v0.18.1
    user: root
    volumes:
      - /proc:/host/proc:ro
      - /sys:/host/sys:ro
      - /:/rootfs:ro
    networks:
      - reddit_front
      - reddit_back
    command:
      - '--path.procfs=/host/proc'
      - '--path.sysfs=/host/sys'
      - '--collector.filesystem.ignored-mount-points="^/(sys|proc|dev|host|etc)($$|/)"'
```

#### Дополнительно: параметризуем версии образов

Параметризованы версии `prometheus` и `node_exporter`
[docker/docker-compose.yml](docker/docker-compose.yml)
```yaml
services:
  ...
  prometheus:
    image: ${USERNAME}/prometheus:${PROMETHEUS_VERSION}
    ...
  node-exporter:
    image: prom/node-exporter:${NODE_EXPORTER_VERSION}
    ...
```

В [docker/.env.example](docker/.env.example) добавлены переменные
```shell
PROMETHEUS_VERSION=latest
NODE_EXPORTER_VERSION=v0.18.1
```

#### Дополнительно: Makefile target build_prometheus

Создан скрипт для сборки prometheus [monitoring/prometheus/docker_build.sh](monitoring/prometheus/docker_build.sh)
```shell
#!/bin/bash
set -eu

docker build -t $USER_NAME/prometheus .
```

В [Makefile](Makefile) добавлена новая цель `build_prometheus` для сборки prometheus с собственным конфигом

Поднимаем приложение
```shell
cd ./docker && docker-compose up -d
```

#### prometheus.yml

Чтобы сказать Prometheus следить за еще одним сервисом, нам нужно добавить информацию о нем в конфиг.

Добавим еще один job:
```yaml
scrape_configs:
  ...
  - job_name: 'node'
    static_configs:
      - targets:
      - 'node-exporter:9100'
```

Не забудем собрать новый Docker для Prometheus:
```shell
make build_prometheus
```

#### Пересоздадим наши сервисы

```shell
source ./.venv/bin/activate
cd ./docker
docker-compose down
docker-compose up -d
```
```log
Creating network "docker_reddit_back" with the default driver
Creating network "docker_reddit_front" with the default driver
Pulling node-exporter (prom/node-exporter:v0.18.1)...
v0.18.1: Pulling from prom/node-exporter
49a2d53aa1af: Pull complete
3589a6efd9ce: Pull complete
190160031744: Pull complete
Digest: sha256:a2f29256e53cc3e0b64d7a472512600b2e9410347d53cdc85b49f659c17e02ee
Status: Downloaded newer image for prom/node-exporter:v0.18.1
Creating docker_post_1          ... done
Creating docker_prometheus_1    ... done
Creating docker_node-exporter_1 ... done
Creating docker_ui_1            ... done
Creating docker_post_db_1       ... done
Creating docker_comment_1       ... done
```

web-интерфейс prometheus http://35.195.16.90:9090/ не открылся. Соединение сброшено.

Диагностика:
```shell
docker-compose ps
```
```log
         Name                       Command               State            Ports         
-----------------------------------------------------------------------------------------
docker_comment_1         puma                             Up                             
docker_node-exporter_1   /bin/node_exporter --path. ...   Up       9100/tcp              
docker_post_1            python3 post_app.py              Up                             
docker_post_db_1         docker-entrypoint.sh mongod      Up       27017/tcp             
docker_prometheus_1      /bin/prometheus --config.f ...   Exit 1                         
docker_ui_1              puma                             Up       0.0.0.0:9292->9292/tcp
```
Сервис prometheus завершил работу. Смотрим логи
```shell
docker-compose logs prometheus
```
```log
...
prometheus_1     | level=error ts=2019-12-10T06:20:50.235Z caller=main.go:736 err="error loading config from \"/etc/prometheus/prometheus.yml\": couldn't load configuration (--config.file=\"/etc/prometheus/prometheus.yml\"): parsing YAML file /etc/prometheus/prometheus.yml: yaml: unmarshal errors:\n  line 24: cannot unmarshal !!str `node-ex...` into struct { Targets []string \"yaml:\\\"targets\\\"\"; Labels model.LabelSet \"yaml:\\\"labels\\\"\" }"
```
Причина: кривой [monitoring/prometheus/prometheus.yml](monitoring/prometheus/prometheus.yml)

Исправлен:
```yaml
...
  - job_name: "node"
    static_configs:
      - targets:
          - "node-exporter:9100"
```

Собираем образ, запускаем приложения
```shell
cd .. && make build_prometheus && cd -
docker-compose up -d
```
```log
docker_post_1 is up-to-date
docker_ui_1 is up-to-date
Recreating docker_prometheus_1 ... 
docker_node-exporter_1 is up-to-date
docker_post_db_1 is up-to-date
Recreating docker_prometheus_1 ... done
```
Проверяем
```shell
docker-compose ps
```
```log
         Name                       Command               State           Ports         
----------------------------------------------------------------------------------------
docker_comment_1         puma                             Up                            
docker_node-exporter_1   /bin/node_exporter --path. ...   Up      9100/tcp              
docker_post_1            python3 post_app.py              Up                            
docker_post_db_1         docker-entrypoint.sh mongod      Up      27017/tcp             
docker_prometheus_1      /bin/prometheus --config.f ...   Up      0.0.0.0:9090->9090/tcp
docker_ui_1              puma                             Up      0.0.0.0:9292->9292/tcp
```

Вроде всё в порядке. Проверяем web-интерфейс http://35.195.16.90:9090/graph открылся **успешно**

Посмотрим, список endpoint-ов Prometheus http://35.195.16.90:9090/targets - должен появится еще один endpoint.

#### Получение информации

Получим информацию об использовании CPU: `node_load1`
```log
node_load1{instance="node-exporter:9100",job="node"}	0
```

Зайдем на хост: `docker-machine ssh docker-host`

Добавим нагрузки: `yes > /dev/null`

На графике http://35.195.16.90:9090/graph?g0.range_input=1h&g0.expr=node_load1&g0.tab=0 видно, что нагрузка возросла.

### Завершение работы

#### Makefile targets

Добавлены цели:
- push_comment
- push_post
- push_ui
- push_prometheus
- push

#### Пушим образы

Запушьте собранные вами образы на DockerHub (из корня проекта):
```shell
docker login
make push
```

Ссылка на docker-hub https://hub.docker.com/u/vscoder

### Задания со \*

#### MongoDB exporter

Добавьте в Prometheus мониторинг MongoDB с использованием необходимого экспортера.

В качестве экспортера был выбран [percona/mongodb_exporter](https://github.com/percona/mongodb_exporter) от percona, так как представлен известным разработчиком, а так же как единственный, представленный на prometheus wiki [Default port allocations](https://github.com/prometheus/prometheus/wiki/Default-port-allocations)

Экспортер [dcu/mongodb_exporter](https://github.com/dcu/mongodb_exporter), представленный на https://prometheus.io/docs/instrumenting/exporters/, по рекомендациям из ДЗ, выбран не был.

##### Установка

Добавлен Makefile target `mongodb_exporter_clone`, который клонирует репозиторий с github.
```makefile
mongodb_exporter_clone:
	cd ./monitoring && git clone https://github.com/percona/mongodb_exporter.git
```
Клонирован репозиторий
```shell
make mongodb_exporter_clone
```
```log
cd ./monitoring && git clone https://github.com/percona/mongodb_exporter.git
Клонирование в «mongodb_exporter»…
remote: Enumerating objects: 39, done.
remote: Counting objects: 100% (39/39), done.
remote: Compressing objects: 100% (34/34), done.
remote: Total 5517 (delta 7), reused 14 (delta 3), pack-reused 5478
Получение объектов: 100% (5517/5517), 6.16 MiB | 267.00 KiB/s, готово.
Определение изменений: 100% (2731/2731), готово.
```

Добавлен Makefile target `mongodb_exporter_docker_build`, который собирает докер-контейнер
```makefile
# mongodb_exporter
MONGODB_EXPORTER_DOCKER_IMAGE_NAME?=${USER_NAME}/mongodb-exporter
MONGODB_EXPORTER_VERSION?=v0.10.0
mongodb_exporter_docker_build:
	cd ./monitoring/mongodb_exporter && make docker DOCKER_IMAGE_NAME=${MONGODB_EXPORTER_DOCKER_IMAGE_NAME} DOCKER_IMAGE_TAG=${MONGODB_EXPORTER_VERSION}
```
Собран docker-образ `vscoder/mongodb-mongodb_exporter:v0.10.0`
```shell
make mongodb_exporter_docker_build
```
```log
...
Successfully built 8da76a8e3cbb
Successfully tagged vscoder/mongodb-exporter:v0.10.0
```

В [docker/.env](docker/.env) добавлена переменная `MONGODB_EXPORTER_VERSION=v0.10.0`

В [docker/docker-compose.yml](docker/docker-compose.yml) добавлен сервис `postdb-exporter`
```yaml
postdb-exporter:
  image: ${USERNAME}/mongodb-exporter:${MONGODB_EXPORTER_VERSION}
  networks:
    #- reddit_front
    - reddit_back
  environment:
    MONGODB_URI: "mongodb://post_db:27017"
```

В [monitoring/prometheus/prometheus.yml](monitoring/prometheus/prometheus.yml) добавлен job
```yaml
scrape_config:
  ...
  - job_name: "post_db"
    static_configs:
      - targets:
        - "postdb-exporter:9216"
```

В [.gitignore](.gitignore) добавлена строка
```
monitoring/mongodb_exporter
```

В Makefile target `build` добавлена сборка `mongodb_exporter_docker_build`

В Makefile target `push` добавлена закачка `mongodb_exporter_push`

Сборка всего
```shell
make build
```
успешно

В Makefile добавлен target `run`. Выполнен запуск приложения
```shell
make run
```

Проверка http://35.195.16.90:9090
```log
mongodb_exporter_build_info{goversion="go1.11.13",instance="postdb-exporter:9216",job="post_db"}	
```


#### Cloudprober

Было принято решение использовать cloudprober в связи с большим функционалом по сравнению с blackbox_exporter. В часности, возможность использовать "внешние" проверки скриптом, что может пригодиться впоследствии.

Официальный сайт https://cloudprober.org/

Ссылка на github https://github.com/google/cloudprober

Docker-образ https://hub.docker.com/r/cloudprober/cloudprober

Документация https://cloudprober.org/getting-started/

##### Реализация

Создан файл [monitoring/cloudprober/Dockerfile](monitoring/cloudprober/Dockerfile), добавляющий конфик в образ cloudprober
```dockerfile
FROM cloudprober/cloudprober:v0.10.5
COPY cloudprober.cfg /etc/cloudprober.cfg
```

Создан файл [monitoring/cloudprober/cloudprober.cfg](monitoring/cloudprober/cloudprober.cfg), содержащий конфигурацию cloudprober
```conf
probe {
  name: "ui"
  type: HTTP
  targets {
    host_names: "ui:9292"
  }
  interval_msec: 5000  # 5s
  timeout_msec: 1000   # 1s
}
probe {
  name: "comment"
  type: HTTP
  targets {
    host_names: "comment:9292"
  }
  interval_msec: 5000  # 5s
  timeout_msec: 1000   # 1s
}
probe {
  name: "post"
  type: HTTP
  targets {
    host_names: "post:5000"
  }
  interval_msec: 5000  # 5s
  timeout_msec: 1000   # 1s
}
```

Создан файл [monitoring/cloudprober/docker_build.sh](monitoring/cloudprober/docker_build.sh), собирающий образ `$USER_NAME/cloudprober`
```shell
#!/bin/bash
set -eu

docker build -t $USER_NAME/cloudprober .
```

В [Makefile](Makefile) добавлены цели 
- `cloudprober_build` для сборки образа
```makefile
cloudprober_build:
	cd ./monitoring/cloudprober && bash docker_build.sh
```
- `cloudprober_push` для загрузки образ ана docker-hub
```makefile
cloudprober_push:
	docker push ${USER_NAME}/cloudprober
```

Созданные цели добавлены в цели `build` и `push` соответственно.
```makefile
build: build_post build_comment build_ui build_prometheus mongodb_exporter_docker_build cloudprober_build

push: push_comment push_post push_ui push_prometheus mongodb_exporter_push cloudprober_push
```

В [monitoring/prometheus/prometheus.yml](monitoring/prometheus/prometheus.yml) добавлена job
```yaml
  - job_name: "cloudprober"
    scrape_interval: 10s
    static_configs:
      - targets:
          - "cloudprober:9313"
```

В [docker/.env.example](docker/.env.example) добавлена переменная `CLOUDPROBER_VERSION=latest`

В [docker/docker-compose.yml](docker/docker-compose.yml) добавлен сервис
```yaml
  cloudprober:
    image: ${USERNAME}/cloudprober:${CLOUDPROBER_VERSION}
    networks:
      - reddit_back
```

Исправлена Makefile цель `mongodb_exporter_clone`. Теперь репозиторий c `mongodb_exporter` клонируется только если директория `monitoring/mongodb_exporter` не существует.

Собрано всё
```shell
make build
```

Запуск приложения:
```shell
make run
```

Проверено:

total http://104.155.62.111:9090/graph?g0.range_input=1h&g0.expr=total&g0.tab=1
```log
total{dst="comment:9292",instance="cloudprober:9313",job="cloudprober",probe="comment",ptype="http"}	114
total{dst="post:5000",instance="cloudprober:9313",job="cloudprober",probe="post",ptype="http"}	116
total{dst="ui:9292",instance="cloudprober:9313",job="cloudprober",probe="ui",ptype="http"}	116
```

success http://104.155.62.111:9090/graph?g0.range_input=1h&g0.expr=success&g0.tab=1
```log
success{dst="comment:9292",instance="cloudprober:9313",job="cloudprober",probe="comment",ptype="http"}	124
success{dst="post:5000",instance="cloudprober:9313",job="cloudprober",probe="post",ptype="http"}	126
success{dst="ui:9292",instance="cloudprober:9313",job="cloudprober",probe="ui",ptype="http"}	0
```

latency http://104.155.62.111:9090/graph?g0.range_input=1h&g0.expr=latency&g0.tab=1
```log
latency{dst="comment:9292",instance="cloudprober:9313",job="cloudprober",probe="comment",ptype="http"}	323976.069
latency{dst="post:5000",instance="cloudprober:9313",job="cloudprober",probe="post",ptype="http"}	436631.507
latency{dst="ui:9292",instance="cloudprober:9313",job="cloudprober",probe="ui",ptype="http"}	0
```

Проблема: сервис ui недоступен

Причина: в [docker/docker-compose.yml](docker/docker-compose.yml) сервису `cloudprober` не добавлена сеть `reddit_front`. Исправлено
```yaml
  cloudprober:
    image: ${USERNAME}/cloudprober:${CLOUDPROBER_VERSION}
    networks:
      - reddit_back
      - reddit_front
```

Перезапускаем
```shell
make run
```

success http://104.155.62.111:9090/graph?g0.range_input=1h&g0.expr=success&g0.tab=1
```log
success{dst="comment:9292",instance="cloudprober:9313",job="cloudprober",probe="comment",ptype="http"}	6
success{dst="post:5000",instance="cloudprober:9313",job="cloudprober",probe="post",ptype="http"}	8
success{dst="ui:9292",instance="cloudprober:9313",job="cloudprober",probe="ui",ptype="http"}	8
```

total http://104.155.62.111:9090/graph?g0.range_input=1h&g0.expr=total&g0.tab=1
```log
total{dst="comment:9292",instance="cloudprober:9313",job="cloudprober",probe="comment",ptype="http"}	16
total{dst="post:5000",instance="cloudprober:9313",job="cloudprober",probe="post",ptype="http"}	18
total{dst="ui:9292",instance="cloudprober:9313",job="cloudprober",probe="ui",ptype="http"}	18
```

latency http://104.155.62.111:9090/graph?g0.range_input=1h&g0.expr=latency&g0.tab=1
```log
latency{dst="comment:9292",instance="cloudprober:9313",job="cloudprober",probe="comment",ptype="http"}	63902.087
latency{dst="post:5000",instance="cloudprober:9313",job="cloudprober",probe="post",ptype="http"}	91329.549
latency{dst="ui:9292",instance="cloudprober:9313",job="cloudprober",probe="ui",ptype="http"}	845258.711
```

failure_ratio `(rate(total[1m]) - rate(success[1m])) / rate(total[1m])` and avg_latency `rate(latency[1m]) / rate(success[1m]) / 1000` http://104.155.62.111:9090/graph?g0.range_input=1h&g0.expr=(rate(total%5B1m%5D)%20-%20rate(success%5B1m%5D))%20%2F%20rate(total%5B1m%5D)&g0.tab=0&g1.range_input=1h&g1.expr=rate(latency%5B1m%5D)%20%2F%20rate(success%5B1m%5D)%20%2F%201000&g1.tab=0


#### Makefile

В [Makefile](Makefile) добавлены цели

| Цель                          | Описание                                                                                         |
| ----------------------------- | ------------------------------------------------------------------------------------------------ |
| build_comment                 | Собрать образ comment                                                                            |
| build_post                    | Собрать образ post                                                                               |
| build_ui                      | Собрать образ ui                                                                                 |
| build_prometheus              | Собрать prometheus с нашим конфигом                                                              |
| build                         | Собрать все образы                                                                               |
| push_comment                  | Пуш в докер-хаб образа `${USER_NAME}/comment`                                                    |
| push_post                     | Пуш в докер-хаб образа `${USER_NAME}/post`                                                       |
| push_ui                       | Пуш в докер-хаб образа `${USER_NAME}/ui`                                                         |
| push_prometheus               | Пуш в докер-хаб образа `${USER_NAME}/prometheus`                                                 |
| push                          | Пуш в докер-хаб всех образов                                                                     |
| mongodb_exporter_clone        | Клонирование репозитория https://github.com/percona/mongodb_exporter.git                         |
| mongodb_exporter_docker_build | Сборка docker-образа с mongodb-exporter                                                          |
| mongodb_exporter_push         | Пуш в докер-хаб образа `${MONGODB_EXPORTER_DOCKER_IMAGE_NAME}:${MONGODB_EXPORTER_VERSION}`       |
| cloudprober_build             | Сборка docker-образа cloudprober                                                                 |
| cloudprober_push              | Пуш в докер-хаб образа `${USER_NAME}/cloudprober`                                                |
| variables                     | Создание переменных `docker/.env` из `docker/.env.example`, если `docker/.env` ещё не существует |

TODO: реализовать пуш образов с корректной версией

### Запуск проекта

#### Подготовка

Предварительно необходимо заполнить `env` по примеру `env.example`, а так же выполнитб авторизацию в `gcloud`

```shell
# Установка docker-machine
install_docker_machine

# Создание docker-machine
docker_machine_create

# Исплоьзование docker-machine
eval $(docker-machine env docker-host)

# Узнать docker-machine ip
make docker_machine_ip
```

#### Запуск проекта

```shell
# Сборка образов
source ./env
make build

# Запуск приложения
make run
```

Приложение: http://<IP_OF_DOCKER_MACHINE_INSTANCE_OR_LOCALHOST>:9292

Мониторинг: http://<IP_OF_DOCKER_MACHINE_INSTANCE_OR_LOCALHOST>:9090/graph?g0.range_input=1h&g0.expr=(rate(total%5B1m%5D)%20-%20rate(success%5B1m%5D))%20%2F%20rate(total%5B1m%5D)&g0.tab=0&g1.range_input=1h&g1.expr=rate(latency%5B1m%5D)%20%2F%20rate(success%5B1m%5D)%20%2F%201000&g1.tab=0



## HomeWork 17: Мониторинг приложения и инфраструктуры


### План

1. Мониторинг Docker контейнеров
2. Визуализация метрик
3. Сбор метрик работы приложения и бизнес метрик
4. Настройка и проверка алертинга
5. Много заданий со ⭐ (необязательных)


### Мониторинг Docker контейнеров


#### Подготовка окружения

Открывать порты в файрволле для новых сервисов нужно
самостоятельно по мере их добавления.

Создадим Docker хост в GCE и настроим локальное окружение на
работу с ним

Пример из ДЗ:
```shell
$ export GOOGLE_PROJECT=_ваш-проект_

# Создать докер хост
docker-machine create --driver google \
    --google-machine-image https://www.googleapis.com/compute/v1/projects/ubuntu-os-cloud/global/images/family/ubuntu-1604-lts \
    --google-machine-type n1-standard-1 \
    --google-zone europe-west1-b \
    docker-host

# Настроить докер клиент на удаленный докер демон
eval $(docker-machine env docker-host)

# Переключение на локальный докер
eval $(docker-machine env --unset)

$ docker-machine ip docker-host

$ docker-machine rm docker-host
```

Но мы пойдём другим путём:
```shell
make docker_machine_create DOCKER_MACHINE_TYPE=n1-standard-1
eval $(docker-machine env docker-host)
make docker_machine_ip
```


#### Мониторинг Docker контейнеров

Разделим файлы Docker Compose:

В данный момент и мониторинг и приложения у нас описаны в одном большом [docker-compose.yml](docker/docker-compose.yml). С одной стороны это просто, а с другой - мы смешиваем различные сущности, и сам файл быстро растет.

Оставим описание приложений в [docker-compose.yml](docker/docker-compose.yml), а мониторинг выделим в отдельный файл [docker-compose-monitoring.yml](docker/docker-compose-monitoring.yml).

Для запуска приложений будем как и ранее использовать `docker-compose up -d`, а для мониторинга - `docker-compose -f docker-compose-monitoring.yml up -d`


#### cAdvisor

Мы будем использовать [cAdvisor](https://github.com/google/cadvisor) для наблюдения за состоянием наших Docker контейнеров.

cAdvisor собирает информацию о ресурсах потребляемых контейнерами и характеристиках их работы.

Примерами метрик являются:
- процент использования контейнером CPU и памяти, выделенные для его запуска,
- объем сетевого трафика
- и др.

#### Файл docker-compose-monitoring.yml

cAdvisor также будем запускать в контейнере. Для этого добавим новый сервис в наш компоуз файл мониторинга [docker/docker-compose-monitoring.yml](docker/docker-compose-monitoring.yml).

Поместите данный сервис в одну сеть с Prometheus, чтобы тот мог собирать с него метрики.

```yaml
cadvisor:
  image: google/cadvisor:v0.33.0
  volumes:
    - '/:/rootfs:ro'
    - '/var/run:/var/run:rw'
    - '/sys:/sys:ro'
    - '/var/lib/docker/:/var/lib/docker:ro'
  ports:
    - '8080:8080'
```

#### Файл prometheus.yml

Добавим информацию о новом сервисе в [конфигурацию Prometheus](monitoring/prometheus/prometheus.yml), чтобы он начал собирать метрики:
```yaml
scrape_configs:
  ...
  - job_name: 'cadvisor'
    static_configs:
      - targets:
        - 'cadvisor:8080'
```

Пересоберем образ Prometheus с обновленной конфигурацией.

Пример из лекции:
```shell
export USER_NAME=username # где username - ваш логин на Docker Hub
docker build -t $USER_NAME/prometheus .
```

Но у нас всё по фень-шую (почти):

Добавил в [env.example](env.example)
```shell
export USER_NAME=${USERNAME}
```

В Makefile цели `*_build` и `*_push` добавим
```shell
. ./env && \
...
```

И сборка:
```shell
make build_prometheus
```

#### cAdvisor UI

Запустим сервисы (как обычно, не наш метод)):
```shell
docker-compose up -d
docker-compose -f docker-compose-monitoring.yml up -d
```

Makefile target `run` приведён к следующему виду:
```makefile
run: variables
	cd docker \
	&& ../.venv/bin/docker-compose up -d \
	&& ../.venv/bin/docker-compose -f docker-compose-monitoring.yml up -d
```

Запуск
```shell
make run
```

Образы успешно скачаны с docker hub. Проект запущен.
```log
...
Creating docker_ui_1      ... done
Creating docker_post_db_1 ... done
Creating docker_post_1    ... done
Creating docker_comment_1 ... done
...
WARNING: Found orphan containers (docker_comment_1, docker_post_1, docker_post_db_1, docker_ui_1) for this project. If you removed or renamed this service in your compose file, you can run this command with the --remove-orphans flag to clean it up.

Creating docker_prometheus_1      ... done
Creating docker_cadvisor_1        ... done
Creating docker_node-exporter_1   ... done
Creating docker_cloudprober_1     ... done
Creating docker_postdb-exporter_1 ... done
```

cAdvisor имеет UI, в котором отображается собираемая о контейнерах информация.

Откроем порт 8080 в gcloud
```shell
gcloud compute firewall-rules create cadvisor \
  --allow tcp:8080 \
  --target-tags=docker-machine \
  --description="Allow cAdvisor UI connections" \
  --direction=INGRESS
```
Ждём несколько минут... Безрезультатно.

В prometheus targets видим, что он не видит cAdvisor.

Забыл добавить сети в сервис `cadvisor` [docker/docker-compose-monitoring.yml](docker/docker-compose-monitoring.yml)
```yaml
services:
  cadvisor:
    image: google/cadvisor:v0.33.0
    volumes:
      - "/:/rootfs:ro"
      - "/var/run:/var/run:rw"
      - "/sys:/sys:ro"
      - "/var/lib/docker/:/var/lib/docker:ro"
    ports:
      - "8080:8080"
    networks:
      - reddit_back
      - reddit_front
```
```shell
make run
```
мы не в том проекте создали правило фаервола, о чём видно из логов

По какой-то привчине правило всё время создавалось в проекте `infra-...`. Задал проект командой `gcloud config set project <project_id>` после чего правило создалось где нужно

```shell
gcloud compute firewall-rules delete cadvisor

gcloud config set project <project_id>

gcloud compute firewall-rules create cadvisor \
  --allow tcp:8080 \
  --target-tags=docker-machine \
  --description="Allow cAdvisor UI connections" \
  --direction=INGRESS
```

Откроем страницу Web UI по адресу http://<docker-machinehost-ip>:8080

Ничего так, netdata красивше)) Хотя cAdvisor нагляднее в качестве количества метрик видимых без прокрутки. А вообще, толстоват:
```log
root	14 262	14 236	18:52	6.30	2.80	105.67 MiB	786.48 MiB	Ssl	00:01:18	cadvisor
```

Нажмите ссылку Docker Containers (внизу слева) для просмотра информации по контейнерам.

В UI мы можем увидеть:
- список контейнеров, запущенных на хосте
- информацию о хосте (секция Driver Status)
- информацию об образах контейнеров (секция Images)

Нажмем на название одного из контейнеров, чтобы посмотреть информацию о его работе:

Здесь отображается информация по процессам, использованию CPU, памяти, сети и файловой системы:

По пути /metrics все собираемые метрики публикуются для сбора Prometheus: http://34.77.224.184:8080/metrics

Видим, что имена метрик контейнеров начинаются со слова `container`

Проверим, что метрики контейнеров собираются Prometheus. Введем, слово `container` и посмотрим, что он предложит дополнить: ну да, выводит...


### Визуализация метрик: Grafana

Используем инструмент Grafana для визуализации данных из Prometheus.

Добавим новый сервис в [docker-compose-monitoring.yml](docker/docker-compose-monitoring.yml). Так же добавляем grafana в сеть `reddit_front`
```yaml
services:

  grafana:
    image: grafana/grafana:${GRAFANA_VERSION}
    volumes:
      - grafana_data:/var/lib/grafana
    environment:
      - GF_SECURITY_ADMIN_USER=admin
      - GF_SECURITY_ADMIN_PASSWORD=secret
    depends_on:
      - prometheus
    ports:
      - 3000:3000
    networks:
      - reddit_front

volumes:
  grafana_data:
```
В ДС указано использовать `grafana:5.0.0`, указана для установки `grafana:6.5.2` - так интереснее))

Для `cadvisor` параметризована версия образа

Сервис `cadvisor` так же оставлен только в сети `reddit_front` так как ему не нужно взаимодействовать ни с чем кроме prometheus.

Заново поднимем docker-machine (так как работа продолжена из другого места, машина ранее былва убита)

```shell
make docker_machine_create
eval $(docker-machine env docker-host)
make docker_machine_ip
```

#### Grafana: Web UI

Запустим новый сервис:
```yaml
docker-compose -f docker-compose-monitoring.yml up -d grafana
```
... писали они, но у нас же ничего не запущено!!! Поэтому запустим всё:
```shell
make run
```

Добавим правило фаервола
```shell
gcloud compute firewall-rules create grafana \
  --allow tcp:3000 \
  --target-tags=docker-machine \
  --description="Allow grafana UI connections" \
  --direction=INGRESS
```

Откроем страницу Web UI Grafana по адресу http:// <dockermachine-host-ip>:3000 и используем для входа логин и пароль администратора, которые мы передали через переменные окружения:


#### Grafana: Добавление источника данных

Нажмем Add data source (Добавить источник данных):

Выберем нужный тип и зададим параметры подключения:

- Type: Prometheus
- Name: Prometheus Server
- URL: http://prometheus:9090

**Save & Test**


#### Дашборды

Перейдем на [Сайт grafana](https://grafana.com/grafana/dashboards), где можно найти и скачать большое количество уже созданных официальных и комьюнити дашбордов для визуализации различного типа метрик для разных систем мониторинга и баз данных.

Выберем в качестве источника данных нашу систему мониторинга (Prometheus) и выполним поиск по категории Docker. Затем выберем популярный дашборд: **Docker + System dashboard**

Нажмем _Загрузить JSON_. В директории `monitoring` создайте
директории `grafana/dashboards`, куда поместите скачанный
дашборд. Поменяйте название файла дашборда на
[DockerMonitoring.json](monitoring/grafana/dashboards/DockerMonitoring.json).


#### Импорт дашборда

Снова откроем веб-интерфейс Grafana и выберем импорт шаблона (Dashboards -> Manage -> Import)

Загрузите скачанный дашборд. При загрузке укажите источник
данных для визуализации (Prometheus Server):

Должен появиться набор графиков с информацией о состоянии
хостовой системы и работе контейнеров: появился, но данных нет. 

**Проблема:** не все targets видны в prometheus. **Причина:** устаревший конфиг [monitoring/prometheus/prometheus.yml](monitoring/prometheus/prometheus.yml). После окончания вчерашней работы не был загружен обновлённый образ prometheus в docker-hub.

Чиним:
```shell 
export USER_NAME=dockerhub_username
make build_prometheus push_prometheus
```

Запускаем:
```shell
make run
```

**Проблема:** не отображаются метрики `node_exporter`. **Причина:** некорректные имена метрик. Например:

| grafana              | node_exporter              |
| -------------------- | -------------------------- |
| node_filesystem_size | node_filesystem_size_bytes |
| node_filesystem_free | node_filesystem_free_bytes |

Ранее выбранный дашборд `Last updated: 2 years ago`

Выбрал дашборд https://grafana.com/grafana/dashboards/9633

Не отображалась часть метрик из за захардкоженного job name `node-exporter`. Добавил переменную `node_job_name` с `query` `label_values(node_boot_time_seconds, job)`, возвращающую имя job.

В json-представлении дашборда исправил `node-exporter` на `$node_job_name`. Теперь все графики отображаются.

Сохранил актуальный json в [monitoring/grafana/dashboards/DockerMonitoring.json](monitoring/grafana/dashboards/DockerMonitoring.json)


### Сбор метрик работы приложения

В качестве примера метрик приложения в сервис UI [мы добавили](https://github.com/express42/reddit/commit/e443f6ab4dcf25f343f2a50c01916d750fc2d096):

- счетчик `ui_request_count`, который считает каждый приходящий HTTP-запрос (добавляя через лейблы такую информацию как HTTP метод, путь, код возврата, мы уточняем данную метрику)
- гистограмму `ui_request_latency_seconds`, которая позволяет отслеживать информацию о времени обработки каждого запроса

В качестве примера метрик приложения в сервис Post [мы добавили](https://github.com/express42/reddit/commit/d8a0316c36723abcfde367527bad182a8e5d9cf2):

- Гистограмму `post_read_db_seconds`, которая позволяет отследить информацию о времени требуемом для поиска поста в БД

#### Зачем?

Созданные метрики придадут видимости работы нашего приложения и понимания, в каком состоянии оно сейчас находится.

Например, время обработки HTTP запроса не должно быть большим, поскольку это означает, что пользователю приходится долго ждать между запросами, и это ухудшает его общее впечатление от работы с приложением. Поэтому большое время обработки запроса будет для нас сигналом проблемы.

Отслеживая приходящие HTTP-запросы, мы можем, например, посмотреть, какое количество ответов возвращается с кодом ошибки. Большое количество таких ответов также будет служить для нас сигналом проблемы в работе приложения.


#### prometheus.yml

Добавим информацию о post-сервисе в конфигурацию Prometheus, чтобы он начал собирать метрики и с него:

```yaml
scrape_configs:
  ...
  - job_name: "post"
    static_configs:
      - targets:
          - "post:5000"
```

Пересоберем (и загрузим на docker-hub) образ Prometheus с обновленной конфигурацией:

Вариант из ДЗ:
```shell
export USER_NAME=username # где, usename - ваш логин от DockerHub
docker build -t $USER_NAME/prometheus .
```

Наш метод
```shell
export USER_NAME=username # где, usename - ваш логин от DockerHub
make build_prometheus push_prometheus
```

Пересоздадим нашу Docker инфраструктуру мониторинга (интересно, почему именно пересоздать всё?):

Вариант из ДЗ:
```yaml
docker-compose -f docker-compose-monitoring.yml down
docker-compose -f docker-compose-monitoring.yml up -d
```

Попробуем просто применить
```shell
make run
```
```log
Recreating docker_prometheus_1 ... done
```

И добавим несколько постов в приложении и несколько комментов, чтобы собрать значения метрик приложения: сделано.


#### Создание дашборда в Grafana

Построим графики собираемых метрик приложения. Выберем создать новый дашборд: Снова откроем вебинтерфейс Grafana и выберем создание шаблона (Dashboard).

1. Выбираем "Построить график" (New Panel ➡ Graph)
2. Жмем один раз на имя графика (Panel Title), затем выбираем Edit:

Построим для начала простой график изменения счетчика HTTP-запросов по времени. Выберем источник данных и в поле запроса введем название метрики:

Далее достаточно нажать мышкой на любое место UI, чтобы убрать курсор из поля запроса, и Grafana выполнит запрос и построит график.

В правом верхнем углу мы можем уменьшить временной интервал, на котором строим график, и настроить автообновление данных.

Сейчас мы с вами получили график различных HTTP запросов, поступающих UI сервису.

Изменим заголовок графика и описание.

Сохраним созданный дашборд.

Построим график запросов, которые возвращают код ошибки на этом же дашборде. Добавим еще один график на наш дашборд.

Переходим в режим правки графика.

В поле запросов запишем выражение для поиска всех http запросов, у которых код возврата начинается либо с 4 либо с 5 (используем регулярное выражения для поиска по лейблу). Будем использовать функцию rate(), чтобы посмотреть не просто значение счетчика за весь период наблюдения, но и скорость увеличения данной величины за промежуток времени (возьмем, к примеру 1- минутный интервал, чтобы график был хорошо видим).

График ничего не покажет, если не было запросов с ошибочным кодом возврата. Для проверки правильности нашего запроса обратимся по несуществующему HTTP пути, например, http://104.199.106.171:9292/nonexistent, чтобы получить код ошибки 404 в ответ на наш запрос.

Проверим график (временной промежуток можно уменьшить для лучшей видимости графика).

Добавьте заголовок и описание графика и нажмите сохранить изменения дашборда.

Grafana поддерживает версионирование дашбордов, именно поэтому при сохранении нам предлагалось ввести сообщение, поясняющее изменения дашборда. Вы можете посмотреть историю изменений своего.


#### Самостоятельно

Как вы можете заметить, первый график, который мы сделали просто по `ui_request_count` не отображает никакой полезной информации, т.к. тип метрики `count`, и она просто растет. Задание: Используйте для первого графика (UI http requests) функцию rate аналогично второму графику (Rate of UI HTTP Requests with Error).

https://prometheus.io/docs/prometheus/latest/querying/functions/#rate

Запрос:
```promql
rate(ui_request_count{job="ui"}[1m])
```


#### Гистограмма

Гистограмма представляет собой графический способ представления распределения вероятностей некоторой случайной величины на заданном промежутке значений. Для построения гистограммы берется интервал значений, который может принимать измеряемая величина и разбивается на промежутки (обычно одинаковой величины), данные промежутки помечаются на горизонтальной оси X. Затем над каждым интервалом рисуется прямоугольник, высота которого соответствует числу измерений величины, попадающих в данный интервал.

Простым примером гистограммы может быть распределение оценок за контрольную в классе, где учится 21 ученик. Берем промежуток возможных значений (от 1 до 5) и разбиваем на равные интервалы. Затем на каждом интервале рисуем столбец, высота которого соответсвует частоте появлению данной оценки.


#### Histogram метрика

В Prometheus есть тип метрик histogram. Данный тип метрик в качестве своего значение отдает ряд распределения измеряемой величины в заданном интервале значений. Мы используем данный тип метрики для измерения времени обработки HTTP запроса нашим приложением.

Рассмотрим пример гистограммы в Prometheus. Посмотрим информацию по времени обработки запроса приходящих на главную страницу приложения.

```promql
ui_request_latency_seconds_bucket{path="/"}
```
но такой метрики нет... По совету коллег в слаке, будет использована метрика
```promql
ui_request_response_time_bucket{path="/"}
```

Эти значения означают, что запросов с временем обработки `<= 0.025s` было 3 штуки, а запросов `0.01 <= 0.01s` было 7 штук (в этот столбец входят 3 запроса из предыдущего столбца и 4 запроса из промежутка `[0.025s; 0.01s]`, такую гистограмму еще называют кумулятивной). Запросов, которые бы заняли `> 0.01s` на обработку не было, поэтому величина всех последующих столбцов равна 7.


#### Процентиль

- Числовое значение в наборе значений
- Все числа в наборе меньше процентиля, попадают в границы заданного процента значений от всего числа значений в наборе

##### Пример процентиль

В классе 20 учеников. Ваня занимает 4-е место по росту в классе. Тогда рост Вани (180 см) является 80-м процентилем. Это означает, что 80 % учеников имеют рост менее 180 см.

##### 95-й процентиль

Часто для анализа данных мониторинга применяются значения 90, 95 или 99-й процентиля.

Мы вычислим 95-й процентиль для выборки времени обработки запросов, чтобы посмотреть какое значение является максимальной границей для большинства (95%) запросов. Для этого воспользуемся встроенной функцией `histogram_quantile()`

Добавьте третий по счету график на ваш дашборд. В поле запроса введите следующее выражение для вычисления 95 процентиля времени ответа на запрос (gist)
```promql
histogram_quantile(0.95, sum(rate(ui_request_response_time_bucket[5m])) by (le))
```

Сохраним изменения дашборда и эспортируем его в JSON файл, который загрузим на нашу локальную машину.

Положите загруженный файл в созданную ранее директорию `monitoring/grafana/dashboards` под названием [UI_Service_Monitoring.json](monitoring/grafana/dashboards/UI_Service_Monitoring.json)


### Сбор метрик бизнеслогики

В качестве примера метрик бизнес логики мы в наше приложение мы добавили счетчики **количества постов** и **комментариев**.
- `post_count`
- `comment_count`

Мы построим график скорости роста значения счетчика за последний час, используя функцию `rate()`. Это позволит нам получать информацию об активности пользователей приложения.

Создайте новый дашборд, назовите его `Business_Logic_Monitoring` и постройте график функции `rate(post_count[1h])`.

Постройте еще один график для счетчика comment, экспортируйте дашборд и сохраните в директории `monitoring/grafana/dashboards` под названием [Business_Logic_Monitoring.json](monitoring/grafana/dashboards/Business_Logic_Monitoring.json).


### Настройка и проверка алертинга


#### Правила алертинга

Мы определим несколько правил, в которых зададим условия состояний наблюдаемых систем, при которых мы должны получать оповещения, т.к. заданные условия могут привести к недоступности или неправильной работе нашего приложения.

P.S. Стоит заметить, что в самой Grafana тоже есть alerting. Но по функционалу он уступает Alertmanager в Prometheus.

#### Alertmanager

Alertmanager - дополнительный компонент для системы мониторинга Prometheus, который отвечает за первичную обработку алертов и дальнейшую отправку оповещений по заданному назначению.

Создайте новую директорию `monitoring/alertmanager`. В этой директории создайте [Dockerfile](monitoring/alertmanager/Dockerfile) со следующим содержимым:
```dockerfile
FROM prom/alertmanager:v0.14.0
COPY config.yml /etc/alertmanager/
```

Настройки Alertmanager-а как и Prometheus задаются через YAML файл или опции командой строки. В директории `monitoring/alertmanager` создайте файл [config.yml](monitoring/alertmanager/config.yml), в котором определите отправку нотификаций в ВАШ тестовый слак канал.

Для отправки нотификаций в слак канал потребуется создать СВОЙ [Incoming Webhook](https://api.slack.com/messaging/webhooks) [monitoring/alertmanager/config.yml](monitoring/alertmanager/config.yml). Было создано slack-приложение `vscoders alertmanager`.
```yaml
---
global:
  slack_api_url: "https://hooks.slack.com/services/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"

route:
  receiver: "slack-notifications"

receivers:
  - name: "slack-notifications"
    slack_configs:
      - channel: "#aleksey_koloskov"
```

Соберем образ alertmanager: для этого

Создан файл [monitoring/alertmanager/docker_build.sh](monitoring/alertmanager/docker_build.sh)

Добавлены Makefiel targets:
```makefile
###
# alertmanager
###
alertmanager_build:
	. ./env && \
	cd ./monitoring/alertmanager && bash docker_build.sh

alertmanager_push:
	. ./env && \
	docker push $${USER_NAME}/alertmanager
```

**ВАЖНО** чтобы при выполнении команды `docker push` в переменную `USER_NAME` подставлялось значение из файла `./env`, необходимо ставить именно **два знака доллара**, так как один знак доллара имеет специальное назначение в Makefile. Починил все `*_push` в [Makefile](Makefile). Ссылка по теме https://community.hpe.com/t5/Languages-and-Scripting/Setting-Environment-variable-in-Makefile/td-p/4127916#.XfVLwHoufRY

Собираем образ alertmanager

Путь ДЗ
```shell
cd monitoring/alertmanager && docker build -t $USER_NAME/alertmanager .
```

Путь make
```shell
make alertmanager_build alertmanager_push
```
Всё сбилдилось и запушилось

Добавим новый сервис в [компоуз файл мониторинга](docker/docker-compose-monitoring.yml). Не забудьте добавить его в одну сеть с сервисом Prometheus:
```yaml
services:
  ...
  alertmanager:
    image: ${USERNAME}/alertmanager
    command:
      - "--config.file=/etc/alertmanager/config.yml"
    ports:
      - 9093:9093
    networks:
      - reddit_back
```


#### Alert rules

Создадим файл [alerts.yml](monitoring/prometheus/alerts.yml) в директории `prometheus`, в котором определим условия при которых должен срабатывать алерт и посылаться Alertmanager-у. Мы создадим простой алерт, который будет срабатывать в ситуации, когда одна из наблюдаемых систем (endpoint) недоступна для сбора метрик (в этом случае метрика `up` с лейблом `instance` равным имени данного эндпоинта будет равна нулю). Выполните запрос по имени метрики `up` в веб интерфейсе Prometheus, чтобы убедиться, что сейчас все эндпоинты доступны для сбора метрик:
```promql
up
```
```log
up{instance="cadvisor:8080",job="cadvisor"}	1
up{instance="cloudprober:9313",job="cloudprober"}	1
up{instance="comment:9292",job="comment"}	1
up{instance="localhost:9090",job="prometheus"}	1
up{instance="node-exporter:9100",job="node"}	1
up{instance="post:5000",job="post"}	1
up{instance="postdb-exporter:9216",job="post_db"}	1
up{instance="ui:9292",job="ui"}	1
```

[alerts.yml](monitoring/prometheus/alerts.yml)
```yaml
---
groups:
  - name: alert.rules
    rules:
      - alert: InstanceDown
        expr: up == 0
        for: 1m
        labels:
          severity: page
        annotations:
          description: "{{ $labels.instance }} of job {{ $labels.job }} has been down for more than 1 minute"
          summary: "Instance {{ $labels.instance }} down"
```

Добавим операцию копирования данного файла в Dockerfile: [monitoring/prometheus/Dockerfile](monitoring/prometheus/Dockerfile)
```dockerfile
FROM prom/prometheus:v2.14.0
COPY prometheus.yml /etc/prometheus/
# добавлено
COPY alerts.yml /etc/prometheus/
```


#### prometheus.yml

Добавим информацию о правилах в [конфиг prometheus](monitoring/prometheus/prometheus.yml)
```yaml
global:
  scrape_interval: '5s'
...
rule_files:
  - "alerts.yml"

alerting:
  alertmanagers:
    - scheme: http
      static_configs:
        - targets:
            - "alertmanager:9093"
```

Пересоберем образ Prometheus:

Метод ДЗ
```shell
docker build -t $USER_NAME/prometheus .
```

Метод Make
```shell
make build_prometheus push_prometheus
```


#### Push slack api url to github ERROR

После пуша в гитхаб, пришло письмо от слаки

> Hi there,
> 
> 
> We recently discovered one or more publicly accessible incoming webhooks associated with the vscoders alertmanager app on Slack, for which you > are listed as a Collaborator. This type of public webhook exposure can happen when someone who created or has access to a webhook URL posted it on a public site, such as GitHub or other code-sharing forums.
> 
> Although none of the teams using your app are at risk of data exposure through a webhook, we've invalidated the publicly exposed webhook URLs to prevent unauthorized parties from posting messages into their Slack workspaces. This means that vscoders alertmanager can no longer use these webhooks to post its own messages into Slack channels. We’ve already reached out to the Slack customers who are using your app to advise them that your app may no longer work, and that they’ll need to reinstall the app on their workspace to continue using it.
> 
> If you have additional questions, you can reply directly to this notification — our support team is standing by and ready to help.
> 
> 
> -The team at Slack

Не нужно пушить вебхук в гитхаб! Но с этим разберёмся позже.



#### Проверка алерта

Пересоздадим нашу Docker инфраструктуру мониторинга (опять же, зачем?):

Метод ДЗ
```shell
docker-compose -f docker-compose-monitoring.yml down
docker-compose -f docker-compose-monitoring.yml up -d
```

Метод make
```shell
make run
```

Алерты можно посмотреть в веб интерфейсе Prometheus: 

**Проблема** No alerting rules defined. 

Попробуем всё таки пересоздать инфраструктуру мониторинга... Безрезультатно.

Исправлена сборка mongodb_exporter в Makefile
```makefile
...
MONGODB_EXPORTER_DOCKER_IMAGE_NAME?=$${USER_NAME}/mongodb-exporter
...
mongodb_exporter_docker_build: mongodb_exporter_clone
	. ./env && \
	...

mongodb_exporter_push:
	. ./env && \
	...
```

Чиним алерты:

Для начала, прометеус опустим до версии из ДЗ `v2.1.0`... Не дало результатов.

Я работал в локальном docker вместо инстанса dokcer-machine в gcp... Как-то так.

Вернул версию prometheus `v2.14.0`

Пересоздал мониторинг:
```shell
docker-compose -f docker-compose-monitoring.yml down
docker-compose -f docker-compose-monitoring.yml up -d
```

**УРА!!!** Всё работает, alert rules отображаются))


#### Чиним slack

Для начала починим уведомления в slack. Чтобы избежать блокировки, придётся передавать webhook url через переменную окружения. 

Поиски по интернетам не привели к подходящему в рамках данной задачи решению. В проде для хранения секретов можно использовать Hashicorp Vault.

Мы же будем передавать секрет в переменной окружения при сборке образа.

##### Реализация

Создан файл [monitoring/alertmanager/env](monitoring/alertmanager/env), содержащий slack api url
```shell
export SLACK_API_URL="https://hooks.slack.com/services/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"  # here is fake slack_api_url. DO NOT FORGET to set correct url!
export SLACK_CHANNEL="#channel_here"
```

Файл [monitoring/cloudprober/docker_build.sh](monitoring/cloudprober/docker_build.sh) приведён к следующему виду
```shell
#!/bin/bash
set -eu

# Получаем переменные из файла ./env
. ./env
# Подставляем значения переменных окружения в шаблон конфига и пишем результат в файл
cat config.yml.template | envsubst > config.yml
# Собираем образ
docker build -t $USER_NAME/alertmanager .
# В целях безопасности, удаляем полученный файл конфига
rm config.yml
```

Файл `monitoring/alertmanager/config.yml` переименован в [monitoring/alertmanager/config.yml.template](monitoring/alertmanager/config.yml.template) и приведён к следующему виду
```yaml
---
global:
  slack_api_url: "${SLACK_API_URL}"

route:
  receiver: "slack-notifications"

receivers:
  - name: "slack-notifications"
    slack_configs:
      - channel: "${SLACK_CHANNEL}"
```

Генерируем новый slack webhook. Прописываем его в `monitoring/alertmanager/env`

Собираем alertmanager
```shell
make alertmanager_build
```

Применяем
```shell
make run
```


#### Проверка алерта

Остановим один из сервисов и подождем одну минуту.

**Уведомление пришло в слаку!!!** =))))

У Alertmanager также есть свой веб интерфейс, доступный на порту 9093, который мы прописали в компоуз файле.

P.S. Проверить работу вебхуков слака можно обычным curl.


### Завершение работы

Пуш
```shell
make push
```

Ссылка на докер-хаб https://hub.docker.com/u/vscoder

### Запуск проекта

#### Подготовка

Предварительно необходимо заполнить файлы `./env` и `./monitoring/alertmanager/env` по примеру `env.example` в соответствующих директориях, а так же выполнить авторизацию в `gcloud`

```shell
# Установка docker-machine
install_docker_machine

# Создание docker-machine
docker_machine_create

# Исплоьзование docker-machine
eval $(docker-machine env docker-host)

# Узнать docker-machine ip
make docker_machine_ip
```

#### Запуск проекта

```shell
# Сборка образов (это не обязательно, должны приехать с docker-hub)
make build

# Запуск приложения
make run
```

Приложение: http://<IP_OF_DOCKER_MACHINE_INSTANCE_OR_LOCALHOST>:9292

Prometheus: http://<IP_OF_DOCKER_MACHINE_INSTANCE_OR_LOCALHOST>:9090/graph?g0.range_input=1h&g0.expr=(rate(total%5B1m%5D)%20-%20rate(success%5B1m%5D))%20%2F%20rate(total%5B1m%5D)&g0.tab=0&g1.range_input=1h&g1.expr=rate(latency%5B1m%5D)%20%2F%20rate(success%5B1m%5D)%20%2F%201000&g1.tab=0

Grafana: http://<IP_OF_DOCKER_MACHINE_INSTANCE_OR_LOCALHOST>:3000


### Fix travis-ci test

Для прохождения тестов, добавлен файл [monitoring/alertmanager/config.yml](monitoring/alertmanager/config.yml). Содержимое файла заменяется во время сборки.


### Задания со \*


#### Makefile

Если в прошлом ДЗ вы реализовали Makefile, добавьте в него билд и публикацию добавленных в этом ДЗ сервисов;

Сделано в процессе


#### Сбор метрик с docker

В Docker в экспериментальном режиме реализована отдача метрик в формате Prometheus. Добавьте сбор этих метрик в Prometheus. Сравните количество метрик с Cadvisor. Выберите готовый дашборд или создайте свой для этого источника данных. Выгрузите его в monitoring/grafana/dashboards;

https://docs.docker.com/config/thirdparty/prometheus/

TODO: сделать


#### Telegraf

Для сбора метрик с Docker демона также можно использовать Telegraf от InfluxDB. Добавьте сбор этих метрик в Prometheus. Сравните количество метрик с Cadvisor. Выберите готовый дашборд или создайте свой для этого источника данных. Выгрузите его в monitoring/grafana/dashboards;

TODO: сделать


#### Alertmanager email

Придумайте и реализуйте другие алерты, например на 95 процентиль времени ответа UI, который рассмотрен выше; Настройте интеграцию Alertmanager с e-mail помимо слака;

TODO: сделать


### Задания с \*\*

#### Автоматическое развёртывание Grafana

В Grafana 5.0 была добавлена возможность описать в конфигурационных файлах источники данных и дашборды. Реализуйте автоматическое добавление источника данных и созданных в данном ДЗ дашбордов в графану;

TODO: сделать


#### Stackdriver

Реализуйте сбор метрик со Stackdriver, в PR опишите, какие метрики удалось собрать;

TODO: сделать


#### Свои метрики

Придумайте свои метрики приложения/бизнес метрики и реализуйте их в коде приложения. Опишите в PR что было добавлено;

TODO: сделать


### Задания со \*\*\*

#### Tickster

Реализуйте схему с проксированием запросов от Grafana к Prometheus через Trickster, кеширующий прокси от Comcast;

TODO: сделать


#### Автоматическое исправление проблем

Используя связку Autoheal + AWX, реализуйте автоматическое исправление проблем (например рестарт одного из микросервисов при падении);

> - Autoheal - проект команды OpenShift для автоматического иcправления проблем по результатам алертов;
> - AWX - open source версия Ansible Tower, установить его можно либо вручную, либо используя одну из готовых ролей, [например](https://github.com/geerlingguy/ansible-role-awx);

Дополнительные папки создавайте в директории monitoring.

TODO: сделать



## HomeWork 18: Логирование и распределенная трассировка

### План

- Сбор неструктурированных логов
- Визуализация логов
- Сбор структурированных логов
- Распределенная трасировка


### Подготовка

Код микросервисов обновился для добавления функционала логирования. Новая версия кода доступа по [ссылка](https://github.com/express42/reddit/tree/logging).

- Обновите код в директории **/src** вашего репозитория из кода по ссылке выше. (старый `./src` переименовал в `./src.microservices`)
  ```shell
  # Rename old ./src
  mv ./src ./src.microservices
  # Copy Dockerfile and Makefile
  cp ./src.microservices/comment/Dockerfile ./src/comment/
  cp ./src.microservices/post-py/Dockerfile ./src/post-py/
  cp ./src.microservices/ui/Dockerfile ./src/ui/
  cp ./src.microservices/Makefile ./src/
  # Move old ./src outside the project
  mv ./src.microservices ../
  ```
- Если вы используется python-alpine, добавьте в **/src/post-py/Dockerfile** установку пакетов `gcc` и `musl-dev` (заменил установку `build-base` на `gcc` и `musl-dev`)
  ```dockerfile
  ...
  RUN apk add --no-cache --virtual .build-deps gcc musl-dev \
    && pip install --no-cache-dir -r $APP_HOME/requirements.txt \
    && apk del .build-deps
  ...
  ```
- Выполните сборку образов при помощи скриптов docker_build.sh в директории каждого сервиса
  Метод ДЗ
  ```shell
  for i in ui post-py comment; do cd src/$i; bash docker_build.sh; cd -; done
  ```
  Метод make
  ```
  make build_ui build_post build_comment
  ```

Внимание! В данном ДЗ мы используем отдельные теги для контейнеров приложений :logging


#### Подготовка окружения

Метод ДЗ
```shell
export GOOGLE_PROJECT=_ваш-проект_

docker-machine create --driver google \
    --google-machine-image https://www.googleapis.com/compute/v1/projects/ubuntu-os-cloud/global/images/family/ubuntu-1604-lts \
    --google-machine-type n1-standard-1 \
    --google-open-port 5601/tcp \
    --google-open-port 9292/tcp \
    --google-open-port 9411/tcp \
    logging

# configure local env
eval $(docker-machine env logging)

# узнаем IP адрес
docker-machine ip logging
```

Метод Make в данном случае не очень подойдёт, так как потребует ручного открытия портов фаервола. Поэтому добавим Makefile targets
```makefile
###
# docker-machine logging
###
docker_machine_create_logging:
	${DOCKER_MACHINE} create --driver google \
		--google-machine-image https://www.googleapis.com/compute/v1/projects/ubuntu-os-cloud/global/images/family/ubuntu-1604-lts \
		--google-machine-type n1-standard-1 \
		--google-open-port 5601/tcp \
		--google-open-port 9292/tcp \
		--google-open-port 9411/tcp \
		logging
	${DOCKER_MACHINE} env logging

docker_machine_rm_logging:
	make docker_machine_rm DOCKER_MACHINE_NAME=logging

docker_machine_ip_logging:
	make docker_machine_ip DOCKER_MACHINE_NAME=logging
```

Итак, метод Make
```shell
make docker_machine_create_logging docker_machine_ip_logging
```


### Логирование Docker контейнеров

#### Elastic Stack

Как упоминалось на лекции хранить все логи стоит централизованно: на одном (нескольких) серверах. В этом ДЗ мы рассмотрим пример системы централизованного логирования на примере Elastic стека (ранее известного как ELK): который включает в себя 3 осовных компонента:
- ElasticSearch (TSDB и поисковый движок для хранения данных)
- Logstash (для агрегации и трансформации данных)
- Kibana (для визуализации)

Однако для агрегации логов вместо Logstash мы будем использовать Fluentd, таким образом получая еще одно популярное сочетание этих инструментов, получившее название EFK.

#### docker-compose-logging.yml

Создадим отдельный compose-файл для нашей системы логирования в папке `docker/`

[docker/docker-compose-logging.yml](docker/docker-compose-logging.yml)
```yaml
---
version: "3"
services:
  fluentd:
    image: ${USERNAME}/fluentd
    ports:
      - "24224:24224"
      - "24224:24224/udp"

  elasticsearch:
    image: elasticsearch:7.4.0
    expose:
      - 9200
    ports:
      - "9200:9200"

  kibana:
    image: kibana:7.4.0
    ports:
      - "5601:5601"
```

#### Fluentd

Fluentd инструмент, который может использоваться для отправки, агрегации и преобразования лог-сообщений. Мы будем использовать Fluentd для агрегации (сбора в одной месте) и парсинга логов сервисов нашего приложения.

Создадим образ Fluentd с нужной нам конфигурацией.

Создайте в вашем проекте microservices директорию `logging/fluentd`

В созданной директорий, создайте простой `Dockerfile` со следущим содержимым:

[logging/fluentd/Dockerfile](logging/fluentd/Dockerfile)
```dockerfile
FROM fluent/fluentd:v0.12
RUN gem install fluent-plugin-elasticsearch --no-rdoc --no-ri --version 1.9.5
RUN gem install fluent-plugin-grok-parser --no-rdoc --no-ri --version 1.0.0
ADD fluent.conf /fluentd/etc
```

В директории `logging/fluentd` создайте файл конфигурации:

[logging/fluentd/fluent.conf](logging/fluentd/fluent.conf)
```xml
<source>
  @type forward
  port 24224
  bind 0.0.0.0
</source>

<match *.**>
  @type copy
  <store>
    @type elasticsearch
    host elasticsearch
    port 9200
    logstash_format true
    logstash_prefix fluentd
    logstash_dateformat %Y%m%d
    include_tag_key true
    type_name access_log
    tag_key @log_name
    flush_interval 1s
  </store>
  <store>
    @type stdout
  </store>
</match>
```

Соберите docker image для `fluentd`

Из директории `logging/fluentd`

Путь ДЗ
```shell
docker build -t $USER_NAME/fluentd .
```

Ну а мы создадим [logging/fluentd/docker_build.sh](logging/fluentd/docker_build.sh)
```shell
#!/bin/bash
set -eu

docker build -t $USER_NAME/fluentd .
```
и Makefile targets
```shell
###
# fluentd
###
fluentd_build:
	. ./env && \
	cd ./logging/fluentd && bash docker_build.sh

fluentd_push:
	. ./env && \
	docker push $${USER_NAME}/fluentd
```

И только теперь соберём образ
```shell
make fluentd_build fluentd_push
```


### Структурированные логи

Логи должны иметь заданную (единую) структуру и содержать необходимую для нормальной эксплуатации данного сервиса информацию о его работе.

Лог-сообщения также должны иметь понятный для выбранной системы логирования формат, чтобы избежать ненужной траты ресурсов на преобразование данных в нужный вид. Структурированные логи мы рассмотрим на примере сервиса post.

Правим [.env](docker/.env) файл и меняем теги нашего приложения на logging
```shell
...
UI_VERSION=logging
UI_APP_HOME=/app
UI_PORT=9292
POST_VERSION=logging
POST_APP_HOME=/app
COMMENT_VERSION=logging
COMMENT_APP_HOME=/app
...
```

Запустите сервисы приложения
```shell
make build
cd docker/ && docker-compose up -d
```

И выполните команду для просмотра логов post сервиса:
```shell
docker-compose logs -f post
```
```log
Attaching to docker_post_1
post_1     | {"addr": "172.19.0.2", "event": "request", "level": "info", "method": "GET", "path": "/healthcheck?", "request_id": null, "response_status": 200, "service": "post", "timestamp": "2019-12-17 04:50:50"}
post_1     | {"addr": "172.19.0.2", "event": "request", "level": "info", "method": "GET", "path": "/healthcheck?", "request_id": null, "response_status": 200, "service": "post", "timestamp": "2019-12-17 04:50:55"}
post_1     | {"addr": "172.19.0.2", "event": "request", "level": "info", "method": "GET", "path": "/healthcheck?", "request_id": null, "response_status": 200, "service": "post", "timestamp": "2019-12-17 04:51:00"}
post_1     | {"addr": "172.19.0.2", "event": "request", "level": "info", "method": "GET", "path": "/healthcheck?", "request_id": null, "response_status": 200, "service": "post", "timestamp": "2019-12-17 04:51:05"}
post_1     | {"addr": "172.19.0.2", "event": "request", "level": "info", "method": "GET", "path": "/healthcheck?", "request_id": null, "response_status": 200, "service": "post", "timestamp": "2019-12-17 04:51:10"}
post_1     | {"addr": "172.19.0.2", "event": "request", "level": "info", "method": "GET", "path": "/healthcheck?", "request_id": null, "response_status": 200, "service": "post", "timestamp": "2019-12-17 04:51:15"}
```

Внимание! Среди логов можно наблюдать проблемы с доступностью Zipkin, у нас он пока что и правда не установлен. Ошибки можно игнорировать. [Github issue](https://github.com/express42/reddit/issues/2)

Откройте приложение в браузере и создайте несколько постов, пронаблюдайте, как пишутся логи post серсиса в терминале.
```log
post_1     | {"addr": "172.19.0.2", "event": "request", "level": "info", "method": "GET", "path": "/healthcheck?", "request_id": null, "response_status": 200, "service": "post", "timestamp": "2019-12-17 04:53:20"}
post_1     | {"event": "find_all_posts", "level": "info", "message": "Successfully retrieved all posts from the database", "params": {}, "request_id": "0f6cf007-a51a-4d42-b8eb-5c6f51fdc605", "service": "post", "timestamp": "2019-12-17 04:53:22"}
post_1     | {"addr": "172.19.0.2", "event": "request", "level": "info", "method": "GET", "path": "/posts?", "request_id": "0f6cf007-a51a-4d42-b8eb-5c6f51fdc605", "response_status": 200, "service": "post", "timestamp": "2019-12-17 04:53:22"}
post_1     | {"addr": "172.19.0.2", "event": "request", "level": "info", "method": "GET", "path": "/healthcheck?", "request_id": "0f6cf007-a51a-4d42-b8eb-5c6f51fdc605", "response_status": 200, "service": "post", "timestamp": "2019-12-17 04:53:25"}
post_1     | {"addr": "172.19.0.2", "event": "request", "level": "info", "method": "GET", "path": "/healthcheck?", "request_id": "0f6cf007-a51a-4d42-b8eb-5c6f51fdc605", "response_status": 200, "service": "post", "timestamp": "2019-12-17 04:53:30"}
post_1     | {"event": "find_all_posts", "level": "info", "message": "Successfully retrieved all posts from the database", "params": {}, "request_id": "f1d68a4f-c685-4585-abb0-570276e21812", "service": "post", "timestamp": "2019-12-17 04:53:30"}
post_1     | {"addr": "172.19.0.2", "event": "request", "level": "info", "method": "GET", "path": "/posts?", "request_id": "f1d68a4f-c685-4585-abb0-570276e21812", "response_status": 200, "service": "post", "timestamp": "2019-12-17 04:53:30"}
post_1     | {"event": "find_all_posts", "level": "info", "message": "Successfully retrieved all posts from the database", "params": {}, "request_id": "0da9978b-80cb-4b32-b56f-096fb8ed72b8", "service": "post", "timestamp": "2019-12-17 04:53:31"}
post_1     | {"addr": "172.19.0.2", "event": "request", "level": "info", "method": "GET", "path": "/posts?", "request_id": "0da9978b-80cb-4b32-b56f-096fb8ed72b8", "response_status": 200, "service": "post", "timestamp": "2019-12-17 04:53:31"}
post_1     | {"event": "find_all_posts", "level": "info", "message": "Successfully retrieved all posts from the database", "params": {}, "request_id": "a7d06d49-1e67-40e4-b8b2-d83c21930257", "service": "post", "timestamp": "2019-12-17 04:53:32"}
post_1     | {"addr": "172.19.0.2", "event": "request", "level": "info", "method": "GET", "path": "/posts?", "request_id": "a7d06d49-1e67-40e4-b8b2-d83c21930257", "response_status": 200, "service": "post", "timestamp": "2019-12-17 04:53:32"}
post_1     | {"event": "find_all_posts", "level": "info", "message": "Successfully retrieved all posts from the database", "params": {}, "request_id": "bed17527-4202-4054-a124-87e800362971", "service": "post", "timestamp": "2019-12-17 04:53:32"}
post_1     | {"addr": "172.19.0.2", "event": "request", "level": "info", "method": "GET", "path": "/posts?", "request_id": "bed17527-4202-4054-a124-87e800362971", "response_status": 200, "service": "post", "timestamp": "2019-12-17 04:53:32"}
post_1     | {"addr": "172.19.0.2", "event": "request", "level": "info", "method": "GET", "path": "/healthcheck?", "request_id": "bed17527-4202-4054-a124-87e800362971", "response_status": 200, "service": "post", "timestamp": "2019-12-17 04:53:35"}
```

Каждое событие, связанное с работой нашего приложения логируется в JSON формате и имеет нужную нам структуру: тип события (event), сообщение (message), переданные функции параметры (params), имя сервиса (service) и др.


#### Отправка логов во Fluentd

Как отмечалось на лекции, по умолчанию Docker контейнерами используется json-file драйвер для логирования информации, которая пишется сервисом внутри контейнера в stdout (и stderr). Для отправки логов во Fluentd используем docker драйвер [fluentd](https://docs.docker.com/engine/admin/logging/fluentd/).

Определим драйвер для логирования для сервиса post внутри compose-файла:

[docker/docker-compose.yml](docker/docker-compose.yml)
```yaml
version: '3'
services:
  post:
    image: ${USER_NAME}/post
    environment:
      - POST_DATABASE_HOST=post_db
      - POST_DATABASE=posts
    depends_on:
      - post_db
    ports:
      - "5000:5000"
    logging:
      driver: "fluentd"
      options:
        fluentd-address: localhost:24224
        tag: service.post
```


#### Сбор логов Post сервиса

Поднимем инфраструктуру централизованной системы логирования и перезапустим сервисы приложения. Из каталога docker:

Метод ДЗ
```shell
docker-compose -f docker-compose-logging.yml up -d
docker-compose down
docker-compose up -d
```

Но мы создадим (и изменим) Makefile targets
```makefile
###
# app down
###
down_app:
	cd docker \
	&& ../.venv/bin/docker-compose down

down_monitoring:
	cd docker \
	&& ../.venv/bin/docker-compose -f docker-compose-monitoring.yml down

down_logging:
	cd docker \
	&& ../.venv/bin/docker-compose -f docker-compose-logging.yml down


###
# run
###
run_app: variables
	cd docker \
	&& ../.venv/bin/docker-compose up -d

run_monitoring: variables
	cd docker \
	&& ../.venv/bin/docker-compose -f docker-compose-monitoring.yml up -d

run_logging: variables
	cd docker \
	&& ../.venv/bin/docker-compose -f docker-compose-logging.yml up -d
```

А теперь метод Make
```shell
make run_logging down_app run_app
```

Создадим несколько постов в приложении:


#### Kibana

Kibana - инструмент для визуализации и анализа логов от компании Elastic.

Откроем WEB-интерфейс Kibana для просмотра собранных в ElasticSearch логов Post-сервиса (kibana слушает на порту 5601)

Ошибка: 
> Kibana server is not ready yet

Смотрим список запущенных контейнеров
```shell
cd ./docker && docker-compose -f docker-compose-logging.yml ps
```
```log
         Name                       Command                State                               Ports                            
--------------------------------------------------------------------------------------------------------------------------------
docker_elasticsearch_1   /usr/local/bin/docker-entr ...   Exit 78                                                               
docker_fluentd_1         tini -- /bin/entrypoint.sh ...   Up        0.0.0.0:24224->24224/tcp, 0.0.0.0:24224->24224/udp, 5140/tcp
docker_kibana_1          /usr/local/bin/dumb-init - ...   Up        0.0.0.0:5601->5601/tcp
```

Смотрим логи ES
```shell
docker-compose -f docker-compose-logging.yml logs elasticsearch
```
```log
...
elasticsearch_1  | {"type": "server", "timestamp": "2019-12-17T05:10:21,661Z", "level": "INFO", "component": "o.e.n.Node", "cluster.name": "docker-cluster", "node.name": "fd168d3dcd92", "message": "initialized" }
elasticsearch_1  | {"type": "server", "timestamp": "2019-12-17T05:10:21,663Z", "level": "INFO", "component": "o.e.n.Node", "cluster.name": "docker-cluster", "node.name": "fd168d3dcd92", "message": "starting ..." }
elasticsearch_1  | {"type": "server", "timestamp": "2019-12-17T05:10:22,530Z", "level": "INFO", "component": "o.e.t.TransportService", "cluster.name": "docker-cluster", "node.name": "fd168d3dcd92", "message": "publish_address {172.20.0.4:9300}, bound_addresses {0.0.0.0:9300}" }
elasticsearch_1  | {"type": "server", "timestamp": "2019-12-17T05:10:22,569Z", "level": "INFO", "component": "o.e.b.BootstrapChecks", "cluster.name": "docker-cluster", "node.name": "fd168d3dcd92", "message": "bound or publishing to a non-loopback address, enforcing bootstrap checks" }
elasticsearch_1  | ERROR: [2] bootstrap checks failed
elasticsearch_1  | [1]: max virtual memory areas vm.max_map_count [65530] is too low, increase to at least [262144]
elasticsearch_1  | [2]: the default discovery settings are unsuitable for production use; at least one of [discovery.seed_hosts, discovery.seed_providers, cluster.initial_master_nodes] must be configured
elasticsearch_1  | {"type": "server", "timestamp": "2019-12-17T05:10:22,632Z", "level": "INFO", "component": "o.e.n.Node", "cluster.name": "docker-cluster", "node.name": "fd168d3dcd92", "message": "stopping ..." }
elasticsearch_1  | {"type": "server", "timestamp": "2019-12-17T05:10:22,677Z", "level": "INFO", "component": "o.e.n.Node", "cluster.name": "docker-cluster", "node.name": "fd168d3dcd92", "message": "stopped" }
elasticsearch_1  | {"type": "server", "timestamp": "2019-12-17T05:10:22,679Z", "level": "INFO", "component": "o.e.n.Node", "cluster.name": "docker-cluster", "node.name": "fd168d3dcd92", "message": "closing ..." }
elasticsearch_1  | {"type": "server", "timestamp": "2019-12-17T05:10:22,752Z", "level": "INFO", "component": "o.e.n.Node", "cluster.name": "docker-cluster", "node.name": "fd168d3dcd92", "message": "closed" }
elasticsearch_1  | {"type": "server", "timestamp": "2019-12-17T05:10:22,756Z", "level": "INFO", "component": "o.e.x.m.p.NativeController", "cluster.name": "docker-cluster", "node.name": "fd168d3dcd92", "message": "Native controller process has stopped - no new native processes can be started" }
```

Поиск в слаке дал решение. Чиним:

Задаём vm.max_map_count на docker-machine инстансе
```shell
docker-machine ssh logging sudo sysctl -w vm.max_map_count=262144
exit
```

Обновим версию и добавим envionment

[docker-compose-logging.yml](docker/docker-compose-logging.yml)
```yaml
services:
  ...
  elasticsearch:
    image: elasticsearch:7.5.0
    expose:
      - 9200
    ports:
      - "9200:9200"
    environment:
      - node.name=elasticsearch
      - cluster.name=docker-cluster
      - node.master=true
      - cluster.initial_master_nodes=elasticsearch
      - bootstrap.memory_lock=true
      - "ES_JAVA_OPTS=-Xms1g -Xmx1g"
  ...
```

Перезапускаем logging
```shell
make down_logging run_logging
```

Проверяем
```shell
cd ./docker && docker-compose -f docker-compose-logging.yml ps
```
Ошибка
```log
         Name                       Command                State                               Ports                            
--------------------------------------------------------------------------------------------------------------------------------
docker_elasticsearch_1   /usr/local/bin/docker-entr ...   Exit 78                                                               
docker_fluentd_1         tini -- /bin/entrypoint.sh ...   Up        0.0.0.0:24224->24224/tcp, 0.0.0.0:24224->24224/udp, 5140/tcp
docker_kibana_1          /usr/local/bin/dumb-init - ...   Up        0.0.0.0:5601->5601/tcp
```
```shell
docker-compose -f docker-compose-logging.yml logs elasticsearch
```
```log
elasticsearch_1  | {"type": "server", "timestamp": "2019-12-17T05:31:29,375Z", "level": "WARN", "component": "o.e.b.JNANatives", "cluster.name": "docker-cluster", "node.name": "elasticsearch", "message": "Unable to lock JVM Memory: error=12, reason=Cannot allocate memory" }
elasticsearch_1  | {"type": "server", "timestamp": "2019-12-17T05:31:29,386Z", "level": "WARN", "component": "o.e.b.JNANatives", "cluster.name": "docker-cluster", "node.name": "elasticsearch", "message": "This can result in part of the JVM being swapped out." }
elasticsearch_1  | {"type": "server", "timestamp": "2019-12-17T05:31:29,388Z", "level": "WARN", "component": "o.e.b.JNANatives", "cluster.name": "docker-cluster", "node.name": "elasticsearch", "message": "Increase RLIMIT_MEMLOCK, soft limit: 65536, hard limit: 65536" }
elasticsearch_1  | {"type": "server", "timestamp": "2019-12-17T05:31:29,390Z", "level": "WARN", "component": "o.e.b.JNANatives", "cluster.name": "docker-cluster", "node.name": "elasticsearch", "message": "These can be adjusted by modifying /etc/security/limits.conf, for example: \n\t# allow user 'elasticsearch' mlockall\n\telasticsearch soft memlock unlimited\n\telasticsearch hard memlock unlimited" }
elasticsearch_1  | {"type": "server", "timestamp": "2019-12-17T05:31:29,397Z", "level": "WARN", "component": "o.e.b.JNANatives", "cluster.name": "docker-cluster", "node.name": "elasticsearch", "message": "If you are logged in interactively, you will have to re-login for the new limits to take effect." }
...
elasticsearch_1  | ERROR: [1] bootstrap checks failed
elasticsearch_1  | [1]: memory locking requested for elasticsearch process but memory is not locked
```
Отчасти помогла найти проблему дискуссия по [ссылке](https://discuss.elastic.co/t/elasticsearch-is-not-starting-when-bootstrap-memory-lock-is-set-to-true/120962/2)


##### memory locking requested for elasticsearch process but memory is not locked

Правим `/etc/security/limits.conf` на инстансе docker-machine
```shell
docker-machine ssh logging
echo elasticsearch soft memlock unlimited | sudo tee /etc/security/limits.conf
echo elasticsearch hard memlock unlimited | sudo tee /etc/security/limits.conf
exit
```

Переподнимаем logging
```shell
make down_logging run_logging
```

Результат тот же.

После некоторых блужданий, решение найдено https://github.com/deviantony/docker-elk/issues/243

К сервису добавлены лимиты
```yaml
ulimits:
  memlock:
    soft: -1
    hard: -1
```

Итоговый [docker/docker-compose-logging.yml](docker/docker-compose-logging.yml)
```yaml
---
version: "3"
services:
  fluentd:
    image: ${USERNAME}/fluentd
    ports:
      - "24224:24224"
      - "24224:24224/udp"

  elasticsearch:
    image: elasticsearch:7.5.0
    expose:
      - 9200
    ports:
      - "9200:9200"
    environment:
      - node.name=elasticsearch
      - cluster.name=docker-cluster
      - node.master=true
      - cluster.initial_master_nodes=elasticsearch
      - bootstrap.memory_lock=true
      - "ES_JAVA_OPTS=-Xms1g -Xmx1g"
    ulimits:
      memlock:
        soft: -1
        hard: -1

  kibana:
    image: kibana:7.5.0
    ports:
      - "5601:5601"
```

##### Kibana продолжение

Откроем WEB-интерфейс Kibana для просмотра собранных в ElasticSearch логов Post-сервиса (kibana слушает на порту 5601) http://34.66.31.172:5601

1. Discover
2. Configure an index pattern `fluentd-*`
3. Next
4. Time Filter field name `@timestamp`
5. Next
6. Discover

Далее можн поиграться с интефейсом, посмотреть логи.

Видим лог-сообщение, которые мы недавно наблюдали в терминале. Теперь эти лог-сообщения хранятся централизованно в ElasticSearch. Также видим доп. информацию о том, откуда поступил данный лог.

Обратим внимание на то, что наименования в левом столбце, называются полями. По полям можно производить поиск для быстрого нахождения нужной информации.

Для того чтобы посмотреть некоторые примеры поиска, можно ввести в поле поиска произвольное выражение.

К примеру, посмотрев список доступных полей, мы можем выполнить поиск всех логов, поступивших с контейнера `reddit_post_1`.

Заметим, что поле log содержит в себе JSON объект, который содержит много интересной нам информации.
```json
{"addr": "172.22.0.3", "event": "request", "level": "info", "method": "GET", "path": "/healthcheck?", "request_id": "07585bd8-ca1f-473f-ae72-21f3d08f0d5d", "response_status": 200, "service": "post", "timestamp": "2019-12-17 06:24:16"}
```

Нам хотелось бы выделить эту информацию в поля, чтобы иметь возможность производить по ним поиск. Например, для того чтобы найти все логи, связанные с определенным событием (event) или конкретным сервисов (service).

Мы можем достичь этого за счет использования **фильтров** для выделения нужной информации.


#### Фильтры

Добавим фильтр для парсинга json логов, приходящих от post сервиса, в конфиг fluentd.

[logging/fluentd/fluent.conf](logging/fluentd/fluent.conf)
```xml
<source>
   @type forward
   port 24224
   bind 0.0.0.0
</source>

<filter service.post>
   @type parser
   format json
   key_name log
</filter>

<match *.**>
   @type copy
...
```

После этого персоберите образ и перезапустите сервис fluentd

Метод ДЗ
```shell
logging/fluentd $ docker build -t $USER_NAME/fluentd
docker/ $ docker-compose -f docker-compose-logging.yml up -d fluentd
```

Но у нас букв меньше. Метод Make
```shell
make fluentd_build run_logging
```

Вновь обратимся к Kibana. Прежде чем смотреть логи убедимся, что временной интервал выбран верно. Нажмите один раз на дату со временем. Выставлены верно!

Взглянем на одно из сообщений и увидим, что вместо одного поля log появилось множество полей с нужной нам информацией... А вот и нет!

Помогло обносление верий fluentd и его плагинов

[logging/fluentd/Dockerfile](logging/fluentd/Dockerfile)
```dockerfile
FROM fluent/fluentd:v1.8
USER root
RUN fluent-gem install fluent-plugin-elasticsearch --no-rdoc --no-ri --version 3.7.1
RUN fluent-gem install fluent-plugin-grok-parser --no-rdoc --no-ri --version 2.6.1
ADD fluent.conf /fluentd/etc
USER fluent
```

Снова взглянем на одно из сообщений и увидим, что вместо одного поля log появилось множество полей с нужной нам информацией!

Выполним для пример поиск по событию создания нового поста: `event: post_create`

Нашлось 2 поста, которые были созданы после настройки фильтра.


### Неструктурированные логи

Неструктурированные логи отличаются отсутствием четкой структуры данных. Также часто бывает, что формат лог-сообщений не подстроен под систему централизованного логирования, что существенно увеличивает затраты вычислительных и временных ресурсов на обработку данных и выделение нужной информации.

На примере сервиса ui мы рассмотрим пример логов с неудобным форматом сообщений.


#### Логирование UI сервиса

По аналогии с post сервисом определим для ui сервиса драйвер для логирования fluentd в compose-файле.

[docker/docker-compose.yml](docker/docker-compose.yml)
```yaml
services:
  ui:
    environment:
      APP_HOME: ${UI_APP_HOME}
    image: ${USERNAME}/ui:${UI_VERSION}
    ports:
      - ${UI_PORT}:9292/tcp
    networks:
      - reddit_front
    logging:
      driver: "fluentd"
      options:
        fluentd-address: localhost:24224
        tag: service.ui
```

Перезапустим ui сервис Из каталога `./docker`

Путь ДЗ
```
docker-compose stop ui
docker-compose rm ui
docker-compose up -d
```

Путь Make (docker-compose сам пересоздаст контейнер)
```shell
make run_app
```
```log
...
Recreating docker_ui_1    ... done
...
```

Посмотрим на формат собираемых сообщений
```log
I, [2019-12-17T18:15:04.146453 #1]  INFO -- : service=ui | event=show_all_posts | request_id=bf36de91-bf97-4d97-b15a-c66dec6ee581 | message='Successfully showed the home page with posts' | params: "{}"
```


### Парсинг

Когда приложение или сервис не пишет структурированные логи, приходится использовать старые добрые **регулярные выражения** для их парсинга в [/docker/fluentd/fluent.conf](/docker/fluentd/fluent.conf)

Следующее **регулярное выражение** нужно, чтобы успешно выделить интересующую нас информацию из лога UI-сервиса в поля

[/docker/fluentd/fluent.conf](/docker/fluentd/fluent.conf)
```xml
source>
  @type forward
  port 24224
  bind 0.0.0.0
</source>

<filter service.post>
  @type parser
  format json
  key_name log
</filter>

<filter service.ui>
  @type parser
  format /\[(?<time>[^\]]*)\]  (?<level>\S+) (?<user>\S+)[\W]*service=(?<service>\S+)[\W]*event=(?<event>\S+)[\W]*(?:path=(?<path>\S+)[\W]*)?request_id=(?<request_id>\S+)[\W]*(?:remote_addr=(?<remote_addr>\S+)[\W]*)?(?:method= (?<method>\S+)[\W]*)?(?:response_status=(?<response_status>\S+)[\W]*)?(?:message='(?<message>[^\']*)[\W]*)?/
  key_name log
</filter>


<match *.**>
  @type copy
  <store>
    @type elasticsearch
    host elasticsearch
    port 9200
    logstash_format true
    logstash_prefix fluentd
    logstash_dateformat %Y%m%d
    include_tag_key true
    type_name access_log
    tag_key @log_name
    flush_interval 1s
  </store>
  <store>
    @type stdout
  </store>
</match>
```

#### Перезапускаем логгинг

Обновим fluentd и перезапустим логгинг
```shell
make fluentd_build run_logging
```


#### Парсинг

Результат должен выглядить следующим образом... Да что-то не очень, в эластик прилетело одно сообщение:
```json
{
  "_index": "fluentd-20191217",
  "_type": "access_log",
  "_id": "GgYWFW8B0lVuIA-sb4VL",
  "_version": 1,
  "_score": null,
  "_source": {
    "worker": 0,
    "message": "fluentd worker is now stopping worker=0",
    "@timestamp": "2019-12-17T18:19:49.446032292+00:00",
    "@log_name": "fluent.info"
  },
  "fields": {
    "@timestamp": [
      "2019-12-17T18:19:49.446Z"
    ]
  },
  "sort": [
    1576606789446
  ]
}
```

Упал наш флюент
```shell
cd ./docker && docker-compose -f docker-compose-logging.yml logs -f fluentd; cd -
```
```log
Attaching to docker_fluentd_1
fluentd_1        | /usr/lib/ruby/gems/2.5.0/gems/fluentd-1.8.0/lib/fluent/config/basic_parser.rb:92:in `parse_error!': unmatched end tag at fluent.conf line 6,1 (Fluent::ConfigParseError)
fluentd_1        |   5: </source>
fluentd_1        |   6: 
fluentd_1        | 
fluentd_1        |      -^
fluentd_1        |   7: <filter service.post>
fluentd_1        |      from /usr/lib/ruby/gems/2.5.0/gems/fluentd-1.8.0/lib/fluent/config/v1_parser.rb:78:in `parse_element'
fluentd_1        |      from /usr/lib/ruby/gems/2.5.0/gems/fluentd-1.8.0/lib/fluent/config/v1_parser.rb:43:in `parse!'
fluentd_1        |      from /usr/lib/ruby/gems/2.5.0/gems/fluentd-1.8.0/lib/fluent/config/v1_parser.rb:33:in `parse'
fluentd_1        |      from /usr/lib/ruby/gems/2.5.0/gems/fluentd-1.8.0/lib/fluent/config.rb:39:in `parse'
fluentd_1        |      from /usr/lib/ruby/gems/2.5.0/gems/fluentd-1.8.0/lib/fluent/supervisor.rb:779:in `read_config'
fluentd_1        |      from /usr/lib/ruby/gems/2.5.0/gems/fluentd-1.8.0/lib/fluent/supervisor.rb:561:in `configure'
fluentd_1        |      from /usr/lib/ruby/gems/2.5.0/gems/fluentd-1.8.0/lib/fluent/command/fluentd.rb:329:in `<top (required)>'
fluentd_1        |      from /usr/lib/ruby/2.5.0/rubygems/core_ext/kernel_require.rb:59:in `require'
fluentd_1        |      from /usr/lib/ruby/2.5.0/rubygems/core_ext/kernel_require.rb:59:in `require'
fluentd_1        |      from /usr/lib/ruby/gems/2.5.0/gems/fluentd-1.8.0/bin/fluentd:8:in `<top (required)>'
fluentd_1        |      from /usr/bin/fluentd:23:in `load'
fluentd_1        |      from /usr/bin/fluentd:23:in `<main>'
docker_fluentd_1 exited with code 1
```
Причина: нехватает `<` перед открывающемим тэгом `source>`.

Исправлено: [/docker/fluentd/fluent.conf](/docker/fluentd/fluent.conf)
```xml
<source>
  @type forward
  port 24224
  bind 0.0.0.0
</source>

<filter service.post>
  @type parser
  format json
  key_name log
</filter>

<filter service.ui>
  @type parser
  format /\[(?<time>[^\]]*)\]  (?<level>\S+) (?<user>\S+)[\W]*service=(?<service>\S+)[\W]*event=(?<event>\S+)[\W]*(?:path=(?<path>\S+)[\W]*)?request_id=(?<request_id>\S+)[\W]*(?:remote_addr=(?<remote_addr>\S+)[\W]*)?(?:method= (?<method>\S+)[\W]*)?(?:response_status=(?<response_status>\S+)[\W]*)?(?:message='(?<message>[^\']*)[\W]*)?/
  key_name log
</filter>


<match *.**>
  @type copy
  <store>
    @type elasticsearch
    host elasticsearch
    port 9200
    logstash_format true
    logstash_prefix fluentd
    logstash_dateformat %Y%m%d
    include_tag_key true
    type_name access_log
    tag_key @log_name
    flush_interval 1s
  </store>
  <store>
    @type stdout
  </store>
</match>
```
```shell
make fluentd_build run_logging
```

Теперь гораздо лучше: сообщение в эластике
```json
{
  "_index": "fluentd-20191217",
  "_type": "access_log",
  "_id": "1QYdFW8B0lVuIA-ssYXr",
  "_version": 1,
  "_score": null,
  "_source": {
    "level": "INFO",
    "user": "--",
    "service": "ui",
    "event": "request",
    "path": "/",
    "request_id": "55504441-6aac-43cf-b22e-006811a30b89",
    "remote_addr": "185.30.195.250",
    "method": "GET",
    "response_status": "200",
    "@timestamp": "2019-12-17T18:27:43.382932000+00:00",
    "@log_name": "service.ui"
  },
  "fields": {
    "@timestamp": [
      "2019-12-17T18:27:43.382Z"
    ]
  },
  "sort": [
    1576607263382
  ]
}
```

Созданные регулярки могут иметь ошибки, их сложно менять и невозможно читать. Для облегчения задачи парсинга вместо стандартных регулярок можно использовать **grok**-шаблоны. По-сути **grok**’и - это именованные шаблоны регулярных выражений (очень похоже на функции). Можно использовать готовый regexp, просто сославшись на него как на функцию

[docker/fluentd/fluent.conf](docker/fluentd/fluent.conf)
```xml
...
<filter service.ui>
   @type parser
   format grok
   grok_pattern %{RUBY_LOGGER}
   key_name log
</filter>
...
```

Это grok-шаблон, зашитый в плагин для fluentd. В развернутом виде он выглядит вот так:
```grok
%{RUBY_LOGGER} [(?<timestamp>(?>\d\d){1,2}-(?:0?[1-9]|1[0-2])-(?:(?:0[1-9])|(?:[12][0-9])|(?:3[01])|[1-9])[T ](?:2[0123]|[01]?[0-9]):?(?:[0-5][0-9])(?::?(?:(?:[0-5]?[0-9]|60)(?:[:.,][0-9]+)?))?(?:Z|[+-](?:2[0123]|[01]?[0-9])(?::?(?:[0-5][0-9])))?) #(?<pid>\b(?:[1-9][0-9]*)\b)\] *(?<loglevel>(?:DEBUG|FATAL|ERROR|WARN|INFO)) -- +(?<progname>.*?): (?<message>.*)
```

Как было видно на предыдущем слайде - часть логов нужно еще распарсить. Для этого используем несколько Grok-ов по-очереди

[docker/fluentd/fluent.conf](docker/fluentd/fluent.conf)
```xml
<source>
  @type forward
  port 24224
  bind 0.0.0.0
</source>

<filter service.post>
  @type parser
  format json
  key_name log
</filter>

<filter service.ui>
  @type parser
  key_name log
  format grok
  grok_pattern %{RUBY_LOGGER}
</filter>

<filter service.ui>
  @type parser
  format grok
  grok_pattern service=%{WORD:service} \| event=%{WORD:event} \| request_id=%{GREEDYDATA:request_id} \| message='%{GREEDYDATA:message}'
  key_name message
  reserve_data true
</filter>

<match *.**>
  @type copy
  <store>
    @type elasticsearch
    host elasticsearch
    port 9200
    logstash_format true
    logstash_prefix fluentd
    logstash_dateformat %Y%m%d
    include_tag_key true
    type_name access_log
    tag_key @log_name
    flush_interval 1s
  </store>
  <store>
    @type stdout
  </store>
</match>
```
```shell
make fluentd_build run_logging
```
Ошибочка
```log
Attaching to docker_fluentd_1
fluentd_1        | 2019-12-17 18:34:08 +0000 [info]: parsing config file is succeeded path="/fluentd/etc/fluent.conf"
fluentd_1        | 2019-12-17 18:34:08 +0000 [info]: gem 'fluent-plugin-elasticsearch' version '3.7.1'
fluentd_1        | 2019-12-17 18:34:08 +0000 [info]: gem 'fluent-plugin-grok-parser' version '2.6.1'
fluentd_1        | 2019-12-17 18:34:08 +0000 [info]: gem 'fluentd' version '1.8.0'
fluentd_1        | 2019-12-17 18:34:08 +0000 [error]: config error file="/fluentd/etc/fluent.conf" error_class=Fluent::ConfigError error="no grok patterns. Check configuration, e.g. typo, configuration syntax, etc"
docker_fluentd_1 exited with code 1
```

Танцы м бубном вокрук данной ситуации (чтение ридми в репозиториях плагинов, гугление и поиск подходящих issues), привели к https://github.com/repeatedly/fluent-plugin-multi-format-parser/issues/6 где для решения проблемы рекомендуют использовать `v0.12`, что мы и сделаем, использовав последние совместимые версии плагинов. Итого наш докерфайл стал таким:

[logging/fluentd/Dockerfile](logging/fluentd/Dockerfile)
```dockerfile
FROM fluent/fluentd:v0.12
RUN fluent-gem install fluent-plugin-elasticsearch --no-rdoc --no-ri --version 1.18.1
RUN fluent-gem install fluent-plugin-grok-parser --no-rdoc --no-ri --version 1.0.0
ADD fluent.conf /fluentd/etc
```
Затем сборка и деплой
```shell
make fluentd_build run_logging
```
Как не удивительно, но всё завелось, включая парсинг json от сервиса `post`.

В итоге получим в Kibana (если совершаем действия в uiсервисе): да всё нормально получили.


### Задания co *

#### grok

UI-сервис шлет логи в нескольких форматах.

```log
service=ui | event=request | path=/ | request_id=96e76ff2-3d06-4ffa-806b-c14d7ca6a78a | remote_addr=185.30.195.250 | method= GET | response_status=200
```

Такой лог остался неразобранным. Составьте конфигурацию fluentd так, чтобы разбирались оба формата логов UI-сервиса (тот, что сделали до этого и текущий) одновременно.

##### Анализ

Читаем документацию https://github.com/fluent/fluent-plugin-grok-parser/blob/master/README.md

Парсим готовые шаблоны https://github.com/fluent/fluent-plugin-grok-parser/tree/master/patterns

##### Реализация

И пишем конфиг (удобный grok-дебаггер есть в кибане: Dev Tools )

```xml
<filter service.ui>
  @type parser
  format grok
  <grok>
    pattern service=%{WORD:service} \| event=%{WORD:event} \| request_id=%{GREEDYDATA:request_id} \| message='%{GREEDYDATA:message}'
  </grok>
  <grok>
    pattern service=%{WORD:service} \| event=%{WORD:event} \| path=%{URIPATH:path} \| request_id=%{GREEDYDATA:request_id} \| remote_addr=%{IP:remote_addr} \| method= %{WORD:message} \| response_status=%{INT:response_status}
  </grok>
  key_name message
  reserve_data true
</filter>
```

Готово. Примеры
```json
{
  "_index": "fluentd-20191217",
  "_type": "access_log",
  "_id": "wgZnFW8B0lVuIA-s_IqS",
  "_version": 1,
  "_score": null,
  "_source": {
    "timestamp": "2019-12-17T19:48:52.681349",
    "pid": "1",
    "loglevel": "INFO",
    "progname": "",
    "message": "Successfully showed the home page with posts",
    "service": "ui",
    "event": "show_all_posts",
    "request_id": "08c3c38a-1725-4b7c-9665-c61e46265219",
    "@timestamp": "2019-12-17T19:48:52+00:00",
    "@log_name": "service.ui"
  },
  "fields": {
    "@timestamp": [
      "2019-12-17T19:48:52.000Z"
    ]
  },
  "sort": [
    1576612132000
  ]
}
```
```json
{
  "_index": "fluentd-20191217",
  "_type": "access_log",
  "_id": "wwZnFW8B0lVuIA-s_IqS",
  "_version": 1,
  "_score": null,
  "_source": {
    "timestamp": "2019-12-17T19:48:52.710553",
    "pid": "1",
    "loglevel": "INFO",
    "progname": "",
    "message": "GET",
    "service": "ui",
    "event": "request",
    "path": "/",
    "request_id": "08c3c38a-1725-4b7c-9665-c61e46265219",
    "remote_addr": "185.30.195.250",
    "response_status": "200",
    "@timestamp": "2019-12-17T19:48:52+00:00",
    "@log_name": "service.ui"
  },
  "fields": {
    "@timestamp": [
      "2019-12-17T19:48:52.000Z"
    ]
  },
  "sort": [
    1576612132000
  ]
}
```


### Распределенная трасировка

Разобраться с темой распределенного трейсинга и решить проблему в конце данного файла.

#### Zipkin

Добавьте в compose-файл для сервисов логирования сервис распределенного трейсинга Zipkin

[docker/docker-compose-logging.yml](docker/docker-compose-logging.yml)
```yaml
version: '3'

services:
  zipkin:
    image: openzipkin/zipkin
    ports:
      - "9411:9411"

  ...

  kibana:
    image: kibana
    ports:
      - "8080:5601"  # Почему 8080??? Раньше так не было... в композ-файле прописал 5601:5601
```


#### docker-compose.yml

Правим наш [docker/docker-compose.yml]([docker/docker-compose.yml])

Добавьте для каждого сервиса поддержку `ENV` переменных и задайте параметризованный параметр `ZIPKIN_ENABLED`

```yaml
environment:
   - ZIPKIN_ENABLED=${ZIPKIN_ENABLED}
```

В `.env` файле укажите
```shell
ZIPKIN_ENABLED=true
```

Перевыкатите приложение с обновлением

Метод ДЗ
```shell
docker-compose up -d
```

Метод Make
```shell
make run_app
```


#### Networks

Zipkin должен быть в одной сети с приложениями, поэтому, если вы выполняли задание с сетями, вам нужно объявить эти сети в [docker-compose-logging.yml](docker/docker-compose-logging.yml) и добавить в них zikpkin похожим образом:

```yaml
services:
  ...
  zipkin:
    image: openzipkin/zipkin
    ports:
      - "9411:9411"
    networks:
      - reddit_front
      - reddit_back

networks:
  reddit_front:
  reddit_back:
```


#### Пересоздадим наши сервисы

Метод ДЗ
```shell
docker-compose -f docker-compose-logging.yml -f docker-compose.yml down
docker-compose -f docker-compose-logging.yml -f docker-compose.yml up -d
```

Им и воспользуемся (сюрприз))
P.S. Понадобилось поднять версию композ-файла [docker/docker-compose-logging.yml](docker/docker-compose-logging.yml) с `3.0` до `3.3`
```log
Status: Downloaded newer image for openzipkin/zipkin:latest
Creating docker_kibana_1 ... 
Creating docker_post_db_1 ... 
Creating docker_zipkin_1  ... 
Creating docker_post_1    ... 
Creating docker_kibana_1        ... done
Creating docker_post_db_1       ... done
Creating docker_zipkin_1        ... done

Creating docker_elasticsearch_1 ... done

Creating docker_fluentd_1       ... done
Creating docker_comment_1       ... done

ERROR: for ui  Cannot start service ui: failed to initialize logging driver: dial tcp 127.0.0.1:24224: connect: connection refused

ERROR: for post  Cannot start service post: failed to initialize logging driver: dial tcp 127.0.0.1:24224: connect: connection refused
ERROR: Encountered errors while bringing up the project.
```

Повторный запуск помог. Похоже, приложение не смогло стартовать до полного запуска zipkin.
```shell
docker-compose -f docker-compose-logging.yml -f docker-compose.yml up -d
```
```log
Starting docker_post_1 ... 
docker_elasticsearch_1 is up-to-date
docker_zipkin_1 is up-to-date
Starting docker_ui_1   ... 
docker_kibana_1 is up-to-date
Starting docker_post_1    ... done
Starting docker_ui_1      ... done
Starting docker_comment_1 ... done
```

Откроем Zipkin WEB UI на порту 9411, пока никаких трейсов поиск не должен дать, т.к. никаких запросов нашему приложению еще не поступало (так и есть)

Откроем главную страницу приложения и обновим ее несколько раз.

Заглянув затем в UI Zipkin (страницу потребуется обновить), мы должны найти несколько трейсов (следов, которые оставили запросы проходя через систему наших сервисов)... Да, нашли.

Нажмем на один из трейсов, чтобы посмотреть, как запрос шел через нашу систему микросервисов и каково общее время обработки запроса у нашего приложения при запросе главной страницы.

Видим, что первым делом наш запрос попал к ui сервису, который смог обработать наш запрос за суммарное время равное **187.566ms**.

Из этих **187ms** ms ушло **134.155ms** на то чтобы ui мог направить запрос post сервису по пути `/posts` и получить от него ответ в виде списка постов. Post сервис в свою очередь использовал функцию обращения к БД за списком постов, на что ушло **4.827ms**... На самом деле, не видны в трейсах обращения к БД, но посмотрим что будет дальше.

Повторим немного терминологию: синие полоски со временем называются **span** и представляют собой одну операцию, которая произошла при обработке запроса. Набор **span**-ов называется трейсом. Суммарное время обработки нашего запроса равно верхнему **span**-у, который включает в себя время всех **span**-ов, расположенных под ним.


### Вне заданий: проблемы с comment

```shell
docker-compose ps
```
```log
      Name                   Command             State            Ports         
--------------------------------------------------------------------------------
docker_comment_1   puma                          Exit 1                         
docker_post_1      python3 post_app.py           Up                             
docker_post_db_1   docker-entrypoint.sh mongod   Up       27017/tcp             
docker_ui_1        puma                          Up       0.0.0.0:9292->9292/tcp
```

Включим логгирование для comment

[docker/docker-compose.yml](docker/docker-compose.yml)
```yaml
services:
  ...
  comment:
    environment:
      APP_HOME: ${COMMENT_APP_HOME}
      ZIPKIN_ENABLED: ${ZIPKIN_ENABLED}
    image: ${USERNAME}/comment:${COMMENT_VERSION}
    networks:
      - reddit_front
      - reddit_back
    links:
      - "post_db:comment_db"
    logging:
      driver: "fluentd"
      options:
        fluentd-address: localhost:24224
        tag: service.comment
```

Рестарт app
```shell
make run_app
```

Смотрим логи
```log
! Unable to load application: TZInfo::DataSourceNotFound: No source of timezone data could be found.
```

Гугление. [Первая ссылка:](https://github.com/tzinfo/tzinfo/wiki/Resolving-TZInfo::DataSourceNotFound-Errors)

Создал Issue https://github.com/express42/reddit/issues/9

Склонировал репо. Создал бренч `fix-comment` из `logging`. 

Исправил: в [src/comment/Gemfile](src/comment/Gemfile) добавил `gem 'tzinfo-data'` - помогло)

Закоммитил. НО при пуше ошибка
```shell
git push
```
```log
ERROR: Permission to express42/reddit.git denied to vscoder.
fatal: Could not read from remote repository.

Please make sure you have the correct access rights
and the repository exists.
```

Сделал форк https://github.com/vscoder/reddit

Исправил. Закоммитил. Создал PR https://github.com/express42/reddit/pull/10

Исправил в своём репозитории.


### Самостоятельное задание со звездочкой \*

С нашим приложением происходит что-то странное. Пользователи жалуются, что при нажатии на пост они вынуждены долго ждать, пока у них загрузится страница с постом. Жалоб на загрузку других страниц не поступало. Нужно выяснить, в чем проблема, используя Zipkin.

[Ссылка на репозиторий](https://github.com/Artemmkin/bugged-code) со сломанным кодом приложения.

Описание проблемы можно опублиовать в PR, в разделе выполнения задания со звездочкой

#### Репозиторий

```shell
git clone git@github.com:Artemmkin/bugged-code.git
```

Параметризуем директорию с исходниками в [Makefile](Makefile)
```makefile
# Source code directory
SRC_DIR?=./src
...
###
# Build
###
build_comment:
	. ./env && \
	cd ${SRC_DIR}/comment && bash ./docker_build.sh

build_post:
	. ./env && \
	cd ${SRC_DIR}/post-py && bash ./docker_build.sh

build_ui:
	. ./env && \
	cd ${SRC_DIR}/ui && bash ./docker_build.sh
```

Каждому образу в `./bugged-code/*/docker_build.sh` добавлен тег `bugged`

Собираем образы

```shell
make build_comment build_post build_ui SRC_DIR=./bugged-code
```

В `docker/.env` меняем версию сервисов на `bugged`. 

Запускаем приложение:
```shell
make run_app
```


#### Проблема

При открытии страницы приложения, видим ошибку
> Can't show blog posts, some problems with the post service. Refresh?

В zipkin:
1. находим ошибочный трейс, открываем
2. находим ошибочный спан, открываем

Видим ошибку
```log
error	Request connection failed.
http.path	/posts
Server Address	127.0.0.1:4567 (127)
```

Почему он пытаается открыть post на `127.0.0.1`? В то время когда должен лезть на сервис с именем post...

Решение: в `Dockerfile` нашего приложения были заданы значения по умолчанию с адресами сервисов. В `bugged`-версии такого нет. Зададим данные переменные через `environment` в [docker-compose.yml](docker/docker-compose.yml)
```yaml
service:
  ui:
    environment:
      APP_HOME: ${UI_APP_HOME}
      ZIPKIN_ENABLED: ${ZIPKIN_ENABLED}
      POST_SERVICE_HOST: post
      POST_SERVICE_PORT: 5000
      COMMENT_SERVICE_HOST: comment
      COMMENT_SERVICE_PORT: 9292
    image: ${USERNAME}/ui:${UI_VERSION}
```
Значения переменных заданы явно, так как адреса севрвисов захардкожены в самом композ-файле, а номара портов никак не настраиваются для приложений.

Перезапускаем приложение
```shell
make down_app
make run_app
```

Теперь всё работает. Продолжаем работу в рамках ДЗ


#### Поиск проблемы

Открыие страницы с постом происходит очень медленно http://34.69.62.207:9292/post/5dfa57b6ee0fa2000ea79437

Смотрим zipkin:

- Находим трейс `3.071s 6 spans`
- span `post.db_find_single_post: 3.006s`

Похоже, что поиск поста происходит слишком медленно

Перезапустим нормальное приложение (версия `logging`): тот же спан ~105ms

Проблема найдена.


#### Проблема с EFK

Посмотрим в kibana

```json
{
  "_index": "fluentd-20191218",
  "_type": "access_log",
  "_id": "aTxvGm8BX5Q2VjUnBF1B",
  "_version": 1,
  "_score": null,
  "_source": {
    "error_class": "Fluent::ElasticsearchErrorHandler::ElasticsearchError",
    "error": "400 - Rejected by Elasticsearch",
    "location": null,
    "tag": "service.post",
    "time": 1576696476,
    "record": {
      "addr": "172.22.0.3",
      "event": "request",
      "level": "info",
      "method": "GET",
      "path": "/post/5dfa57b6ee0fa2000ea79437?",
      "request_id": "e27e47a9-6355-4a19-aeb1-40470d5004dd",
      "response_status": 200,
      "service": "post",
      "timestamp": "2019-12-18 19:14:36"
    },
    "message": "dump an error event: error_class=Fluent::ElasticsearchErrorHandler::ElasticsearchError error=\"400 - Rejected by Elasticsearch\" location=nil tag=\"service.post\" time=1576696476 record={\"addr\"=>\"172.22.0.3\", \"event\"=>\"request\", \"level\"=>\"info\", \"method\"=>\"GET\", \"path\"=>\"/post/5dfa57b6ee0fa2000ea79437?\", \"request_id\"=>\"e27e47a9-6355-4a19-aeb1-40470d5004dd\", \"response_status\"=>200, \"service\"=>\"post\", \"timestamp\"=>\"2019-12-18 19:14:36\"}",
    "@timestamp": "2019-12-18T19:14:37+00:00",
    "@log_name": "fluent.warn"
  },
  "fields": {
    "@timestamp": [
      "2019-12-18T19:14:37.000Z"
    ]
  },
  "highlight": {
    "tag": [
      "@kibana-highlighted-field@service.post@/kibana-highlighted-field@"
    ],
    "message": [
      "dump an error event: error_class=Fluent::ElasticsearchErrorHandler::ElasticsearchError error=\"400 - Rejected by Elasticsearch\" location=nil tag=\"@kibana-highlighted-field@service.post@/kibana-highlighted-field@\" time=1576696476 record={\"addr\"=>\"172.22.0.3\", \"event\"=>\"request\", \"level\"=>\"info\", \"method\"=>\"GET\", \"path\"=>\"/post/5dfa57b6ee0fa2000ea79437?\", \"request_id\"=>\"e27e47a9-6355-4a19-aeb1-40470d5004dd\", \"response_status\"=>200, \"service\"=>\"post\", \"timestamp\"=>\"2019-12-18 19:14:36\"}"
    ],
    "tag.keyword": [
      "@kibana-highlighted-field@service.post@/kibana-highlighted-field@"
    ]
  },
  "sort": [
    1576696477000
  ]
}
```

Странные ошибки. Найдена Issue https://github.com/uken/fluent-plugin-elasticsearch/issues/467

Попробуем включить дебаг в [logging/fluentd/fluent.conf](logging/fluentd/fluent.conf)
```xml
...
<match *.**>
  @type copy
  <store>
    @log_level debug
    @type elasticsearch
    host elasticsearch
...
```

```shell
make run_logging
```

Обновим страницу...
В es ошибки не пропали. Лог ES:
```log
elasticsearch_1  | {"type": "server", "timestamp": "2019-12-18T19:24:39,220Z", "level": "DEBUG", "component": "o.e.a.b.TransportShardBulkAction", "cluster.name": "docker-cluster", "node.name": "elasticsearch", "message": "[fluentd-20191218][0] failed to execute bulk item (index) index {[fluentd-20191218][access_log][fjx4Gm8BX5Q2VjUnJV2n], source[{\"addr\":\"172.22.0.3\",\"event\":\"request\",\"level\":\"info\",\"method\":\"GET\",\"path\":\"/post/5dfa57b6ee0fa2000ea79437?\",\"request_id\":\"ce9c55fb-6522-4723-8769-c0a12f090b36\",\"response_status\":200,\"service\":\"post\",\"timestamp\":\"2019-12-18 19:24:38\",\"@timestamp\":\"2019-12-18T19:24:38+00:00\",\"@log_name\":\"service.post\"}]}", "cluster.uuid": "Tm7FR-K9RGmirE07d8jmsQ", "node.id": "R6gRLHXhQgWyqbXc3DY5iQ" , 
elasticsearch_1  | "stacktrace": ["org.elasticsearch.index.mapper.MapperParsingException: failed to parse field [timestamp] of type [date] in document with id 'fjx4Gm8BX5Q2VjUnJV2n'. Preview of field's value: '2019-12-18 19:24:38'",
```

Не может распарсить поле `timestamp`? Сделаем его строкой))

В кибане: Management -> Index Patterns -> страница 7 -> `timestamp` изменить -> Format: **String**

Теперь вновь пришедшие сообщения выглядят нормально.

Дебаг плагина в [logging/fluentd/fluent.conf](logging/fluentd/fluent.conf) выглючил `make fluentd_build run_logging`


### Как запустить проект:

#### Подготовка

Предварительно необходимо заполнить файлы ./env и ./monitoring/alertmanager/env по примеру env.example в соответствующих директориях, а так же выполнить авторизацию в gcloud

```shell
# Установка docker-machine
make install_docker_machine

# Создание docker-machine
make docker_machine_create_logging

# Исплоьзование docker-machine
eval $(docker-machine env logging)

# Узнать docker-machine ip
make docker_machine_ip_logging
```

#### Запуск

- `make run_logging run_app` - только приложение и логгинг
- Или `make run` - запуск всего


## HomeWork 19: Введение в Kubernetes

### Создание примитивов

Опишем приложение в контексте Kubernetes с помощью manifest-ов в YAML-формате. Основным примитивом будет *Deployment*. Основные задачи сущности *Deployment*:

- Создание *Replication Controller*-а (следит, чтобы число запущенных *Pod*-ов соответствовало описанному);
- Ведение истории версий запущенных *Pod*-ов (для различных стратегий деплоя, для возможностей отката);
- Описание процесса деплоя (стратегия, параметры стратегий).

Пример *Deployment*:
`post-deployment.yml`
```yaml
---
apiVersion: apps/v1beta2
kind: Deployment
metadata:
  name: post-deployment
spec:
  replicas: 1
  selector:
    matchLabels:
      app: post
  template:
    metadata:
      name: post
      labels:
        app: post
    spec:
      containers:
      - image: vscoder/post
        name: post
```

### Задание

- Создайте директорию `kubernetes` в корне репозитория;
- Внутри директории `kubernetes` создайте директорию `reddit`;
- Сохраните файл [post-deployment.yml](kubernetes/reddit/post-deployment.yml) в директории `kubernetes/reddit`;
- Создайте собственные файлы с *Deployment* манифестами приложений и сохраните в папке `kubernetes/reddit`;
  - [ui-deployment.yml](kubernetes/reddit/ui-deployment.yml)
  - [comment-deployment.yml](kubernetes/reddit/comment-deployment.yml)
  - [mongo-deployment.yml](kubernetes/reddit/mongo-deployment.yml)

P.S. Эту директорию и файлы в ней в дальнейшем мы будем развивать (пока это нерабочие экземпляры).


### Kubernetes The Hard Way

["Сложный путь"](https://github.com/kelseyhightower/kubernetes-the-hard-way) установить Kubernetes

В качестве домашнего задания предлагается пройти [Kubernetes The Hard Way](https://github.com/kelseyhightower/kubernetes-the-hard-way) разработанный инженером Google Kelsey Hightower
Туториал представляет собой: 
- Пошаговое руководство по ручной инсталляции основных компонентов Kubernetes кластера;
- Краткое описание необходимых действий и объектов.

На текущий момент:

- Версия Kubernetes в данном гайде зависла на 1.15

Тем, кто уже проходил THW ранее, советуем попробовать установить версию 1.17 самостоятельно, не прибегая к помощи репозитория.

### Задание

- Создать отдельную директорию `the_hard_way` в директории `kubernetes`;
- Пройти **Kubernetes The Hard Way**;
- Проверить, что `kubectl apply -f <filename>` проходит по созданным до этого deployment-ам (`ui`, `post`, `mongo`, `comment`) и поды запускаются;
- Удалить кластер после прохождения THW;
- Все созданные в ходе прохождения THW файлы (кроме бинарных) поместить в папку `kubernetes/the_hard_way` репозитория (сертификаты и ключи тоже можно коммитить, но только после удаления кластера).

### Возможные проблемы

Если на шаге **Bootstrapping the etcd Cluster** у вас не работает команда `sudo systemctl start etcd`, то, вероятно, Вы не используете параллельный ввод с помощью tmux, а выполняете команды для каждого сервера отдельно. Для того, чтобы команда выполнилась успешно, установите `etcd` на каждый необходимый инстанс и **одновременно** запустите её на всех инстансах.

Если в процессе выполнения команд возникает ошибка `(gcloud.compute.addresses.describe) argument --region: expected one argument`, то убедитесь, что Вы выполняете команду в нужном месте. Обычно это происходит, когда команду необходимо выполнять на локальной машине, а она выполняется на каком то из инстансов. Если команда точно выполняется локально, то выполните:
```
{
  gcloud config set compute/region us-west1
  gcloud config set compute/zone us-west1-c
}
```

### Задание со \*

- Описать установку компонентов Kubernetes из THW в виде Ansible-плейбуков в папке `kubernetes/ansible`;
- Задание достаточно выполнить в виде Proof of Concept, просто автоматизация некоторых действий туториала.

Задание со * выполнять не буду, так как практическое применение не предвидится, к тому же есть же [KubeSpray](https://github.com/kubernetes-sigs/kubespray)

### Выполнение задания

Выполнение задания будет описано в отдельном файле [kubernetes/the_hard_way/README.md](kubernetes/the_hard_way/README.md)

### Проверка деплоя

Кластер развёрнут по THW: [описание процесса](./kubernetes/the_hard_way/README.md)

Далее - деплой подов нашего приложения:

```shell
cd kubernetes/reddit
kubectl apply -f ./
```
```log
deployment.apps/comment-deployment created
deployment.apps/mongo-deployment created
deployment.apps/post-deployment created
deployment.apps/ui-deployment created
```

```shell
kubectl get pods
```
```log
NAME                                  READY   STATUS    RESTARTS   AGE
busybox                               1/1     Running   0          51m
comment-deployment-5bb6744cdd-rprz9   1/1     Running   0          32s
mongo-deployment-86d49445c4-fzsbp     1/1     Running   0          31s
nginx-554b9c67f9-zkpn2                1/1     Running   0          42m
post-deployment-7576fb4896-m9tm7      1/1     Running   0          31s
ui-deployment-57d7c9fd56-s7gcq        1/1     Running   0          30s
```

Как видим, работает. Далее очистка и коммит


## HomeWork 20: Kubernetes. Запуск кластера и приложения. Модель безопасности.

### План

- Развернуть локальное окружение для работы с Kubernetes
- Развернуть Kubernetes в GKE 
- Запустить reddit в Kubernetes


### Разворачиваем Kubernetes локально

Для дальнейшей работы нам нужно подготовить локальное окружение, которое будет состоять из:

1. **kubectl** - фактически, главной утилиты для работы c Kubernetes API (все, что делает kubectl, можно сделать с помощью HTTP-запросов к API k8s)
2. Директории `~/.kube` - содержит служебную инфу для kubectl (конфиги, кеши, схемы API)
3. **minikube** - утилиты для разворачивания локальной инсталляции Kubernetes.


#### Kubectl

Необходимо установить kubectl: Все способы установки доступны по [ссылке](https://kubernetes.io/docs/tasks/tools/install-kubectl/)

Будем ставить `kubectl` версии, совместимой с версией kubernetes в minikube


#### minikube

Для работы Minukube вам понадобится локальный гипервизор: 

1. Для OS X: или xhyve driver, или VirtualBox, или VMware Fusion
2. Для Linux: VirtualBox или KVM.
3. Для Windows: VirtualBox или Hyper-V.

В общем, VirtualBox - наше всё)) Уже установлен.

### Minikube

Инструкция по установке Minikube для разных ОС: https://kubernetes.io/docs/tasks/tools/install-minikube/

#### Before you begin

Проверка на поддержку виртуализации
```shell
grep -E --color 'vmx|svm' /proc/cpuinfo
```
```log
flags           : fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge mca cmov pat pse36 clflush dts acpi mmx fxsr sse sse2 ss ht tm pbe syscall nx pdpe1gb rdtscp lm constant_tsc art arch_perfmon pebs bts rep_good nopl xtopology nonstop_tsc cpuid aperfmperf tsc_known_freq pni pclmulqdq dtes64 monitor ds_cpl vmx smx est tm2 ssse3 sdbg fma cx16 xtpr pdcm pcid sse4_1 sse4_2 x2apic movbe popcnt tsc_deadline_timer aes xsave avx f16c rdrand lahf_lm abm 3dnowprefetch cpuid_fault invpcid_single pti ssbd ibrs ibpb stibp tpr_shadow vnmi flexpriority ept vpid ept_ad fsgsbase tsc_adjust bmi1 hle avx2 smep bmi2 erms invpcid rtm mpx rdseed adx smap clflushopt intel_pt xsaveopt xsavec xgetbv1 xsaves dtherm ida arat pln pts hwp hwp_notify hwp_act_window hwp_epp md_clear flush_l1d
...
```
Мы всё умеем

#### Installing minikube

install latest kubectl
```shell
cd ~/bin
curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl
chmod +x kubectl
mv kubectl kubectl-v1.17.0
ln -s kubectl-v1.17.0 kubectl
kubectl version --client
```
```log
Client Version: version.Info{Major:"1", Minor:"17", GitVersion:"v1.17.0", GitCommit:"70132b0f130acc0bed193d9ba59dd186f0e634cf", GitTreeState:"clean", BuildDate:"2019-12-07T21:20:10Z", GoVersion:"go1.13.4", Compiler:"gc", Platform:"linux/amd64"}
```

Install Minikube via direct download

```shell
curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64 \
  && chmod +x minikube
mv minikube minikube-v1.6.2
ln -s minikube-v1.6.2 minikube
minikube version
```
```log
minikube version: v1.6.2
commit: 54f28ac5d3a815d1196cd5d57d707439ee4bb392
```

Дать больше памяти
```shell
minikube config set memory 4096
```
```log
⚠️  These changes will take effect upon a minikube delete and then a minikube start
```

Запустим наш Minukube-кластер.
```shell
minikube start
```
```log
😄  minikube v1.6.2 on Ubuntu 18.04
✨  Automatically selected the 'virtualbox' driver (alternates: [none])
💿  Downloading VM boot image ...
    > minikube-v1.6.0.iso.sha256: 65 B / 65 B [--------------] 100.00% ? p/s 0s
    > minikube-v1.6.0.iso: 150.93 MiB / 150.93 MiB [] 100.00% 10.95 MiB p/s 14s
🔥  Creating virtualbox VM (CPUs=2, Memory=4096MB, Disk=20000MB) ...
🐳  Preparing Kubernetes v1.17.0 on Docker '19.03.5' ...
💾  Downloading kubeadm v1.17.0
💾  Downloading kubelet v1.17.0
🚜  Pulling images ...
🚀  Launching Kubernetes ... 
⌛  Waiting for cluster to come online ...
🏄  Done! kubectl is now configured to use "minikube"
```

P.S. Если нужна конкретная версия kubernetes, указывайте флаг `--kubernetes-version <version>` (v1.8.0)
P.P.S. По-умолчанию используется VirtualBox. Если у вас другой гипервизор, то ставьте флаг `--vm-driver=<hypervisor>`


#### Kubectl

Наш Minikube-кластер развернут. При этом автоматически был настроен конфиг kubectl.

Проверим, что это так:
```shell
kubectl get nodes
```
```log
NAME       STATUS   ROLES    AGE   VERSION
minikube   Ready    master   14m   v1.17.0
```

Конфигурация kubectl - это **контекст**.

Контекст - это комбинация:

1. **cluster** - API-сервер
2. **user** - пользователь для подключения к кластеру
3. **namespace** - область видимости (не обязательно, поумолчанию default)

Информацию о контекстах kubectl сохраняет в файле `~/.kube/config`

Файл `~/.kube/config` - это такой же манифест kubernetes в YAML-формате (есть и Kind, и ApiVersion). 
```yaml
apiVersion: v1
clusters:  # Список кластеров
- cluster:
    # корневой сертификат (которым подписан SSL-сертификат самого сервера),
    # чтобы убедиться, что нас не обманывают и перед нами тот самый сервер
    certificate-authority: /home/vscoder/.minikube/ca.crt
    # адрес kubernetes API-сервера
    server: https://192.168.99.100:8443
  # (Имя) для идентификации в конфиге
  name: minikube
contexts:  # Список контекстов
# Контекст (контекст) - это:
- context:
    # имя кластера из списка clusters 
    cluster: minikube
    # имя пользователя из списка users 
    user: minikube
    # namespace: область видимости по-умолчанию (не обязательно)
  # (Имя) для идентификации в конфиге
  name: minikube
current-context: minikube
kind: Config
preferences: {}
users:  # Список пользователей
# Пользователь (user) - это: 
- name: minikube  # name (Имя) для идентификации в конфиге
  user:
    # Данные для аутентификации (зависит от того, как настроен сервер). 
    # Это могут быть:
    #   - username + password (Basic Auth
    #   - client key + client certificate
    #   - token
    #   - auth-provider config (например GCP)
    client-certificate: /home/vscoder/.minikube/client.crt
    client-key: /home/vscoder/.minikube/client.key
```

Обычно порядок конфигурирования kubectl следующий:

1. Создать cluster:
    ```shell
    kubectl config set-cluster … cluster_name
    ```
2. Создать данные пользователя (credentials)
    ```shell
    kubectl config set-credentials … user_name
    ```
3. Создать контекст
    ```shell
    kubectl config set-context context_name \
      --cluster=cluster_name \
      --user=user_name
    ```
4. Использовать контекст
    ```shell
    kubectl config use-context context_name
    ```

Таким образом kubectl конфигурируется для подключения к разным кластерам, под разными пользователями.

Текущий контекст можно увидеть так: 
```shell
kubectl config current-context
```
```log
minikube
```

Список всех контекстов можно увидеть так:
```shell
kubectl config get-contexts
```
```log
CURRENT   NAME       CLUSTER    AUTHINFO   NAMESPACE
*         minikube   minikube   minikube
```

#### Запустим приложение

Для работы в приложения kubernetes, нам необходимо описать их желаемое состояние либо в YAML-манифестах, либо с помощью командной строки.

Всю конфигурацию поместите в каталог `./kubernetes/reddit` внутри вашего репозитория.

##### Deployment

Основные объекты - это ресурсы **Deployment**.

Как помним из предыдущего занятия, основные его задачи:
- Создание ReplicationSet (следит, чтобы число запущенных Pod-ов соответствовало описанному)
- Ведение истории версий запущенных Pod-ов (для различных стратегий деплоя, для возможностей отката)
- Описание процесса деплоя (стратегия, параметры стратегий)

###### UI

ui-deployment.yml

```yaml
---
apiVersion: apps/v1beta2
kind: Deployment
metadata:  # Блок метаданных деплоя
  name: ui
  labels:
    app: reddit
    component: ui
spec:  # Блок спецификации деплоя
  replicas: 3
  # selector описывает, как ему отслеживать POD-ы.
  # В данном случае - контроллер будет считать POD-ы с метками:
  # app=reddit И component=ui.
  # Поэтому важно в описании POD-а задать нужные метки (labels) 
  # P.S. Для более гибкой выборки вводим 2 метки (app и component).
  selector:
    matchLabels:
      app: reddit
      component: ui
  template:  # Блок описания POD-ов
    metadata:
      name: ui-pod
      labels:
        app: reddit
        component: ui
    spec:
      containers:
        - image: vscoder/ui
          name: ui
```

Запустим в Minikube ui-компоненту.

```shell
cd kubernetes/reddit
kubectl apply -f ui-deployment.yml
```
```log
error: unable to recognize "ui-deployment.yml": no matches for kind "Deployment" in version "apps/v1beta2"
```

Ищем, и находим https://stackoverflow.com/questions/58481850/no-matches-for-kind-deployment-in-version-extensions-v1beta1
```shell
kubectl api-resources
```
```log
NAME                              SHORTNAMES   APIGROUP                       NAMESPACED   KIND
...
deployments                       deploy       apps                           true         Deployment
...
```
> It means that only apiVersion with apps is correct for Deployments (extensions is not supporting Deployment).

Правим [kubernetes/reddit/ui-deployment.yml](kubernetes/reddit/ui-deployment.yml)
```yaml
---
apiVersion: apps/v1
kind: Deployment
...
```

Повторим
```shell
kubectl apply -f ui-deployment.yml
```
```log
deployment.apps/ui created
```

Проверим
```shell
kubectl get pods
```
```log
NAME                 READY   STATUS    RESTARTS   AGE
ui-db4c86d69-4pbzg   1/1     Running   0          98s
ui-db4c86d69-94lm4   1/1     Running   0          98s
ui-db4c86d69-vrnnk   1/1     Running   0          98s
```

Убедитесь, что во 2,3,4 и 5 столбцах стоит число 3 (число реплик ui):
```shell
kubectl get deployment
```
```log
NAME   READY   UP-TO-DATE   AVAILABLE   AGE
ui     3/3     3            3           11m
```

P.S. `kubectl apply -f <filename>` может принимать не только отдельный файл, но и папку с ними. Например `kubectl apply -f ./kubernetes/reddit`

Пока что мы не можем использовать наше приложение полностью, потому что никак не настроена сеть для общения с ним.

Но kubectl умеет пробрасывать сетевые порты POD-ов на локальную машину

Найдем, используя selector, POD-ы приложения:
```shell
kubectl get pods --selector component=ui
kubectl port-forward ui-db4c86d69-4pbzg 8080:9
```
```log
.Forwarding from 127.0.0.1:8080 -> 9292
Forwarding from [::1]:8080 -> 9292
```

Зайдем в браузере на http://localhost:8080/

UI работает, подключим остальные компоненты

###### Comment

[kubernetes/reddit/comment-deployment.yml](kubernetes/reddit/comment-deployment.yml)
```yaml
---
apiVersion: apps/v1
kind: Deployment
metadata:
  name: comment
  labels:
    app: reddit
    component: comment
spec:
  replicas: 3
  selector:
    matchLabels:
      app: reddit
      component: comment
  template:
    metadata:
      name: comment
      labels:
        app: reddit
        component: comment
    spec:
      containers:
      - image: vscoder/comment
        name: comment
```

Компонент comment описывается похожим образом. Меняется только имя образа и метки и применяем (kubectl apply)
```shell
kubectl apply -f comment-deployment.yml
```
```log
deployment.apps/comment created
```
```shell
kubectl get deployment
```
```log
NAME      READY   UP-TO-DATE   AVAILABLE   AGE
comment   3/3     3            3           2m52s
ui        3/3     3            3           19m
```

Проверить можно так же, пробросив <local-port>: 9292 и зайдя на адрес http://localhost:<local-port>/healthcheck
```shell
kubectl get pods --selector component=comment
kubectl port-forward comment-7c997b69c9-976wq 8080:9292
```
```log
Forwarding from 127.0.0.1:8080 -> 9292
Forwarding from [::1]:8080 -> 9292
```

Успешно

###### Post

Deployment компонента post сконфигурируйте подобным же образом самостоятельно и проверьте его работу.

Не забудьте, что post слушает по-умолчанию на порту 5000

```yaml
---
apiVersion: apps/v1
kind: Deployment
metadata:
  name: post
  labels:
    app: reddit
    component: post
spec:
  replicas: 3
  selector:
    matchLabels:
      app: reddit
      component: post
  template:
    metadata:
      name: post
      labels:
        app: reddit
        component: post
    spec:
      containers:
        - image: vscoder/post
          name: post
```

```shell
kubectl apply -f post-deployment.yml
```
```log
deployment.apps/post created
```
```shell
kubectl get deployment
```
```log
NAME      READY   UP-TO-DATE   AVAILABLE   AGE
comment   3/3     3            3           12m
post      3/3     3            3           14s
ui        3/3     3            3           29m
```

```shell
kubectl get pods --selector component=post
kubectl port-forward post-57dd96857f-sm8d7 8080:5000
```
```log
Forwarding from 127.0.0.1:8080 -> 5000
Forwarding from [::1]:8080 -> 5000
```

Работает (хоть и not found)

###### MongoDB

Разместим базу данных Все похоже, но меняются только образы и значения label-ов
```yaml
---
apiVersion: apps/v1
kind: Deployment
metadata:
  name: mongo
  labels:
    app: reddit
    component: mongo
spec:
  replicas: 1
  selector:
    matchLabels:
      app: reddit
      component: mongo
  template:
    metadata:
      name: mongo
      labels:
        app: reddit
        component: mongo
    spec:
      containers:
        - image: mongo:3.2
          name: mongo
```

Также примонтируем стандартный Volume для хранения данных вне контейнера
```yaml
---
apiVersion: apps/v1
kind: Deployment
metadata:
  name: mongo
  labels:
    app: reddit
    component: mongo
spec:
  replicas: 1
  selector:
    matchLabels:
      app: reddit
      component: mongo
  template:
    metadata:
      name: mongo
      labels:
        app: reddit
        component: mongo
    spec:
      containers:
        - image: mongo:3.2
          name: mongo
          volumeMounts:
            - name: mongo-persistent-storage
              mountPath: /data/db
      volumes:
        - name: mongo-persistent-storage
          emptyDir: {}
```

```shell
kubectl apply -f mongo-deployment.yml
```
```log
deployment.apps/mongo created
```

```shell
kubectl get deployment               
```
```log
NAME      READY   UP-TO-DATE   AVAILABLE   AGE
comment   3/3     3            3           16m
mongo     1/1     1            1           26s
post      3/3     3            3           4m45s
ui        3/3     3            3           33m
```

#### Services

В текущем состоянии приложение не будет работать, так его компоненты ещё не знают как найти друг друга

Для связи компонент между собой и с внешним миром используется объект Service - абстракция, которая определяет набор POD-ов (Endpoints) и способ доступа к ним.

Для связи ui с post и comment нужно создать им по объекту Service.

Когда объект service будет создан:
1. В DNS появится запись для comment
2. При обращении на адрес post:9292 изнутри любого из POD-ов текущего namespace нас переправит на 9292-ный порт одного из POD-ов приложения post, выбранных по label-ам

[kubernetes/reddit/comment-service.yml](kubernetes/reddit/comment-service.yml)
```yaml
---
apiVersion: v1
kind: Service
metadata:
  name: comment
  labels:
    app: reddit
    component: comment
spec:
  ports:
    - port: 9292
      protocol: TCP
      targetPort: 9292
  selector:
    app: reddit
    component: comment
```

По label-ам должны были быть найдены соответствующие POD-ы. Посмотреть можно с помощью: 
```shell
kubectl describe service comment | grep Endpoints
```
Но не нашлись, потому что про проименение ямлика ничего не сказано))
```shell
kubectl apply -f ./comment-service.yml
```
```log
service/comment created
```

Но ничего не найдено
```shell
kubectl describe service comment | grep Endpoints
```
```log
Endpoints:
```

Проверяем поды
```shell
kubectl get pods
```
```log
NAME                       READY   STATUS    RESTARTS   AGE
comment-7c997b69c9-976wq   1/1     Running   2          3h22m
comment-7c997b69c9-rlndx   1/1     Running   2          3h22m
comment-7c997b69c9-x87lf   1/1     Running   1          3h22m
mongo-7fb8945897-d9h9j     1/1     Running   0          3h6m
post-57dd96857f-sm8d7      1/1     Running   0          3h10m
post-57dd96857f-sr98f      1/1     Running   0          3h10m
post-57dd96857f-twsdj      1/1     Running   0          3h10m
ui-db4c86d69-4pbzg         1/1     Running   0          3h39m
ui-db4c86d69-94lm4         1/1     Running   0          3h39m
ui-db4c86d69-vrnnk         1/1     Running   0          3h39m
```
Есть

Проверяем деплойменты
```shell
kubectl get deployments
```
```log
NAME      READY   UP-TO-DATE   AVAILABLE   AGE
comment   0/3     3            0           3h22m
mongo     0/1     1            0           3h6m
post      0/3     3            0           3h10m
ui        0/3     3            0           3h39m
```

Проверяем всё ли живо
```shell
kubectl get componentstatuses
```
```log
NAME                 STATUS      MESSAGE                                                                                     ERROR
controller-manager   Unhealthy   Get http://127.0.0.1:10252/healthz: dial tcp 127.0.0.1:10252: connect: connection refused   
scheduler            Healthy     ok                                                                                          
etcd-0               Healthy     {"health":"true"}
```
Видимо, здесь собака порылась. Миникуб такой миникуб...

Перезапускаем
```shell
minikube stop
minikube start
kubectl get componentstatuses
```
```log
NAME                 STATUS    MESSAGE             ERROR
scheduler            Healthy   ok                  
controller-manager   Healthy   ok                  
etcd-0               Healthy   {"health":"true"}
```

Повторяем проверку из ДЗ
```shell
kubectl describe service comment | grep Endpoints
```
```log
Endpoints:         172.17.0.10:9292,172.17.0.5:9292,172.17.0.8:9292
```

А изнутри любого POD-а должно разрешаться:
```shell
kubectl exec -ti post-57dd96857f-sr98f nslookup comment
```
```log
nslookup: can't resolve '(null)': Name does not resolve

Name:      comment
Address 1: 10.96.204.230 comment.default.svc.cluster.local
```

##### Задание

По аналогии создайте объект Service в файле postservice.yml для компонента post (не забудьте про label-ы и правильные tcp-порты).

[kubernetes/reddit/post-service.yml](kubernetes/reddit/post-service.yml)
```yaml
---
apiVersion: v1
kind: Service
metadata:
  name: post
  labels:
    app: reddit
    component: post
spec:
  ports:
    - port: 5000
      protocol: TCP
      targetPort: 5000
  selector:
    app: reddit
    component: post
```

И применяем
```shell
kubectl apply -f ./post-service.yml   
```
```log
service/post created
```

И проверяем
```shell
kubectl describe service post | grep Endpoints
```
```log
Endpoints:         172.17.0.11:5000,172.17.0.2:5000,172.17.0.9:5000
```

##### Services

Post и Comment также используют mongodb, следовательно ей тоже нужен объект Service.

[kubernetes/reddit/mongodb-service.yml](kubernetes/reddit/mongodb-service.yml)
```yaml
---
apiVersion: v1
kind: Service
metadata:
  name: mongodb
  labels:
    app: reddit
    component: mongo
spec:
  ports:
    - port: 27017
      protocol: TCP
      targetPort: 27017
  selector:
    app: reddit
    component: mongo
```

По-сути все очень похоже, деплоим: 
```shell
kubectl apply -f mongodb-service.yml 
```
```log
service/mongodb created
```

что-то всё опять прилегло
```shell
kubectl get componentstatuses
```
```log
NAME                 STATUS      MESSAGE                                                                                     ERROR
scheduler            Unhealthy   Get http://127.0.0.1:10251/healthz: dial tcp 127.0.0.1:10251: connect: connection refused   
controller-manager   Unhealthy   Get http://127.0.0.1:10252/healthz: dial tcp 127.0.0.1:10252: connect: connection refused   
etcd-0               Healthy     {"health":"true"}
```

ещё разок перезапустимся
```shell
minikube stop && minikube start
```

Проверяем
```shell
kubectl describe service mongodb | grep Endpoints
```
```log
Endpoints:         172.17.0.3:27017
```

Проверяем: пробрасываем порт на ui pod
```shell
kubectl get pods --selector component=ui  
```
```log
NAME                 READY   STATUS    RESTARTS   AGE
ui-db4c86d69-4pbzg   1/1     Running   2          4h37m
ui-db4c86d69-94lm4   1/1     Running   2          4h37m
ui-db4c86d69-vrnnk   1/1     Running   2          4h37m
```

```shell
kubectl port-forward ui-db4c86d69-4pbzg 9292:9292
```
```log
Forwarding from 127.0.0.1:9292 -> 9292
Forwarding from [::1]:9292 -> 9292
```

При открытии http://localhost:9292/ долго думает, и ругается 
> Can't show blog posts, some problems with the post service. Refresh?

В процессе поиска причины, выяснил что имя хоста с БД для `post` задаётся в [src/post-py/Dockerfile](src/post-py/Dockerfile) переменной окружения `POST_DATABASE_HOST` и имеет значение по-умолчанию `post_db`.

Почитал дальше ДЗ - а там говорится то же самое))) Ну чтож, бывает!

Поехали по ДЗ.

Посмотрим в логи, например, comment: 
```shell
kubectl get pods --selector component=comment
```
```log
NAME                       READY   STATUS    RESTARTS   AGE
comment-7c997b69c9-976wq   1/1     Running   8          26h
comment-7c997b69c9-rlndx   1/1     Running   10         26h
comment-7c997b69c9-x87lf   1/1     Running   9          26h
```
```shell
kubectl logs -f comment-7c997b69c9-976wq
```
```log
Puma starting in single mode...
* Version 3.12.0 (ruby 2.2.10-p489), codename: Llamas in Pajamas
* Min threads: 0, max threads: 16
* Environment: development
* Listening on tcp://0.0.0.0:9292
Use Ctrl-C to stop
I, [2019-12-24T18:02:35.924035 #1]  INFO -- : service=comment | event=request | path=/healthcheck
request_id=null | remote_addr=172.17.0.9 | method= GET | response_status=200
I, [2019-12-24T18:02:45.389633 #1]  INFO -- : service=comment | event=request | path=/healthcheck
request_id=null | remote_addr=172.17.0.9 | method= GET | response_status=200
I, [2019-12-24T18:02:47.939377 #1]  INFO -- : service=comment | event=request | path=/healthcheck
request_id=null | remote_addr=172.17.0.6 | method= GET | response_status=200
I, [2019-12-24T18:02:50.178634 #1]  INFO -- : service=comment | event=request | path=/healthcheck
request_id=null | remote_addr=172.17.0.9 | method= GET | response_status=200
I, [2019-12-24T18:02:55.322827 #1]  INFO -- : service=comment | event=request | path=/healthcheck
request_id=null | remote_addr=172.17.0.9 | method= GET | response_status=200
I, [2019-12-24T18:02:55.558306 #1]  INFO -- : service=comment | event=request | path=/healthcheck
...
I, [2019-12-24T18:25:22.939060 #1]  INFO -- : service=comment | event=request | path=/healthcheck
request_id=null | remote_addr=172.17.0.6 | method= GET | response_status=200
I, [2019-12-24T18:25:29.711918 #1]  INFO -- : service=comment | event=request | path=/healthcheck
request_id=null | remote_addr=172.17.0.11 | method= GET | response_status=200
I, [2019-12-24T18:25:32.967963 #1]  INFO -- : service=comment | event=request | path=/healthcheck
request_id=null | remote_addr=172.17.0.6 | method= GET | response_status=200
I, [2019-12-24T18:25:43.715830 #1]  INFO -- : service=comment | event=request | path=/healthcheck
request_id=null | remote_addr=172.17.0.6 | method= GET | response_status=200
I, [2019-12-24T18:25:45.831078 #1]  INFO -- : service=comment | event=request | path=/healthcheck
request_id=e36bcff5-d544-4ba7-8824-ac16df7524cc | remote_addr=172.17.0.9 | method= GET | response_status=200
```
Что-то нет там ничего про БД, как обещано в ДЗ...

Остаётся только поверить наслово, вот как должно быть:
```log
$ kubectl logs post-56bbbf6795-7btnm
D, [2017-11-23T11:58:14.036381 #1] DEBUG -- : MONGODB | Topology type 'unknown' initializing.
D, [2017-11-23T11:58:14.036584 #1] DEBUG -- : MONGODB | Server comment_db:27017 initializing.
D, [2017-11-23T11:58:14.041398 #1] DEBUG -- : MONGODB | getaddrinfo: Name does not resolve
D, [2017-11-23T11:58:14.090421 #1] DEBUG -- : MONGODB | getaddrinfo: Name does not resolve 
```

А, может нужен дебаг? А нет дебага(( log level `WARN` захардкожен в [src/comment/comment_app.rb](src/comment/comment_app.rb) строка 19.

Похоже, проблема была в том, что у меня в скриптах `src/<service>/docker_build.sh` был захардкожен тэг `logging` по наследству из предыдущего ДЗ. Чиню пересобираю.

Так же потребовалось поменять код в [src/comment/comment_app.rb](src/comment/comment_app.rb), как это было указано выше. Изменил
```ruby
configure do
  Mongo::Logger.logger.level = Logger::WARN
  db = Mongo::Client.new(DB_URL, database: COMMENT_DATABASE,
                                 heartbeat_frequency: 2)
  set :mongo_db, db[:comments]
  set :bind, '0.0.0.0'
  set :server, :puma
  set :logging, false
  set :mylogger, Logger.new(STDOUT)
end
```
на
```ruby
configure do
  Mongo::Logger.logger.level = Logger::DEBUG
  db = Mongo::Client.new(DB_URL, database: COMMENT_DATABASE,
                                 heartbeat_frequency: 2)
  set :mongo_db, db[:comments]
  set :bind, '0.0.0.0'
  set :server, :puma
  set :logging, false
  set :mylogger, Logger.new(STDOUT)
end
```

После пересборки, перезаливки на хаб и передеплое, всё **заработало как указано в ДЗ**.

Приложение ищет совсем другой адрес: `comment_db`, а не `mongodb` Аналогично и сервис `comment` ищет `post_db`.

Эти адреса заданы в их Dockerfile-ах в виде переменных окружения:
`post/Dockerfile`
```dockerfile
…
ENV POST_DATABASE_HOST=post_db
```
`comment/Dockerfile`
```dockerfile
…
ENV COMMENT_DATABASE_HOST=comment_db
```

В Docker Swarm проблема доступа к одному ресурсу под разными именами решалась с помощью сетевых алиасов.

В Kubernetes такого функционала нет. Мы эту проблему можем решить с помощью тех же Service-ов.

Сделаем Service для БД comment.
[kubernetes/reddit/comment-mongodb-service.yml](kubernetes/reddit/comment-mongodb-service.yml)
```yaml
---
apiVersion: v1
kind: Service
metadata:
  name: comment-db
  labels:
    app: reddit
    component: mongo
    comment-db: "true"
spec:
  ports:
    - port: 27017
      protocol: TCP
      targetPort: 27017
  selector:
    app: reddit
    component: mongo
    comment-db: "true"
```
P.S. булевые значения обязательно указывать в кавычках

Так же придется обновить файл deployment для mongodb, чтобы новый Service смог найти нужный POD (не забываем исправить `apiVersion:` на `apps/v1`)
[kubernetes/reddit/mongo-deployment.yml](kubernetes/reddit/mongo-deployment.yml)
```yaml
---
apiVersion: apps/v1
kind: Deployment
metadata:
  name: mongo
  labels:
    app: reddit
    component: mongo
    comment-db: "true"  # Лейбл в deployment чтобы было понятно, что развернуто
spec:
  replicas: 1
  selector:
    matchLabels:
      app: reddit
      component: mongo
  template:
    metadata:
      name: mongo
      labels:
        app: reddit
        component: mongo
        comment-db: "true"  # label в pod, который нужно найти
    spec:
      containers:
        - image: mongo:3.2
          name: mongo
          volumeMounts:
            - name: mongo-persistent-storage
              mountPath: /data/db
      volumes:
        - name: mongo-persistent-storage
          emptyDir: {}
```

Зададим pod-ам comment переменную окружения для обращения к базе (см слайд 34)
[kubernetes/reddit/comment-deployment.yml](kubernetes/reddit/comment-deployment.yml)
```yaml
---
apiVersion: apps/v1
kind: Deployment
metadata:
  name: comment
  labels:
    app: reddit
    component: comment
spec:
  replicas: 3
  selector:
    matchLabels:
      app: reddit
      component: comment
  template:
    metadata:
      name: comment
      labels:
        app: reddit
        component: comment
    spec:
      containers:
        - image: vscoder/comment:latest
          name: comment
          env:
            - name: COMMENT_DATABASE_HOST
              value: comment-db
```

Мы сделали базу доступной для comment. 

Проделайте аналогичные же действия для postсервиса. Название сервиса должно `post-db`.

Итак, создаём [kubernetes/reddit/post-mongodb-service.yml](kubernetes/reddit/post-mongodb-service.yml)
```yaml
---
apiVersion: v1
kind: Service
metadata:
  name: post-db
  labels:
    app: reddit
    component: mongo
    post-db: "true"
spec:
  ports:
    - port: 27017
      protocol: TCP
      targetPort: 27017
  selector:
    app: reddit
    component: mongo
    post-db: "true"
```
[kubernetes/reddit/mongo-deployment.yml](kubernetes/reddit/mongo-deployment.yml)
```yaml
---
apiVersion: apps/v1
kind: Deployment
metadata:
  name: mongo
  labels:
    app: reddit
    component: mongo
    comment-db: "true"
    post-db: "true"  # Лейбл в deployment чтобы было понятно, что развернуто
spec:
  replicas: 1
  selector:
    matchLabels:
      app: reddit
      component: mongo
  template:
    metadata:
      name: mongo
      labels:
        app: reddit
        component: mongo
        comment-db: "true"
        post-db: "true"  # label в pod, который нужно найти
    spec:
      containers:
        - image: mongo:3.2
          name: mongo
          volumeMounts:
            - name: mongo-persistent-storage
              mountPath: /data/db
      volumes:
        - name: mongo-persistent-storage
          emptyDir: {}
```

[kubernetes/reddit/post-deployment.yml](kubernetes/reddit/post-deployment.yml)
```yaml
---
apiVersion: apps/v1
kind: Deployment
metadata:
  name: post
  labels:
    app: reddit
    component: post
spec:
  replicas: 3
  selector:
    matchLabels:
      app: reddit
      component: post
  template:
    metadata:
      name: post
      labels:
        app: reddit
        component: post
    spec:
      containers:
        - image: vscoder/post
          name: post
          env:
            - name: POST_DATABASE_HOST
              value: post-db
```

```shell
kubectl apply -f ./kubernetes/reddit
```
```log
deployment.apps/comment unchanged
service/comment-db created
service/comment unchanged
deployment.apps/mongo configured
service/mongodb unchanged
deployment.apps/post configured
service/post-db created
service/post unchanged
deployment.apps/ui unchanged
```

После этого снова сделайте port-forwarding на UI и убедитесь, что приложение запустилось без ошибок и посты создаются. **Всё заработало**.

Проверим логи post снова
```shell
kubectl get pods --selector component=comment
kubectl logs -f comment-68cdb988fd-9c9dd
```
```log
request_id=null | remote_addr=172.17.0.8 | method= GET | response_status=200
D, [2019-12-25T05:26:40.628648 #1] DEBUG -- : MONGODB | Topology type 'unknown' initializing.
D, [2019-12-25T05:26:40.629523 #1] DEBUG -- : MONGODB | Server comment-db:27017 initializing.
D, [2019-12-25T05:26:40.722276 #1] DEBUG -- : MONGODB | Topology type 'unknown' changed to type 'single'.
D, [2019-12-25T05:26:40.731802 #1] DEBUG -- : MONGODB | Server description for comment-db:27017 changed from 'unknown' to 'standalone'.
D, [2019-12-25T05:26:40.732365 #1] DEBUG -- : MONGODB | There was a change in the members of the 'single' topology.
D, [2019-12-25T05:26:40.737144 #1] DEBUG -- : MONGODB | comment-db:27017 | admin.listDatabases | STARTED | {"listDatabases"=>1}
D, [2019-12-25T05:26:40.745121 #1] DEBUG -- : MONGODB | comment-db:27017 | admin.listDatabases | SUCCEEDED | 0.00496289s
```

Удалите объект mongodb-service 
```shell
cd kubernetes/reddit
kubectl delete -f mongodb-service.yml
```
```log
service "mongodb" deleted
```


Нам нужно как-то обеспечить доступ к ui-сервису снаружи. Для этого нам понадобится Service для UI-компоненты

[kubernetes/reddit/ui-service.yml](kubernetes/reddit/ui-service.yml)
```yaml
---
apiVersion: v1
kind: Service
metadata:
  name: ui
  labels:
    app: reddit
    component: ui
spec:
  type: NodePort  # Пробрасываем порт на ноду
  ports:  
    - port: 9292
      protocol: TCP
      targetPort: 9292
  selector:
    app: reddit
    component: ui
```

По-умолчанию все сервисы имеют тип ClusterIP - это значит, что сервис распологается на внутреннем диапазоне IP-адресов кластера. Снаружи до него нет доступа.

Тип **NodePort** - на каждой ноде кластера открывает порт из диапазона **30000-32767** и переправляет трафик с этого порта на тот, который указан в targetPort Pod (похоже на стандартный expose в docker)

Теперь до сервиса можно дойти по <Node-IP>:<NodePort>.

Также можно указать самим NodePort (но все равно из диапазона):
```yaml
---
apiVersion: v1
kind: Service
metadata:
  name: ui
  labels:
    app: reddit
    component: ui
spec:
  type: NodePort
  ports:
    - nodePort: 32092 # Указываем номер порта на ноде
      port: 9292
      protocol: TCP
      targetPort: 9292
  selector:
    app: reddit
    component: ui

```

Т.е. в описании service 

**NodePort** - для доступа снаружи кластера
**port** - для доступа к сервису изнутри кластера

Применяем:
```shell
kubectl apply -f ui-service.yml
```
```log
service/ui created
```


#### Minikube

Minikube может выдавать web-странцы с сервисами которые были помечены типом NodePort Попробуйте: 
```shell
minikube service ui
```
```log
| ----------- | ------ | ------------- | ----------------------------- |
| NAMESPACE   | NAME   | TARGET PORT   | URL                           |
| ----------- | ------ | ------------- | ----------------------------- |
| default     | ui     |               | http://192.168.99.103:32092   |
| ----------- | ------ | ------------- | ----------------------------- |
🎉  Opening service default/ui in default browser...
```

Minikube может перенаправлять на web-странцы с сервисами которые были помечены типом NodePort Посмотрите на список сервисов:
```shell
minikube service list   
```
```log
| ------------- | ------------ | ----------------------------- | ----- |
| NAMESPACE     | NAME         | TARGET PORT                   | URL   |
| ------------- | ------------ | ----------------------------- | ----- |
| default       | comment      | No node port                  |
| default       | comment-db   | No node port                  |
| default       | kubernetes   | No node port                  |
| default       | mongodb      | No node port                  |
| default       | post         | No node port                  |
| default       | post-db      | No node port                  |
| default       | ui           | http://192.168.99.100:32092   |
| kube-system   | kube-dns     | No node port                  |
| ------------- | ------------ | ----------------------------- | ----- |
```

Minikube также имеет в комплекте несколько стандартных аддонов (расширений) для Kubernetes (kube-dns, dashboard, monitoring,…). Каждое расширение - это такие же PODы и сервисы, какие создавались нами, только они еще общаются с API самого Kubernetes

Получить список расширений:
```shell
minikube addons list
```
```log
- addon-manager: enabled
- dashboard: disabled
- default-storageclass: enabled
- efk: disabled
- freshpod: disabled
- gvisor: disabled
- helm-tiller: disabled
- ingress: disabled
- ingress-dns: disabled
- logviewer: disabled
- metrics-server: disabled
- nvidia-driver-installer: disabled
- nvidia-gpu-device-plugin: disabled
- registry: disabled
- registry-creds: disabled
- storage-provisioner: enabled
- storage-provisioner-gluster: disabled
```

Интересный аддон - dashboard. Это UI для работы с kubernetes. По умолчанию в новых версиях он включен. Как и многие kubernetes add-on'ы, dashboard запускается в виде pod'а.

Если мы посмотрим на запущенные pod'ы с помощью команды `kubectl get pods`, то обнаружим только наше приложение.

Потому что поды и сервисы для **dashboard**-а были запущены в **namespace** (пространстве имен) `kube-system`. Мы же запросили пространство имен `default`.


#### Namespaces

**Namespace** - это, по сути, виртуальный кластер Kubernetes внутри самого Kubernetes. Внутри каждого такого кластера находятся свои объекты (POD-ы, Service-ы, Deployment-ы и т.д.), кроме объектов, общих на все namespace-ы (nodes, ClusterRoles, PersistentVolumes)

В разных namespace-ах могут находится объекты с одинаковым именем, но в рамках одного namespace имена объектов должны быть уникальны.

При старте Kubernetes кластер уже имеет 3 namespace:

- **default** - для объектов для которых не определен другой Namespace (в нем мы работали все это время)
- **kube-system** - для объектов созданных Kubernetes’ом и для управления им
- **kube-public** - для объектов к которым нужен доступ из любой точки кластера

Для того, чтобы выбрать конкретное пространство имен, нужно указать флаг `-n <namespace>` или `--namespace <namespace>` при запуске `kubectl`

Прежде чем искать dashboard, его нужно включить
```shell
minikube dashboard
```
```log
🔌  Enabling dashboard ...
🤔  Verifying dashboard health ...
🚀  Launching proxy ...
🤔  Verifying proxy health ...
🎉  Opening http://127.0.0.1:37429/api/v1/namespaces/kubernetes-dashboard/services/http:kubernetes-dashboard:/proxy/ in your default browser...
^C
```
```shell
minikube addons list
```
```log
- addon-manager: enabled
- dashboard: enabled  # теперь он включен
- default-storageclass: enabled
- efk: disabled
- freshpod: disabled
- gvisor: disabled
- helm-tiller: disabled
- ingress: disabled
- ingress-dns: disabled
- logviewer: disabled
- metrics-server: disabled
- nvidia-driver-installer: disabled
- nvidia-gpu-device-plugin: disabled
- registry: disabled
- registry-creds: disabled
- storage-provisioner: enabled
- storage-provisioner-gluster: disabled
```

Найдем же объекты нашего dashboard (в ДЗ команда была неверная `kubectl get all -n kube-system --selector k8s-app=kubernetes-dashboard`)

```shell
kubectl get all -n kubernetes-dashboard --selector k8s-app=kubernetes-dashboard+
```
```
NAME                                       READY   STATUS    RESTARTS   AGE
pod/kubernetes-dashboard-79d9cd965-pmntx   1/1     Running   0          5m53s

NAME                           TYPE        CLUSTER-IP      EXTERNAL-IP   PORT(S)   AGE
service/kubernetes-dashboard   ClusterIP   10.96.254.145   <none>        80/TCP    5m57s

NAME                                   READY   UP-TO-DATE   AVAILABLE   AGE
deployment.apps/kubernetes-dashboard   1/1     1            1           5m53s

NAME                                             DESIRED   CURRENT   READY   AGE
replicaset.apps/kubernetes-dashboard-79d9cd965   1         1         1       5m53s
```

И сами посмотрим всё в неймспейса `kubernetes-dashboard`
```shell
kubectl get all -n kubernetes-dashboard
```
```log
NAME                                             READY   STATUS    RESTARTS   AGE
pod/dashboard-metrics-scraper-7b64584c5c-pl8sg   1/1     Running   0          4m13s
pod/kubernetes-dashboard-79d9cd965-pmntx         1/1     Running   0          4m13s

NAME                                TYPE        CLUSTER-IP      EXTERNAL-IP   PORT(S)    AGE
service/dashboard-metrics-scraper   ClusterIP   10.96.199.122   <none>        8000/TCP   4m17s
service/kubernetes-dashboard        ClusterIP   10.96.254.145   <none>        80/TCP     4m17s

NAME                                        READY   UP-TO-DATE   AVAILABLE   AGE
deployment.apps/dashboard-metrics-scraper   1/1     1            1           4m13s
deployment.apps/kubernetes-dashboard        1/1     1            1           4m13s

NAME                                                   DESIRED   CURRENT   READY   AGE
replicaset.apps/dashboard-metrics-scraper-7b64584c5c   1         1         1       4m13s
replicaset.apps/kubernetes-dashboard-79d9cd965         1         1         1       4m13s
```


#### Dashboard

Зайдем в Dashboard:
```shell
minikube dashboard
```
```log
🤔  Verifying dashboard health ...
🚀  Launching proxy ...
🤔  Verifying proxy health ...
🎉  Opening http://127.0.0.1:36773/api/v1/namespaces/kubernetes-dashboard/services/http:kubernetes-dashboard:/proxy/ in your default browser...
```

В самом Dashboard можно:

- отслеживать состояние кластера и рабочих нагрузок в нем
- создавать новые объекты (загружать YAML-файлы)
- Удалять и изменять объекты (кол-во реплик, yaml-файлы)
- отслеживать логи в Pod-ах
- при включении Heapster-аддона смотреть нагрузку на Podах
- и т.д.

Ознакомьтесь, покликайте - в minikube не страшно ничего сломать (есличто заново поднять).

Используем же namespace в наших целях. Отделим среду для разработки приложения от всего остального кластера. Для этого создадим свой Namespace dev

```yaml
---
apiVersion: v1
kind: Namespace
metadata:
  name: dev
```

```shell
kubectl apply -f dev-namespace.yml
```
```log
namespace/dev created
```

Запустим приложение в `dev` неймспейсе:
```shell
kubectl apply -n dev -f .
```
```log
deployment.apps/comment created
service/comment-db created
service/comment created
namespace/dev unchanged
deployment.apps/mongo created
service/mongodb created
deployment.apps/post created
service/post-db created
service/post created
deployment.apps/ui created
service/ui created
```

Если возник конфликт портов у **ui-service**, то убираем из описания значение `NodePort`

Смотрим результат:
```shell
minikube service ui -n dev
```
Да, всё открывается.

Давайте добавим инфу об окружении внутрь контейнера UI

[kubernetes/reddit/ui-deployment.yml](kubernetes/reddit/ui-deployment.yml)
```yaml
---
apiVersion: apps/v1
kind: Deployment
metadata:
  name: ui
  labels:
    app: reddit
    component: ui
spec:
  replicas: 3
  selector:
    matchLabels:
      app: reddit
      component: ui
  template:
    metadata:
      name: ui-pod
      labels:
        app: reddit
        component: ui
    spec:
      containers:
        - image: vscoder/ui
          name: ui
          env:
            - name: ENV
              valueFrom:
                fieldRef:
                  fieldPath: metadata.namespace
```

```shell
kubectl apply -f ui-deployment.yml -n dev
```
```log
deployment.apps/ui configured
```
На дашборде видно, что в неймспейсе `dev` поды деплоймента `ui` были пересозданы

Проверяем - да
> Microservices Reddit in dev ui-687c9cfd9-6pjk9 container


### Разворачиваем Kubernetes

Мы подготовили наше приложение в локальном окружении. Теперь самое время запустить его на реальном кластере Kubernetes.

В качестве основной платформы будем использовать Google Kubernetes Engine.

Зайдите в свою gcloud console, перейдите в “kubernetes clusters”

Нажмите Create Cluster”

Укажите следующие настройки кластера:
- Тип машины - небольшая машина (**g1-small** 1,7 ГБ) (для экономии
ресурсов)
- Размер - 2 (не нашёл такого, возможно - **Number of nodes**?)
- Базовая аутентификация - отключена (не нашёл такого)
- Устаревшие права доступа - отключено (не нашёл такого)
- Панель управления Kubernetes - отключено (не нашёл такого)
- Размер загрузочного диска - 20 ГБ (для экономии) (сделал)

Жмем “Создать” и ждем, пока поднимется кластер


### GKE

Компоненты управления кластером запускаются в container engine и
управляются Google:
- kube-apiserver
- kube-scheduler
- kube-controller-manager
- etcd

Рабочая нагрузка (собственные POD-ы), аддоны, мониторинг, логирование и т.д. запускаются на рабочих нодах

Рабочие ноды - стандартные ноды Google compute engine. Их можно увидеть в списке запущенных узлов.
На них всегда можно зайти по ssh 
Их можно остановить и запустить.

Подключимся к GKE для запуска нашего приложения.

_Clusters_ -> **Connect**

Нажмите и скопируйте команду вида:
```shell
gcloud container clusters get-credentials your-first-cluster-1 --zone us-central1-a --project docker-XXXXXX
```

Введите в консоли скопированную команду. 

В результате в файл ~/.kube/config будут добавлены user, cluster и context для подключения к кластеру в GKE. Также текущий контекст будет выставлен для подключения к этому кластеру. Убедиться можно, введя
```shell
kubectl config current-context
```
```log
gke_docker-XXXXXX_us-central1-a_your-first-cluster-1
```

Запустим наше приложение в GKE

Создадим dev namespace
```shell
kubectl apply -f ./kubernetes/reddit/dev-namespace.yml
```
```log
namespace/dev created
```

Задеплоим все компоненты приложения в namespace dev:
```shell
kubectl apply -f ./kubernetes/reddit/ -n dev
```

Откроем Reddit для внешнего мира:

Зайдите в “правила брандмауэра” _VPC Network_ -> _Firewall rules_

Нажмите “создать правило брандмауэра” **Create firewall rule**

Откроем диапазон портов kubernetes для публикации сервисов

Настройте:
- Название - произвольно, но понятно
- Целевые экземпляры - все экземпляры в сети
- Диапазоны IP-адресов источников  - **0.0.0.0/0**

Протоколы и порты - Указанные протоколы и порты **tcp:30000-32767**

**Create**

Найдите внешний IP-адрес любой ноды из кластера либо в веб-консоли, либо External IP в выводе:
```shell
kubectl get nodes -o wide
```
```log
NAME                                            STATUS   ROLES    AGE   VERSION          INTERNAL-IP   EXTERNAL-IP    OS-IMAGE                             KERNEL-VERSION   CONTAINER-RUNTIME
gke-your-first-cluster-1-pool-1-c8223392-0btx   Ready    <none>   27m   v1.15.4-gke.22   10.128.0.6    35.225.38.22   Container-Optimized OS from Google   4.19.76+         docker://19.3.1
gke-your-first-cluster-1-pool-1-c8223392-bz3m   Ready    <none>   27m   v1.15.4-gke.22   10.128.0.7    34.69.56.68    Container-Optimized OS from Google   4.19.76+         docker://19.3.1
```

Найдите порт публикации сервиса ui
```shell
kubectl describe service ui -n dev | grep NodePort
```
```log
Type:                     NodePort
NodePort:                 <unset>  32164/TCP
```

Идем по адресу http://35.225.38.22:32164

#### ОШИБКА: Не отображаются комменты

В ui нет возможности оставлять комментарии. Не отображается приложение comment.

Для начала, запустим приложение в minikube (насколько помню, ранее там всё работало)

```shell
minikube delete
minikube config set memory 4096
minikube start
```
```log
😄  minikube v1.6.2 on Ubuntu 18.04
✨  Automatically selected the 'virtualbox' driver (alternates: [none])
🔥  Creating virtualbox VM (CPUs=2, Memory=4096MB, Disk=20000MB) ...
🐳  Preparing Kubernetes v1.17.0 on Docker '19.03.5' ...
🚜  Pulling images ...
🚀  Launching Kubernetes ... 
⌛  Waiting for cluster to come online ...
🏄  Done! kubectl is now configured to use "minikube"
```

Проверяем контекст
```shell
kubectl config get-contexts
```
```log
CURRENT   NAME                                                   CLUSTER                                                AUTHINFO                                               NAMESPACE
          gke_docker-257914_us-central1-a_your-first-cluster-1   gke_docker-257914_us-central1-a_your-first-cluster-1   gke_docker-257914_us-central1-a_your-first-cluster-1   
*         minikube                                               minikube                                               minikube
```


```shell
kubectl apply -f ./kubernetes/reddit/dev-namespace.yml 
```
```log
namespace/dev created
```
```shell
kubectl apply -f ./kubernetes/reddit/ -n dev
```
```log
deployment.apps/comment created
service/comment-db created
service/comment created
namespace/dev unchanged
deployment.apps/mongo created
service/mongodb created
deployment.apps/post created
service/post-db created
service/post created
deployment.apps/ui created
service/ui created
```
Проверка показала, что в миникубе проблема так же присутствует.

Возвращаемя к работе с GKE
```shell
kubectl config use-context gke_docker-<project-id>_us-central1-a_your-first-cluster-1
```
```log
Switched to context "gke_docker-257914_us-central1-a_your-first-cluster-1".
```

Через веб-интерфейс приложения создан пост `5e08b33850fa42000e78bd01`

Подключаемся к поду `ui-595f89d499-44bjf`
```shell
kubectl -n dev exec -it ui-595f89d499-44bjf -- /bin/sh
# Ставим curl
apk update && apk add curl
```
Проверяем
```shell
curl http://comment:9292/5e08b33850fa42000e78bd01/comments
```
```log
[]
```
Сервис comment доступен, результат возвращает (коментариев нет, поэтому пустой список). **Вывод:** проблему нужно искать в компоненте _ui_.

Проверяем здоровье http://23.251.155.88:30927/healthcheck
```json
{"status":1,"dependent_services":{"comment":1,"post":1},"version":"0.0.1"}
```
Все здоровы О_о

Случайно выяснилось, что верстальщик нехороший человек. При определённом размере окна браузера (как раз у меня был такой) не видно div с интерфейсом добавления комментария. При изменении масштаба или размера окна, элементы управления для добавления комментария появлялись.
https://otus-devops.slack.com/archives/CMSD007E0/p1577619070042800

### Задание

В PR должны присутствовать конфигурация для развертывания Reddit приложения в kubernetes (deployments, services, namespace) в отдельной директории.

К PR приложить скриншот веб-интерфейса приложения в GKE (по-желанию) или ссылку на него.


### GKE Dashboard

В GKE также можно запустить Dashboard для кластера.

Нажмите на имя кластера -> __Edit__

В этом меню можно поменять конфигурацию кластера. Нам нужно включить дополнение “Панель управления Kubernetes” - говорили они... Врут, ничего так сделать нельзя, нету этой кнопочки.

Будем читать офф. доки https://kubernetes.io/docs/tasks/access-application-cluster/web-ui-dashboard/

Из офф доков, нужно применить:
```shell
kubectl apply -f https://raw.githubusercontent.com/kubernetes/dashboard/v2.0.0-beta8/aio/deploy/recommended.yaml
```
```log
namespace/kubernetes-dashboard unchanged
serviceaccount/kubernetes-dashboard created
service/kubernetes-dashboard created
secret/kubernetes-dashboard-certs created
secret/kubernetes-dashboard-csrf created
secret/kubernetes-dashboard-key-holder created
configmap/kubernetes-dashboard-settings created
role.rbac.authorization.k8s.io/kubernetes-dashboard created
clusterrole.rbac.authorization.k8s.io/kubernetes-dashboard unchanged
rolebinding.rbac.authorization.k8s.io/kubernetes-dashboard created
clusterrolebinding.rbac.authorization.k8s.io/kubernetes-dashboard unchanged
deployment.apps/kubernetes-dashboard created
service/dashboard-metrics-scraper created
deployment.apps/dashboard-metrics-scraper created
```

Смотрим
```shell
kubectl proxy
```
```log
Starting to serve on 127.0.0.1:8001
```

Kubectl will make Dashboard available at http://localhost:8001/api/v1/namespaces/kubernetes-dashboard/services/https:kubernetes-dashboard:/proxy/

Требует авторизацию. Не даёт пропустить, отсутствует кнопка **Skip**

Гугление: https://stackoverflow.com/questions/50747783/how-to-access-gke-kubectl-proxy-dashboard

> Provided you are authenticated with gcloud auth login and the current project and k8s cluster is configured to the one you need, authenticate kubectl to the cluster (this will write ~/.kube/config):
>
> ```shell
> gcloud container clusters get-credentials <cluster name> --zone <zone> --project <project>
> ```
> 
> retrieve the auth token that the kubectl itself uses to authenticate as you
> 
> ```shell
> gcloud config config-helper --format=json | jq -r '.credential.access_token'
> ```
> 
> run
> ```shell
> kubectl proxy
> ```
> 
> Then open a local machine web browser on
> 
> http://localhost:8001/api/v1/namespaces/kube-system/services/https:kubernetes-dashboard:/proxy (This will only work if you checked the checkbox Deploy Dashboard in GCP console)
> 
> and use the token from the second command to log in with your Google Account's permissions.

Полученный токен вводим, и получаем дашборд.

Дашборд всё отображает, прав ему хватает, в отличие от сказанного в ДЗ. Видимо, потому что мы дали ему токен сервисаккаунта. Но, вероятно, это неправильно. Поэтому пересоздадим дашборд и попробуем выполнить действия из ДЗ.

У dashboard не хватает прав, чтобы посмотреть на кластер. Его не пускает RBAC (ролевая система контроля доступа). Нужно нашему Service Account назначить роль с достаточными правами на просмотр информации о кластере.

В кластере уже есть объект ClusterRole с названием cluster-admin. Тот, кому назначена эта роль имеет полный доступ ко всем объектам кластера.
```shell
kubectl create clusterrolebinding kubernetes-dashboard  --clusterrole=cluster-admin --serviceaccount=kube-system:kubernetes-dashboard
```
```log
Error from server (AlreadyExists): clusterrolebindings.rbac.authorization.k8s.io "kubernetes-dashboard" already exists
```
Ну значит уже есть (всё что нужно, было создано при деплое дашборда)

Для clusterrole, serviceaccount `--serviceaccount=kube-system:kubernetes-dashboard` - это комбинация serviceaccount и namespace, в котором он создан

### Задание со \*

1. Разверните Kubenetes-кластер в GKE с помощью [Terraform модуля](https://www.terraform.io/docs/providers/google/r/container_cluster.html) 
2. Создайте YAML-манифесты для описания созданных сущностей для включения dashboard.
3. Приложите конфигурацию к PR

Нашёл 2 модуля для создания GKE-кластера

1. От google https://github.com/terraform-google-modules/terraform-google-kubernetes-engine
2. От gruntwork-io https://registry.terraform.io/modules/gruntwork-io/gke/google/0.3.9

Так как с использованием модуля от google примеры в репозиториях коллег уже есть, для возможного будущего использования, попробуем модуль от gruntwork-io https://registry.terraform.io/modules/gruntwork-io/gke/google/0.3.9

Создана ннфраструктура terraform в `./kubernetes/terraform`
```log
├── main.tf
├── outputs.tf
├── terraform.tfvars
├── terraform.tfvars.example
└── variables.tf
```

Создан [kubernetes/terraform/Makefile](kubernetes/terraform/Makefile)

Создан файл с переменными [kubernetes/terraform/terraform.tfvars](kubernetes/terraform/terraform.tfvars)

Выполнена проверка синтаксиса
```shell
make tflint validate 
```
```log
~/bin/tflint
~/bin/terraform --version
Terraform v0.12.18
+ provider.external v1.2.0
+ provider.google v2.9.1
+ provider.google-beta v2.9.1
+ provider.helm v0.10.4
+ provider.kubernetes v1.7.0
+ provider.null v2.1.2
+ provider.random v2.2.1
+ provider.template v2.1.2
+ provider.tls v2.1.1
~/bin/terraform validate

Warning: External references from destroy provisioners are deprecated

  on .terraform/modules/gke.tiller/modules/k8s-tiller/main.tf line 275, in resource "null_resource" "tiller_tls_ca_certs":
 275:     command = <<-EOF
 276:       ${var.kubectl_server_endpoint != "" ? "echo \"$KUBECTL_CA_DATA\" > ${path.module}/kubernetes_server_ca.pem" : ""}
 277:       ${lookup(module.require_executables.executables, "kubectl", "")} ${local.esc_newl}
 278:         ${local.kubectl_auth_params} ${local.esc_newl}
 279:         --namespace ${var.tiller_tls_ca_cert_secret_namespace} ${local.esc_newl}
 280:         delete secret ${local.tiller_tls_ca_certs_secret_name}
 281:       EOF

Destroy-time provisioners and their connection configurations may only
reference attributes of the related resource, via 'self', 'count.index', or
'each.key'.

References to other resources during the destroy phase can cause dependency
cycles and interact poorly with create_before_destroy.

(and 23 more similar warnings elsewhere)

Success! The configuration is valid, but there were some validation warnings as shown above.
```

Применяем (стейт будет локальным)
```shell
cd ./kubernetes/terraform
make apply
```

Пошла создаваться инфраструктура...

Вышла ошибка
```log
Error: Get http://localhost/api/v1/namespaces/kube-system/serviceaccounts/tiller: dial tcp 127.0.0.1:80: connect: connection refused
```
И ещё несколько подобных при попытке удалить инфраструктуру.

После **вдумчивого чтения** [документации](https://registry.terraform.io/modules/gruntwork-io/gke/google/0.3.9), в часности [gke-private-tiller example documentation](https://github.com/gruntwork-io/terraform-google-gke/tree/master/examples/gke-private-tiller), пришёл к выводу, что нужно бы установить [kubergrunt](https://github.com/gruntwork-io/kubergrunt), для установки которого, в свою очередь, нужен [gruntwork-installer](https://github.com/gruntwork-io/gruntwork-installer).

Ну чтож, приступим.

В [Makefile](kubernetes/terraform/Makefile) добавим необходимые цели и переменные
```makefile
# gruntwork-install
GRUNTWORK_INSTALL_VERSION?=v0.0.23

install_gruntwork_install:
	curl -LsS https://raw.githubusercontent.com/gruntwork-io/gruntwork-installer/master/bootstrap-gruntwork-installer.sh | bash /dev/stdin --version $GRUNTWORK_INSTALL_VERSION
```
Устанавливаем: в процессе скрипт просит рута. Не порядок. Смотрим [исходники скрипта установки](https://github.com/gruntwork-io/gruntwork-installer/blob/master/bootstrap-gruntwork-installer.sh) и видим там `readonly BIN_DIR="/usr/local/bin"`. Печально, но я не ставлю в систему бинарники не из пакетов.

Выходов 3: 
- менять скрипт
- ставить `kubergrunt` из исходников
- использовать модуль от гугла

Для завершения начатого дела, установим `kubergrunt` из исходников (заодно посмотрим что за утилитка такая)

Уберём из [Makefile](kubernetes/terraform/Makefile) ранее добавленную цель `install_gruntwork_install` и добавим цель для установки `kubergrunt`
```makefile
# kubergrunt
KUBERGRUNT_VERSION?=v0.5.8
KUBERGRUNT_URL=https://github.com/gruntwork-io/kubergrunt/releases/download/${KUBERGRUNT_VERSION}/kubergrunt_linux_amd64
KUBERGRUNT?=${BIN_DIR}/kubergrunt

install_kubergrunt:
	wget ${KUBERGRUNT_URL} -O ${TEMP_DIR}/kubergrunt-${KUBERGRUNT_VERSION}
	mv ${TEMP_DIR}/kubergrunt-${KUBERGRUNT_VERSION} ${BIN_DIR}/kubergrunt-${KUBERGRUNT_VERSION}
	ln -sf kubergrunt-${KUBERGRUNT_VERSION} ${BIN_DIR}/kubergrunt
	chmod +x ${BIN_DIR}/kubergrunt
	${BIN_DIR}/kubergrunt --version
```
Устанавливаем
```shell
make install_kubergrunt
```

Попробуем ещё раз поднять инфру.
```shell
make apply
```

А вот и наши ошибочки))
```log
...
module.gke.null_resource.configure_kubectl: Creating...
module.gke.null_resource.configure_kubectl: Provisioning with 'local-exec'...
module.gke.null_resource.configure_kubectl (local-exec): Executing: ["/bin/sh" "-c" "gcloud beta container clusters get-credentials reddit-private --region us-central1 --project docker-257914"]
module.gke.null_resource.configure_kubectl (local-exec): Fetching cluster endpoint and auth data.
module.gke.null_resource.configure_kubectl (local-exec): ERROR: (gcloud.beta.container.clusters.get-credentials) ResponseError: code=404, message=Not found: projects/docker-257914/locations/us-central1/clusters/reddit-private.
module.gke.null_resource.configure_kubectl (local-exec): Could not find [reddit-private] in [us-central1].
module.gke.null_resource.configure_kubectl (local-exec): Did you mean [reddit-private] in [us-central1-a]?


Error: Error running command 'gcloud beta container clusters get-credentials reddit-private --region us-central1 --project docker-257914': exit status 1. Output: Fetching cluster endpoint and auth data.
ERROR: (gcloud.beta.container.clusters.get-credentials) ResponseError: code=404, message=Not found: projects/docker-257914/locations/us-central1/clusters/reddit-private.
Could not find [reddit-private] in [us-central1].
Did you mean [reddit-private] in [us-central1-a]?




Error: Get https://35.238.240.243/apis/apps/v1/namespaces/kube-system/deployments/tiller-deploy: dial tcp 35.238.240.243:443: connect: connection refused

  on .terraform/modules/gke.tiller/modules/k8s-tiller/main.tf line 38, in resource "kubernetes_deployment" "tiller":
  38: resource "kubernetes_deployment" "tiller" {


Makefile:68: recipe for target 'apply' failed
make: *** [apply] Error 1
```
При этом кластер не создан.

Немного танцев с бубном результата не дали. Пора спать.

Уничтожаем инфру.
```shell
terraform state rm module.gke.kubernetes_service_account.tiller
terraform state rm module.gke.kubernetes_cluster_role_binding.user
terraform state rm module.gke.module.tiller.kubernetes_service.tiller
make destroy
```


Воспользуемся вариантом из примера https://github.com/gruntwork-io/terraform-google-gke/tree/master/examples/gke-private-cluster

Переместим текущую невзлетающую конфигурацию в директорию `kubernetes/terraform/donotwork`

Добавим модули `gke-cluster` и `gke-cluster-account` в `kubernetes/terraform/modules`

Возьмём файлы `main.tf`, `variables.tf` и `outputs.tf` из пирмера https://github.com/gruntwork-io/terraform-google-gke/tree/master/examples/gke-private-cluster

В [kubernetes/terraform/main.tf](kubernetes/terraform/main.tf) исправим пути к модулям

Файл `kubernetes/terraform/terraform.tfvars` у нас остался с предыдущей попытки. Он актуален.

Выполним инициализацию
```shell
make init
```

Выполним проверку
```shell
make tflint validate
```
```log
~/bin/tflint
~/bin/terraform --version
Terraform v0.12.18
+ provider.google v2.9.1
+ provider.google-beta v2.9.1
+ provider.random v2.2.1
~/bin/terraform validate
Success! The configuration is valid.
```

Применяем инфру
```shell
make apply
```
Йуху!
```log
...
Apply complete! Resources: 16 added, 0 changed, 0 destroyed.

Outputs:

client_certificate = 
client_key = <sensitive>
cluster_ca_certificate = <sensitive>
cluster_endpoint = <sensitive>
```

Настраиваем `kubectl`
```shell
gcloud container clusters get-credentials reddit-private --zone us-central1-a --project docker-<project_id>
```

Проверяем
```shell
kubectl cluster-info
```
```log
Kubernetes master is running at https://35.222.6.91
calico-typha is running at https://35.222.6.91/api/v1/namespaces/kube-system/services/calico-typha:calico-typha/proxy
GLBCDefaultBackend is running at https://35.222.6.91/api/v1/namespaces/kube-system/services/default-http-backend:http/proxy
Heapster is running at https://35.222.6.91/api/v1/namespaces/kube-system/services/heapster/proxy
KubeDNS is running at https://35.222.6.91/api/v1/namespaces/kube-system/services/kube-dns:dns/proxy
Metrics-server is running at https://35.222.6.91/api/v1/namespaces/kube-system/services/https:metrics-server:/proxy
```

Создаём неймспейс
```shell
kubectl apply -f ./kubernetes/reddit/dev-namespace.yml 
```
```log
namespace/dev created
```

Деплоим приложение
```shell
kubectl -n dev apply -f ./kubernetes/reddit/                 
```
```log
deployment.apps/comment created
service/comment-db created
service/comment created
namespace/dev unchanged
deployment.apps/mongo created
service/mongodb created
deployment.apps/post created
service/post-db created
service/post created
deployment.apps/ui created
service/ui created
```

Проверим
```shell
kubectl -n dev get deployments 
```
```log
NAME      READY   UP-TO-DATE   AVAILABLE   AGE
comment   3/3     3            3           39s
mongo     1/1     1            1           55s
post      3/3     3            3           54s
ui        3/3     3            3           52s
```
```shell
kubectl -n dev get services
```
```log
NAME         TYPE        CLUSTER-IP   EXTERNAL-IP   PORT(S)          AGE
comment      ClusterIP   10.4.13.2    <none>        9292/TCP         2m15s
comment-db   ClusterIP   10.4.3.21    <none>        27017/TCP        2m16s
mongodb      ClusterIP   10.4.14.40   <none>        27017/TCP        2m31s
post         ClusterIP   10.4.0.179   <none>        5000/TCP         2m30s
post-db      ClusterIP   10.4.4.7     <none>        27017/TCP        2m30s
ui           NodePort    10.4.9.143   <none>        9292:30652/TCP   2m29s
```
```shell
kubectl -n dev get pods --selector component=ui
```
```log
NAME                  READY   STATUS    RESTARTS   AGE
ui-595f89d499-9qmsm   1/1     Running   0          3m18s
ui-595f89d499-d5b47   1/1     Running   0          3m18s
ui-595f89d499-z57wg   1/1     Running   0          3m18s
```
```shell
kubectl -n dev port-forward ui-595f89d499-9qmsm 9292:9292
```
```log
Forwarding from 127.0.0.1:9292 -> 9292
Forwarding from [::1]:9292 -> 9292
```
Приложение доступно по http://127.0.0.1:9292, работает.

```shell
kubectl describe service ui -n dev | grep NodePort
```
```log
Type:                     NodePort
NodePort:                 <unset>  30652/TCP
```
```shell
kubectl get nodes -o wide
```
```log
NAME                                            STATUS   ROLES    AGE   VERSION          INTERNAL-IP   EXTERNAL-IP   OS-IMAGE                             KERNEL-VERSION   CONTAINER-RUNTIME
gke-reddit-private-private-pool-02dd335c-65rz   Ready    <none>   26m   v1.15.4-gke.22   10.3.0.4                    Container-Optimized OS from Google   4.19.76+         docker://19.3.1
gke-reddit-private-private-pool-02dd335c-j19w   Ready    <none>   34m   v1.15.4-gke.22   10.3.0.3                    Container-Optimized OS from Google   4.19.76+         docker://19.3.1
```

Так как кластер приватный, внешних адресов нет. Подключатсья не к чему =)

Уничтожим:
```shell
cd kubernetes/terraform
make destroy
```
```log
Destroy complete! Resources: 16 destroyed.
```

Переместим текущую конфигурацию в `kubernetes/terraform/private-cluster`


Попробуем **public-cluster**, опять же без тиллера

Пример конфигурации возьмём из https://github.com/gruntwork-io/terraform-google-gke/tree/master/examples/gke-public-cluster

В [kubernetes/terraform/main.tf](kubernetes/terraform/main.tf) исправим пути к модулям

В файле `kubernetes/terraform/terraform.tfvars` исправим имя кластера на `reddit-public` и удалим неиспользуемую переменную `master_ipv4_cidr_block = "10.5.0.0/28"`

Выполним инициализацию
```shell
make init
```

Выполним проверку
```shell
make tflint validate
```
всё ок

Применяем
```shell
make apply
```
```log
Apply complete! Resources: 16 added, 0 changed, 0 destroyed.

Outputs:

client_certificate = 
client_key = <sensitive>
cluster_ca_certificate = <sensitive>
cluster_endpoint = <sensitive>
```

kubectl
```shell
gcloud container clusters get-credentials reddit-public --zone us-central1-a --project docker-<project_id>
```

Деплоим
```shell
kubectl apply -f ./kubernetes/reddit/dev-namespace.yml
kubectl -n dev apply -f ./kubernetes/reddit/
```

Проверяем
```shell
kubectl -n dev get nodes -o wide
```
```log
NAME                                        STATUS   ROLES    AGE     VERSION          INTERNAL-IP   EXTERNAL-IP      OS-IMAGE                             KERNEL-VERSION   CONTAINER-RUNTIME
gke-reddit-public-main-pool-55932370-0jm2   Ready    <none>   73s     v1.15.4-gke.22   10.3.0.6      35.226.120.37    Container-Optimized OS from Google   4.19.76+         docker://19.3.1
gke-reddit-public-main-pool-55932370-6fg2   Ready    <none>   6m46s   v1.15.4-gke.22   10.3.0.4      35.192.163.208   Container-Optimized OS from Google   4.19.76+         docker://19.3.1
gke-reddit-public-main-pool-55932370-fvqw   Ready    <none>   2m41s   v1.15.4-gke.22   10.3.0.5      35.225.118.4     Container-Optimized OS from Google   4.19.76+         docker://19.3.1
gke-reddit-public-main-pool-55932370-pwcw   Ready    <none>   14m     v1.15.4-gke.22   10.3.0.3      35.238.28.0      Container-Optimized OS from Google   4.19.76+         docker://19.3.1
```

```shell
kubectl describe service ui -n dev | grep NodePort
```
```log
Type:                     NodePort
NodePort:                 <unset>  31572/TCP
```

Проверяем http://35.192.163.208:31572

Приложение открывается
![reddit-gke.png](kubernetes/img/reddit-gke.png)


## HomeWork 21: Kubernetes. Networks ,Storages

### План

- Ingress Controller
- Ingress
- Secret
- TLS
- LoadBalancer Service
- Network Policies
- PersistentVolumes
- PersistentVolumeClaims


### Сетевое взаимодействие

В предыдущей работе нам уже довелось настраивать сетевое взаимодействие с приложением в Kubernetes с помощью **Service** - абстракции, определяющей конечные узлы доступа (Endpoint’ы) и способ коммуникации с ними (nodePort, LoadBalancer, ClusterIP). Разберем чуть подробнее что в реальности нам это дает.

**Service** - определяет **конечные узлы доступа** (Endpoint’ы):
- селекторные сервисы (k8s сам находит POD-ы по label’ам)
- безселекторные сервисы (мы вручную описываем конкретные endpoint’ы)

и **способ коммуникации** с ними (тип (type) сервиса):
- ClusterIP - дойти до сервиса можно только изнутри кластера
- nodePort - клиент снаружи кластера приходит на опубликованный порт
- LoadBalancer - клиент приходит на облачный (aws elb, Google gclb) ресурс балансировки
- ExternalName - внешний ресурс по отношению к кластеру


#### Service

Вспомним, как выглядели Service’ы:
```yaml
---
apiVersion: v1
kind: Service
metadata:
  name: post
  labels:
    app: reddit
    component: post
spec:
  ports:
  - port: 5000
    protocol: TCP
    targetPort: 5000
  selector:
    app: reddit
    component: post
```
Это селекторный сервис типа **ClusetrIP** (тип не указан, т.к. этот тип по-умолчанию).

**ClusterIP** - это виртуальный (в реальности нет интерфейса, pod’а или машины с таким адресом) IP-адрес из диапазона адресов для работы внутри, скрывающий за собой IP-адреса реальных POD-ов. Сервису **любого типа** (кроме ExternalName) назначается этот IP-адрес. 

```shell
kubectl get services -n dev
```
```log
NAME         TYPE        CLUSTER-IP    EXTERNAL-IP   PORT(S)          AGE
comment      ClusterIP   10.4.11.91    <none>        9292/TCP         37s
comment-db   ClusterIP   10.4.1.197    <none>        27017/TCP        37s
mongodb      ClusterIP   10.4.8.107    <none>        27017/TCP        36s
post         ClusterIP   10.4.14.164   <none>        5000/TCP         34s
post-db      ClusterIP   10.4.2.83     <none>        27017/TCP        35s
ui           NodePort    10.4.14.189   <none>        9292:31596/TCP   33s
```

Схема взаимодействия
![Схема взаимодействия Service](kubernetes/img/scheme-service.png)


#### Kube-dns

Отметим, что **Service** - это лишь абстракция и описание того, как получить доступ к сервису. Но опирается она на реальные механизмы и объекты: DNS-сервер, балансировщики, iptables.

Для того, чтобы дойти до сервиса, нам нужно узнать его адрес по имени. Kubernetes не имеет своего собственного DNSсервера для разрешения имен. Поэтому используется плагин **kube-dns** (это тоже Pod).

Его задачи:
- ходить в API Kubernetes’a и отслеживать Service-объекты
- заносить DNS-записи о Service’ах в собственную базу
- предоставлять DNS-сервис для разрешения имен в IP-адреса (как внутренних, так и внешних)

Схема приобретает следующий вид
![Схема взаимодействия kube-dns](kubernetes/img/scheme-kube-dns.png)

Можете убедиться, что при отключенном **kube-dns** сервисе связность между компонентами reddit-app пропадет и он перестанет работать.

1. Проскейлим в 0 сервис, который следит, чтобы dns-kube подов всегда хватало
   ```shell
   kubectl scale deployment --replicas 0 -n kube-system kube-dns-autoscaler
   ```
   ```log
   deployment.extensions/kube-dns-autoscaler scaled
   ```
2. Проскейлим в 0 сам kube-dns
   ```shell
   kubectl scale deployment --replicas 0 -n kube-system kube-dns
   ```
   ```log
   deployment.extensions/kube-dns scaled
   ```
3. Попробуйте достучатсья по имени до любого сервиса. Например
   ```shell
   kubectl exec -ti -n dev post-f669799bf-dw6d9 ping comment
   ```
   ```log
   ping: bad address 'comment'
   command terminated with exit code 1
   ```
4. Вернем kube-dns-autoscale в исходную
   ```shell
   kubectl scale deployment --replicas 1 -n kube-system kube-dns-autoscaler
   ```
   ```log
   deployment.extensions/kube-dns-autoscaler scaled
   ```
5. Проверьте, что приложение заработало (в браузере).
   Да, работает.


#### Service

Как уже говорилось, **ClusterIP** - виртуальный и не принадлежит ни одной реальной физической сущности. Его чтением и дальнейшими действиями с пакетами, принадлежащими ему, занимается в нашем случае **iptables**, который настраивается утилитой **kube-proxy** (забирающей инфу с API-сервера).

Сам kube-proxy, можно настроить на прием трафика, но это устаревшее поведение и **не рекомендуется** его применять.

На любой из нод кластера можете посмотреть эти правила IPTABLES (это не задание).

Я просто сохраню это здесь...

<details><summary>На память =))</summary>
<p>

```shell
sudo iptables -vnL
```
```log
Chain INPUT (policy DROP 0 packets, 0 bytes)
 pkts bytes target     prot opt in     out     source               destination         
53438  361M cali-INPUT  all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:Cz_u1IQiXIMmKD4c */
  814 47087 KUBE-SERVICES  all  --  *      *       0.0.0.0/0            0.0.0.0/0            ctstate NEW /* kubernetes service portals */
  814 47087 KUBE-EXTERNAL-SERVICES  all  --  *      *       0.0.0.0/0            0.0.0.0/0            ctstate NEW /* kubernetes externally-visible service portals */
65799  652M KUBE-FIREWALL  all  --  *      *       0.0.0.0/0            0.0.0.0/0           
65880  675M ACCEPT     all  --  *      *       0.0.0.0/0            0.0.0.0/0            state RELATED,ESTABLISHED
  698 41880 ACCEPT     all  --  lo     *       0.0.0.0/0            0.0.0.0/0           
    1    68 ACCEPT     icmp --  *      *       0.0.0.0/0            0.0.0.0/0           
    7   404 ACCEPT     tcp  --  *      *       0.0.0.0/0            0.0.0.0/0            tcp dpt:22
  163  6880 ACCEPT     tcp  --  *      *       0.0.0.0/0            0.0.0.0/0           
    4   243 ACCEPT     udp  --  *      *       0.0.0.0/0            0.0.0.0/0           
    0     0 ACCEPT     icmp --  *      *       0.0.0.0/0            0.0.0.0/0           
    0     0 ACCEPT     sctp --  *      *       0.0.0.0/0            0.0.0.0/0           

Chain FORWARD (policy DROP 0 packets, 0 bytes)
 pkts bytes target     prot opt in     out     source               destination         
 208K   56M cali-FORWARD  all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:wUHhoiAYhphO9Mso */
    0     0 KUBE-FORWARD  all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* kubernetes forwarding rules */
    0     0 KUBE-SERVICES  all  --  *      *       0.0.0.0/0            0.0.0.0/0            ctstate NEW /* kubernetes service portals */
    0     0 DOCKER-USER  all  --  *      *       0.0.0.0/0            0.0.0.0/0           
    0     0 DOCKER-ISOLATION-STAGE-1  all  --  *      *       0.0.0.0/0            0.0.0.0/0           
    0     0 ACCEPT     all  --  *      docker0  0.0.0.0/0            0.0.0.0/0            ctstate RELATED,ESTABLISHED
    0     0 DOCKER     all  --  *      docker0  0.0.0.0/0            0.0.0.0/0           
    0     0 ACCEPT     all  --  docker0 !docker0  0.0.0.0/0            0.0.0.0/0           
    0     0 ACCEPT     all  --  docker0 docker0  0.0.0.0/0            0.0.0.0/0           
    0     0 ACCEPT     tcp  --  *      *       0.0.0.0/0            0.0.0.0/0           
    0     0 ACCEPT     udp  --  *      *       0.0.0.0/0            0.0.0.0/0           
    0     0 ACCEPT     icmp --  *      *       0.0.0.0/0            0.0.0.0/0           
    0     0 ACCEPT     sctp --  *      *       0.0.0.0/0            0.0.0.0/0           

Chain OUTPUT (policy DROP 0 packets, 0 bytes)
 pkts bytes target     prot opt in     out     source               destination         
46607   51M cali-OUTPUT  all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:tVnHkvAo15HuiPy0 */
 7676  463K KUBE-SERVICES  all  --  *      *       0.0.0.0/0            0.0.0.0/0            ctstate NEW /* kubernetes service portals */
65017   53M KUBE-FIREWALL  all  --  *      *       0.0.0.0/0            0.0.0.0/0           
66006   53M ACCEPT     all  --  *      *       0.0.0.0/0            0.0.0.0/0            state NEW,RELATED,ESTABLISHED
    0     0 ACCEPT     all  --  *      lo      0.0.0.0/0            0.0.0.0/0           

Chain DOCKER (1 references)
 pkts bytes target     prot opt in     out     source               destination         

Chain DOCKER-ISOLATION-STAGE-1 (1 references)
 pkts bytes target     prot opt in     out     source               destination         
    0     0 DOCKER-ISOLATION-STAGE-2  all  --  docker0 !docker0  0.0.0.0/0            0.0.0.0/0           
    0     0 RETURN     all  --  *      *       0.0.0.0/0            0.0.0.0/0           

Chain DOCKER-ISOLATION-STAGE-2 (1 references)
 pkts bytes target     prot opt in     out     source               destination         
    0     0 DROP       all  --  *      docker0  0.0.0.0/0            0.0.0.0/0           
    0     0 RETURN     all  --  *      *       0.0.0.0/0            0.0.0.0/0           

Chain DOCKER-USER (1 references)
 pkts bytes target     prot opt in     out     source               destination         
    0     0 RETURN     all  --  *      *       0.0.0.0/0            0.0.0.0/0           

Chain KUBE-EXTERNAL-SERVICES (1 references)
 pkts bytes target     prot opt in     out     source               destination         

Chain KUBE-FIREWALL (2 references)
 pkts bytes target     prot opt in     out     source               destination         
    0     0 DROP       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* kubernetes firewall for dropping marked packets */ mark match 0x8000/0x8000

Chain KUBE-FORWARD (1 references)
 pkts bytes target     prot opt in     out     source               destination         
    0     0 DROP       all  --  *      *       0.0.0.0/0            0.0.0.0/0            ctstate INVALID
    0     0 ACCEPT     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* kubernetes forwarding rules */ mark match 0x4000/0x4000
    0     0 ACCEPT     all  --  *      *       10.4.0.0/20          0.0.0.0/0            /* kubernetes forwarding conntrack pod source rule */ ctstate RELATED,ESTABLISHED
    0     0 ACCEPT     all  --  *      *       0.0.0.0/0            10.4.0.0/20          /* kubernetes forwarding conntrack pod destination rule */ ctstate RELATED,ESTABLISHED

Chain KUBE-SERVICES (3 references)
 pkts bytes target     prot opt in     out     source               destination         

Chain cali-FORWARD (1 references)
 pkts bytes target     prot opt in     out     source               destination         
 208K   56M MARK       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:vjrMJCRpqwy5oRoX */ MARK and 0xfff1ffff
 208K   56M cali-from-hep-forward  all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:A_sPAO0mcxbT9mOV */ mark match 0x0/0x10000
 169K   29M cali-from-wl-dispatch  all  --  cali+  *       0.0.0.0/0            0.0.0.0/0            /* cali:8ZoYfO5HKXWbB3pk */
50081   28M cali-to-wl-dispatch  all  --  *      cali+   0.0.0.0/0            0.0.0.0/0            /* cali:jdEuaPBe14V2hutn */
14867 1010K cali-to-hep-forward  all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:12bc6HljsMKsmfr- */
14867 1010K ACCEPT     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:MH9kMp5aNICL-Olv */ /* Policy explicitly accepted packet. */ mark match 0x10000/0x10000

Chain cali-INPUT (1 references)
 pkts bytes target     prot opt in     out     source               destination         
 5314  864K cali-wl-to-host  all  --  cali+  *       0.0.0.0/0            0.0.0.0/0           [goto]  /* cali:FewJpBykm9iJ-YNH */
    0     0 ACCEPT     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:hder3ARWznqqv8Va */ mark match 0x10000/0x10000
48124  360M MARK       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:xgOu2uJft6H9oDGF */ MARK and 0xfff0ffff
48124  360M cali-from-host-endpoint  all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:_-d-qojMfHM6NwBo */
    0     0 ACCEPT     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:LqmE76MP94lZTGhA */ /* Host endpoint policy accepted packet. */ mark match 0x10000/0x10000

Chain cali-OUTPUT (1 references)
 pkts bytes target     prot opt in     out     source               destination         
    0     0 ACCEPT     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:Mq1_rAdXXH3YkrzW */ mark match 0x10000/0x10000
 6470 7016K RETURN     all  --  *      cali+   0.0.0.0/0            0.0.0.0/0            /* cali:69FkRTJDvD5Vu6Vl */
40137   44M MARK       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:Fskumj4SGQtDV6GC */ MARK and 0xfff0ffff
40137   44M cali-to-host-endpoint  all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:8rXMdo5sNesjJxGc */
    0     0 ACCEPT     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:Ja-pnrHi-PrNKxgd */ /* Host endpoint policy accepted packet. */ mark match 0x10000/0x10000

Chain cali-failsafe-in (0 references)
 pkts bytes target     prot opt in     out     source               destination         
    0     0 ACCEPT     tcp  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:wWFQM43tJU7wwnFZ */ multiport dports 22
    0     0 ACCEPT     udp  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:LwNV--R8MjeUYacw */ multiport dports 68
    0     0 ACCEPT     tcp  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:QOO5NUOqOSS1_Iw0 */ multiport dports 179
    0     0 ACCEPT     tcp  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:cwZWoBSwVeIAZmVN */ multiport dports 2379
    0     0 ACCEPT     tcp  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:7FbNXT91kugE_upR */ multiport dports 2380
    0     0 ACCEPT     tcp  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:ywE9WYUBEpve70WT */ multiport dports 6666
    0     0 ACCEPT     tcp  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:l-WQSVBf_lygPR0J */ multiport dports 6667

Chain cali-failsafe-out (0 references)
 pkts bytes target     prot opt in     out     source               destination         
    0     0 ACCEPT     udp  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:82hjfji-wChFhAqL */ multiport dports 53
    0     0 ACCEPT     udp  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:TNM3RfEjbNr72hgH */ multiport dports 67
    0     0 ACCEPT     tcp  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:ycxKitIl4u3dK0HR */ multiport dports 179
    0     0 ACCEPT     tcp  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:hxjEWyxdkXXkdvut */ multiport dports 2379
    0     0 ACCEPT     tcp  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:cA_GLtruuvG88KiO */ multiport dports 2380
    0     0 ACCEPT     tcp  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:Sb1hkLYFMrKS6r01 */ multiport dports 6666
    0     0 ACCEPT     tcp  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:UwLSebGONJUG4yG- */ multiport dports 6667

Chain cali-from-hep-forward (1 references)
 pkts bytes target     prot opt in     out     source               destination         

Chain cali-from-host-endpoint (1 references)
 pkts bytes target     prot opt in     out     source               destination         

Chain cali-from-wl-dispatch (2 references)
 pkts bytes target     prot opt in     out     source               destination         
26847   10M cali-from-wl-dispatch-0  all  --  cali0+ *       0.0.0.0/0            0.0.0.0/0           [goto]  /* cali:eBnVcASLTvMFg9XV */
22141 1898K cali-fw-cali1c39897f10f  all  --  cali1c39897f10f *       0.0.0.0/0            0.0.0.0/0           [goto]  /* cali:YwGqMCK1MmmSv6Le */
20956 1805K cali-fw-cali22841037ef8  all  --  cali22841037ef8 *       0.0.0.0/0            0.0.0.0/0           [goto]  /* cali:JFYgBz0ZNFTssa-f */
19319 1674K cali-fw-cali363f791ae66  all  --  cali363f791ae66 *       0.0.0.0/0            0.0.0.0/0           [goto]  /* cali:ajMSJf0l60P0Gtp5 */
 6803  732K cali-from-wl-dispatch-4  all  --  cali4+ *       0.0.0.0/0            0.0.0.0/0           [goto]  /* cali:a6kOIPK0SZHufacD */
 6706  592K cali-fw-cali923f86f51da  all  --  cali923f86f51da *       0.0.0.0/0            0.0.0.0/0           [goto]  /* cali:3u_wj81qX_vEk3Q- */
 1823  253K cali-fw-caliaf6bd9e3dd6  all  --  caliaf6bd9e3dd6 *       0.0.0.0/0            0.0.0.0/0           [goto]  /* cali:eAeOnHbk1kpin4em */
 8768 1015K cali-from-wl-dispatch-b  all  --  calib+ *       0.0.0.0/0            0.0.0.0/0           [goto]  /* cali:tzMfaZdywQYSvoo2 */
 5884 2792K cali-from-wl-dispatch-c  all  --  calic+ *       0.0.0.0/0            0.0.0.0/0           [goto]  /* cali:3MJs-_opMia0f4Rm */
 6246  743K cali-from-wl-dispatch-d  all  --  calid+ *       0.0.0.0/0            0.0.0.0/0           [goto]  /* cali:Tl1PKTnmPw9uzJkx */
39727 6345K cali-fw-calie2cee35dbce  all  --  calie2cee35dbce *       0.0.0.0/0            0.0.0.0/0           [goto]  /* cali:QSJVZTBpAsx1zvNp */
  967 70682 cali-from-wl-dispatch-f  all  --  calif+ *       0.0.0.0/0            0.0.0.0/0           [goto]  /* cali:NcnkXfjTNRTtWF2U */
    0     0 DROP       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:2kcJkvBUN9sENHd4 */ /* Unknown interface */

Chain cali-from-wl-dispatch-0 (1 references)
 pkts bytes target     prot opt in     out     source               destination         
 1139  109K cali-fw-cali001f6121953  all  --  cali001f6121953 *       0.0.0.0/0            0.0.0.0/0           [goto]  /* cali:jBZAU2VaZGUh77Xm */
 7527  665K cali-fw-cali02bcd13d7d7  all  --  cali02bcd13d7d7 *       0.0.0.0/0            0.0.0.0/0           [goto]  /* cali:HOqxFqWLr-ZO36Xi */
12084 6413K cali-fw-cali0e254ef053c  all  --  cali0e254ef053c *       0.0.0.0/0            0.0.0.0/0           [goto]  /* cali:DGFf8o_63lIC1otM */
 3253  330K cali-fw-cali0e4c83da0c2  all  --  cali0e4c83da0c2 *       0.0.0.0/0            0.0.0.0/0           [goto]  /* cali:68YMcLF3QFfEPeDd */
    0     0 DROP       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:H6oxmvQm7jzkmVvz */ /* Unknown interface */

Chain cali-from-wl-dispatch-4 (1 references)
 pkts bytes target     prot opt in     out     source               destination         
 3548  402K cali-fw-cali487296ebfc4  all  --  cali487296ebfc4 *       0.0.0.0/0            0.0.0.0/0           [goto]  /* cali:ys2-Uaw6Jsde6svB */
 3255  330K cali-fw-cali4bbcf1021d6  all  --  cali4bbcf1021d6 *       0.0.0.0/0            0.0.0.0/0           [goto]  /* cali:v9yFglWgSTCDBg9D */
    0     0 DROP       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:OgoZoDSsTNY81Q81 */ /* Unknown interface */

Chain cali-from-wl-dispatch-b (1 references)
 pkts bytes target     prot opt in     out     source               destination         
 8535  997K cali-fw-calib56d958096f  all  --  calib56d958096f *       0.0.0.0/0            0.0.0.0/0           [goto]  /* cali:ONtrypv994sUb1ed */
  233 17576 cali-fw-calibafc89b76e6  all  --  calibafc89b76e6 *       0.0.0.0/0            0.0.0.0/0           [goto]  /* cali:VkGOpe9vy9gvtIQj */
    0     0 DROP       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:riCKkh0gDzA7JgZC */ /* Unknown interface */

Chain cali-from-wl-dispatch-c (1 references)
 pkts bytes target     prot opt in     out     source               destination         
 3334  372K cali-fw-calic0784236d5f  all  --  calic0784236d5f *       0.0.0.0/0            0.0.0.0/0           [goto]  /* cali:A7lfuX6Uyl3hmrIr */
 3266 2674K cali-fw-calicf8b0d0baf2  all  --  calicf8b0d0baf2 *       0.0.0.0/0            0.0.0.0/0           [goto]  /* cali:mFmTsLZB2xSiPZVH */
    0     0 DROP       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:_uFal064WAFqpoLc */ /* Unknown interface */

Chain cali-from-wl-dispatch-d (1 references)
 pkts bytes target     prot opt in     out     source               destination         
  627  388K cali-fw-calid7820f5c789  all  --  calid7820f5c789 *       0.0.0.0/0            0.0.0.0/0           [goto]  /* cali:FiKz92o2owXLNkgB */
 6183  546K cali-fw-calid9ba32f8b18  all  --  calid9ba32f8b18 *       0.0.0.0/0            0.0.0.0/0           [goto]  /* cali:H_jyYB-0cHpir3EP */
    0     0 DROP       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:whN6qOf6uJ_l5Vsf */ /* Unknown interface */

Chain cali-from-wl-dispatch-f (1 references)
 pkts bytes target     prot opt in     out     source               destination         
  557 57701 cali-fw-calif320a18605b  all  --  calif320a18605b *       0.0.0.0/0            0.0.0.0/0           [goto]  /* cali:m9FbNszH5xdcZ_mp */
  983 71983 cali-fw-calif9eb280ec40  all  --  calif9eb280ec40 *       0.0.0.0/0            0.0.0.0/0           [goto]  /* cali:7F05c3vUzG6GgKUi */
    0     0 DROP       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:ta-GyXjBcPdloCT5 */ /* Unknown interface */

Chain cali-fw-cali001f6121953 (1 references)
 pkts bytes target     prot opt in     out     source               destination         
 1139  109K ACCEPT     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:Px3fyfs-OWCy61Fl */ ctstate RELATED,ESTABLISHED
    0     0 DROP       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:Y9DW__V6n_-VSzBo */ ctstate INVALID
    0     0 MARK       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:qTP6GkhwIj7jqfz1 */ MARK and 0xfffeffff
    0     0 DROP       udp  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:TdxzA6P0wnrzwjhf */ /* Drop VXLAN encapped packets originating in pods */ multiport dports 4789
    0     0 DROP       4    --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:_ZJ4AcbqEy-Pb4-K */ /* Drop IPinIP encapped packets originating in pods */
    0     0 cali-pro-kns.kube-system  all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:vgCKwslxqisvRpnH */
    0     0 RETURN     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:NUbo3vj4Nla9dWQS */ /* Return if profile accepted */ mark match 0x10000/0x10000
    0     0 cali-pro-_hNSGmJYNT8uLIzxesP  all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:bGQfPPstg74m3Ut4 */
    0     0 RETURN     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:JNkN9_LyoIusLt8s */ /* Return if profile accepted */ mark match 0x10000/0x10000
    0     0 DROP       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:03KT1t2H33gpjqWj */ /* Drop if no profiles matched */

Chain cali-fw-cali02bcd13d7d7 (1 references)
 pkts bytes target     prot opt in     out     source               destination         
 6032  562K ACCEPT     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:-ubTqYvbNLHMpUL2 */ ctstate RELATED,ESTABLISHED
    0     0 DROP       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:Po2AtsMlhCakv67L */ ctstate INVALID
 1495  104K MARK       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:WbUkeqZd1jfS-AXN */ MARK and 0xfffeffff
    0     0 DROP       udp  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:Tv9OVyHpF-BLc9C7 */ /* Drop VXLAN encapped packets originating in pods */ multiport dports 4789
    0     0 DROP       4    --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:1VBYHKj5xiai5T9k */ /* Drop IPinIP encapped packets originating in pods */
 1495  104K cali-pro-kns.dev  all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:JO19z2-iPX9eCo2- */
 1495  104K RETURN     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:7flArWKMyjuwNBst */ /* Return if profile accepted */ mark match 0x10000/0x10000
    0     0 cali-pro-ksa.dev.default  all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:-K6eVH-i5lhI1Cg9 */
    0     0 RETURN     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:I-tr78bwhFGKSNKG */ /* Return if profile accepted */ mark match 0x10000/0x10000
    0     0 DROP       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:iL90AUvCPJaYbBnh */ /* Drop if no profiles matched */

Chain cali-fw-cali0e254ef053c (1 references)
 pkts bytes target     prot opt in     out     source               destination         
14858 9257K ACCEPT     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:rB1B8PH9cT32R9Fx */ ctstate RELATED,ESTABLISHED
    0     0 DROP       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:gyCHJdHrKX7weSSe */ ctstate INVALID
   70  6535 MARK       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:cjP76otkjm7KCkmN */ MARK and 0xfffeffff
    0     0 DROP       udp  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:BizL9CdUPwTN6COy */ /* Drop VXLAN encapped packets originating in pods */ multiport dports 4789
    0     0 DROP       4    --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:qYTXtdBd7DKNX3M9 */ /* Drop IPinIP encapped packets originating in pods */
   70  6535 cali-pro-kns.kube-system  all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:AQWbI54CY1Gz9abM */
   70  6535 RETURN     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:GvPfDHhRzgM3HkdX */ /* Return if profile accepted */ mark match 0x10000/0x10000
    0     0 cali-pro-_lk3uafp1xALKGJtCJN  all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:MThb8FJGWiQxTm3V */
    0     0 RETURN     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:9rcGbODIUvLrP96p */ /* Return if profile accepted */ mark match 0x10000/0x10000
    0     0 DROP       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:7MOsCXvGUVrul2ck */ /* Drop if no profiles matched */

Chain cali-fw-cali0e4c83da0c2 (1 references)
 pkts bytes target     prot opt in     out     source               destination         
 2717  298K ACCEPT     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:T7njsLRsI4-DKevm */ ctstate RELATED,ESTABLISHED
    0     0 DROP       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:l6xmXEYRtIuefGnN */ ctstate INVALID
  536 32160 MARK       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:BztoOpiIwM8cScN2 */ MARK and 0xfffeffff
    0     0 DROP       udp  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:b1uXclaSNDmxNC72 */ /* Drop VXLAN encapped packets originating in pods */ multiport dports 4789
    0     0 DROP       4    --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:BYWqaPtLwiXmvFtj */ /* Drop IPinIP encapped packets originating in pods */
  536 32160 cali-pro-kns.dev  all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:gOnaMLdf5DSZR4LT */
  536 32160 RETURN     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:_YCv79TVIvJtFs8Y */ /* Return if profile accepted */ mark match 0x10000/0x10000
    0     0 cali-pro-ksa.dev.default  all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:ydGmoBx9icARsgNy */
    0     0 RETURN     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:31eTAImBf743KdIs */ /* Return if profile accepted */ mark match 0x10000/0x10000
    0     0 DROP       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:FrXrIk51ablmxrCs */ /* Drop if no profiles matched */

Chain cali-fw-cali1c39897f10f (1 references)
 pkts bytes target     prot opt in     out     source               destination         
19191 1697K ACCEPT     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:zKLbgosYtLwC2ZdP */ ctstate RELATED,ESTABLISHED
    0     0 DROP       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:jlp45WaMWuFK2eOq */ ctstate INVALID
 2950  201K MARK       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:uSX5XitJSgV4ueIi */ MARK and 0xfffeffff
    0     0 DROP       udp  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:nY5hfNZo1C1eT-GG */ /* Drop VXLAN encapped packets originating in pods */ multiport dports 4789
    0     0 DROP       4    --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:y6VEH15_knOZLezT */ /* Drop IPinIP encapped packets originating in pods */
 2950  201K cali-pro-kns.dev  all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:pF1qhzzPrwVHmBBj */
 2950  201K RETURN     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:NSLCmAP_Wd9Hwxzy */ /* Return if profile accepted */ mark match 0x10000/0x10000
    0     0 cali-pro-ksa.dev.default  all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:Vs_vNuPH0vMWur6t */
    0     0 RETURN     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:I_4Y8zytOI2joqzj */ /* Return if profile accepted */ mark match 0x10000/0x10000
    0     0 DROP       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:5ONqSgwqeyep5ypF */ /* Drop if no profiles matched */

Chain cali-fw-cali22841037ef8 (1 references)
 pkts bytes target     prot opt in     out     source               destination         
18086 1610K ACCEPT     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:41aWNLYH-fr3kjHy */ ctstate RELATED,ESTABLISHED
    0     0 DROP       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:Wctx9C3OtM1a8SOp */ ctstate INVALID
 2870  195K MARK       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:dq0eD_ntajlHtCbB */ MARK and 0xfffeffff
    0     0 DROP       udp  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:RKP6LBVa5C4CSxJf */ /* Drop VXLAN encapped packets originating in pods */ multiport dports 4789
    0     0 DROP       4    --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:eN1-pKoGffZViHTa */ /* Drop IPinIP encapped packets originating in pods */
 2870  195K cali-pro-kns.dev  all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:gibx0MyqxYcXwj3B */
 2870  195K RETURN     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:y71_PBR7EFqifgKI */ /* Return if profile accepted */ mark match 0x10000/0x10000
    0     0 cali-pro-ksa.dev.default  all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:jSTDx39U7eVulnYJ */
    0     0 RETURN     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:MSnJV624_KG6Ds5t */ /* Return if profile accepted */ mark match 0x10000/0x10000
    0     0 DROP       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:HjAsM9kgaU11n64P */ /* Drop if no profiles matched */

Chain cali-fw-cali363f791ae66 (1 references)
 pkts bytes target     prot opt in     out     source               destination         
16526 1486K ACCEPT     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:LHhoddF8XNyPBnxV */ ctstate RELATED,ESTABLISHED
    0     0 DROP       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:UT1rYd8HTaHEWhE5 */ ctstate INVALID
 2793  188K MARK       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:_rBRj325qL2ktGMF */ MARK and 0xfffeffff
    0     0 DROP       udp  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:JC4wmVlaQRf3X20d */ /* Drop VXLAN encapped packets originating in pods */ multiport dports 4789
    0     0 DROP       4    --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:EIhzpNWMX7LJ4eds */ /* Drop IPinIP encapped packets originating in pods */
 2793  188K cali-pro-kns.dev  all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:HpaeIzE3DbE8WYFN */
 2793  188K RETURN     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:BG90qH-6fixMEM8V */ /* Return if profile accepted */ mark match 0x10000/0x10000
    0     0 cali-pro-ksa.dev.default  all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:OHKRBS4ENbGqNHIg */
    0     0 RETURN     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:0t4jEFIoDPywD3p0 */ /* Return if profile accepted */ mark match 0x10000/0x10000
    0     0 DROP       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:86kR-N5VOVKaRtjv */ /* Drop if no profiles matched */

Chain cali-fw-cali487296ebfc4 (1 references)
 pkts bytes target     prot opt in     out     source               destination         
 4197  480K ACCEPT     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:gEomKhQ3MxACCjxD */ ctstate RELATED,ESTABLISHED
    0     0 DROP       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:jSXbW6Akfeh6taeu */ ctstate INVALID
    4   240 MARK       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:fSjrSFg1pYo4ofVd */ MARK and 0xfffeffff
    0     0 DROP       udp  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:hOVwrJLfIoFyKtTW */ /* Drop VXLAN encapped packets originating in pods */ multiport dports 4789
    0     0 DROP       4    --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:6xQcOY2whnhC3CrT */ /* Drop IPinIP encapped packets originating in pods */
    4   240 cali-pro-kns.kube-system  all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:0cSkFwTcW20apNeN */
    4   240 RETURN     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:_LGkVSdp3S3cZEHe */ /* Return if profile accepted */ mark match 0x10000/0x10000
    0     0 cali-pro-_CVSZITRyIpEmH8AB6H  all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:93p6RJ4LxCnXES0i */
    0     0 RETURN     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:42HQ6FjjjcFfIvV_ */ /* Return if profile accepted */ mark match 0x10000/0x10000
    0     0 DROP       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:bINO6OKSK50vsyUT */ /* Drop if no profiles matched */

Chain cali-fw-cali4bbcf1021d6 (1 references)
 pkts bytes target     prot opt in     out     source               destination         
 2719  298K ACCEPT     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:39JfnVcYUQVU6M2D */ ctstate RELATED,ESTABLISHED
    0     0 DROP       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:VSQBf2jNy_pdamSL */ ctstate INVALID
  536 32160 MARK       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:SvbuuYJ5nijxSj-u */ MARK and 0xfffeffff
    0     0 DROP       udp  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:lcFJ2tXIB1IXI9ag */ /* Drop VXLAN encapped packets originating in pods */ multiport dports 4789
    0     0 DROP       4    --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:bvjb4Amag9c_WDYW */ /* Drop IPinIP encapped packets originating in pods */
  536 32160 cali-pro-kns.dev  all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:C4cwgo9kCSls1_Wn */
  536 32160 RETURN     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:5AKZqRMWR1Kj1v20 */ /* Return if profile accepted */ mark match 0x10000/0x10000
    0     0 cali-pro-ksa.dev.default  all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:XZ5N-G1IduFhtfsq */
    0     0 RETURN     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:JZNVKe1S1gH5OBOQ */ /* Return if profile accepted */ mark match 0x10000/0x10000
    0     0 DROP       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:iP9Z5Q9jWZIzwHVD */ /* Drop if no profiles matched */

Chain cali-fw-cali923f86f51da (1 references)
 pkts bytes target     prot opt in     out     source               destination         
 5396  502K ACCEPT     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:NMxuRJguwazvTdX1 */ ctstate RELATED,ESTABLISHED
    0     0 DROP       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:NZjs4pI79aS18SNE */ ctstate INVALID
 1310 90660 MARK       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:pb0acG60DMo5Mk_8 */ MARK and 0xfffeffff
    0     0 DROP       udp  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:ixg3-KMGe0QcA656 */ /* Drop VXLAN encapped packets originating in pods */ multiport dports 4789
    0     0 DROP       4    --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:LZbp8ZpehVjHnxIK */ /* Drop IPinIP encapped packets originating in pods */
 1310 90660 cali-pro-kns.dev  all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:A729Chz1ggFR2gzU */
 1310 90660 RETURN     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:hvgiu_o-7wPl2RxM */ /* Return if profile accepted */ mark match 0x10000/0x10000
    0     0 cali-pro-ksa.dev.default  all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:JWLmD0vBmtWDAXCL */
    0     0 RETURN     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:fM5mzFRcA7ShLSHa */ /* Return if profile accepted */ mark match 0x10000/0x10000
    0     0 DROP       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:tbOX4-Bk9vyXuIos */ /* Drop if no profiles matched */

Chain cali-fw-caliaf6bd9e3dd6 (1 references)
 pkts bytes target     prot opt in     out     source               destination         
 2131  304K ACCEPT     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:QEC5Y5tdh7SQlSek */ ctstate RELATED,ESTABLISHED
    0     0 DROP       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:OoHvYq1ISCRhYy8a */ ctstate INVALID
  131  7860 MARK       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:lKw6a5Hp74p5GUXQ */ MARK and 0xfffeffff
    0     0 DROP       udp  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:0jCi9I9CVRhL4WxR */ /* Drop VXLAN encapped packets originating in pods */ multiport dports 4789
    0     0 DROP       4    --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:k0cW0pLemgy7ZWPD */ /* Drop IPinIP encapped packets originating in pods */
  131  7860 cali-pro-kns.kube-system  all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:_nhCToLujHXu2ja9 */
  131  7860 RETURN     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:A1GrPtX_x1Mxp2qc */ /* Return if profile accepted */ mark match 0x10000/0x10000
    0     0 cali-pro-_eSTHMIkNVbw_XFlWMl  all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:GWdWyI_kXYCx5ewf */
    0     0 RETURN     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:YbhN2lG9DbdLTOUT */ /* Return if profile accepted */ mark match 0x10000/0x10000
    0     0 DROP       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:8xNbYCCdNNAdi1gM */ /* Drop if no profiles matched */

Chain cali-fw-calib56d958096f (1 references)
 pkts bytes target     prot opt in     out     source               destination         
 8525  996K ACCEPT     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:lm4VrVp7tzwZxhnq */ ctstate RELATED,ESTABLISHED
    0     0 DROP       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:aQC_LrZ9ajLR_XGR */ ctstate INVALID
   10   642 MARK       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:VbZ6bCbDPO9tI0Mm */ MARK and 0xfffeffff
    0     0 DROP       udp  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:u7YrkmvbEPfaBFM8 */ /* Drop VXLAN encapped packets originating in pods */ multiport dports 4789
    0     0 DROP       4    --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:bY_8sZ5EXr7z1vxh */ /* Drop IPinIP encapped packets originating in pods */
   10   642 cali-pro-kns.kube-system  all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:9dkDOvvwyJfKjbbN */
   10   642 RETURN     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:MtLrwxZJNdrijqrj */ /* Return if profile accepted */ mark match 0x10000/0x10000
    0     0 cali-pro-_cHTcjx4Xi7rghi4C9T  all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:kPrOlU7IJXRfNiA8 */
    0     0 RETURN     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:bJwnOUH3koeFcKsR */ /* Return if profile accepted */ mark match 0x10000/0x10000
    0     0 DROP       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:PUubp9Ycggsbm0b8 */ /* Drop if no profiles matched */

Chain cali-fw-calibafc89b76e6 (1 references)
 pkts bytes target     prot opt in     out     source               destination         
  460 44287 ACCEPT     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:Y15SV3lmmqVQ_Dk2 */ ctstate RELATED,ESTABLISHED
    0     0 DROP       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:9wa-FwrMh_eHvPS1 */ ctstate INVALID
    3   180 MARK       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:amBwWAgmKftdswzO */ MARK and 0xfffeffff
    0     0 DROP       udp  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:gneME_L-9d6GTwjM */ /* Drop VXLAN encapped packets originating in pods */ multiport dports 4789
    0     0 DROP       4    --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:r3X7Wrm9QxSXk__n */ /* Drop IPinIP encapped packets originating in pods */
    3   180 cali-pro-kns.kube-system  all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:sdGAahAIsWkc3PzE */
    3   180 RETURN     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:NSnHnCT5EJccX-WA */ /* Return if profile accepted */ mark match 0x10000/0x10000
    0     0 cali-pro-_hMH3axmCSxXO8wa164  all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:r99fXV1Tt-UeOZiq */
    0     0 RETURN     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:bvAiUO86QMR-0SSE */ /* Return if profile accepted */ mark match 0x10000/0x10000
    0     0 DROP       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:Y8W0qqYS5-DXciYG */ /* Drop if no profiles matched */

Chain cali-fw-calic0784236d5f (1 references)
 pkts bytes target     prot opt in     out     source               destination         
 2790  339K ACCEPT     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:z8DLU4WH0tK_pNeY */ ctstate RELATED,ESTABLISHED
    0     0 DROP       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:i0s0NyvePQrKIv-E */ ctstate INVALID
  544 32640 MARK       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:dKIU3RTctpdWmZYN */ MARK and 0xfffeffff
    0     0 DROP       udp  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:eN8azJJSc57wBvCR */ /* Drop VXLAN encapped packets originating in pods */ multiport dports 4789
    0     0 DROP       4    --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:Od2uQ5Rb2KLJw7I- */ /* Drop IPinIP encapped packets originating in pods */
  544 32640 cali-pro-kns.dev  all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:M2fr7iRMY5cVDVNk */
  544 32640 RETURN     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:MFlRYm4wwNusPDti */ /* Return if profile accepted */ mark match 0x10000/0x10000
    0     0 cali-pro-ksa.dev.default  all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:rpjXnOnnTbvuHvmD */
    0     0 RETURN     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:grhTzA94GHI73n4J */ /* Return if profile accepted */ mark match 0x10000/0x10000
    0     0 DROP       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:kXtwi8eSlfrO_Y6p */ /* Drop if no profiles matched */

Chain cali-fw-calicf8b0d0baf2 (1 references)
 pkts bytes target     prot opt in     out     source               destination         
 3612 2826K ACCEPT     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:f-7GkEhlvJDQtejO */ ctstate RELATED,ESTABLISHED
    0     0 DROP       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:L918sIkgv6qRz9Cl */ ctstate INVALID
   83  7142 MARK       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:9coQUxeVTvsF5zJ9 */ MARK and 0xfffeffff
    0     0 DROP       udp  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:nLJ5HIDE2Sb_veS4 */ /* Drop VXLAN encapped packets originating in pods */ multiport dports 4789
    0     0 DROP       4    --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:vf3v8IuXd1ZWl8rE */ /* Drop IPinIP encapped packets originating in pods */
   83  7142 cali-pro-kns.kube-system  all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:wSKh0jJek9J7Bk4r */
   83  7142 RETURN     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:WGpcERBUkZmJzmTC */ /* Return if profile accepted */ mark match 0x10000/0x10000
    0     0 cali-pro-_k7av1ffJ_LM_ftvh6m  all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:pYeDldaKuF36Tvp4 */
    0     0 RETURN     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:tVxzbDNzf4Xy91oC */ /* Return if profile accepted */ mark match 0x10000/0x10000
    0     0 DROP       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:s2pyVBi1sQBgR3mW */ /* Drop if no profiles matched */

Chain cali-fw-calid7820f5c789 (1 references)
 pkts bytes target     prot opt in     out     source               destination         
 1102  830K ACCEPT     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:5RzDg_BdLFSPRXXZ */ ctstate RELATED,ESTABLISHED
    0     0 DROP       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:unoqDgBvVmB0kpF- */ ctstate INVALID
  111  9821 MARK       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:S2CVqDDuV5sHU-0Z */ MARK and 0xfffeffff
    0     0 DROP       udp  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:ajaQcu1bCEthAXTb */ /* Drop VXLAN encapped packets originating in pods */ multiport dports 4789
    0     0 DROP       4    --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:kh5JEAcrSfhDXkkU */ /* Drop IPinIP encapped packets originating in pods */
  111  9821 cali-pro-kns.kube-system  all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:1wyxHdU8w9209pxf */
  111  9821 RETURN     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:JwTuAOpXVi0oIiTT */ /* Return if profile accepted */ mark match 0x10000/0x10000
    0     0 cali-pro-_hHPqAGO7Sc_GcoojC_  all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:_PaL5Rs4B4WsNs37 */
    0     0 RETURN     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:6DmxiAz9j64XMEAC */ /* Return if profile accepted */ mark match 0x10000/0x10000
    0     0 DROP       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:dzcVhIokWPTLDmgt */ /* Drop if no profiles matched */

Chain cali-fw-calid9ba32f8b18 (1 references)
 pkts bytes target     prot opt in     out     source               destination         
 4982  463K ACCEPT     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:1Wfqk5REeoO1niMi */ ctstate RELATED,ESTABLISHED
    0     0 DROP       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:UBy-4KrMfLeqdh8p */ ctstate INVALID
 1201 83160 MARK       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:dzaSerZ88KY7HHp7 */ MARK and 0xfffeffff
    0     0 DROP       udp  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:v4L2w0qp6Biy8suR */ /* Drop VXLAN encapped packets originating in pods */ multiport dports 4789
    0     0 DROP       4    --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:YPxpfd6BvbbfxIQV */ /* Drop IPinIP encapped packets originating in pods */
 1201 83160 cali-pro-kns.dev  all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:uOOCL15jiqGK03HC */
 1201 83160 RETURN     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:ofSMeTJn2NOSHhQP */ /* Return if profile accepted */ mark match 0x10000/0x10000
    0     0 cali-pro-ksa.dev.default  all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:J4kHvDMKEuhOfCdu */
    0     0 RETURN     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:9QgGWyDoVLJv4LUf */ /* Return if profile accepted */ mark match 0x10000/0x10000
    0     0 DROP       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:-SZ59Etli-iVOIkh */ /* Drop if no profiles matched */

Chain cali-fw-calie2cee35dbce (1 references)
 pkts bytes target     prot opt in     out     source               destination         
40923 6518K ACCEPT     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:eHqmBNceeqXjDgBJ */ ctstate RELATED,ESTABLISHED
    0     0 DROP       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:jVQzxLMleWPJr7Vv */ ctstate INVALID
    0     0 MARK       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:gef21Qa-EE-gMXpY */ MARK and 0xfffeffff
    0     0 DROP       udp  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:YpLFY8QbFC8Cm8Ca */ /* Drop VXLAN encapped packets originating in pods */ multiport dports 4789
    0     0 DROP       4    --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:iFE54T_3kSllIYKa */ /* Drop IPinIP encapped packets originating in pods */
    0     0 cali-pro-kns.dev  all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:5f9ktfJM5j-38NPv */
    0     0 RETURN     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:rMc4kzq4p3rf1Uhe */ /* Return if profile accepted */ mark match 0x10000/0x10000
    0     0 cali-pro-ksa.dev.default  all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:JyBXrNV0ZRZdL4cE */
    0     0 RETURN     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:o-GUf7WZP3w0j4AO */ /* Return if profile accepted */ mark match 0x10000/0x10000
    0     0 DROP       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:KvY_z2WTESM_gKhT */ /* Drop if no profiles matched */

Chain cali-fw-calif320a18605b (1 references)
 pkts bytes target     prot opt in     out     source               destination         
  552 57401 ACCEPT     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:pOY6B-wCoyR3sp4H */ ctstate RELATED,ESTABLISHED
    0     0 DROP       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:wtl_5iZ-J8O4PHgX */ ctstate INVALID
    5   300 MARK       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:g4uUlVgOGuTW7FWF */ MARK and 0xfffeffff
    0     0 DROP       udp  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:0zxAsZyufLs_EExA */ /* Drop VXLAN encapped packets originating in pods */ multiport dports 4789
    0     0 DROP       4    --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:CqX5Faqu3KdO5Kzy */ /* Drop IPinIP encapped packets originating in pods */
    5   300 cali-pro-kns.kube-system  all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:0oj7zIfyw-4CTO3c */
    5   300 RETURN     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:39JVLitK7h-fvyek */ /* Return if profile accepted */ mark match 0x10000/0x10000
    0     0 cali-pro-_hMH3axmCSxXO8wa164  all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:57McTa-EapLeGpOB */
    0     0 RETURN     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:lIZsE2Y2v--rTWNf */ /* Return if profile accepted */ mark match 0x10000/0x10000
    0     0 DROP       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:GC6SJlT9oO7u1wzK */ /* Drop if no profiles matched */

Chain cali-fw-calif9eb280ec40 (1 references)
 pkts bytes target     prot opt in     out     source               destination         
  982 71923 ACCEPT     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:KTvIvHb1oVxTwCu6 */ ctstate RELATED,ESTABLISHED
    0     0 DROP       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:TiSk3GM-tvwvvTSN */ ctstate INVALID
    1    60 MARK       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:XjnpbzKuGGa29fjK */ MARK and 0xfffeffff
    0     0 DROP       udp  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:L0xIIWP1I5lHx9Z5 */ /* Drop VXLAN encapped packets originating in pods */ multiport dports 4789
    0     0 DROP       4    --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:rcO03ViiLJHegU9b */ /* Drop IPinIP encapped packets originating in pods */
    1    60 cali-pro-kns.kube-system  all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:pZU8CRgfAZONXwpY */
    1    60 RETURN     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:cK7Jlfw8H4F0z9vP */ /* Return if profile accepted */ mark match 0x10000/0x10000
    0     0 cali-pro-_uWYVxQhEtQLr5GFz7e  all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:fMy8-GzbQF6i_CZl */
    0     0 RETURN     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:rqUBlCWl1xbMUi1N */ /* Return if profile accepted */ mark match 0x10000/0x10000
    0     0 DROP       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:vKE9F3mGYhY4hvhe */ /* Drop if no profiles matched */

Chain cali-pri-_CVSZITRyIpEmH8AB6H (1 references)
 pkts bytes target     prot opt in     out     source               destination         

Chain cali-pri-_cHTcjx4Xi7rghi4C9T (1 references)
 pkts bytes target     prot opt in     out     source               destination         

Chain cali-pri-_eSTHMIkNVbw_XFlWMl (1 references)
 pkts bytes target     prot opt in     out     source               destination         

Chain cali-pri-_hHPqAGO7Sc_GcoojC_ (1 references)
 pkts bytes target     prot opt in     out     source               destination         

Chain cali-pri-_hMH3axmCSxXO8wa164 (2 references)
 pkts bytes target     prot opt in     out     source               destination         

Chain cali-pri-_hNSGmJYNT8uLIzxesP (1 references)
 pkts bytes target     prot opt in     out     source               destination         

Chain cali-pri-_k7av1ffJ_LM_ftvh6m (1 references)
 pkts bytes target     prot opt in     out     source               destination         

Chain cali-pri-_lk3uafp1xALKGJtCJN (1 references)
 pkts bytes target     prot opt in     out     source               destination         

Chain cali-pri-_uWYVxQhEtQLr5GFz7e (1 references)
 pkts bytes target     prot opt in     out     source               destination         

Chain cali-pri-kns.dev (10 references)
 pkts bytes target     prot opt in     out     source               destination         
 7957  477K MARK       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:Sb51wH5sSX-RNC8y */ MARK or 0x10000
 7957  477K RETURN     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:-YIiZJ8tSinqvR8O */ mark match 0x10000/0x10000

Chain cali-pri-kns.kube-system (10 references)
 pkts bytes target     prot opt in     out     source               destination         
 3334  262K MARK       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:zoH5gU6U55FKZxEo */ MARK or 0x10000
 3334  262K RETURN     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:bcGRIJcyOS9dgBiB */ mark match 0x10000/0x10000

Chain cali-pri-ksa.dev.default (10 references)
 pkts bytes target     prot opt in     out     source               destination         

Chain cali-pro-_CVSZITRyIpEmH8AB6H (1 references)
 pkts bytes target     prot opt in     out     source               destination         

Chain cali-pro-_cHTcjx4Xi7rghi4C9T (1 references)
 pkts bytes target     prot opt in     out     source               destination         

Chain cali-pro-_eSTHMIkNVbw_XFlWMl (1 references)
 pkts bytes target     prot opt in     out     source               destination         

Chain cali-pro-_hHPqAGO7Sc_GcoojC_ (1 references)
 pkts bytes target     prot opt in     out     source               destination         

Chain cali-pro-_hMH3axmCSxXO8wa164 (2 references)
 pkts bytes target     prot opt in     out     source               destination         

Chain cali-pro-_hNSGmJYNT8uLIzxesP (1 references)
 pkts bytes target     prot opt in     out     source               destination         

Chain cali-pro-_k7av1ffJ_LM_ftvh6m (1 references)
 pkts bytes target     prot opt in     out     source               destination         

Chain cali-pro-_lk3uafp1xALKGJtCJN (1 references)
 pkts bytes target     prot opt in     out     source               destination         

Chain cali-pro-_uWYVxQhEtQLr5GFz7e (1 references)
 pkts bytes target     prot opt in     out     source               destination         

Chain cali-pro-kns.dev (10 references)
 pkts bytes target     prot opt in     out     source               destination         
14235  958K MARK       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:Rq36gCa4CVFnKg-l */ MARK or 0x10000
14235  958K RETURN     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:AfNHltey0pfPbADe */ mark match 0x10000/0x10000

Chain cali-pro-kns.kube-system (10 references)
 pkts bytes target     prot opt in     out     source               destination         
  631 51728 MARK       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:-50oJuMfLVO3LkBk */ MARK or 0x10000
  631 51728 RETURN     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:ztVPKv1UYejNzm1g */ mark match 0x10000/0x10000

Chain cali-pro-ksa.dev.default (10 references)
 pkts bytes target     prot opt in     out     source               destination         

Chain cali-to-hep-forward (1 references)
 pkts bytes target     prot opt in     out     source               destination         

Chain cali-to-host-endpoint (1 references)
 pkts bytes target     prot opt in     out     source               destination         

Chain cali-to-wl-dispatch (1 references)
 pkts bytes target     prot opt in     out     source               destination         
21509 8343K cali-to-wl-dispatch-0  all  --  *      cali0+  0.0.0.0/0            0.0.0.0/0           [goto]  /* cali:dIkHjFD9PelLx7cm */
  841 80466 cali-tw-cali1c39897f10f  all  --  *      cali1c39897f10f  0.0.0.0/0            0.0.0.0/0           [goto]  /* cali:mjMiCxqvQ25LXH36 */
  869 83390 cali-tw-cali22841037ef8  all  --  *      cali22841037ef8  0.0.0.0/0            0.0.0.0/0           [goto]  /* cali:1Bksax_YlcxK4Dj9 */
  835 79258 cali-tw-cali363f791ae66  all  --  *      cali363f791ae66  0.0.0.0/0            0.0.0.0/0           [goto]  /* cali:ZhJ8R0gw7oF0J41l */
 2414 3928K cali-to-wl-dispatch-4  all  --  *      cali4+  0.0.0.0/0            0.0.0.0/0           [goto]  /* cali:X0zDVeDiHVol_ezt */
  770 71500 cali-tw-cali923f86f51da  all  --  *      cali923f86f51da  0.0.0.0/0            0.0.0.0/0           [goto]  /* cali:BJ9koW7kAXg5kG1E */
 1565 1098K cali-tw-caliaf6bd9e3dd6  all  --  *      caliaf6bd9e3dd6  0.0.0.0/0            0.0.0.0/0           [goto]  /* cali:JQxniRlVOSdPLAKt */
 5288 2446K cali-to-wl-dispatch-b  all  --  *      calib+  0.0.0.0/0            0.0.0.0/0           [goto]  /* cali:r9R8jA3zQl8F-ATq */
 2465 4128K cali-to-wl-dispatch-c  all  --  *      calic+  0.0.0.0/0            0.0.0.0/0           [goto]  /* cali:Bi0C9ib0kd-VLiB- */
 1061  669K cali-to-wl-dispatch-d  all  --  *      calid+  0.0.0.0/0            0.0.0.0/0           [goto]  /* cali:g5IMWbzehVXuxKC6 */
 6126  368K cali-tw-calie2cee35dbce  all  --  *      calie2cee35dbce  0.0.0.0/0            0.0.0.0/0           [goto]  /* cali:Ii2zTkQH1fTJnWg6 */
 1009 1332K cali-to-wl-dispatch-f  all  --  *      calif+  0.0.0.0/0            0.0.0.0/0           [goto]  /* cali:wVIiMK5-E4ZJQwnq */
    0     0 DROP       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:1Dqp_Do1wwHfEFs4 */ /* Unknown interface */

Chain cali-to-wl-dispatch-0 (1 references)
 pkts bytes target     prot opt in     out     source               destination         
 1566  125K cali-tw-cali001f6121953  all  --  *      cali001f6121953  0.0.0.0/0            0.0.0.0/0           [goto]  /* cali:L1tauWEUAXNPBGud */
  887 82420 cali-tw-cali02bcd13d7d7  all  --  *      cali02bcd13d7d7  0.0.0.0/0            0.0.0.0/0           [goto]  /* cali:_kvShSEx4iI7md2I */
15619 5463K cali-tw-cali0e254ef053c  all  --  *      cali0e254ef053c  0.0.0.0/0            0.0.0.0/0           [goto]  /* cali:LU8juuhKmvKBL6xq */
    0     0 cali-tw-cali0e4c83da0c2  all  --  *      cali0e4c83da0c2  0.0.0.0/0            0.0.0.0/0           [goto]  /* cali:qX1sFb5_0snBg_LH */
    0     0 DROP       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:EnaUkyIqcT8I6y80 */ /* Unknown interface */

Chain cali-to-wl-dispatch-4 (1 references)
 pkts bytes target     prot opt in     out     source               destination         
 2409 3927K cali-tw-cali487296ebfc4  all  --  *      cali487296ebfc4  0.0.0.0/0            0.0.0.0/0           [goto]  /* cali:shCTscVbGhWnmndc */
    5   244 cali-tw-cali4bbcf1021d6  all  --  *      cali4bbcf1021d6  0.0.0.0/0            0.0.0.0/0           [goto]  /* cali:E63OSiGMK9mVsXnw */
    0     0 DROP       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:j0rotOeqW3Dg1jT9 */ /* Unknown interface */

Chain cali-to-wl-dispatch-b (1 references)
 pkts bytes target     prot opt in     out     source               destination         
 5100 1853K cali-tw-calib56d958096f  all  --  *      calib56d958096f  0.0.0.0/0            0.0.0.0/0           [goto]  /* cali:fkTWALhSeeO0d6ve */
  188  592K cali-tw-calibafc89b76e6  all  --  *      calibafc89b76e6  0.0.0.0/0            0.0.0.0/0           [goto]  /* cali:qY5_Jd1wlfYYaJEu */
    0     0 DROP       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:DYADondVgQ8oOjtl */ /* Unknown interface */

Chain cali-to-wl-dispatch-c (1 references)
 pkts bytes target     prot opt in     out     source               destination         
   26  9544 cali-tw-calic0784236d5f  all  --  *      calic0784236d5f  0.0.0.0/0            0.0.0.0/0           [goto]  /* cali:meiz7ZtlnuUH8eyc */
 2882 5046K cali-tw-calicf8b0d0baf2  all  --  *      calicf8b0d0baf2  0.0.0.0/0            0.0.0.0/0           [goto]  /* cali:pZRl1frF-E8xGPzL */
    0     0 DROP       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:JfONqjZkYI3P8VG7 */ /* Unknown interface */

Chain cali-to-wl-dispatch-d (1 references)
 pkts bytes target     prot opt in     out     source               destination         
  705  752K cali-tw-calid7820f5c789  all  --  *      calid7820f5c789  0.0.0.0/0            0.0.0.0/0           [goto]  /* cali:6fZT2wr4CzRGj8hy */
  698 64680 cali-tw-calid9ba32f8b18  all  --  *      calid9ba32f8b18  0.0.0.0/0            0.0.0.0/0           [goto]  /* cali:4PoQY_-rtITnzy8F */
    0     0 DROP       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:yH5yTRWx958TKkSp */ /* Unknown interface */

Chain cali-to-wl-dispatch-f (1 references)
 pkts bytes target     prot opt in     out     source               destination         
  474  824K cali-tw-calif320a18605b  all  --  *      calif320a18605b  0.0.0.0/0            0.0.0.0/0           [goto]  /* cali:ADLBor9HQznv3rXi */
 1086 1010K cali-tw-calif9eb280ec40  all  --  *      calif9eb280ec40  0.0.0.0/0            0.0.0.0/0           [goto]  /* cali:a_qGfoBTL27efSbE */
    0     0 DROP       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:08sJ_1yK54nT-Ii7 */ /* Unknown interface */

Chain cali-tw-cali001f6121953 (1 references)
 pkts bytes target     prot opt in     out     source               destination         
    0     0 ACCEPT     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:RZ8y89bIXGAaVu3n */ ctstate RELATED,ESTABLISHED
    0     0 DROP       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:yb9GkCnGxP5V8fq6 */ ctstate INVALID
 1566  125K MARK       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:PkYBXA-xdyTrhh6o */ MARK and 0xfffeffff
 1566  125K cali-pri-kns.kube-system  all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:g3ftsvmAGqPFb1c- */
 1566  125K RETURN     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:PkEBMOS5rlF-xjFN */ /* Return if profile accepted */ mark match 0x10000/0x10000
    0     0 cali-pri-_hNSGmJYNT8uLIzxesP  all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:qp5zyjrJ1wvxyJKW */
    0     0 RETURN     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:l54GqDlz6OkJnRBg */ /* Return if profile accepted */ mark match 0x10000/0x10000
    0     0 DROP       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:6uBWxadt_-y7adbv */ /* Drop if no profiles matched */

Chain cali-tw-cali02bcd13d7d7 (1 references)
 pkts bytes target     prot opt in     out     source               destination         
  584 64240 ACCEPT     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:kMMwzcbuv4QsOLZs */ ctstate RELATED,ESTABLISHED
    0     0 DROP       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:M7hgmAK2oQ0Zhs1J */ ctstate INVALID
  303 18180 MARK       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:2MNmYedXuBEpbiYe */ MARK and 0xfffeffff
  303 18180 cali-pri-kns.dev  all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:PLEx7wMntF19VNmh */
  303 18180 RETURN     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:pum18TA75RGVBX6H */ /* Return if profile accepted */ mark match 0x10000/0x10000
    0     0 cali-pri-ksa.dev.default  all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:SMqy0kc9gDMHzVMg */
    0     0 RETURN     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:qJwVPQb610zQoDpl */ /* Return if profile accepted */ mark match 0x10000/0x10000
    0     0 DROP       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:N9F3dPUehd8CniMv */ /* Drop if no profiles matched */

Chain cali-tw-cali0e254ef053c (1 references)
 pkts bytes target     prot opt in     out     source               destination         
19056 8136K ACCEPT     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:INW55mws5a3ktnRC */ ctstate RELATED,ESTABLISHED
    0     0 DROP       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:6zCJSK5njJNPup9Y */ ctstate INVALID
    0     0 MARK       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:6pIEjy3gqKNbEocL */ MARK and 0xfffeffff
    0     0 cali-pri-kns.kube-system  all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:e3vy7zByLlvKdlQw */
    0     0 RETURN     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:qV87q4WlJZSnlh3Z */ /* Return if profile accepted */ mark match 0x10000/0x10000
    0     0 cali-pri-_lk3uafp1xALKGJtCJN  all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:IdqXOFRR9C5pMtvA */
    0     0 RETURN     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:ohy2k2tmZxNwJUw1 */ /* Return if profile accepted */ mark match 0x10000/0x10000
    0     0 DROP       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:QyCd03UBnbbpgUuH */ /* Drop if no profiles matched */

Chain cali-tw-cali0e4c83da0c2 (1 references)
 pkts bytes target     prot opt in     out     source               destination         
    0     0 ACCEPT     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:oGDZGxFgpEBjtAls */ ctstate RELATED,ESTABLISHED
    0     0 DROP       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:ZVhiuE6FO2wKr8jQ */ ctstate INVALID
    0     0 MARK       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:ghOygebGi_bag3Dv */ MARK and 0xfffeffff
    0     0 cali-pri-kns.dev  all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:B1xWPyLCKm5jzzh- */
    0     0 RETURN     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:G-7beqJWAjlLHDcW */ /* Return if profile accepted */ mark match 0x10000/0x10000
    0     0 cali-pri-ksa.dev.default  all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:NIpacA_HFIGXEn_j */
    0     0 RETURN     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:6oAlV1pLmoGsQkSy */ /* Return if profile accepted */ mark match 0x10000/0x10000
    0     0 DROP       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:lCNESbG1tmSFmGuB */ /* Drop if no profiles matched */

Chain cali-tw-cali1c39897f10f (1 references)
 pkts bytes target     prot opt in     out     source               destination         
  577 64626 ACCEPT     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:JSbTs6bIVCZeSm3T */ ctstate RELATED,ESTABLISHED
    0     0 DROP       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:KMPWGFyBLgqoft3v */ ctstate INVALID
  264 15840 MARK       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:FuKeTG_bXIqLJ2DS */ MARK and 0xfffeffff
  264 15840 cali-pri-kns.dev  all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:WET33tYDarDVkAwf */
  264 15840 RETURN     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:JUmOzF0jPZwGP1GZ */ /* Return if profile accepted */ mark match 0x10000/0x10000
    0     0 cali-pri-ksa.dev.default  all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:uszJvCywL8XaKV79 */
    0     0 RETURN     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:2APRNY9bEeSTKIoQ */ /* Return if profile accepted */ mark match 0x10000/0x10000
    0     0 DROP       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:QIqa9o4h54jcNBqQ */ /* Drop if no profiles matched */

Chain cali-tw-cali22841037ef8 (1 references)
 pkts bytes target     prot opt in     out     source               destination         
  600 67250 ACCEPT     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:ldy7EOaGbhH6L8uc */ ctstate RELATED,ESTABLISHED
    0     0 DROP       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:2ZE2HalSH0nfDoI4 */ ctstate INVALID
  269 16140 MARK       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:EQALvTIp8Yg7oqzl */ MARK and 0xfffeffff
  269 16140 cali-pri-kns.dev  all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:DL6RDiBpZOl5CbLN */
  269 16140 RETURN     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:BXSaaAGJdYwC1P5H */ /* Return if profile accepted */ mark match 0x10000/0x10000
    0     0 cali-pri-ksa.dev.default  all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:6hi70q7nzhqlc2xs */
    0     0 RETURN     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:gp5HrvaoutbRSKnx */ /* Return if profile accepted */ mark match 0x10000/0x10000
    0     0 DROP       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:zU2EnCYFAEeywkJj */ /* Drop if no profiles matched */

Chain cali-tw-cali363f791ae66 (1 references)
 pkts bytes target     prot opt in     out     source               destination         
  561 62818 ACCEPT     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:ojkLA4yzC9y5mn75 */ ctstate RELATED,ESTABLISHED
    0     0 DROP       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:jMoGNStHfVJIFZM8 */ ctstate INVALID
  274 16440 MARK       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:XFQRdC-m-3hDVMHY */ MARK and 0xfffeffff
  274 16440 cali-pri-kns.dev  all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:7vtleWdL2nI3YHu4 */
  274 16440 RETURN     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:41qbsyI_viLwe4sy */ /* Return if profile accepted */ mark match 0x10000/0x10000
    0     0 cali-pri-ksa.dev.default  all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:Vo6m5RIPfJJZbvDW */
    0     0 RETURN     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:t_sry0_BmNHJ2SEV */ /* Return if profile accepted */ mark match 0x10000/0x10000
    0     0 DROP       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:dF5phH_MKPvL5p_k */ /* Drop if no profiles matched */

Chain cali-tw-cali487296ebfc4 (1 references)
 pkts bytes target     prot opt in     out     source               destination         
 2762 4475K ACCEPT     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:cp9YYLRQz7fnVPZa */ ctstate RELATED,ESTABLISHED
    0     0 DROP       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:XtRnH-KLaqcc4Qpn */ ctstate INVALID
    0     0 MARK       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:D0tXTK7f0QBSL3qs */ MARK and 0xfffeffff
    0     0 cali-pri-kns.kube-system  all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:sl8nRs0Zy8awWFCl */
    0     0 RETURN     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:KwLz45WGan3dF40u */ /* Return if profile accepted */ mark match 0x10000/0x10000
    0     0 cali-pri-_CVSZITRyIpEmH8AB6H  all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:dkiEzZaU3YtDoDRy */
    0     0 RETURN     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:XEXr9WiUpfN8DmEE */ /* Return if profile accepted */ mark match 0x10000/0x10000
    0     0 DROP       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:SY8ii-0S3LEJ4M-S */ /* Drop if no profiles matched */

Chain cali-tw-cali4bbcf1021d6 (1 references)
 pkts bytes target     prot opt in     out     source               destination         
    4   184 ACCEPT     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:GnDrZT_nMthXVc7Z */ ctstate RELATED,ESTABLISHED
    0     0 DROP       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:nGIO6VYMuhE3f2Bl */ ctstate INVALID
    1    60 MARK       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:GDlYgij0L48vIyIC */ MARK and 0xfffeffff
    1    60 cali-pri-kns.dev  all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:-W77jXsUcZMNrsqh */
    1    60 RETURN     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:_nPsJShkybZcIeZZ */ /* Return if profile accepted */ mark match 0x10000/0x10000
    0     0 cali-pri-ksa.dev.default  all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:Lfa-GxVRMWYLPa26 */
    0     0 RETURN     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:dtGC8o9y9Ifb6zhh */ /* Return if profile accepted */ mark match 0x10000/0x10000
    0     0 DROP       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:yBkWt4MD_sbrNNVI */ /* Drop if no profiles matched */

Chain cali-tw-cali923f86f51da (1 references)
 pkts bytes target     prot opt in     out     source               destination         
  506 55660 ACCEPT     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:Q_UW4cx0aweMEE1_ */ ctstate RELATED,ESTABLISHED
    0     0 DROP       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:Vip4gWubCSGLNu9b */ ctstate INVALID
  264 15840 MARK       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:Yoc5AWQ0znVl-Q9g */ MARK and 0xfffeffff
  264 15840 cali-pri-kns.dev  all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:voBva_wW61yoUmOX */
  264 15840 RETURN     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:qWXMATqSLaJHwdhh */ /* Return if profile accepted */ mark match 0x10000/0x10000
    0     0 cali-pri-ksa.dev.default  all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:PavDCu6mIatppAld */
    0     0 RETURN     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:uSO2ej-N6JRkLzC6 */ /* Return if profile accepted */ mark match 0x10000/0x10000
    0     0 DROP       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:E87ICzXmcasjPfsh */ /* Drop if no profiles matched */

Chain cali-tw-caliaf6bd9e3dd6 (1 references)
 pkts bytes target     prot opt in     out     source               destination         
 1987 1355K ACCEPT     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:fpyoVBDWeGUPeSuD */ ctstate RELATED,ESTABLISHED
    0     0 DROP       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:UnBp_zs45ig_yanI */ ctstate INVALID
    0     0 MARK       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:2e5-JyX7P2a_ng0J */ MARK and 0xfffeffff
    0     0 cali-pri-kns.kube-system  all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:I-HmNr-F4H7VYHTP */
    0     0 RETURN     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:KJvtGyAjRXjD-1yg */ /* Return if profile accepted */ mark match 0x10000/0x10000
    0     0 cali-pri-_eSTHMIkNVbw_XFlWMl  all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:aYBUbA7ArQEjP39j */
    0     0 RETURN     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:eQIdkJIn_-wUX5Xa */ /* Return if profile accepted */ mark match 0x10000/0x10000
    0     0 DROP       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:hx_ePJfKQKki1qkQ */ /* Drop if no profiles matched */

Chain cali-tw-calib56d958096f (1 references)
 pkts bytes target     prot opt in     out     source               destination         
 3651 1742K ACCEPT     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:TD4RUjCGAQI_a9qX */ ctstate RELATED,ESTABLISHED
    0     0 DROP       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:FospUN_owKpXeWjy */ ctstate INVALID
 1449  111K MARK       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:8qdrvxYpXLhT4-DE */ MARK and 0xfffeffff
 1449  111K cali-pri-kns.kube-system  all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:SDFohewdjcq8gv9X */
 1449  111K RETURN     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:ZoDZDba1xJn3oHqU */ /* Return if profile accepted */ mark match 0x10000/0x10000
    0     0 cali-pri-_cHTcjx4Xi7rghi4C9T  all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:lHdWQycRzxXBCHmy */
    0     0 RETURN     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:h4GBVRMcvATs9TsQ */ /* Return if profile accepted */ mark match 0x10000/0x10000
    0     0 DROP       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:L0xUrVY9Vhdzlgqw */ /* Drop if no profiles matched */

Chain cali-tw-calibafc89b76e6 (1 references)
 pkts bytes target     prot opt in     out     source               destination         
  407  781K ACCEPT     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:OVBtdaZk7hXigtmI */ ctstate RELATED,ESTABLISHED
    0     0 DROP       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:ojqlfc1ltalIiVAz */ ctstate INVALID
    0     0 MARK       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:1IXIN0mET2eqoGgc */ MARK and 0xfffeffff
    0     0 cali-pri-kns.kube-system  all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:hEEkZ4UzfoO0yg8i */
    0     0 RETURN     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:3oeHdgiPoMXpcvBk */ /* Return if profile accepted */ mark match 0x10000/0x10000
    0     0 cali-pri-_hMH3axmCSxXO8wa164  all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:Gi1IOWEWyQJcnypy */
    0     0 RETURN     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:lI2CLKWKJPNIjcA2 */ /* Return if profile accepted */ mark match 0x10000/0x10000
    0     0 DROP       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:cpy57rSYDsdynWsy */ /* Drop if no profiles matched */

Chain cali-tw-calic0784236d5f (1 references)
 pkts bytes target     prot opt in     out     source               destination         
   24  9424 ACCEPT     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:5P8AbQaM9iijluwH */ ctstate RELATED,ESTABLISHED
    0     0 DROP       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:DkyW8PnO7137TDCS */ ctstate INVALID
    2   120 MARK       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:l3L_oG__YemkOhH4 */ MARK and 0xfffeffff
    2   120 cali-pri-kns.dev  all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:57ybLIAQ5u5cSDYL */
    2   120 RETURN     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:M0aVrEkCxdAXi5RI */ /* Return if profile accepted */ mark match 0x10000/0x10000
    0     0 cali-pri-ksa.dev.default  all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:ULZpaaC2FSTBCIlT */
    0     0 RETURN     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:C-9fJN27M96N3VL8 */ /* Return if profile accepted */ mark match 0x10000/0x10000
    0     0 DROP       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:cGVYWqUNZViCdywJ */ /* Drop if no profiles matched */

Chain cali-tw-calicf8b0d0baf2 (1 references)
 pkts bytes target     prot opt in     out     source               destination         
 3253 5490K ACCEPT     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:xZ26f3Ixq_L0in8c */ ctstate RELATED,ESTABLISHED
    0     0 DROP       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:_OJOuvK7DiRe0fYv */ ctstate INVALID
    0     0 MARK       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:-5fEcIVVWG2ZWfyq */ MARK and 0xfffeffff
    0     0 cali-pri-kns.kube-system  all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:Zrc6DVGyCxmhgnay */
    0     0 RETURN     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:lGi1ZRFs1a_aMUdI */ /* Return if profile accepted */ mark match 0x10000/0x10000
    0     0 cali-pri-_k7av1ffJ_LM_ftvh6m  all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:4yttEsBIhfsy6Z4o */
    0     0 RETURN     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:mIlIlrPdP_Xf5ilJ */ /* Return if profile accepted */ mark match 0x10000/0x10000
    0     0 DROP       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:bssrbsWtpHXzcxL2 */ /* Drop if no profiles matched */

Chain cali-tw-calid7820f5c789 (1 references)
 pkts bytes target     prot opt in     out     source               destination         
 1227 1416K ACCEPT     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:v7E3GvxW64tCJPk- */ ctstate RELATED,ESTABLISHED
    0     0 DROP       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:rZh0FF8p-uNQgL0s */ ctstate INVALID
    0     0 MARK       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:Dllz-7SEpLwB5Hwz */ MARK and 0xfffeffff
    0     0 cali-pri-kns.kube-system  all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:Jb-1C-K1rKexYpI2 */
    0     0 RETURN     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:kDBLAdbJdBjeRo19 */ /* Return if profile accepted */ mark match 0x10000/0x10000
    0     0 cali-pri-_hHPqAGO7Sc_GcoojC_  all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:prioov3kP1MwKhsy */
    0     0 RETURN     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:PLZNiRmdfjUzlwEp */ /* Return if profile accepted */ mark match 0x10000/0x10000
    0     0 DROP       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:r1mw6VNOAT0uMek5 */ /* Drop if no profiles matched */

Chain cali-tw-calid9ba32f8b18 (1 references)
 pkts bytes target     prot opt in     out     source               destination         
  456 50160 ACCEPT     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:UxcCoeDJPSgyIotN */ ctstate RELATED,ESTABLISHED
    0     0 DROP       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:0NcOH1lKBV1y6wju */ ctstate INVALID
  242 14520 MARK       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:kv25sVl5I-X00svN */ MARK and 0xfffeffff
  242 14520 cali-pri-kns.dev  all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:s8-FRiaDBb9EjaOV */
  242 14520 RETURN     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:S5C6r4r5lJbIo21w */ /* Return if profile accepted */ mark match 0x10000/0x10000
    0     0 cali-pri-ksa.dev.default  all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:T6Dc-YR3z4gow-uH */
    0     0 RETURN     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:8k8kMu2lkpmbizdR */ /* Return if profile accepted */ mark match 0x10000/0x10000
    0     0 DROP       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:v5xvz8qIZqVQ3DQe */ /* Drop if no profiles matched */

Chain cali-tw-calie2cee35dbce (1 references)
 pkts bytes target     prot opt in     out     source               destination         
    0     0 ACCEPT     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:UzLAG6BamDggjJ1N */ ctstate RELATED,ESTABLISHED
    0     0 DROP       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:R-tSbr_PLg5XXhWm */ ctstate INVALID
 6338  380K MARK       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:OSrW88-mT2gChaMX */ MARK and 0xfffeffff
 6338  380K cali-pri-kns.dev  all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:6_hUlZOWSi7GcH1h */
 6338  380K RETURN     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:8yg3V7OYRNyV9ndX */ /* Return if profile accepted */ mark match 0x10000/0x10000
    0     0 cali-pri-ksa.dev.default  all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:yfKSPYBIwHrzdCG4 */
    0     0 RETURN     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:QWw7RdU8TCMuSrBZ */ /* Return if profile accepted */ mark match 0x10000/0x10000
    0     0 DROP       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:06RMSNOkKJALe__2 */ /* Drop if no profiles matched */

Chain cali-tw-calif320a18605b (1 references)
 pkts bytes target     prot opt in     out     source               destination         
  474  824K ACCEPT     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:YgyD-CnqRaH6r_7s */ ctstate RELATED,ESTABLISHED
    0     0 DROP       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:I3lybd5EXq7nFVaB */ ctstate INVALID
    0     0 MARK       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:I5e_DgK_cJrEfF6J */ MARK and 0xfffeffff
    0     0 cali-pri-kns.kube-system  all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:ArYxT_36TVgwxFNG */
    0     0 RETURN     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:kJVoBxD5iJYvJ7No */ /* Return if profile accepted */ mark match 0x10000/0x10000
    0     0 cali-pri-_hMH3axmCSxXO8wa164  all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:4khFhfSay0qf58zq */
    0     0 RETURN     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:18dEGH8L8ALAjndo */ /* Return if profile accepted */ mark match 0x10000/0x10000
    0     0 DROP       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:zFA05GRsNaek0mqJ */ /* Drop if no profiles matched */

Chain cali-tw-calif9eb280ec40 (1 references)
 pkts bytes target     prot opt in     out     source               destination         
 1086 1010K ACCEPT     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:0ZsmajcyNXCzY9QR */ ctstate RELATED,ESTABLISHED
    0     0 DROP       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:cPhD0yL6X_H-hZ8a */ ctstate INVALID
    0     0 MARK       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:NjpBj8NZ0UEgt91q */ MARK and 0xfffeffff
    0     0 cali-pri-kns.kube-system  all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:o4Misn9tsIoEo7sj */
    0     0 RETURN     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:3Yg2OiaJdWPWbPr1 */ /* Return if profile accepted */ mark match 0x10000/0x10000
    0     0 cali-pri-_uWYVxQhEtQLr5GFz7e  all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:c9w6tIH2ijxItrAl */
    0     0 RETURN     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:Lpfxp5gll-2AcGys */ /* Return if profile accepted */ mark match 0x10000/0x10000
    0     0 DROP       all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:x2_QM3AYjz-tnCGx */ /* Drop if no profiles matched */

Chain cali-wl-to-host (1 references)
 pkts bytes target     prot opt in     out     source               destination         
 5314  864K cali-from-wl-dispatch  all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:Ee9Sbo10IpVujdIY */
    2   120 ACCEPT     all  --  *      *       0.0.0.0/0            0.0.0.0/0            /* cali:nSZbcOoG1xPONxb8 */ /* Configured DefaultEndpointToHostAction */
```
</p>
</details>


#### kube-dns

Схема приобретает следующий вид
![scheme-kube-dns-kube-proxy.png](kubernetes/img/scheme-kube-dns-kube-proxy.png)

##### А в рамках кластера?

На самом деле, независимо от того, на одной ноде находятся поды или на разных - трафик проходит через цепочку, изображенную на предыдущем слайде.

Kubernetes не имеет в комплекте механизма организации overlayсетей (как у Docker Swarm). Он лишь предоставляет интерфейс для этого. Для создания Overlay-сетей используются отдельные аддоны: Weave, Calico, Flannel, ... . В Google Kontainer Engine (GKE) используется собственный плагин **kubenet** (он - часть kubelet).

Он работает **только** вместе с платформой **GCP** и, по-сути занимается тем, что настраивает google-сети для передачи трафика Kubernetes. Поэтому в конфигурации Docker сейчас вы не увидите никаких Overlay-сетей.

#### kubenet

Схема приобретает следующий вид
![scheme-kubenet.png](kubernetes/img/scheme-kubenet.png)

##### А в рамках кластера?

Посмотреть правила, согласно которым трафик отправляется на ноды можно здесь: https://console.cloud.google.com/networking/routes/

#### nodePort

Service с типом **NodePort** - похож на сервис типа **ClusterIP**, только к нему прибавляется прослушивание портов нод (всех нод) для доступа к сервисам **снаружи**.  При этом ClusterIP также назначается этому сервису для доступа к нему изнутри кластера.

**kube-proxy** прослушивается либо заданный порт (`nodePort: 32092`), либо порт из диапазона **30000-32670**.

Дальше _IPTables_ решает, на какой Pod попадет трафик.

Сервис UI мы уже публиковали наружу с помощью **NodePort**

`ui-service.yml`
```yaml
---
apiVersion: v1
kind: Service
metadata:
  name: ui
  labels:
    app: reddit
    component: ui
spec:
  type: NodePort
  ports:
  - port: 9292
    nodePort: 32092
    protocol: TCP
    targetPort: 9292
  selector:
    app: reddit
    component: ui
```

Схема приобретает следующий вид
![scheme-nodeport.png](kubernetes/img/scheme-nodeport.png)


#### LoadBalancer

Тип **NodePort** хоть и предоставляет доступ к сервису снаружи, но открывать все порты наружу или искать IP-адреса наших нод (которые вообще динамические) не очень удобно.

Тип **LoadBalancer** позволяет нам использовать внешний облачный балансировщик нагрузки как единую точку входа в наши сервисы, а не полагаться на IPTables и не открывать наружу весь кластер.

Схема приобретает следующий вид
![scheme-loadbalancer.png](kubernetes/img/scheme-loadbalancer.png)

Настроим соответствующим образом Service UI
```yaml
---
apiVersion: v1
kind: Service
metadata:
  name: ui
  labels:
    app: reddit
    component: ui
spec:
  type: LoadBalancer
  ports:
    - port: 80  # Порт, который будет открыт на балансировщике
      nodePort: 32092  # Также на ноде будет открыт порт, но нам он не нужен и его можно даже убрать
      protocol: TCP
      targetPort: 9292  # Порт POD-а
  selector:
    app: reddit
    component: ui
```

Настроим соответствующим образом Service UI
```shell
kubectl apply -f ui-service.yml -n dev
```

Посмотрим что там
```shell
kubectl get service -n dev --selector component=ui
```
```log
NAME   TYPE           CLUSTER-IP   EXTERNAL-IP    PORT(S)        AGE
ui     LoadBalancer   10.4.7.57    34.67.99.206   80:32092/TCP   2m39s
```

Проверим в браузере: http://34.67.99.206:80

Все компоненты приложения работают.

Будет создано правило для балансировки: _Network services_ -> _Load balancing_
![screenshot-loadbalancer.png](kubernetes/img/screenshot-loadbalancer.png)

Балансировка с помощью Service типа LoadBalancing имеет ряд недостатков:
- нельзя управлять с помощью http URI (L7-балансировка)
- используются **только** облачные балансировщики (AWS, GCP)
- нет гибких правил работы с трафиком

#### Ingress

Для более удобного управления входящим снаружи трафиком и решения недостатков LoadBalancer можно использовать другой объект Kubernetes - **Ingress**.

**Ingress** – это набор правил внутри кластера Kubernetes, предназначенных для того, чтобы входящие подключения могли достичь сервисов (Services)

Сами по себе Ingress’ы это просто правила. Для их применения нужен **Ingress Controller**.

##### Ingress Conroller

Для работы Ingress-ов необходим **Ingress Controller**. В отличие остальных контроллеров k8s - он не стартует вместе с кластером.

**Ingress Controller** - это скорее плагин (а значит и отдельный POD), который состоит из 2-х функциональных частей: 
- Приложение, которое отслеживает через k8s API новые объекты Ingress и обновляет конфигурацию балансировщика
- Балансировщик (Nginx, haproxy, traefik,…), который и занимается управлением сетевым трафиком

##### Ingress

Основные задачи, решаемые с помощью Ingress’ов:
- Организация единой точки входа в приложения снаружи
- Обеспечение балансировки трафика
- Терминация SSL 
- Виртуальный хостинг на основе имен и т.д

Посколько у нас web-приложение, нам вполне было бы логично использовать L7-балансировщик вместо Service LoadBalancer.

Google в GKE уже предоставляет возможность использовать их собственные решения балансирощик в качестве Ingress controller-ов.

Перейдите в настройки кластера в [веб-консоли gcloud](https://console.cloud.google.com/kubernetes)

Убедитесь, что встроенный Ingress включен. Если нет - включите

Создадим Ingress для сервиса UI
`ui-ingress.yml`
```yaml
---
apiVersion: extensions/v1beta1
kind: Ingress
metadata:
  name: ui
spec:
  backend:
    serviceName: ui
    servicePort: 80
```
Это **Singe Service Ingress** - значит, что весь ingress контроллер будет просто балансировать нагрузку на Node-ы для одного сервиса (очень похоже на Service LoadBalancer)

Применим конфиг
```shell
kubectl apply -f ui-ingress.yml -n dev
```
```log
ingress.extensions/ui created
```

Зайдем в [консоль GCP](https://console.cloud.google.com/net-services/loadbalancing/loadBalancers/list) и увидим уже несколько правил
![screenshot-loadbalancers.png](kubernetes/img/screenshot-loadbalancers.png)

Нас интересует 1-е
![screenshot-loadbalancer-ingress.png](kubernetes/img/screenshot-loadbalancer-ingress.png)

Видим NodePort опубликованного сервиса. Т.е. для работы с Ingress в GCP нам нужен минимум Service с типом **NodePort** (он уже есть)

Посмотрим в сам кластер:
```shell
kubectl get ingress -n dev
```
```log
NAME   HOSTS   ADDRESS         PORTS   AGE
ui     *       34.95.116.107   80      5m52s
```

Схема приобретает следующий вид
![scheme-ingress.png](kubernetes/img/scheme-ingress.png)

В текущей схеме есть несколько недостатков:
- у нас 2 балансировщика для 1 сервиса
- Мы не умеем управлять трафиком на уровне HTTP

Один балансировщик можно спокойно убрать. Обновим сервис для UI
`kubernetes/reddit/ui-service.yml`
```yaml
---
apiVersion: v1
kind: Service
metadata:
  name: ui
  labels:
    app: reddit
    component: ui
spec:
  type: NodePort
  ports:
    - port: 9292
      protocol: TCP
      targetPort: 9292
  selector:
    app: reddit
    component: ui
```

Применим
```shell
kubectl apply -f ui-service.yml -n dev
```
```log
service/ui configured
```

Заставим работать Ingress Controller как классический веб
`kubernetes/reddit/ui-ingress.yml`
```yaml
---
apiVersion: extensions/v1beta1
kind: Ingress
metadata:
  name: ui
spec:
  rules:
    - http:
        paths:
          - path: /*
            backend:
              serviceName: ui
              servicePort: 9292
```
```shell
kubectl apply -f ui-ingress.yml -n dev
```
```log
ingress.extensions/ui configured
```
```shell
kubectl get ingress -n dev
```
```log
NAME   HOSTS   ADDRESS         PORTS   AGE
ui     *       34.95.116.107   80      14m
```

При попытке открыть http://34.95.116.107:80 ошибка 502
```log
Error: Server Error
The server encountered a temporary error and could not complete your request.
Please try again in 30 seconds.
```

Подождём... Проверил через 10 минут - всё работает.

#### Secret

Теперь давайте защитим наш сервис с помощью TLS. Для начала вспомним Ingress IP
```shell
kubectl get ingress -n dev 
```
```log
NAME   HOSTS   ADDRESS         PORTS   AGE
ui     *       34.95.116.107   80      31m
```

Далее подготовим сертификат используя IP как CN
```shell
openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout tls.key -out tls.crt -subj "/CN=34.95.116.107"
```
```log
Can't load /home/myusername/.rnd into RNG
139682105135552:error:2406F079:random number generator:RAND_load_file:Cannot open file:../crypto/rand/randfile.c:88:Filename=/home/myusername/.rnd
Generating a RSA private key
.......................................+++++
........+++++
writing new private key to 'tls.key'
-----
```
Ошибки какие-то ^_^ но ключ создан))

Гугление ошибки привело к [следующему решению](https://github.com/openssl/openssl/issues/7754#issuecomment-541307674), а именно
> I had the same issue as you on Ubuntu 18.04.x. Removing (or commenting out) `RANDFILE = $ENV::HOME/.rnd` from `/etc/ssl/openssl.cnf` worked for me.

Попробуем пересоздать сертификат
```shell
openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout tls.key -out tls.crt -subj "/CN=34.95.116.107"
```
```log
Generating a RSA private key
.........................................................................+++++
................................................................................................................................................................................................................................................................+++++
writing new private key to 'tls.key'
-----
```
На этот раз без ошибок. Продолжаем

И загрузит сертификат в кластер kubernetes
```shell
kubectl create secret tls ui-ingress --key tls.key --cert tls.crt -n dev
```
```log
secret/ui-ingress created
```

Проверить можно командой
```shell
kubectl describe secret ui-ingress -n dev
```
```log
Name:         ui-ingress
Namespace:    dev
Labels:       <none>
Annotations:  <none>

Type:  kubernetes.io/tls

Data
====
tls.crt:  1123 bytes
tls.key:  1704 bytes
```

##### TLS Termination

Теперь настроим Ingress на прием только HTTPS траффика
`kubernetes/reddit/ui-ingress.yml`
```yaml
---
apiVersion: extensions/v1beta1
kind: Ingress
metadata:
  name: ui
  annotations:
    kubernetes.io/ingress.allow-http: "false"
spec:
  tls:
    - secretName: ui-ingress
  backend:
    serviceName: ui
    servicePort: 9292
```
```shell
kubectl apply -f ui-ingress.yml -n dev
```
```log
ingress.extensions/ui configured
```

Зайдем на страницу [web console](https://console.cloud.google.com/net-services/loadbalancing/loadBalancers/list) и увидим в описании нашего балансировщика только один протокол HTTPS (пока ещё нет)

Иногда протокол HTTP может не удалиться у существующего Ingress правила, тогда нужно его вручную удалить и пересоздать
```shell
kubectl delete ingress ui -n dev
```
```log
ingress.extensions "ui" deleted
```
```shell
kubectl apply -f ui-ingress.yml -n dev
```
```log
ingress.extensions/ui created
```
В веб-консоли теперь указан только https

```shell
kubectl get ingress -n dev 
```
```log
NAME   HOSTS   ADDRESS          PORTS     AGE
ui     *       35.244.235.133   80, 443   4m3s
```

Заходим на страницу нашего приложения по https, подтверждаем исключение безопасности (у нас сертификат самоподписанный) и видим что все работает

https://35.244.235.133
![screenshot-reddit-https.png](kubernetes/img/screenshot-reddit-https.png)

Правила Ingress могут долго применяться, если не получилось зайти с первой попытки - подождите и попробуйте еще раз

#### Задание со \* Secret в виде Kubernetes-манифеста

Опишите создаваемый объект Secret в виде Kubernetes-манифеста.

##### Анализ

https://kubernetes.io/docs/concepts/configuration/secret/

Типы секретов https://github.com/kubernetes/kubernetes/blob/release-1.15/pkg/apis/core/types.go#L4458

Тип `SecretTypeTLS SecretType = "kubernetes.io/tls"` https://github.com/kubernetes/kubernetes/blob/release-1.15/pkg/apis/core/types.go#L4530
```go
	// Required fields:
	// - Secret.Data["tls.key"] - TLS private key.
	//   Secret.Data["tls.crt"] - TLS certificate.
	// TODO: Consider supporting different formats, specifying CA/destinationCA.
	SecretTypeTLS SecretType = "kubernetes.io/tls"

	// TLSCertKey is the key for tls certificates in a TLS secret.
	TLSCertKey = "tls.crt"
	// TLSPrivateKeyKey is the key for the private key field in a TLS secret.
	TLSPrivateKeyKey = "tls.key"
```

Пример секрета, который мы должны применить
```yaml
apiVersion: v1
kind: Secret
metadata:
  name: ui-ingress
type: kubernetes.io/tls
data:
  tls.crt: base64-encoded-content-of_tls.crt
  tls.key: base64-encoded-content-of_tls.key
```

Ещё в тему: на основе уже созданных файлов секрет можно создать с помощью генератора https://kubernetes.io/docs/concepts/configuration/secret/#creating-a-secret-from-generator

##### Реализация

Файлы `tls.crt` и `tld.key` перемещены в `kubernetes/reddit/secrets`

**ВАЖНО!** файлы `kubernetes/reddit/secrets/tls.crt` и `kubernetes/reddit/secrets/tls.key` на данном этапе в репозиторий не добавлены, так как кластер ещё функционирует.

Создан файл `kubernetes/reddit/secrets/kustomization.yaml` со следующим содержимым
```yaml
---
secretGenerator:
  - name: ui-ingress-yaml
    type: kubernetes.io/tls
    files:
      - tls.crt
      - tls.key
generatorOptions:
  disableNameSuffixHash: true
```

Удалён существующий секрет `ui-ingress`
```shell
kubectl delete secrets ui-ingress -n dev
```
```log
secret "ui-ingress" deleted
```

В `kubernetes/reddit/ui-ingress.yml` имя секрета изменено на `secretName: ui-ingress-yaml`

> **Примечание**: флаг `-k` позволяет работать с `<kustomization_directory>`.
> 
> Например посмотреть что получится после применения
> ```shell
> kubectl kustomize <kustomization_directory>
> ```
> 
> И применить
> ```shell
> kubectl apply -k <kustomization_directory>
> ```

Создан секрет из `./kubernetes/reddit/secrets/`
```shell
kubectl apply -k ./secrets -n dev       
```
```log
secret/ui-ingress-yaml created
```

Применяем
```shell
kubectl apply -f ./ -n dev            
```
```log
deployment.apps/comment unchanged
service/comment-db unchanged
service/comment unchanged
namespace/dev unchanged
deployment.apps/mongo unchanged
service/mongodb unchanged
deployment.apps/post unchanged
service/post-db unchanged
service/post unchanged
deployment.apps/ui unchanged
ingress.extensions/ui configured
service/ui unchanged
```

Проверяем: 
```shell
kubectl get secrets -n dev
```
```log
NAME                  TYPE                                  DATA   AGE
default-token-s7bj4   kubernetes.io/service-account-token   3      18h
ui-ingress-yaml       kubernetes.io/tls                     2      100s
```
```shell
kubectl describe secrets ui-ingress-yaml -n dev
```
```log
Name:         ui-ingress-yaml
Namespace:    dev
Labels:       <none>
Annotations:  
Type:         kubernetes.io/tls

Data
====
tls.crt:  1123 bytes
tls.key:  1704 bytes
```
Сайт https://35.244.235.133/ открывается.


#### Network Policy

https://cloud.google.com/kubernetes-engine/docs/how-to/network-policy

В прошлых проектах мы договорились о том, что хотелось бы разнести сервисы базы данных и сервис фронтенда по разным сетям, сделав их недоступными друг для друга. И приняли следующую схему сервисов.

В Kubernetes у нас так сделать не получится с помощью отдельных сетей, так как все POD-ы могут достучаться друг до друга по-умолчанию.

Мы будем использовать **NetworkPolicy** - инструмент для декларативного описания потоков трафика. Отметим, что не все сетевые плагины поддерживают политики сети.
В частности, у GKE эта функция пока в Beta-тесте и для её работы отдельно будет включен сетевой плагин **Calico** (вместо **Kubenet**).

Давайте ее протеструем.

Наша задача - ограничить трафик, поступающий на _mongodb_ отовсюду, кроме сервисов _post_ и _comment_.

Найдите имя кластера
```shell
gcloud beta container clusters list
```
```log
NAME           LOCATION       MASTER_VERSION  MASTER_IP       MACHINE_TYPE   NODE_VERSION   NUM_NODES  STATUS
reddit-public  us-central1-a  1.15.4-gke.22   35.226.129.186  n1-standard-1  1.15.4-gke.22  2          RUNNING
```

Включим network-policy для GKE.
```shell
gcloud beta container clusters update reddit-public --zone=us-central1-a --update-addons=NetworkPolicy=ENABLED
```
```log
Updating reddit-public...done.                                                                                                                                      
Updated [https://container.googleapis.com/v1beta1/projects/<project_id>/zones/us-central1-a/clusters/reddit-public].
To inspect the contents of your cluster, go to: https://console.cloud.google.com/kubernetes/workload_/gcloud/us-central1-a/reddit-public?project=<project_id>
```
```shell
gcloud beta container clusters update reddit-public --zone=us-central1-a  --enable-network-policy
```
```log
Enabling/Disabling Network Policy causes a rolling update of all 
cluster nodes, similar to performing a cluster upgrade.  This 
operation is long-running and will block other operations on the 
cluster (including delete) until it has run to completion.

Do you want to continue (Y/n)?  y

Updating reddit-public...done.                                                                                                                                      
Updated [https://container.googleapis.com/v1beta1/projects/<project_id>/zones/us-central1-a/clusters/reddit-public].
To inspect the contents of your cluster, go to: https://console.cloud.google.com/kubernetes/workload_/gcloud/us-central1-a/reddit-public?project=<project_id>
```

Дождитесь, пока кластер обновится Вам может быть предложено добавить beta-функционал в gcloud - нажмите yes.

Создадим манифест `kubernetes/reddit/mongo-network-policy.yml`
```yaml
---
apiVersion: networking.k8s.io/v1
kind: NetworkPolicy
metadata:
  name: deny-db-traffic
  labels:
    app: reddit
spec:
  podSelector:  # Выбираем объекты
    matchLabels:
      app: reddit
      component: mongo
  policyTypes:  # Блок запрещающих направлений
    - Ingress
  ingress:  # Блок разрешающих правил
    - from:
        - podSelector:
            matchLabels:
              app: reddit
              component: comment
```

Выбираем объекты политики (pod’ы с mongodb)
```yaml
podSelector:
  matchLabels:
    app: reddit
    component: mongo
```

Запрещаем все входящие подключения. Исходящие разрешены
```yaml
policyTypes:
  - Ingress
```

Разрешаем все входящие подключения от POD-ов с label-ами comment.
```yaml
ingress:
  - from:
      - podSelector:
          matchLabels:
            app: reddit
            component: comment.
```

Применяем политику
```shell
kubectl apply -f mongo-network-policy.yml -n dev
```
```log
networkpolicy.networking.k8s.io/deny-db-traffic created
```

Смотрим
```shell
kubectl get networkpolicies -n dev
```
```log
NAME              POD-SELECTOR                 AGE
deny-db-traffic   app=reddit,component=mongo   2m43s
```
```shell
kubectl describe networkpolicies deny-db-traffic -n dev
```
```log
Name:         deny-db-traffic
Namespace:    dev
Created on:   2020-01-04 19:08:37 +0300 MSK
Labels:       app=reddit
Annotations:  kubectl.kubernetes.io/last-applied-configuration:
                {"apiVersion":"networking.k8s.io/v1","kind":"NetworkPolicy","metadata":{"annotations":{},"labels":{"app":"reddit"},"name":"deny-db-traffic...
Spec:
  PodSelector:     app=reddit,component=mongo
  Allowing ingress traffic:
    To Port: <any> (traffic allowed to all ports)
    From:
      PodSelector: app=reddit,component=comment
  Not affecting egress traffic
  Policy Types: Ingress
```

Post-сервис не может достучаться до базы, говорили они. А у меня всё работает О_о... то есть при открытии сайта он работает. Предполагаемая причина: не были пересозданы поды, как было сказано при включении network-policy.

Пересоздал всё, включая сертификат... Сайт действительно **перестал работать** ^_^  TODO: разобраться как пересоздать только то что нужно, и что именно пересоздать >_<. Перечитал доки: похоже, я просто не дождался https://cloud.google.com/kubernetes-engine/docs/how-to/network-policy#enabling_network_policy_enforcement
> Then, run the gcloud container clusters update command with the --enable-network-policy flag. This command causes your cluster's node pools to be recreated with network policy enabled

##### Задание

Обновите `mongo-network-policy.yml` так, чтобы post-сервис дошел до базы данных.
```yaml
---
apiVersion: networking.k8s.io/v1
kind: NetworkPolicy
metadata:
  name: deny-db-traffic
  labels:
    app: reddit
spec:
  podSelector:
    matchLabels:
      app: reddit
      component: mongo
  policyTypes:
    - Ingress
  ingress:
    - from:
        - podSelector:
            matchLabels:
              app: reddit
              component: comment
    - from:
        - podSelector:
            matchLabels:
              app: reddit
              component: post
```

Применяем
```shell
kubectl apply -f mongo-network-policy.yml -n dev
```
```log
networkpolicy.networking.k8s.io/deny-db-traffic configured
```

Сайт вновь заработал https://34.95.116.107/


### Хранилище для базы

Рассмотрим вопросы хранения данных. Основной _Stateful_ сервис в нашем приложении - это база данных MongoDB.

В текущий момент она запускается в виде _Deployment_ и хранит данные в стаднартный Docker Volume-ах. Это имеет несколько проблем:
- при удалении POD-а удаляется и Volume
- потеря Nod’ы с mongo грозит потерей данных
- запуск базы на другой ноде запускает новый экземпляр данных

`mongo-deployment.yml`
```yaml
---
apiVersion: apps/v1
kind: Deployment
metadata:
  name: mongo
  labels:
    app: reddit
    component: mongo
    post-db: "true"
    comment-db: "true"
spec:
  replicas: 1
  selector:
    matchLabels:
      app: reddit
      component: mongo
  template:
    metadata:
      name: mongo
      labels:
        app: reddit
        component: mongo
        post-db: "true"
        comment-db: "true"
    spec:
      containers:
      - image: mongo:3.2
        name: mongo
        volumeMounts:  # Подключаем Volume
        - name: mongo-persistent-storage
          mountPath: /data/db
      volumes:
      - name: mongo-persistent-storage  # Объявляем Volume
        emptyDir: {}
```

 #### Volume

Сейчас используется тип Volume emptyDir. При создании пода с таким типом просто создается пустой docker volume.

При остановке POD’a содержимое emtpyDir удалится навсегда. Хотя в общем случае падение POD’a не вызывает удаления Volume’a.

Задание:
1) создайте пост в приложении
   - Создан
2) удалите deployment для mongo
   ```shell
   kubectl delete -f mongo-deployment.yml -n dev
   ```
   ```log
   deployment.apps "mongo" deleted
   ```
3) Создайте его заново
   ```shell
   kubectl apply -f mongo-deployment.yml -n dev 
   ```
   ```log
   deployment.apps/mongo created
   ```
4) Пост пропал

Вместо того, чтобы хранить данные локально на ноде, имеет смысл подключить удаленное хранилище. В нашем случае можем использовать Volume _gcePersistentDisk_, который будет складывать данные в хранилище GCE.

Создадим диск в Google Cloud
```shell
gcloud compute disks create --size=25GB --zone=us-central1-a reddit-mongo-disk
```
```log
WARNING: You have selected a disk size of under [200GB]. This may result in poor I/O performance. For more information, see: https://developers.google.com/compute/docs/disks#performance.
Created [https://www.googleapis.com/compute/v1/projects/docker-257914/zones/us-central1-a/disks/reddit-mongo-disk].
NAME               ZONE           SIZE_GB  TYPE         STATUS
reddit-mongo-disk  us-central1-a  25       pd-standard  READY

New disks are unformatted. You must format and mount a disk before it
can be used. You can find instructions on how to do this at:

https://cloud.google.com/compute/docs/disks/add-persistent-disk#formatting
```

Добавим новый Volume POD-у базы.

```yaml
---
apiVersion: apps/v1
kind: Deployment
metadata:
  name: mongo
  labels:
    app: reddit
    component: mongo
    post-db: "true"
    comment-db: "true"
spec:
  replicas: 1
  selector:
    matchLabels:
      app: reddit
      component: mongo
  template:
    metadata:
      name: mongo
      labels:
        app: reddit
        component: mongo
        post-db: "true"
        comment-db: "true"
    spec:
      containers:
      - image: mongo:3.2
        name: mongo
        volumeMounts:
        - name: mongo-gce-pd-storage
          mountPath: /data/db
      volumes:
      - name: mongo-persistent-storage
        emptyDir: {}
        volumes:
      - name: mongo-gce-pd-storage
        gcePersistentDisk:
          pdName: reddit-mongo-disk
          fsType: ext4
```

Монтируем выделенный диск к POD’у mongo
![](kubernetes/img/scheme-volume.png)

```shell
kubectl apply -f mongo-deployment.yml -n dev
```
```log
deployment.apps/mongo configured
```

Дождитесь, пересоздания Pod'а (занимает до 10 минут). Зайдем в приложение и добавим пост - сделано

Удалим deployment
```shell
kubectl delete deploy mongo -n dev
```
```log
deployment.extensions "mongo" deleted
```

Снова создадим деплой mongo. 
```shell
kubectl apply -f mongo-deployment.yml -n dev
```
```log
deployment.apps/mongo created
```

Наш пост все еще на месте. [Здесь](https://console.cloud.google.com/compute/disks?supportedpurview=project&project=<project_id>&angularJsUrl=%2Fprojectselector%2Fcompute%2Fdisks%3Fsupportedpurview%3Dproject%26project%3D%26folder%3D%26organizationId%3D&authuser=1) можно посмотреть на созданный диск и увидеть какой машиной он используется

#### PersistentVolume

Используемый механизм Volume-ов можно сделать удобнее. Мы можем использовать не целый выделенный диск для каждого пода, а целый ресурс хранилища, общий для всего кластера.

Тогда при запуске Stateful-задач в кластере, мы сможем запросить хранилище в виде такого же ресурса, как CPU или оперативная память.

Для этого будем использовать механизм **PersistentVolume**.

Создадим описание PersistentVolume
`mongo-volume.yml`
```yaml
---
apiVersion: v1
kind: PersistentVolume
metadata:
  name: reddit-mongo-disk
spec:
  capacity:
    storage: 25Gi
  accessModes:
    - ReadWriteOnce
  persistentVolumeReclaimPolicy: Retain
  gcePersistentDisk:
    fsType: "ext4" 
    pdName: "reddit-mongo-disk"
```

Добавим PersistentVolume в кластер
```shell
kubectl apply -f mongo-volume.yml -n dev
```
```log
persistentvolume/reddit-mongo-disk created
```
Мы создали PersistentVolume в виде диска в GCP.
![](kubernetes/img/scheme-persistentvolume.png)


#### PersistentVolumeClaim

Мы создали ресурс дискового хранилища, распространенный на весь кластер, в виде PersistentVolume.

Чтобы выделить приложению часть такого ресурса - нужно создать запрос на выдачу - **PersistentVolumeClaim**. _Claim_ - это именно запрос, а не само хранилище.

С помощью запроса можно выделить место как из конкретного **PersistentVolume** (тогда параметры _accessModes_ и _StorageClass_ должны соответствовать, а места должно хватать), так и просто создать отдельный **PersistentVolume** под конкретный запрос.

Создадим описание **PersistentVolumeClaim** (PVC)
`mongo-claim.yml`
```yaml
---
kind: PersistentVolumeClaim
apiVersion: v1
metadata:
  name: mongo-pvc
spec:
  accessModes:
    - ReadWriteOnce
  resources:
    requests:
      storage: 15Gi
```

Добавим **PersistentVolumeClaim** в кластер
```shell
kubectl apply -f mongo-claim.yml -n dev
```
```log
persistentvolumeclaim/mongo-pvc created
```


#### PersistentVolume

Мы выделили место в PV по запросу для нашей базы. Одновременно использовать один PV можно только по **одному** Claim’у
![](kubernetes/img/scheme-persistentvolume-one.png)


#### PersistentVolumeClaim

Если Claim не найдет по заданным параметрам PV внутри кластера, либо тот будет занят другим Claim’ом то он сам создаст нужный ему PV воспользовавшись стандартным StorageClass.

```shell
kubectl describe storageclass standard -n dev
```
```log
Name:                  standard
IsDefaultClass:        Yes
Annotations:           storageclass.kubernetes.io/is-default-class=true
Provisioner:           kubernetes.io/gce-pd
Parameters:            type=pd-standard
AllowVolumeExpansion:  True
MountOptions:          <none>
ReclaimPolicy:         Delete
VolumeBindingMode:     Immediate
Events:                <none>
```

В нашем случае это обычный медленный Google Cloud Persistent Drive
![](kubernetes/img/scheme-persistentvolumeclaim.png)


#### Подключим PVC к нашим Pod'ам

`mongo-deployment.yml`
```yaml
---
apiVersion: apps/v1
kind: Deployment
metadata:
  name: mongo
  labels:
    app: reddit
    component: mongo
    post-db: "true"
    comment-db: "true"
spec:
  replicas: 1
  selector:
    matchLabels:
      app: reddit
      component: mongo
  template:
    metadata:
      name: mongo
      labels:
        app: reddit
        component: mongo
        post-db: "true"
        comment-db: "true"
    spec:
      containers:
        - image: mongo:3.2
          name: mongo
          volumeMounts:
            - name: mongo-gce-pd-storage
              mountPath: /data/db
      volumes:
        - name: mongo-gce-pd-storage
          persistentVolumeClaim:
            claimName: mongo-pvc
```

Обновим описание нашего Deployment’а
```shell
kubectl apply -f mongo-deployment.yml -n dev
```
```log
deployment.apps/mongo configured
```

Монтируем выделенное по PVC хранилище к POD’у mongo
![](kubernetes/img/scheme-persistentvolume-mount.png)

#### Динамическое выделение Volume'ов

Создав PersistentVolume мы отделили объект "хранилища" от наших Service'ов и Pod'ов. Теперь мы можем его при необходимости переиспользовать.

Но нам гораздо интереснее создавать хранилища при необходимости и в автоматическом режиме. В этом нам помогут **StorageClass**’ы. Они описывают где (какой провайдер) и какие хранилища создаются.

В нашем случае создадим StorageClass **Fast** так, чтобы монтировались SSD-диски для работы нашего хранилища.

#### StorageClass

Создадим описание StorageClass’а
`storage-fast.yml`
```yaml
---
kind: StorageClass
apiVersion: storage.k8s.io/v1beta1
metadata:
  name: fast  # Имя StorageClass'а
provisioner: kubernetes.io/gce-pd  # Провайдер хранилища
parameters:
  type: pd-ssd  # Тип предоставляемого хранилища
```

Добавим StorageClass в кластер
```shell
kubectl apply -f storage-fast.yml -n dev
```
```log
storageclass.storage.k8s.io/fast created
```
```shell
kubectl get storageclasses
```
```log
NAME                 PROVISIONER            AGE
fast                 kubernetes.io/gce-pd   57s
standard (default)   kubernetes.io/gce-pd   26h
```
При указании неймспейса, результат тот же. это подтверждает что StoregeClass не неймспейсится.

```shell
kubectl describe storageclasses fast
```
```log
Name:            fast
IsDefaultClass:  No
Annotations:     kubectl.kubernetes.io/last-applied-configuration={"apiVersion":"storage.k8s.io/v1beta1","kind":"StorageClass","metadata":{"annotations":{},"name":"fast"},"parameters":{"type":"pd-ssd"},"provisioner":"kubernetes.io/gce-pd"}

Provisioner:           kubernetes.io/gce-pd
Parameters:            type=pd-ssd
AllowVolumeExpansion:  <unset>
MountOptions:          <none>
ReclaimPolicy:         Delete
VolumeBindingMode:     Immediate
Events:                <none>
```

#### PVC + StorageClass

Создадим описание PersistentVolumeClaim 
`mongo-claim-dynamic.yml`
```yaml
---
kind: PersistentVolumeClaim
apiVersion: v1
metadata:
  name: mongo-pvc-dynamic
spec:
  accessModes:
    - ReadWriteOnce
  storageClassName: fast  # Вместо ссылки на созданный диск, теперь мы ссылаемся на StorageClass
  resources:
    requests:
      storage: 10Gi
```

Добавим StorageClass в кластер
```shell
kubectl apply -f mongo-claim-dynamic.yml -n dev
```
```log
persistentvolumeclaim/mongo-pvc-dynamic created
```
```shell
kubectl get persistentvolumeclaims -n dev
```
Неймспейс имеет значение
```log
NAME                STATUS   VOLUME                                     CAPACITY   ACCESS MODES   STORAGECLASS   AGE
mongo-pvc           Bound    pvc-f6e26f0c-37bb-4885-9f12-eaa4b85e14a1   15Gi       RWO            standard       37m
mongo-pvc-dynamic   Bound    pvc-97eaaa5c-fbce-40ee-ae6f-d6cf0a38ded4   10Gi       RWO            fast           27s
```

```shell
kubectl describe persistentvolumeclaims mongo-pvc-dynamic -n dev
```
```log
Name:          mongo-pvc-dynamic
Namespace:     dev
StorageClass:  fast
Status:        Bound
Volume:        pvc-97eaaa5c-fbce-40ee-ae6f-d6cf0a38ded4
Labels:        <none>
Annotations:   kubectl.kubernetes.io/last-applied-configuration:
                 {"apiVersion":"v1","kind":"PersistentVolumeClaim","metadata":{"annotations":{},"name":"mongo-pvc-dynamic","namespace":"dev"},"spec":{"acce...
               pv.kubernetes.io/bind-completed: yes
               pv.kubernetes.io/bound-by-controller: yes
               volume.beta.kubernetes.io/storage-provisioner: kubernetes.io/gce-pd
Finalizers:    [kubernetes.io/pvc-protection]
Capacity:      10Gi
Access Modes:  RWO
VolumeMode:    Filesystem
Mounted By:    <none>
Events:
  Type    Reason                 Age   From                         Message
  ----    ------                 ----  ----                         -------
  Normal  ProvisioningSucceeded  86s   persistentvolume-controller  Successfully provisioned volume pvc-97eaaa5c-fbce-40ee-ae6f-d6cf0a38ded4 using kubernetes.io/gce-pd
```

#### Подключение динамического PVC

Подключим PVC к нашим Pod'ам
`mongo-deployment.yml`
```yaml
---
apiVersion: apps/v1
kind: Deployment
metadata:
  name: mongo
  labels:
    app: reddit
    component: mongo
    post-db: "true"
    comment-db: "true"
spec:
  replicas: 1
  selector:
    matchLabels:
      app: reddit
      component: mongo
  template:
    metadata:
      name: mongo
      labels:
        app: reddit
        component: mongo
        post-db: "true"
        comment-db: "true"
    spec:
      containers:
        - image: mongo:3.2
          name: mongo
          volumeMounts:
            - name: mongo-gce-pd-storage
              mountPath: /data/db
      volumes:
        - name: mongo-gce-pd-storage
          persistentVolumeClaim:
            claimName: mongo-pvc-dynamic
```

Обновим описание нашего Deployment'а
```shell
kubectl apply -f mongo-deployment.yml -n dev
```
```log
deployment.apps/mongo configured
```
```shell
kubectl describe deployment mongo -n dev
```
```log
Name:                   mongo
Namespace:              dev
CreationTimestamp:      Sat, 04 Jan 2020 23:33:44 +0300
Labels:                 app=reddit
                        comment-db=true
                        component=mongo
                        post-db=true
Annotations:            deployment.kubernetes.io/revision: 3
                        kubectl.kubernetes.io/last-applied-configuration:
                          {"apiVersion":"apps/v1","kind":"Deployment","metadata":{"annotations":{},"labels":{"app":"reddit","comment-db":"true","component":"mongo",...
Selector:               app=reddit,component=mongo
Replicas:               1 desired | 1 updated | 1 total | 1 available | 0 unavailable
StrategyType:           RollingUpdate
MinReadySeconds:        0
RollingUpdateStrategy:  25% max unavailable, 25% max surge
Pod Template:
  Labels:  app=reddit
           comment-db=true
           component=mongo
           post-db=true
  Containers:
   mongo:
    Image:        mongo:3.2
    Port:         <none>
    Host Port:    <none>
    Environment:  <none>
    Mounts:
      /data/db from mongo-gce-pd-storage (rw)
  Volumes:
   mongo-gce-pd-storage:
    Type:       PersistentVolumeClaim (a reference to a PersistentVolumeClaim in the same namespace)
    ClaimName:  mongo-pvc-dynamic
    ReadOnly:   false
Conditions:
  Type           Status  Reason
  ----           ------  ------
  Available      True    MinimumReplicasAvailable
  Progressing    True    NewReplicaSetAvailable
OldReplicaSets:  <none>
NewReplicaSet:   mongo-7fd95647d9 (1/1 replicas created)
Events:
  Type    Reason             Age    From                   Message
  ----    ------             ----   ----                   -------
  Normal  ScalingReplicaSet  57m    deployment-controller  Scaled up replica set mongo-7644fd57 to 1
  Normal  ScalingReplicaSet  42m    deployment-controller  Scaled up replica set mongo-675d5df69 to 1
  Normal  ScalingReplicaSet  42m    deployment-controller  Scaled down replica set mongo-7644fd57 to 0
  Normal  ScalingReplicaSet  3m9s   deployment-controller  Scaled up replica set mongo-7fd95647d9 to 1
  Normal  ScalingReplicaSet  2m49s  deployment-controller  Scaled down replica set mongo-675d5df69 to 0
```

Давайте посмотрит какие в итоге у нас получились PersistentVolume'ы
```shell
kubectl get persistentvolume -n dev
```
```log
NAME                                       CAPACITY   ACCESS MODES   RECLAIM POLICY   STATUS      CLAIM                   STORAGECLASS   REASON   AGE
pvc-97eaaa5c-fbce-40ee-ae6f-d6cf0a38ded4   10Gi       RWO            Delete           Bound       dev/mongo-pvc-dynamic   fast                    15m
pvc-f6e26f0c-37bb-4885-9f12-eaa4b85e14a1   15Gi       RWO            Delete           Bound       dev/mongo-pvc           standard                52m
reddit-mongo-disk                          25Gi       RWO            Retain           Available                                                   55m
```

На созданные Kubernetes'ом диски можно посмотреть в [web console](https://console.cloud.google.com/projectselector/compute/disks?supportedpurview=project&project=&folder=&organizationId=)
![](kubernetes/img/scheme-dynamic-pvc.png)

Кластер удалён
```shell
cd ./kubernetes/terraform
make destroy
```

Но, возможно, необходимо ещё удалить диск. Нужно проверить и удалить через консоль.

Добавляем созданные сертификаты `kubernetes/reddit/secrets/tls.*`

### Как запустить

#### Руками

```shell
# Создаём кластер
cd ./kubernetes/terraform
make apply
cd -
# Получаем доступ и настраиваем контекст kubectl
gcloud container clusters get-credentials reddit-public --zone us-central1-a --project docker-257914
# Создаём ресурсы
cd ./kubernetes/reddit
kubectl apply -f dev-namespace.yml
kubectl apply -f ./
# Генерируем сертификат для https
cd ./secrets
openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout tls.key -out tls.crt -subj "/CN=reddit"
# Загружаем сертификат
kubectl apply -k ./ -n dev
# Получаем ip ingress
INGRESS_IP=$(kubectl get ingresses ui -n dev -o json | jq '.status.loadBalancer.ingress[0].ip' | xargs)
echo https://${INGRESS_IP}
```


#### ./kubernetes/Makefile

##### Variables

| variable     | default       | description                |
| ------------ | ------------- | -------------------------- |
| PROJECT_ID   | docker-257914 | gcp project_id             |
| ZONE         | us-central1-a | gcp zone                   |
| CLUSTER_NAME | reddit-public | gke cluster name           |
| NS           | dev           | namespace to deploy app to |

##### Targets

| target            | description                                                           |
| ----------------- | --------------------------------------------------------------------- |
| create_cluster    | create GKE cluster via terraform                                      |
| configure_kubectl | get credentials and configure `kubectl` to manage created GKE cluster |
| apply_namespaces  | create all namespaces                                                 |
| apply_reddit      | deploy app to `$(NS)`                                                 |
| get_https_link    | получить `https://${INGRESS_IP}`                                      |
| gen_cert          | Сгенерировать сертификат для https                                    |
| upload_cert       | загрузить сертификать в GKE                                           |
| infra             | create_cluster configure_kubectl                                      |
| deploy            | apply_namespaces apply_reddit                                         |
| cert              | gen_cert upload_cert                                                  |
| all               | infra deploy cert                                                     |


## HomeWork 22: CI/CD в Kubernetes

### План

- Работа с Helm
- Развертывание Gitlab в Kubernetes
- Запуск CI/CD конвейера в Kubernetes


### Helm

Helm - пакетный менеджер для Kubernetes.

С его помощью мы будем:
1. Стандартизировать поставку приложения в Kubernetes
2. Декларировать инфраструктуру
3. Деплоить новые версии приложения


#### Helm - установка

Helm - клиент-серверное приложение. Установим его клиентскую часть - консольный клиент Helm

Helm читает конфигурацию kubectl (`~/.kube/config`) и сам определяет текущий контекст (кластер, пользователь, неймспейс)

Если хотите сменить кластер, то либо меняйте контекст с помощью `kubectl config set-context` либо подгружайте helm’у собственный config-файл флагом `--kube-context`.

Установим серверную часть Helm’а - _Tiller_

_Tiller_ - это аддон Kubernetes, т.е. Pod, который общается с API Kubernetes.

> Для этого понадобится ему выдать _ServiceAccount_ и назначить роли _RBAC_, необходимые для работы.

Создайте файл `tiller.yml` и поместите в него
```yaml
---
apiVersion: v1
kind: ServiceAccount
metadata:
  name: tiller
  namespace: kube-system
---
apiVersion: rbac.authorization.k8s.io/v1beta1
kind: ClusterRoleBinding
metadata:
  name: tiller
roleRef:
  apiGroup: rbac.authorization.k8s.io
  kind: ClusterRole
  name: cluster-admin
subjects:
  - kind: ServiceAccount
    name: tiller
    namespace: kube-system
```
```shell
kubectl apply -f tiller.yml
```
Теперь запустим tiller-сервер
```shell
helm init --service-account tiller
```
```log
Creating /home/vscoder/.helm 
Creating /home/vscoder/.helm/repository 
Creating /home/vscoder/.helm/repository/cache 
Creating /home/vscoder/.helm/repository/local 
Creating /home/vscoder/.helm/plugins 
Creating /home/vscoder/.helm/starters 
Creating /home/vscoder/.helm/cache/archive 
Creating /home/vscoder/.helm/repository/repositories.yaml 
Adding stable repo with URL: https://kubernetes-charts.storage.googleapis.com 
Adding local repo with URL: http://127.0.0.1:8879/charts 
$HELM_HOME has been configured at /home/vscoder/.helm.

Tiller (the Helm server-side component) has been installed into your Kubernetes Cluster.

Please note: by default, Tiller is deployed with an insecure 'allow unauthenticated users' policy.
To prevent this, run `helm init` with the --tiller-tls-verify flag.
For more information on securing your installation see: https://docs.helm.sh/using_helm/#securing-your-helm-installation
```

Проверим
```shell
kubectl get pods -n kube-system --selector app=helm
```
```log
NAME                             READY   STATUS    RESTARTS   AGE
tiller-deploy-54f7455d59-sntsc   1/1     Running   0          4m58s
```


#### Charts

Chart - это пакет в Helm.

Создайте директорию Charts в папке kubernetes со следующей структурой директорий:
```shell
mkdir -p ./Charts/{comment,post,reddit,ui}
tree Charts
```
```log
Charts
├── comment
├── post
├── reddit
└── ui

4 directories, 0 files
```

Начнем разработку Chart’а для компонента ui приложения. Создайте файл-описание chart’а.
```shell
touch ui/Chart.yaml
```

> Helm предпочитает `.yaml`

```yaml
---
name: ui
version: 1.0.0
description: OTUS reddit application UI
maintainers:
  - name: Someone
    email: my@mail.com
appVersion: 1.0
```

Реально значимыми являются поля name и version. От них зависит работа Helm’а с Chart’ом. Остальное - описания.


#### Templates

Основным содержимым Chart’ов являются шаблоны манифестов Kubernetes.

1. Создайте директорию `ui/templates`
   ```shell
   mkdir ui/templates
   ```
2. Перенесите в неё все манифесты, разработанные ранее для сервиса ui (`ui-service`, `ui-deployment`, `ui-ingress`)
3. Переименуйте их (уберите префикс "ui-") и поменяйте расширение на `.yaml`) - стилистические правки

```shell
tree ui
```
```log
ui
├── Chart.yaml
└── templates
    ├── deployment.yaml
    ├── ingress.yaml
    └── service.yaml

1 directory, 4 files
```

По-сути, это уже готовый пакет для установки в Kubernetes

1. Убедитесь, что у вас не развернуты компоненты приложения в kubernetes. Если развернуты - удалите их
2. Установим Chart
   ```shell
   helm install --name test-ui-1 ui/
   ```
   ```log
   NAME:   test-ui-1
   LAST DEPLOYED: Tue Jan  7 00:47:13 2020
   NAMESPACE: default
   STATUS: DEPLOYED

   RESOURCES:
   ==> v1/Deployment
   NAME  AGE
   ui    0s

   ==> v1/Pod(related)
   NAME                 AGE
   ui-595f89d499-f5b5v  0s
   ui-595f89d499-xwwxx  0s
   ui-595f89d499-z4fxg  0s

   ==> v1/Service
   NAME  AGE
   ui    0s

   ==> v1beta1/Ingress
   NAME  AGE
   ui    0s
   ```

> Передаем имя и путь до Chart'a соответсвенно 3) 
> Посмотрим, что получилось

```shell
helm ls
```
```log
NAME            REVISION        UPDATED                         STATUS          CHART           APP VERSION     NAMESPACE
test-ui-1       1               Tue Jan  7 00:47:13 2020        DEPLOYED        ui-1.0.0        1               default
```

Теперь сделаем так, чтобы можно было использовать 1 Chart для запуска нескольких экземпляров (релизов). Шаблонизируем его.
`ui/templates/service.yaml`
```yaml
---
apiVersion: v1
kind: Service
metadata:
  name: {{ .Release.Name }}-{{ .Chart.Name }}  # Нам нужно уникальное имя запущенного ресурса
  labels:
    app: reddit
    component: ui
    release: {{ .Release.Name }}  # Помечаем, что сервис из конкретного релиза
spec:
  type: NodePort
  ports:
  - port: 9292
    protocol: TCP
    targetPort: 9292
  selector:
    app: reddit
    component: ui
    release: {{ .Release.Name }}  # Выбираем поды только из этого релиза
```

`name: {{ .Release.Name }}-{{ .Chart.Name }}`

Здесь мы используем встроенные переменные
- `.Release` - группа переменных с информацией о релизе (конкретном запуске Chart’а в k8s)
- `.Chart` - группа переменных с информацией о Chart’е (содержимое файла `Chart.yaml`)

Также еще есть группы переменных:
- `.Template` - информация о текущем шаблоне ( `.Name` и `.BasePath`)
- `.Capabilities` - информация о Kubernetes (версия, версии API)
- `.Files.Get` - получить содержимое файла

Шаблонизируем подобным образом остальные сущности

`ui/templates/deployment.yaml`
```yaml
---
apiVersion: apps/v1
kind: Deployment
metadata:
  name: {{ .Release.Name }}-{{ .Chart.Name }}
  labels:
    app: reddit
    component: ui
    release: {{ .Release.Name }}
spec:
  replicas: 3
  strategy:
    type: Recreate
  selector:
    matchLabels:
      app: reddit
      component: ui
      release: {{ .Release.Name }}
  template:
    metadata:
      name: ui
      labels:
        app: reddit
        component: ui
        release: {{ .Release.Name }}
    spec:
      containers:
      - image: vscoder/ui
        name: ui
        ports:
        - containerPort: 9292
          name: ui
          protocol: TCP
        env:
        - name: ENV
          valueFrom:
            fieldRef:
              fieldPath: metadata.namespace
```
**Важно**, чтобы селектор деплоймента нашёл только нужные поды

Не забудьте поставить свои образы

Шаблонизируем подобным образом остальные сущности
`ui/templates/ingress.yaml`
```yaml
---
apiVersion: extensions/v1beta1
kind: Ingress
metadata:
  name: {{ .Release.Name }}-{{ .Chart.Name }}
  annotations:
    kubernetes.io/ingress.class: "gce"
spec:
  rules:
  - http:
      paths:
      - path: /*
        backend:
          serviceName: {{ .Release.Name }}-{{ .Chart.Name }}
          servicePort: 9292
```

Установим несколько релизов ui
```shell
helm install --name test-ui-2 ui/
```
```log
NAME:   test-ui-2
LAST DEPLOYED: Tue Jan  7 12:08:29 2020
NAMESPACE: default
STATUS: DEPLOYED

RESOURCES:
==> v1/Deployment
NAME          AGE
test-ui-2-ui  0s

==> v1/Pod(related)
NAME                          AGE
test-ui-2-ui-b6cb9c46c-cf2ks  0s
test-ui-2-ui-b6cb9c46c-mksp7  0s
test-ui-2-ui-b6cb9c46c-xz8ll  0s

==> v1/Service
NAME          AGE
test-ui-2-ui  0s

==> v1beta1/Ingress
NAME          AGE
test-ui-2-ui  0s
```

```shell
helm install --name test-ui-3 ui/
```
```log
NAME:   test-ui-3
LAST DEPLOYED: Tue Jan  7 12:08:58 2020
NAMESPACE: default
STATUS: DEPLOYED

RESOURCES:
==> v1/Deployment
NAME          AGE
test-ui-3-ui  1s

==> v1/Pod(related)
NAME                           AGE
test-ui-3-ui-669675d44b-dg4xb  1s
test-ui-3-ui-669675d44b-q5rnp  1s
test-ui-3-ui-669675d44b-tl6m5  1s

==> v1/Service
NAME          AGE
test-ui-3-ui  1s

==> v1beta1/Ingress
NAME          AGE
test-ui-3-ui  1s
```

> Где ui-(1/2/3) - имена релизов

Должны появиться 3 ingress'а
```shell
kubectl get ingress
```
```log
NAME           HOSTS   ADDRESS         PORTS     AGE
test-ui-2-ui   *       34.95.116.107   80        70s
test-ui-3-ui   *                       80        41s
ui             *                       80, 443   11h
```
Вывод немного отличается от ожидаемого... Видимо, в процессе первой настройки что-то пошло не так))

По IP-адресам можно попасть на разные релизы ui-приложений.

P.S. подождите пару минут, пока ingress’ы станут доступными

Мы уже сделали возможность запуска нескольких версий приложений из одного пакета манифестов, используя лишь встроенные переменные. Кастомизируем установку своими переменными (образ и порт).

`ui/templates/deployment.yaml`
```yaml
---
apiVersion: apps/v1
kind: Deployment
metadata:
  name: {{ .Release.Name }}-{{ .Chart.Name }}
  labels:
    app: reddit
    component: ui
    release: {{ .Release.Name }}
spec:
  replicas: 3
  strategy:
    type: Recreate
  selector:
    matchLabels:
      app: reddit
      component: ui
      release: {{ .Release.Name }}
  template:
    metadata:
      name: ui
      labels:
        app: reddit
        component: ui
        release: {{ .Release.Name }}
    spec:
      containers:
      - image: "{{ .Values.image.repository }}:{{ .Values.image.tag }}"
        name: ui
        ports:
        - containerPort: {{ .Values.service.internalPort }}
          name: ui
          protocol: TCP
        env:
        - name: ENV
          valueFrom:
            fieldRef:
              fieldPath: metadata.namespace
...
```

`ui/templates/service.yaml`
```yaml
---
apiVersion: v1
kind: Service
metadata:
  name: {{ .Release.Name }}-{{ .Chart.Name }}
  labels:
    app: reddit
    component: ui
    release: {{ .Release.Name }}
spec:
  type: NodePort
  ports:
  - port: {{ .Values.service.externalPort }}
    protocol: TCP
    targetPort: {{ .Values.service.internalPort }}
  selector:
    app: reddit
    component: ui
    release: {{ .Release.Name }}
...
```

`ui/templates/ingress.yaml`
```yaml
---
apiVersion: extensions/v1beta1
kind: Ingress
metadata:
  name: {{ .Release.Name }}-{{ .Chart.Name }}
  annotations:
    kubernetes.io/ingress.class: "gce"
spec:
  rules:
  - http:
      paths:
      - path: /
        backend:
          serviceName: {{ .Release.Name }}-{{ .Chart.Name }}
          servicePort: {{ .Values.service.externalPort }}
...
```

Определим значения собственных переменных `ui/values.yaml`
```yaml
---
service:
  internalPort: 9292
  externalPort: 9292

image:
  repository: vscoder/ui
  tag: latest
```

```shell
helm upgrade test-ui-1 ui/
```
```log
Release "test-ui-1" has been upgraded.
LAST DEPLOYED: Tue Jan  7 12:22:58 2020
NAMESPACE: default
STATUS: DEPLOYED

RESOURCES:
==> v1/Deployment
NAME          AGE
test-ui-1-ui  0s

==> v1/Pod(related)
NAME                           AGE
test-ui-1-ui-56cbd9b9ff-776hc  0s
test-ui-1-ui-56cbd9b9ff-gnldq  0s
test-ui-1-ui-56cbd9b9ff-wrtp5  0s

==> v1/Service
NAME          AGE
test-ui-1-ui  0s

==> v1beta1/Ingress
NAME          AGE
test-ui-1-ui  0s
```
Релиз был создан, так как ранее не существовал

```shell
helm upgrade test-ui-2 ui/
```
```log
Release "test-ui-2" has been upgraded.
LAST DEPLOYED: Tue Jan  7 12:23:32 2020
NAMESPACE: default
STATUS: DEPLOYED

RESOURCES:
==> v1/Deployment
NAME          AGE
test-ui-2-ui  15m

==> v1/Pod(related)
NAME                          AGE
test-ui-2-ui-b6cb9c46c-cf2ks  15m
test-ui-2-ui-b6cb9c46c-mksp7  15m
test-ui-2-ui-b6cb9c46c-xz8ll  15m

==> v1/Service
NAME          AGE
test-ui-2-ui  15m

==> v1beta1/Ingress
NAME          AGE
test-ui-2-ui  15m
```
А этот релиз был обновлён

```shell
helm upgrade test-ui-3 ui/
```
```log
Release "test-ui-3" has been upgraded.
LAST DEPLOYED: Tue Jan  7 12:24:35 2020
NAMESPACE: default
STATUS: DEPLOYED

RESOURCES:
==> v1/Deployment
NAME          AGE
test-ui-3-ui  15m

==> v1/Pod(related)
NAME                           AGE
test-ui-3-ui-669675d44b-dg4xb  15m
test-ui-3-ui-669675d44b-q5rnp  15m
test-ui-3-ui-669675d44b-tl6m5  15m

==> v1/Service
NAME          AGE
test-ui-3-ui  15m

==> v1beta1/Ingress
NAME          AGE
test-ui-3-ui  15m
```
И этот обновлён

Мы собрали Chart для развертывания ui-компоненты приложения. Он должен иметь следующую структуру
```shell
tree ui
```
```log
ui
├── Chart.yaml
├── templates
│   ├── deployment.yaml
│   ├── ingress.yaml
│   └── service.yaml
└── values.yaml

1 directory, 5 files
```

Осталось собрать пакеты для остальных компонент

##### Post

`post/templates/service.yaml`
```yaml
---
apiVersion: v1
kind: Service
metadata:
  name: {{ .Release.Name }}-{{ .Chart.Name }}
  labels:
    app: reddit
    component: post
    release: {{ .Release.Name }}
spec:
  type: ClusterIP
  ports:
  - port: {{ .Values.service.externalPort }}
    protocol: TCP
    targetPort: {{ .Values.service.internalPort }}
  selector:
    app: reddit
    component: post
    release: {{ .Release.Name }}
...
```

`post/templates/deployment.yaml`
```yaml
---
apiVersion: apps/v1beta2
kind: Deployment
metadata:
  name: {{ .Release.Name }}-{{ .Chart.Name }}
  labels:
    app: reddit
    component: post
    release: {{ .Release.Name }}
spec:
  replicas: 1
  selector:
    matchLabels:
      app: reddit
      component: post
      release: {{ .Release.Name }}
  template:
    metadata:
      name: post
      labels:
        app: reddit
        component: post
        release: {{ .Release.Name }}
    spec:
      containers:
      - image: "{{ .Values.image.repository }}:{{ .Values.image.tag }}"
        name: post
        ports:
        - containerPort: {{ .Values.service.internalPort }}
          name: post
          protocol: TCP
        env:
        - name: POST_DATABASE_HOST
          value: {{ .Values.databaseHost }}
```

Обратим внимание на адрес БД
```yaml
env:
  - name: POST_DATABASE_HOST
    value: postdb
```

Поскольку адрес БД может меняться в зависимости от условий запуска:
- бд отдельно от кластера
- бд запущено в отдельном релизе
- ... , то создадим удобный шаблон для задания адреса БД.

```yaml
env:
  - name: POST_DATABASE_HOST
    value: {{ .Values.databaseHost }}
```

Будем задавать бд через переменную `databaseHost`. Иногда лучше использовать подобный формат переменных вместо структур `database.host`, так как тогда прийдется определять структуру database, иначе helm выдаст ошибку.

Используем функцию `default()`. Если `databaseHost` не будет определена или ее значение будет пустым, то используется вывод функции `printf()` (которая просто формирует строку `<имя-релиза>-mongodb`)
```yaml
value: {{ .Values.databaseHost | default (printf "%s-mongodb" .Release.Name) }}
```
> release-name-mongodb

В итоге должно получиться следующее
```yaml
       env:
        - name: POST_DATABASE_HOST
          value: {{ .Values.databaseHost | default (printf "%s-mongodb" .Release.Name) }}
```
Теперь, если databaseHost не задано, то будет использован адрес базы, поднятой внутри релиза

В итоге получим следующий
`post/templates/deployment.yaml`
```yaml
---
apiVersion: apps/v1beta2
kind: Deployment
metadata:
  name: {{ .Release.Name }}-{{ .Chart.Name }}
  labels:
    app: reddit
    component: post
    release: {{ .Release.Name }}
spec:
  replicas: 1
  selector:
    matchLabels:
      app: reddit
      component: post
      release: {{ .Release.Name }}
  template:
    metadata:
      name: post
      labels:
        app: reddit
        component: post
        release: {{ .Release.Name }}
    spec:
      containers:
      - image: "{{ .Values.image.repository }}:{{ .Values.image.tag }}"
        name: post
        ports:
        - containerPort: {{ .Values.service.internalPort }}
          name: post
          protocol: TCP
        env:
            - name: POST_DATABASE_HOST
            value: {{ .Values.databaseHost | default (printf "%s-mongodb" .Release.Name) }}
```

Более подробная [документация](https://helm.sh/docs/chart_template_guide/#the-chart-template-developer-s-guide) по шаблонизации и функциям

`post/values.yaml`
```yaml
---
service:
  internalPort: 5000
  externalPort: 5000

image:
  repository: vscoder/post
  tag: latest

databaseHost:
```

`post/Chart.yaml`
```yaml
---
name: post
version: 1.0.0
description: OTUS reddit application Post
maintainers:
  - name: Someone
    email: my@mail.com
appVersion: 1.0
```


##### Comment

Шаблонизируем сервис comment:

Здесь все очень похоже на сервис post:

`comment/templates/deployment.yaml`
```yaml
---
apiVersion: apps/v1
kind: Deployment
metadata:
  name: {{ .Release.Name }}-{{ .Chart.Name }}
  labels:
    app: reddit
    component: comment
    release: {{ .Release.Name }}
spec:
  replicas: 1
  selector:
    matchLabels:
      app: reddit
      component: comment
      release: {{ .Release.Name }}
  template:
    metadata:
      name: comment
      labels:
        app: reddit
        component: comment
        release: {{ .Release.Name }}
    spec:
      containers:
      - image: "{{ .Values.image.repository }}:{{ .Values.image.tag }}"
        name: comment
        ports:
        - containerPort: {{ .Values.service.internalPort }}
          name: comment
          protocol: TCP
        env:
        - name: COMMENT_DATABASE_HOST
          value: {{ .Values.databaseHost | default (printf "%s-mongodb" .Release.Name) }}
```

`comment/templates/service.yaml`
```yaml
---
apiVersion: v1
kind: Service
metadata:
  name: {{ .Release.Name }}-{{ .Chart.Name }}
  labels:
    app: reddit
    component: comment
    release: {{ .Release.Name }}
spec:
  type: ClusterIP
  ports:
  - port: {{ .Values.service.externalPort }}
    protocol: TCP
    targetPort: {{ .Values.service.internalPort }}
  selector:
    app: reddit
    component: comment
    release: {{ .Release.Name }}
```

`comment/values.yaml`
```yaml
---
service:
  internalPort: 9292
  externalPort: 9292

image:
  repository: vscoder/comment
  tag: latest

databaseHost:
```

не забудьте добавить `Chart.yaml`
```yaml
---
name: comment
version: 1.0.0
description: OTUS reddit application Comment
maintainers:
  - name: Someone
    email: my@mail.com
appVersion: 1.0
```

Итоговая структура выглядит так:
```shell
tree ./
```
```log
./
├── comment
│   ├── Chart.yaml
│   ├── templates
│   │   ├── deployment.yaml
│   │   └── service.yaml
│   └── values.yaml
├── post
│   ├── Chart.yaml
│   ├── templates
│   │   ├── deployment.yaml
│   │   └── service.yaml
│   └── values.yaml
├── reddit
└── ui
    ├── Chart.yaml
    ├── templates
    │   ├── deployment.yaml
    │   ├── ingress.yaml
    │   └── service.yaml
    └── values.yaml

7 directories, 13 files
```


##### Helpers

Также стоит отметить функционал helm по использованию helper’ов и функции templates. 

**Helper** - это написанная нами функция. В функция описывается, как правило, сложная логика. Шаблоны этих функция распологаются в файле `_helpers.tpl`

Пример функции `comment.fullname`:

`Charts/comment/templates/_helpers.tpl`
```
{{- define "comment.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name }}
{{- end -}}
```

которая в результате выдаст то же, что и: `{{ .Release.Name }}-{{ .Chart.Name }}`

И заменим в соответствующие строчки в файле, чтобы использовать helper

`comment/templates/service.yaml`
```yaml
---
apiVersion: v1
kind: Service
metadata:
  name: {{ template "comment.fullname" . }}
  labels:
    app: reddit
    component: comment
    release: {{ .Release.Name }}
spec:
  type: ClusterIP
  ports:
  - port: {{ .Values.service.externalPort }}
    protocol: TCP
    targetPort: {{ .Values.service.internalPort }}
  selector:
    app: reddit
    component: comment
    release: {{ .Release.Name }}
```

Структура ипортирующей функции template
```t
{{ 
  template            # Функция template
  "comment.fullname"  # Название функции для импорта
  .                   # Область видимости для импорта
}}
```

**"."** - вся область видимости всех переменных (можно передать `.Chart`, тогда `.Values` не будут доступны внутри функции)


##### Задание

1. Создать файлы `_helpers.tpl` в папках templates сервисов _ui_, _post_ и _comment_
   1. Файл `_helpers.tpl` скопирован в `post/templates/` и `ui/templates/`
2. Вставить функцию ".fullname" в каждый `_helpers.tpl` файл. Заменить на имя чарта соотв. сервиса
   1. Имя функции заменено на `post.fullname` и `ui.fullname` соответственно
3. В каждом из шаблонов манифестов вставить следующую функцию там, где это требуется (большинство полей это name: `{{ template "comment.fullname" . }}`)
   1. `{{ .Release.Name }}-{{ .Chart.Name }}` для всех шаблонов манифестов заменено на вызов соответствующего шаблона


#### Управление зависимостями

Структура стала следующей:
```shell
tree .
```
```log
.
├── comment
│   ├── Chart.yaml
│   ├── templates
│   │   ├── deployment.yaml
│   │   ├── _helpers.tpl
│   │   └── service.yaml
│   └── values.yaml
├── post
│   ├── Chart.yaml
│   ├── templates
│   │   ├── deployment.yaml
│   │   ├── _helpers.tpl
│   │   └── service.yaml
│   └── values.yaml
├── reddit
└── ui
    ├── Chart.yaml
    ├── templates
    │   ├── deployment.yaml
    │   ├── _helpers.tpl
    │   ├── ingress.yaml
    │   └── service.yaml
    └── values.yaml
```

Мы создали Chart’ы для каждой компоненты нашего приложения. Каждый из них можно запустить по-отдельности командой
```shell
helm install <chart-path> --name <release-name>
```

Но они будут запускаться в разных релизах, и не будут видеть друг друга. С помощью механизма управления зависимостями создадим
единый Chart `reddit`, который объединит наши компоненты.
![](kubernetes/img/helm-scheme-reddit.png)

1. Создайте `reddit/Chart.yaml`
```yaml
---
name: reddit
version: 0.1.0
description: OTUS sample reddit application
maintainers:
  - name: Aleksey Koloskov
    email: vsyscoder@gmail.com
```
> Заполните параметры name и email своими данными (оки)
2. Создайте пустой `reddit/values.yaml`

В директории Chart'а reddit создадим файл `reddit/requirements.yaml`
```yaml
---
dependencies:
  - name: ui
    version: "1.0.0"
    repository: "file://../ui"

  - name: post
    version: "1.0.0"
    repository: "file://../post"

  - name: comment
    version: "1.0.0"
    repository: "file://../comment"
...
```

> Имя и версия должны совпадать с содержанием `ui/Chart.yml`
> Путь указывается относительно расположения самого `requirements.yaml`

Нужно загрузить зависимости (когда Chart’ не упакован в tgz архив)
```shell
helm dep update
```
```log
Hang tight while we grab the latest from your chart repositories...
...Unable to get an update from the "local" chart repository (http://127.0.0.1:8879/charts):
        Get http://127.0.0.1:8879/charts/index.yaml: dial tcp 127.0.0.1:8879: connect: connection refused
...Successfully got an update from the "stable" chart repository
Update Complete.
Saving 3 charts
Deleting outdated charts
```

Появится файл `requirements.lock` с фиксацией зависимостей. Будет создана директория charts с зависимостями в виде архивов.

Структура стала следующей:
```shell
tree reddit 
```
```log
reddit
├── charts
│   ├── comment-1.0.0.tgz
│   ├── post-1.0.0.tgz
│   └── ui-1.0.0.tgz
├── Chart.yaml
├── requirements.lock
├── requirements.yaml
└── values.yaml

1 directory, 7 files
```

Chart для базы данных не будем создавать вручную. Возьмем готовый.

Найдем Chart в общедоступном репозитории
```shell
helm search mongo
```
```log
NAME                                    CHART VERSION   APP VERSION     DESCRIPTION                                                 
stable/mongodb                          7.6.3           4.0.14          NoSQL document-oriented database that stores JSON-like do...
stable/mongodb-replicaset               3.11.2          3.6             NoSQL document-oriented database that stores JSON-like do...
stable/prometheus-mongodb-exporter      2.4.0           v0.10.0         A Prometheus exporter for MongoDB metrics                   
stable/unifi                            0.5.2           5.11.50         Ubiquiti Network's Unifi Controller
```

Добавим в `reddit/requirements.yml`
```yaml
---
dependencies:
  - name: ui
    version: 1.0.0
    repository: "file://../ui"

  - name: post
    version: 1.0.0
    repository: "file://../post"

  - name: comment
    version: 1.0.0
    repository: "file://../comment"

  - name: mongodb
    version: 7.2.8
    repository: https://kubernetes-charts.storage.googleapis.com
...
```

Выгрузим зависимости
```shell
helm dep update
```
```log
Hang tight while we grab the latest from your chart repositories...
...Unable to get an update from the "local" chart repository (http://127.0.0.1:8879/charts):
        Get http://127.0.0.1:8879/charts/index.yaml: dial tcp 127.0.0.1:8879: connect: connection refused
...Successfully got an update from the "stable" chart repository
Update Complete.
Saving 4 charts
Downloading mongodb from repo https://kubernetes-charts.storage.googleapis.com
Deleting outdated charts
```
```shell
tree reddit
```
```log
reddit
├── charts
│   ├── comment-1.0.0.tgz
│   ├── mongodb-7.2.8.tgz
│   ├── post-1.0.0.tgz
│   └── ui-1.0.0.tgz
├── Chart.yaml
├── requirements.lock
├── requirements.yaml
└── values.yaml

1 directory, 8 files
```

Установим наше приложение:
```shell
helm install reddit --name reddit-test
```
```log
Error: YAML parse error on reddit/charts/post/templates/deployment.yaml: error converting YAML to JSON: yaml: line 32: did not find expected '-' indicator
```
Пофиксим `post/templates/deployment.yaml`
```yaml
---
apiVersion: apps/v1
kind: Deployment
metadata:
  name: {{ template "post.fullname" . }}
  labels:
    app: reddit
    component: post
    release: {{ .Release.Name }}
spec:
  replicas: 1
  selector:
    matchLabels:
      app: reddit
      component: post
      release: {{ .Release.Name }}
  template:
    metadata:
      name: post
      labels:
        app: reddit
        component: post
        release: {{ .Release.Name }}
    spec:
      containers:
      - image: "{{ .Values.image.repository }}:{{ .Values.image.tag }}"
        name: post
        ports:
        - containerPort: {{ .Values.service.internalPort }}
          name: post
          protocol: TCP
        env:
        - name: POST_DATABASE_HOST
          value: {{ .Values.databaseHost | default (printf "%s-mongodb" .Release.Name) }}
```
```shell
helm dep update
```
```log
Hang tight while we grab the latest from your chart repositories...
...Unable to get an update from the "local" chart repository (http://127.0.0.1:8879/charts):
        Get http://127.0.0.1:8879/charts/index.yaml: dial tcp 127.0.0.1:8879: connect: connection refused
...Successfully got an update from the "stable" chart repository
Update Complete.
Saving 4 charts
Downloading mongodb from repo https://kubernetes-charts.storage.googleapis.com
Deleting outdated charts
```
```shell
helm install reddit --name reddit-test
```
```log
NAME:   reddit-test
LAST DEPLOYED: Wed Jan  8 15:47:48 2020
NAMESPACE: default
STATUS: DEPLOYED

RESOURCES:
==> v1/Deployment
NAME                 AGE
reddit-test-comment  1s
reddit-test-post     1s
reddit-test-ui       1s

==> v1/PersistentVolumeClaim
NAME                 AGE
reddit-test-mongodb  1s

==> v1/Pod(related)
NAME                                  AGE
reddit-test-comment-5cf7784c46-mhrm5  1s
reddit-test-mongodb-bd574dbb8-ltkdh   1s
reddit-test-post-66b4846455-csb59     1s
reddit-test-ui-9d7d5c8c-cfdtm         1s
reddit-test-ui-9d7d5c8c-ls6x5         1s
reddit-test-ui-9d7d5c8c-qgz97         1s

==> v1/Secret
NAME                 AGE
reddit-test-mongodb  1s

==> v1/Service
NAME                 AGE
reddit-test-comment  1s
reddit-test-mongodb  1s
reddit-test-post     1s
reddit-test-ui       1s

==> v1beta1/Deployment
NAME                 AGE
reddit-test-mongodb  1s

==> v1beta1/Ingress
NAME            AGE
reddit-test-ui  1s
```


Найдите адрес ingress’а с помощью kubectl
```shell
kubectl get ingress
```
```log
NAME             HOSTS   ADDRESS          PORTS   AGE
reddit-test-ui   *       34.107.198.236   80      38s
test-ui-1-ui     *       34.107.213.1     80      27h
test-ui-2-ui     *       34.95.116.107    80      27h
test-ui-3-ui     *       35.244.235.133   80      27h
```
```shell
kubectl describe ingresses reddit-test-ui
```
```log
Name:             reddit-test-ui
Namespace:        default
Address:          34.107.198.236
Default backend:  default-http-backend:80 (10.4.0.2:8080)
Rules:
  Host  Path  Backends
  ----  ----  --------
  *     
        /   reddit-test-ui:9292 (<none>)
Annotations:
  ingress.kubernetes.io/backends:         {"k8s-be-30484--bb36bed10e2d33ef":"Unknown","k8s-be-31427--bb36bed10e2d33ef":"HEALTHY"}
  ingress.kubernetes.io/forwarding-rule:  k8s-fw-default-reddit-test-ui--bb36bed10e2d33ef
  ingress.kubernetes.io/target-proxy:     k8s-tp-default-reddit-test-ui--bb36bed10e2d33ef
  ingress.kubernetes.io/url-map:          k8s-um-default-reddit-test-ui--bb36bed10e2d33ef
  kubernetes.io/ingress.class:            gce
Events:
  Type    Reason  Age   From                     Message
  ----    ------  ----  ----                     -------
  Normal  ADD     90s   loadbalancer-controller  default/reddit-test-ui
  Normal  CREATE  52s   loadbalancer-controller  ip: 34.107.198.236
```

Подождать пока ingress обработается и ... открылось)
> Can't show blog posts, some problems with the post service. Refresh?

Есть проблема с тем, что UI-сервис не знает как правильно ходить в post и comment сервисы. Ведь их имена теперь динамические и зависят от имен чартов

В `Dockerfile` UI-сервиса уже заданы переменные окружения. Надо, чтобы они указывали на нужные бекенды
```dockerfile
ENV POST_SERVICE_HOST post
ENV POST_SERVICE_PORT 5000
ENV COMMENT_SERVICE_HOST comment
ENV COMMENT_SERVICE_PORT 9292
```

Добавим в `ui/deployments.yaml`
```yaml
---
apiVersion: apps/v1
kind: Deployment
metadata:
  name: {{ template "ui.fullname" . }}
  labels:
    app: reddit
    component: ui
    release: {{ .Release.Name }}
spec:
  replicas: 3
  strategy:
    type: Recreate
  selector:
    matchLabels:
      app: reddit
      component: ui
      release: {{ .Release.Name }}
  template:
    metadata:
      name: ui
      labels:
        app: reddit
        component: ui
        release: {{ .Release.Name }}
    spec:
      containers:
      - image: {{ .Values.image.repository }}:{{ .Values.image.tag }}
        name: ui
        ports:
        - containerPort: {{ .Values.service.internalPort }}
          name: ui
        env:
        - name: POST_SERVICE_HOST
          value: {{  .Values.postHost | default (printf "%s-post" .Release.Name) }}
        - name: POST_SERVICE_PORT
          value: {{  .Values.postPort | default "5000" | quote }}
        - name: COMMENT_SERVICE_HOST
          value: {{  .Values.commentHost | default (printf "%s-comment" .Release.Name) }}
        - name: COMMENT_SERVICE_PORT
          value: {{  .Values.commentPort | default "9292" | quote }}
        - name: ENV
          valueFrom:
            fieldRef:
              fieldPath: metadata.namespace
...
```

> `{{ .Values.commentPort | default "9292" | quote }}` ❗ обратите внимание на функцию добавления кавычек. Для чисел и булевых значений это важно!

Добавим в `ui/values.yaml`
```yaml
---
service:
  internalPort: 9292
  externalPort: 9292

image:
  repository: vscoder/ui
  tag: latest

ingress:
  class: nginx

postHost:
postPort:
commentHost:
commentPort:
```

Можете даже закоментировать эти параметры или оставить пустыми. Главное, чтобы они были в конфигурации Chart’а **в качестве документации**

Вы можете задавать теперь переменные для зависимостей прямо в `values.yaml` самого Chart’а reddit. Они перезаписывают значения переменных из зависимых чартов

`reddit/values.yaml`
```yaml
---
comment:
  image:
    repository: vscoder/comment
    tag: latest
  service:
    externalPort: 9292

post:
  image:
    repository: vscoder/post
    tag: latest
  service:
    externalPort: 5000

ui:
  image:
    repository: vscoder/ui
    tag: latest
  service:
    externalPort: 9292
```
> Ссылаемся на переменные чартов из зависимостей

После обновления UI - нужно обновить зависимости чарта reddit.
```shell
helm dep update ./reddit
```
```log
Hang tight while we grab the latest from your chart repositories...
...Unable to get an update from the "local" chart repository (http://127.0.0.1:8879/charts):
        Get http://127.0.0.1:8879/charts/index.yaml: dial tcp 127.0.0.1:8879: connect: connection refused
...Successfully got an update from the "stable" chart repository
Update Complete.
Saving 4 charts
Downloading mongodb from repo https://kubernetes-charts.storage.googleapis.com
Deleting outdated charts
```

Обновите релиз, установленный в k8s
```shell
helm upgrade <release-name> ./reddit
```
```log
Release "reddit-test" has been upgraded.
LAST DEPLOYED: Wed Jan  8 17:10:55 2020
NAMESPACE: default
STATUS: DEPLOYED

RESOURCES:
==> v1/Deployment
NAME                 AGE
reddit-test-comment  83m
reddit-test-post     83m
reddit-test-ui       83m

==> v1/PersistentVolumeClaim
NAME                 AGE
reddit-test-mongodb  83m

==> v1/Pod(related)
NAME                                  AGE
reddit-test-comment-5cf7784c46-mhrm5  83m
reddit-test-mongodb-bd574dbb8-ltkdh   83m
reddit-test-post-66b4846455-csb59     83m
reddit-test-ui-9d7d5c8c-cfdtm         83m
reddit-test-ui-9d7d5c8c-ls6x5         83m
reddit-test-ui-9d7d5c8c-qgz97         83m

==> v1/Secret
NAME                 AGE
reddit-test-mongodb  83m

==> v1/Service
NAME                 AGE
reddit-test-comment  83m
reddit-test-mongodb  83m
reddit-test-post     83m
reddit-test-ui       83m

==> v1beta1/Deployment
NAME                 AGE
reddit-test-mongodb  83m

==> v1beta1/Ingress
NAME            AGE
reddit-test-ui  83m
```


#### helm2 tiller plugin

До этого мы деплоили с помощью tiller'а с правами cluster-admin, что **небезопасно**. Есть концепция создания tiller'а в каждом namespace'е и наделение его лишь необходимыми правами. Чтобы не создавать каждый раз namespace и tiller в нем руками, используем [tiller plugin](https://github.com/rimusz/helm-tiller)([описание](https://rimusz.net/tillerless-helm))

1. Удалим уже имеющийся tiller из кластера ([статья](https://stackoverflow.com/questions/47583821/how-to-delete-tiller-from-kubernetes-cluster/47583918));
```shell
helm reset
```
```log
Error: there are still 4 deployed releases (Tip: use --force to remove Tiller. Releases will not be deleted.)
```
```shell
helm reset --force
```
```log
Tiller (the Helm server-side component) has been uninstalled from your Kubernetes Cluster.
```

2. Выполним установку плагина и сам деплой в новый namespace `reddit-ns`:
```shell
helm init --client-only
```
```log
$HELM_HOME has been configured at /home/vscoder/.helm.
Not installing Tiller due to 'client-only' flag having been set
```
```shell
helm plugin install https://github.com/rimusz/helm-tiller
```
```log
Installed plugin: tiller
```
```shell
cd kubernetes/Charts
helm tiller run -- helm upgrade --install --wait --namespace=reddit-ns reddit reddit/
```
```log
Installed Helm version v2.16.1
Installed Tiller version v2.16.1
Helm and Tiller are the same version!
Starting Tiller...
Tiller namespace: kube-system
Running: helm upgrade --install --wait --namespace=reddit-ns reddit reddit/

Release "reddit" does not exist. Installing it now.
NAME:   reddit
LAST DEPLOYED: Wed Jan  8 19:48:26 2020
NAMESPACE: reddit-ns
STATUS: DEPLOYED

RESOURCES:
==> v1/Deployment
NAME            AGE
reddit-comment  20s
reddit-post     20s
reddit-ui       20s

==> v1/PersistentVolumeClaim
NAME            AGE
reddit-mongodb  21s

==> v1/Pod(related)
NAME                             AGE
reddit-comment-5c9999f4d4-8nn5t  20s
reddit-mongodb-6fd8c46f6b-ztrfw  20s
reddit-post-5df6798d67-h7ntz     20s
reddit-ui-9b5b66dc4-btq6b        20s
reddit-ui-9b5b66dc4-mtzsr        20s
reddit-ui-9b5b66dc4-z4slk        20s

==> v1/Secret
NAME            AGE
reddit-mongodb  21s

==> v1/Service
NAME            AGE
reddit-comment  21s
reddit-mongodb  20s
reddit-post     21s
reddit-ui       21s

==> v1beta1/Deployment
NAME            AGE
reddit-mongodb  20s

==> v1beta1/Ingress
NAME       AGE
reddit-ui  20s


Stopping Tiller...
```

3. Проверим, что все успешно, получив айпи от `kubectl get ingress -n reddit-ns` и пройдя по нему. Нет адреса О_о

Причина: `kubectl get ingress -n reddit-ns`
```log
Warning  Sync    7m1s (x23 over 43m)  loadbalancer-controller  Error during sync: error running backend syncing routine: googleapi: Error 403: QUOTA_EXCEEDED - Quota 'BACKEND_SERVICES' exceeded.  Limit: 5.0 globally.
```

Похоже, нужно было удалить релизы из старого хельма перед удалением тиллера... Теперь прибётся ручками.
```shell
kubectl delete ingress test-ui-3-ui
kubectl delete ingress test-ui-2-ui
kubectl delete ingress test-ui-1-ui
```

TODO: не забыть почистить остальные сущности

Повторно смотрим ip
```shell
kubectl get ingress -n reddit-ns
```
```log
NAME        HOSTS   ADDRESS          PORTS   AGE
reddit-ui   *       34.107.225.231   80      83m
```
```log
Can't show blog posts, some problems with the post service. Refresh?
```

А должно бы работать... Диагностика
```shell
kubectl -n reddit-ns logs reddit-ui-9b5b66dc4-d45sd
```
```log
E, [2020-01-08T18:59:33.443574 #1] ERROR -- : service=ui | event=show_all_posts | request_id=554047ae-f986-4d0a-a63f-abf5d81f8e09 | message='Failed to read from Post service. Reason: getaddrinfo: Try again' | params: "{}"
```
```shell
kubectl -n reddit-ns describe deployments reddit-ui
```
```log
Name:               reddit-ui
Namespace:          reddit-ns
CreationTimestamp:  Wed, 08 Jan 2020 19:48:29 +0300
Labels:             app=reddit
                    component=ui
                    release=reddit
Annotations:        deployment.kubernetes.io/revision: 1
Selector:           app=reddit,component=ui,release=reddit
Replicas:           3 desired | 3 updated | 3 total | 3 available | 0 unavailable
StrategyType:       Recreate
MinReadySeconds:    0
Pod Template:
  Labels:  app=reddit
           component=ui
           release=reddit
  Containers:
   ui:
    Image:      vscoder/ui:latest
    Port:       9292/TCP
    Host Port:  0/TCP
    Environment:
      POST_SERVICE_HOST:     reddit-post
      POST_SERVICE_PORT:     5000
      COMMENT_SERVICE_HOST:  reddit-comment
      COMMENT_SERVICE_PORT:  9292
      ENV:                    (v1:metadata.namespace)
    Mounts:                  <none>
  Volumes:                   <none>
Conditions:
  Type           Status  Reason
  ----           ------  ------
  Progressing    True    NewReplicaSetAvailable
  Available      True    MinimumReplicasAvailable
OldReplicaSets:  <none>
NewReplicaSet:   reddit-ui-9b5b66dc4 (3/3 replicas created)
Events:          <none>
```

Спустя минут 20 список постов (точнее отсутствие постов) отображается корректно. Но при попытке создать пост http://34.107.225.231/new ошибка
```log
default backend - 404
```

TODO: Fix it tomorrow

а пока дроп инфры
```shell
cd ./kubernetes/terraform
make destroy
```

Инфра снова поднята. Запускаемся.
```shell
cd ./kubernetes/terraform
make apply
gcloud container clusters get-credentials reddit-public --zone us-central1-a --project docker-257914
cd -
make install_helm HELM_VERSION=2.16.1
helm init --client-only
helm plugin install https://github.com/rimusz/helm-tiller
cd kubernetes/Charts
helm tiller run -- helm upgrade --install --wait --namespace=reddit-ns reddit reddit/
```

```shell
kubectl get ingresses -n reddit-ns 
```
```log
NAME        HOSTS   ADDRESS        PORTS   AGE
reddit-ui   *       34.107.213.1   80      6m56s
```
При переходе на http://34.107.213.1 та же ошибка. И при попытке создать пост http://34.107.213.1/new тоже.

В `./ui/templates/ingress.yaml` исправил `path:`
```yaml
---
apiVersion: extensions/v1beta1
kind: Ingress
metadata:
  name: {{ template "ui.fullname" . }}
  annotations:
    kubernetes.io/ingress.class: "gce"
spec:
  rules:
  - http:
      paths:
      - path: /*  # ранее был просто /
        backend:
          serviceName: {{ template "ui.fullname" . }}
          servicePort: {{ .Values.service.externalPort }}
...
```

Теперь появилась возможность создать пост, но список постов так и не отображается
> Can't show blog posts, some problems with the post service. Refresh?

Возможно лаг ингресса у гугла, или некорректно передаются адреса сервисов `post` и `comment` сервису `ui`. Пока подождём.

Подождали. Не помогло))

Псмотрим логи
```shell
kubectl logs reddit-ui-9b5b66dc4-6jc8j -n reddit-ns
```
```log
E, [2020-01-09T16:52:57.764164 #1] ERROR -- : service=ui | event=show_all_posts | request_id=afdd1428-8294-4e7c-a076-03c5d2118bf5 | message='Failed to read from Post service. Reason: 776: unexpected token at 'Internal Server Error'' | params: "{}"
I, [2020-01-09T16:52:57.783509 #1]  INFO -- : service=ui | event=request | path=/ | request_id=afdd1428-8294-4e7c-a076-03c5d2118bf5 | remote_addr=10.3.0.3 | method= GET | response_status=200
E, [2020-01-09T16:53:31.584705 #1] ERROR -- : service=ui | event=show_all_posts | request_id=9254f99d-8044-4d2e-bb96-be1f120d6633 | message='Failed to read from Post service. Reason: 776: unexpected token at 'Internal Server Error'' | params: "{}"
I, [2020-01-09T16:53:31.684601 #1]  INFO -- : service=ui | event=request | path=/ | request_id=9254f99d-8044-4d2e-bb96-be1f120d6633 | remote_addr=10.3.0.4 | method= GET | response_status=200
E, [2020-01-09T16:53:33.100635 #1] ERROR -- : service=ui | event=show_all_posts | request_id=3ee616b9-f35f-4dcb-bf72-1f9ff996d765 | message='Failed to read from Post service. Reason: 776: unexpected token at 'Internal Server Error'' | params: "{}"
I, [2020-01-09T16:53:33.150194 #1]  INFO -- : service=ui | event=request | path=/ | request_id=3ee616b9-f35f-4dcb-bf72-1f9ff996d765 | remote_addr=10.3.0.4 | method= GET | response_status=200
```

А вот и ошибочка в сервисе `post`
```shell
kubectl logs reddit-post-5df6798d67-mwz95 -n reddit-ns
```
```log
{"addr": "10.4.0.15", "event": "request", "level": "info", "method": "GET", "path": "/posts?", "request_id": "e9b4b8e1-d1dc-4210-a56f-708b9ff4718b", "response_status": 500, "service": "post", "timestamp": "2020-01-09 17:00:58"}
{"event": "find_all_posts", "level": "info", "message": "Successfully retrieved all posts from the database", "params": {}, "request_id": "c9af9652-cf53-486a-937d-94e1e3532dea", "service": "post", "timestamp": "2020-01-09 17:00:58"}
{"event": "internal_error", "level": "error", "method": "GET", "path": "/posts?", "remote_addr": "10.4.1.5", "request_id": "c9af9652-cf53-486a-937d-94e1e3532dea", "service": "post", "timestamp": "2020-01-09 17:00:58", "traceback": "Traceback (most recent call last):\n  File \"/usr/local/lib/python3.6/site-packages/flask/app.py\", line 1612, in full_dispatch_request\n    rv = self.dispatch_request()\n  File \"/usr/local/lib/python3.6/site-packages/flask/app.py\", line 1598, in dispatch_request\n    return self.view_functions[rule.endpoint](**req.view_args)\n  File \"/app/post_app.py\", line 133, in posts\n    posts = find_posts()\n  File \"/usr/local/lib/python3.6/site-packages/py_zipkin/zipkin.py\", line 246, in decorated\n    return f(*args, **kwargs)\n  File \"/app/post_app.py\", line 120, in find_posts\n    return dumps(posts)\n  File \"/usr/local/lib/python3.6/site-packages/bson/json_util.py\", line 403, in dumps\n    return json.dumps(_json_convert(obj, json_options), *args, **kwargs)\n  File \"/usr/local/lib/python3.6/site-packages/bson/json_util.py\", line 444, in _json_convert\n    return list((_json_convert(v, json_options) for v in obj))\n  File \"/usr/local/lib/python3.6/site-packages/bson/json_util.py\", line 444, in <genexpr>\n    return list((_json_convert(v, json_options) for v in obj))\n  File \"/usr/local/lib/python3.6/site-packages/pymongo/cursor.py\", line 1132, in next\n    if len(self.__data) or self._refresh():\n  File \"/usr/local/lib/python3.6/site-packages/pymongo/cursor.py\", line 1055, in _refresh\n    self.__collation))\n  File \"/usr/local/lib/python3.6/site-packages/pymongo/cursor.py\", line 947, in __send_message\n    helpers._check_command_response(doc['data'][0])\n  File \"/usr/local/lib/python3.6/site-packages/pymongo/helpers.py\", line 210, in _check_command_response\n    raise OperationFailure(msg % errmsg, code, response)\npymongo.errors.OperationFailure: command find requires authentication\n"}
```
Если в кратце, то суть в
```log
pymongo.errors.OperationFailure: command find requires authentication
```

Гугление наводит на ту же мысль, что и попытка подумать: https://stackoverflow.com/questions/57443291/pymongo-errors-operationfailure-command-insert-requires-authentication

А именно:
> MongoDB instance you are using is set up with authentication

Посмотрим что нам монга скажет
```shell
kubectl describe pod reddit-mongodb-6fd8c46f6b-w4gdr -n reddit-ns
```
```log
Name:           reddit-mongodb-6fd8c46f6b-w4gdr
Namespace:      reddit-ns
Priority:       0
Node:           gke-reddit-public-main-pool-43115a71-cksq/10.3.0.3
Start Time:     Thu, 09 Jan 2020 18:44:45 +0300
Labels:         app=mongodb
                chart=mongodb-7.2.8
                pod-template-hash=6fd8c46f6b
                release=reddit
Annotations:    cni.projectcalico.org/podIP: 10.4.0.16/32
Status:         Running
IP:             10.4.0.16
IPs:            <none>
Controlled By:  ReplicaSet/reddit-mongodb-6fd8c46f6b
Containers:
  reddit-mongodb:
    Container ID:   docker://7433071b84dae22bb5d2d5c3e7d88940f5fef65e8ae8b798a85cb0286462f817
    Image:          docker.io/bitnami/mongodb:4.0.12-debian-9-r22
    Image ID:       docker-pullable://bitnami/mongodb@sha256:fca68e8a78207d8195e004ac09f34d7c23d406a609d2fbb0d4cc9c7855c6b5ec
    Port:           27017/TCP
    Host Port:      0/TCP
    State:          Running
      Started:      Thu, 09 Jan 2020 18:45:16 +0300
    Ready:          True
    Restart Count:  0
    Liveness:       exec [mongo --eval db.adminCommand('ping')] delay=30s timeout=5s period=10s #success=1 #failure=6
    Readiness:      exec [mongo --eval db.adminCommand('ping')] delay=5s timeout=5s period=10s #success=1 #failure=6
    Environment:
      MONGODB_ROOT_PASSWORD:            <set to the key 'mongodb-root-password' in secret 'reddit-mongodb'>  Optional: false
      MONGODB_SYSTEM_LOG_VERBOSITY:     0
      MONGODB_DISABLE_SYSTEM_LOG:       no
      MONGODB_ENABLE_IPV6:              no
      MONGODB_ENABLE_DIRECTORY_PER_DB:  no
    Mounts:
      /bitnami/mongodb from data (rw)
      /var/run/secrets/kubernetes.io/serviceaccount from default-token-vqclp (ro)
Conditions:
  Type              Status
  Initialized       True 
  Ready             True 
  ContainersReady   True 
  PodScheduled      True 
Volumes:
  data:
    Type:       PersistentVolumeClaim (a reference to a PersistentVolumeClaim in the same namespace)
    ClaimName:  reddit-mongodb
    ReadOnly:   false
  default-token-vqclp:
    Type:        Secret (a volume populated by a Secret)
    SecretName:  default-token-vqclp
    Optional:    false
QoS Class:       BestEffort
Node-Selectors:  <none>
Tolerations:     node.kubernetes.io/not-ready:NoExecute for 300s
                 node.kubernetes.io/unreachable:NoExecute for 300s
Events:          <none>
```
Пароль просит задать.

Описание чарта https://github.com/helm/charts/tree/master/stable/mongodb

В рамках данной инсталляции, попробуем для начала авторизацию отключить.

`kubernetes/Charts/reddit/values.yaml`
```yaml
---
comment:
  image:
    repository: vscoder/comment
    tag: latest
  service:
    externalPort: 9292

post:
  image:
    repository: vscoder/post
    tag: latest
  service:
    externalPort: 5000

ui:
  image:
    repository: vscoder/ui
    tag: latest
  service:
    externalPort: 9292

mongodb:
  usePassword: false  # Этот параметр добавили мы
```

```shell
helm dependency build reddit/
```
```log
Hang tight while we grab the latest from your chart repositories...
...Unable to get an update from the "local" chart repository (http://127.0.0.1:8879/charts):
        Get http://127.0.0.1:8879/charts/index.yaml: dial tcp 127.0.0.1:8879: connect: connection refused
...Successfully got an update from the "stable" chart repository
Update Complete.
Saving 4 charts
Downloading mongodb from repo https://kubernetes-charts.storage.googleapis.com
Deleting outdated charts
```
```shell
helm tiller run -- helm upgrade --install --wait --namespace=reddit-ns reddit reddit/
```
```log
Installed Helm version v2.16.1
Installed Tiller version v2.16.1
Helm and Tiller are the same version!
Starting Tiller...
Tiller namespace: kube-system
Running: helm upgrade --install --wait --namespace=reddit-ns reddit reddit/

Release "reddit" has been upgraded.
LAST DEPLOYED: Thu Jan  9 22:15:12 2020
NAMESPACE: reddit-ns
STATUS: DEPLOYED

RESOURCES:
==> v1/Deployment
NAME            AGE
reddit-comment  3h30m
reddit-post     3h30m
reddit-ui       3h30m

==> v1/PersistentVolumeClaim
NAME            AGE
reddit-mongodb  3h30m

==> v1/Pod(related)
NAME                             AGE
reddit-comment-5c9999f4d4-vfq9m  3h30m
reddit-mongodb-68fd4989f7-r58lm  8s
reddit-post-5df6798d67-mwz95     3h30m
reddit-ui-9b5b66dc4-6jc8j        3h30m
reddit-ui-9b5b66dc4-6mqbn        3h30m
reddit-ui-9b5b66dc4-slv8p        3h30m

==> v1/Service
NAME            AGE
reddit-comment  3h30m
reddit-mongodb  3h30m
reddit-post     3h30m
reddit-ui       3h30m

==> v1beta1/Deployment
NAME            AGE
reddit-mongodb  3h30m

==> v1beta1/Ingress
NAME       AGE
reddit-ui  3h30m


Stopping Tiller...
```
Рестартанул наш mongodb. Посмотрим на него
```shell
kubectl describe pod reddit-mongodb-68fd4989f7-r58lm  -n reddit-ns
```
```log
Name:           reddit-mongodb-68fd4989f7-r58lm
Namespace:      reddit-ns
Priority:       0
Node:           gke-reddit-public-main-pool-43115a71-xgm5/10.3.0.4
Start Time:     Thu, 09 Jan 2020 22:15:16 +0300
Labels:         app=mongodb
                chart=mongodb-7.2.8
                pod-template-hash=68fd4989f7
                release=reddit
Annotations:    cni.projectcalico.org/podIP: 10.4.1.7/32
Status:         Running
IP:             10.4.1.7
IPs:            <none>
Controlled By:  ReplicaSet/reddit-mongodb-68fd4989f7
Containers:
  reddit-mongodb:
    Container ID:   docker://e4ebe7055d7715b129229dd43359f0565fff8314b913171c0dadb1ef59983a07
    Image:          docker.io/bitnami/mongodb:4.0.12-debian-9-r22
    Image ID:       docker-pullable://bitnami/mongodb@sha256:fca68e8a78207d8195e004ac09f34d7c23d406a609d2fbb0d4cc9c7855c6b5ec
    Port:           27017/TCP
    Host Port:      0/TCP
    State:          Running
      Started:      Thu, 09 Jan 2020 22:16:15 +0300
    Ready:          True
    Restart Count:  0
    Liveness:       exec [mongo --eval db.adminCommand('ping')] delay=30s timeout=5s period=10s #success=1 #failure=6
    Readiness:      exec [mongo --eval db.adminCommand('ping')] delay=5s timeout=5s period=10s #success=1 #failure=6
    Environment:
      MONGODB_SYSTEM_LOG_VERBOSITY:     0
      MONGODB_DISABLE_SYSTEM_LOG:       no
      MONGODB_ENABLE_IPV6:              no
      MONGODB_ENABLE_DIRECTORY_PER_DB:  no
    Mounts:
      /bitnami/mongodb from data (rw)
      /var/run/secrets/kubernetes.io/serviceaccount from default-token-vqclp (ro)
Conditions:
  Type              Status
  Initialized       True 
  Ready             False 
  ContainersReady   True 
  PodScheduled      True 
Volumes:
  data:
    Type:       PersistentVolumeClaim (a reference to a PersistentVolumeClaim in the same namespace)
    ClaimName:  reddit-mongodb
    ReadOnly:   false
  default-token-vqclp:
    Type:        Secret (a volume populated by a Secret)
    SecretName:  default-token-vqclp
    Optional:    false
QoS Class:       BestEffort
Node-Selectors:  <none>
Tolerations:     node.kubernetes.io/not-ready:NoExecute for 300s
                 node.kubernetes.io/unreachable:NoExecute for 300s
Events:
  Type     Reason                  Age    From                                                Message
  ----     ------                  ----   ----                                                -------
  Normal   Scheduled               4m43s  default-scheduler                                   Successfully assigned reddit-ns/reddit-mongodb-68fd4989f7-r58lm to gke-reddit-public-main-pool-43115a71-xgm5
  Warning  FailedAttachVolume      4m43s  attachdetach-controller                             Multi-Attach error for volume "pvc-2d9d568d-1a82-4a65-b179-253570318b19" Volume is already used by pod(s) reddit-mongodb-6fd8c46f6b-w4gdr
  Normal   SuccessfulAttachVolume  4m22s  attachdetach-controller                             AttachVolume.Attach succeeded for volume "pvc-2d9d568d-1a82-4a65-b179-253570318b19"
  Normal   Pulling                 4m7s   kubelet, gke-reddit-public-main-pool-43115a71-xgm5  Pulling image "docker.io/bitnami/mongodb:4.0.12-debian-9-r22"
  Normal   Pulled                  3m45s  kubelet, gke-reddit-public-main-pool-43115a71-xgm5  Successfully pulled image "docker.io/bitnami/mongodb:4.0.12-debian-9-r22"
  Normal   Created                 3m45s  kubelet, gke-reddit-public-main-pool-43115a71-xgm5  Created container reddit-mongodb
  Normal   Started                 3m44s  kubelet, gke-reddit-public-main-pool-43115a71-xgm5  Started container reddit-mongodb
  Warning  Unhealthy               3m35s  kubelet, gke-reddit-public-main-pool-43115a71-xgm5  Readiness probe failed: MongoDB shell version v4.0.12
connecting to: mongodb://127.0.0.1:27017/?gssapiServiceName=mongodb
2020-01-09T19:16:24.149+0000 E QUERY    [js] Error: couldn't connect to server 127.0.0.1:27017, connection attempt failed: SocketException: Error connecting to 127.0.0.1:27017 :: caused by :: Connection refused :
connect@src/mongo/shell/mongo.js:344:17
@(connect):2:6
exception: connect failed
```
Переменная окружения `MONGODB_ROOT_PASSWORD` остутствует, из чего можно сделать вывод, что изменения конфигурации успешно отработали. Но, в событиях видна ошибка... Предположительно связано с тем, что создавалось содержимое волюма монги при использовании пароля.

Удалим волюм с целью пересоздания
```shell
kubectl delete persistentvolumes pvc-2d9d568d-1a82-4a65-b179-253570318b19
```
```log
persistentvolume "pvc-2d9d568d-1a82-4a65-b179-253570318b19" deleted
# И далее всё зависло...
```

Для чистоты эксперимента, пересоздам релиз

Сначала удалим старый
```shell
helm tiller run -- helm delete --purge reddit
```
```log
Installed Helm version v2.16.1
Installed Tiller version v2.16.1
Helm and Tiller are the same version!
Starting Tiller...
Tiller namespace: kube-system
Running: helm delete reddit

release "reddit" deleted
Stopping Tiller...
```

Попробуем создать заново
```shell
helm tiller run -- helm upgrade --install --wait --namespace=reddit-ns reddit reddit/
```
```log
Installed Helm version v2.16.1
Installed Tiller version v2.16.1
Helm and Tiller are the same version!
Starting Tiller...
Tiller namespace: kube-system
Running: helm upgrade --install --wait --namespace=reddit-ns reddit reddit/

UPGRADE FAILED
Error: "reddit" has no deployed releases
Error: UPGRADE FAILED: "reddit" has no deployed releases
Stopping Tiller...
Error: plugin "tiller" exited with error
```

Погуглив, находим https://github.com/helm/helm/issues/3208#issuecomment-348238689
```shell
helm tiller run -- helm list --all                                                   
```
```log
Installed Helm version v2.16.1
Installed Tiller version v2.16.1
Helm and Tiller are the same version!
Starting Tiller...
Tiller namespace: kube-system
Running: helm list --all

NAME    REVISION        UPDATED                         STATUS  CHART           APP VERSION     NAMESPACE
reddit  5               Thu Jan  9 22:15:12 2020        DELETED reddit-0.1.0                    reddit-ns
Stopping Tiller...
```
Оказывается мы не совсем удалили релиз

Удалим релиз совсем https://github.com/helm/helm/issues/3208#issuecomment-352241117
```shell
helm tiller run -- helm delete --purge reddit
```
```log
Installed Helm version v2.16.1
Installed Tiller version v2.16.1
Helm and Tiller are the same version!
Starting Tiller...
Tiller namespace: kube-system
Running: helm delete --purge reddit

release "reddit" deleted
Stopping Tiller...
```

И создадим заново
```shell
helm tiller run -- helm upgrade --install --wait --namespace=reddit-ns reddit reddit/
```
```log
Installed Helm version v2.16.1
Installed Tiller version v2.16.1
Helm and Tiller are the same version!
Starting Tiller...
Tiller namespace: kube-system
Running: helm upgrade --install --wait --namespace=reddit-ns reddit reddit/

Release "reddit" does not exist. Installing it now.
NAME:   reddit
LAST DEPLOYED: Thu Jan  9 22:41:36 2020
NAMESPACE: reddit-ns
STATUS: DEPLOYED

RESOURCES:
==> v1/Deployment
NAME            AGE
reddit-comment  23s
reddit-post     23s
reddit-ui       23s

==> v1/PersistentVolumeClaim
NAME            AGE
reddit-mongodb  24s

==> v1/Pod(related)
NAME                             AGE
reddit-comment-5c9999f4d4-x2ctx  23s
reddit-mongodb-68fd4989f7-qcsxj  23s
reddit-post-5df6798d67-sxf2s     23s
reddit-ui-9b5b66dc4-dhlms        23s
reddit-ui-9b5b66dc4-lq5mt        23s
reddit-ui-9b5b66dc4-rz9hk        23s

==> v1/Service
NAME            AGE
reddit-comment  24s
reddit-mongodb  23s
reddit-post     24s
reddit-ui       23s

==> v1beta1/Deployment
NAME            AGE
reddit-mongodb  23s

==> v1beta1/Ingress
NAME       AGE
reddit-ui  23s


Stopping Tiller...
```
Теперь всё успешно.

Дождёмся настройки ingress и проверим результат http://35.244.235.133/

Да! Теперь **всё работает**!!!

**TODO**: Реализовать авторизацию  в MongoDB **с использованием секрета**.


#### Helm3

Опробуем в бою новую мажорную версию helm:

1. Опробуем в бою новую мажорную версию helm:
2. Положим скаченный бинарник helm в директорую с бинарниками (`~/bin`) под именем helm3
   ```shell
   make install_helm 
   wget https://get.helm.sh/helm-v3.0.2-linux-amd64.tar.gz -O /tmp/helm-3.0.2.tar.gz
   --2020-01-10 23:42:48--  https://get.helm.sh/helm-v3.0.2-linux-amd64.tar.gz
   Распознаётся get.helm.sh (get.helm.sh)… 152.199.21.175, 2606:2800:233:1cb7:261b:1f9c:2074:3c
   Подключение к get.helm.sh (get.helm.sh)|152.199.21.175|:443... соединение установлено.
   HTTP-запрос отправлен. Ожидание ответа… 200 OK
   Длина: 12101232 (12M) [application/x-tar]
   Сохранение в: «/tmp/helm-3.0.2.tar.gz»

   /tmp/helm-3.0.2.tar. 100%[===================>]  11,54M  9,23MB/s    за 1,3s    

   2020-01-10 23:42:51 (9,23 MB/s) - «/tmp/helm-3.0.2.tar.gz» сохранён [12101232/12101232]

   cd /tmp/ && tar vxzf /tmp/helm-3.0.2.tar.gz
   linux-amd64/
   linux-amd64/README.md
   linux-amd64/LICENSE
   linux-amd64/helm
   mv /tmp/linux-amd64/helm ~/bin/helm-3.0.2
   chmod +x ~/bin/helm-3.0.2
   ln -sf helm-3.0.2 ~/bin/helm
   ~/bin/helm version && rm -rf /tmp/helm-3.0.2.tar.gz /tmp/linux-amd64
   version.BuildInfo{Version:"v3.0.2", GitCommit:"19e47ee3283ae98139d98460de796c1be1e3975f", GitTreeState:"clean", GoVersion:"go1.13.5"} 
   ```
3. Создадим новый namespace `new-helm`:
   ```shell
   cd ./kubernetes && make configure_kubectl
   kubectl create ns new-helm
   ```
   ```log
   namespace/new-helm created
   ```
4. Деплоимся:
   ```shell
   ./kubernetes/Charts
   helm3 dep update ./reddit
   helm3 upgrade --install --namespace=new-helm --wait reddit-release reddit/
   ```
   ```log
   Release "reddit-release" does not exist. Installing it now.
   NAME: reddit-release
   LAST DEPLOYED: Fri Jan 10 23:56:01 2020
   NAMESPACE: new-helm
   STATUS: deployed
   REVISION: 1
   TEST SUITE: None
   ```
5. Проверяем: `kubectl get ingress -n new-helm`
   http://34.107.225.231

**Всё работает!**

> Для продолжения выполнения ДЗ точь-в-точь необходимо вернуть _clusterAdmin tiller_ сущность в наш кластер. С другой стороны, дальнейшее использование `helm3` / `helm2 tiller plugin` не возбраняется:)

Будем использовать `helm3` ^_^... Но это не точно)))


### GitLab + Kubernetes

#### Установим GitLab

Добавим новый node-pool для gitlab

`kubernetes/terraform/main.tf`
```conf
# ---------------------------------------------------------------------------------------------------------------------
# CREATE A NODE POOL FOR GITLAB
# ---------------------------------------------------------------------------------------------------------------------

resource "google_container_node_pool" "gitlab_node_pool" {
  provider = google-beta

  name     = "gitlab-pool"
  project  = var.project
  location = var.location
  cluster  = module.gke_cluster.name

  initial_node_count = "1"

  // autoscaling {
  //   min_node_count = "1"
  //   max_node_count = "1"
  // }

  management {
    auto_repair  = "true"
    auto_upgrade = "true"
  }

  node_config {
    image_type   = "COS"
    machine_type = "n1-standard-2"

    labels = {
      app = "gitlab"
    }

    # Add a public tag to the instances. See the network access tier table for full details:
    # https://github.com/gruntwork-io/terraform-google-network/tree/master/modules/vpc-network#access-tier
    tags = [
      module.vpc_network.public,
      "public-pool-example",
    ]

    disk_size_gb = "30"
    disk_type    = "pd-standard"
    preemptible  = false

    service_account = module.gke_service_account.email

    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform",
    ]
  }

  lifecycle {
    ignore_changes = [initial_node_count]
  }

  timeouts {
    create = "30m"
    update = "30m"
    delete = "30m"
  }
}
```

С помощью пулов узлов можно добавлять в кластер новые машины разной мощности и комплектации.

P.S. подождите пока кластер будет готов к работе

В ДЗ сказано отключить RBAC и включить устаревшие права доступа. 

Но при создании кластера мы уже выяснили, что в текущей версии возможность включить устаревшие права доступа найти не удалось.

Попробуем так же не отключать RBAC. ^_^

Gitlab будем ставить также с помощью Helm Chart’а из пакета Omnibus. На всякий случай, официальная инструкция https://source.isimplelab.com/help/install/kubernetes/gitlab_omnibus.md

1. Добавим репозиторий Gitlab
```shell
helm repo add gitlab https://charts.gitlab.io
```
```log
"gitlab" has been added to your repositories
```

2. Мы будем менять конфигурацию Gitlab, поэтому скачаем Chart (последнюю версию, а не указанную в ДЗ)
```shell
helm fetch gitlab/gitlab-omnibus --untar
cd gitlab-omnibus
```

3. Поправьте `gitlab-omnibus/values.yaml`
```yaml
baseDomain: your-domain.com
legoEmail: you@example.com
```

4. Добавьте в `gitlab-omnibus/templates/gitlab/gitlab-svc.yaml`
```yaml
...
    - name: web
      port: 80
      targetPort: workhorse
...
```
Получим
```yaml
apiVersion: v1
kind: Service
metadata:
  name: {{ template "fullname" . }}
  labels:
    app: {{ template "fullname" . }}
    chart: "{{ .Chart.Name }}-{{ .Chart.Version }}"
    release: "{{ .Release.Name }}"
    heritage: "{{ .Release.Service }}"
spec:
  selector:
    name: {{ template "fullname" . }}
  ports:
    - name: ssh
      port: 22
      targetPort: ssh
    - name: mattermost
      port: 8065
      targetPort: mattermost
    - name: registry
      port: 8105
      targetPort: registry
    - name: workhorse
      port: 8005
      targetPort: workhorse
    - name: prometheus
      port: 9090
      targetPort: prometheus
    - name: web
      port: 80
      targetPort: workhorse
    {{- if and .Values.pagesExternalScheme .Values.pagesExternalDomain}}
    - name: pages
      port: 8090
      targetPort: pages
    {{- end }}
```

5. Поправить в `gitlab-omnibus/templates/gitlab-config.yaml`
```yaml
...
data:
  external_scheme: http
  external_hostname: {{ template "fullname" . }}
...
```

6. Поправить в `gitlab-omnibus/templates/ingress/gitlab-ingress.yaml`
```yaml
...
  rules:
  - host: {{ template "fullname" . }}
...
---
```
Получим
```yaml
apiVersion: extensions/v1beta1
kind: Ingress
metadata:
  name: {{ template "fullname" . }}
  labels:
    app: {{ template "fullname" . }}
    chart: "{{ .Chart.Name }}-{{ .Chart.Version }}"
    release: "{{ .Release.Name }}"
    heritage: "{{ .Release.Service }}"
  annotations:
    kubernetes.io/tls-acme: "true"
    kubernetes.io/ingress.class: "nginx"
spec:
  tls:
  - hosts:
    - gitlab.{{ .Values.baseDomain }}
    - registry.{{ .Values.baseDomain }}
    - mattermost.{{ .Values.baseDomain }}
    - prometheus.{{ .Values.baseDomain }}
    secretName: gitlab-tls
  rules:
  - host: {{ template "fullname" . }}
    http:
      paths:
      - path: /
        backend:
          serviceName: {{ template "fullname" . }}
          servicePort: 8005
  - host: registry.{{ .Values.baseDomain }}
    http:
      paths:
      - path: /
        backend:
          serviceName: {{ template "fullname" . }}
          servicePort: 8105
  - host: mattermost.{{ .Values.baseDomain }}
    http:
      paths:
      - path: /
        backend:
          serviceName: {{ template "fullname" . }}
          servicePort: 8065
  - host: prometheus.{{ .Values.baseDomain }}
    http:
      paths:
      - path: /
        backend:
          serviceName: {{ template "fullname" . }}
          servicePort: 9090
---
```

Запустим деплой (напомню, у нас helm3)
```shell
helm install -f values.yaml gitlab .
```
```log
WARNING: This chart is deprecated
Error: unable to build kubernetes objects from release manifest: error validating "": error validating data: [unknown object type "nil" in ConfigMap.data.pages_external_domain, unknown object type "nil" in ConfigMap.data.pages_external_scheme]
```

Добавим в `gitlab-omnibus/values.yaml`
```yaml
...
pagesExternalScheme: http
pagesExternalDomain: your-pages-domain.com
...
```
```log
WARNING: This chart is deprecated
NAME: gitlab
LAST DEPLOYED: Sat Jan 11 18:12:13 2020
NAMESPACE: default
STATUS: deployed
REVISION: 1
TEST SUITE: None
NOTES:
It may take several minutes for GitLab to reconfigure.
    You can watch the status by running `kubectl get deployment -w gitlab-gitlab --namespace default
  You did not specify a baseIP so one will be assigned for you.
  It may take a few minutes for the LoadBalancer IP to be available.
  Watch the status with: 'kubectl get svc -w --namespace nginx-ingress nginx', then:

  export SERVICE_IP=$(kubectl get svc --namespace nginx-ingress nginx -o jsonpath='{.status.loadBalancer.ingress[0].ip}')

  Then make sure to configure DNS with something like:
    *.your-domain.com   300 IN A $SERVICE_IP
```
Деплой начался

Проблемка:
```shell
kubectl get pods
```
```log
NAME                                        READY   STATUS             RESTARTS   AGE
gitlab-gitlab-766445f7d7-m4flm              0/1     Running            0          4m40s
gitlab-gitlab-postgresql-66d5b899b8-tzggp   0/1     Pending            0          4m40s
gitlab-gitlab-redis-6c675dd568-cp4xn        1/1     Running            0          4m40s
gitlab-gitlab-runner-875586966-lbc6h        0/1     CrashLoopBackOff   4          4m39s
```
```shell
kubectl describe pod gitlab-gitlab-postgresql-66d5b899b8-tzggp
```
```log
Name:           gitlab-gitlab-postgresql-66d5b899b8-tzggp
Namespace:      default
Priority:       0
Node:           <none>
Labels:         app=gitlab-gitlab
                name=gitlab-gitlab-postgresql
                pod-template-hash=66d5b899b8
Annotations:    kubernetes.io/limit-ranger: LimitRanger plugin set: cpu request for container postgresql
Status:         Pending
IP:             
IPs:            <none>
Controlled By:  ReplicaSet/gitlab-gitlab-postgresql-66d5b899b8
Containers:
  postgresql:
    Image:      postgres:9.6.5
    Port:       5432/TCP
    Host Port:  0/TCP
    Requests:
      cpu:      100m
    Liveness:   exec [pg_isready -h localhost -U postgres] delay=30s timeout=5s period=10s #success=1 #failure=3
    Readiness:  exec [pg_isready -h localhost -U postgres] delay=5s timeout=1s period=10s #success=1 #failure=3
    Environment:
      POSTGRES_USER:      <set to the key 'postgres_user' of config map 'gitlab-gitlab-config'>   Optional: false
      POSTGRES_PASSWORD:  <set to the key 'postgres_password' in secret 'gitlab-gitlab-secrets'>  Optional: false
      POSTGRES_DB:        <set to the key 'postgres_db' of config map 'gitlab-gitlab-config'>     Optional: false
      DB_EXTENSION:       pg_trgm
      PGDATA:             /var/lib/postgresql/data/pgdata
    Mounts:
      /docker-entrypoint-initdb.d from initdb (ro)
      /var/lib/postgresql/data from data (rw,path="postgres")
      /var/run/secrets/kubernetes.io/serviceaccount from default-token-5lcj8 (ro)
Conditions:
  Type           Status
  PodScheduled   False 
Volumes:
  data:
    Type:       PersistentVolumeClaim (a reference to a PersistentVolumeClaim in the same namespace)
    ClaimName:  gitlab-gitlab-postgresql-storage
    ReadOnly:   false
  initdb:
    Type:      ConfigMap (a volume populated by a ConfigMap)
    Name:      gitlab-gitlab-postgresql-initdb
    Optional:  false
  default-token-5lcj8:
    Type:        Secret (a volume populated by a Secret)
    SecretName:  default-token-5lcj8
    Optional:    false
QoS Class:       Burstable
Node-Selectors:  <none>
Tolerations:     node.kubernetes.io/not-ready:NoExecute for 300s
                 node.kubernetes.io/unreachable:NoExecute for 300s
Events:
  Type     Reason            Age                  From               Message
  ----     ------            ----                 ----               -------
  Warning  FailedScheduling  22s (x9 over 5m23s)  default-scheduler  pod has unbound immediate PersistentVolumeClaims (repeated 3 times)
```

Идём дальше, смотрим `PersistentVolumeClaims`
```shell
kubectl get persistentvolumeclaims 
```
```log
NAME                               STATUS    VOLUME                                     CAPACITY   ACCESS MODES   STORAGECLASS         AGE
gitlab-gitlab-config-storage       Bound     pvc-e3284073-2016-4095-b79c-5b2585dd990a   1Gi        RWO            gitlab-gitlab-fast   20m
gitlab-gitlab-postgresql-storage   Pending                                                                        gitlab-gitlab-fast   20m
gitlab-gitlab-redis-storage        Bound     pvc-dbb0d126-ce15-42d5-9331-520a4301d54e   5Gi        RWO            gitlab-gitlab-fast   20m
gitlab-gitlab-registry-storage     Bound     pvc-2bec254a-e45b-4d3e-9ed1-cdf5b4b45c12   30Gi       RWO            gitlab-gitlab-fast   20m
gitlab-gitlab-storage              Bound     pvc-3b8b3abd-442b-4d8f-aed4-0caac0445de1   30Gi       RWO            gitlab-gitlab-fast   20m
```
```log
kubectl describe persistentvolumeclaims gitlab-gitlab-postgresql-storage
Name:          gitlab-gitlab-postgresql-storage
Namespace:     default
StorageClass:  gitlab-gitlab-fast
Status:        Pending
Volume:        
Labels:        app=gitlab-gitlab
               chart=gitlab-omnibus-0.1.37
               heritage=Helm
               release=gitlab
Annotations:   volume.beta.kubernetes.io/storage-class: gitlab-gitlab-fast
               volume.beta.kubernetes.io/storage-provisioner: kubernetes.io/gce-pd
Finalizers:    [kubernetes.io/pvc-protection]
Capacity:      
Access Modes:  
VolumeMode:    Filesystem
Mounted By:    gitlab-gitlab-postgresql-66d5b899b8-tzggp
Events:
  Type     Reason              Age                 From                         Message
  ----     ------              ----                ----                         -------
  Warning  ProvisioningFailed  21s (x17 over 21m)  persistentvolume-controller  Failed to provision volume with StorageClass "gitlab-gitlab-fast": googleapi: Error 403: QUOTA_EXCEEDED - Quota 'SSD_TOTAL_GB' exceeded.  Limit: 100.0 in region us-central1.
```

Ну всё понятно, `Failed to provision volume with StorageClass "gitlab-gitlab-fast": googleapi: Error 403: QUOTA_EXCEEDED - Quota 'SSD_TOTAL_GB' exceeded.  Limit: 100.0 in region us-central1.`

Посмотрим доступные классы
```shell
kubectl get storageclasses
```
```log
NAME                 PROVISIONER            AGE
gitlab-gitlab-fast   kubernetes.io/gce-pd   24m
standard (default)   kubernetes.io/gce-pd   19h
```

Есть 2 варианта решения:
1. использовать _storageclas_ `standard`
2. уменьшить запрашиваемое место чтобы уместиться в 100Гб

Выберем 2й способ: для нашей задачи много места не нужно))

`gitlab-omnibus/values.yaml`
```yaml
...
redisStorageSize: 5Gi  # default 5Gb
postgresStorageSize: 10Gi  # default 30Gb
gitlabDataStorageSize: 10Gi  # default 30Gb
gitlabRegistryStorageSize: 10Gi  # default 30Gb
gitlabConfigStorageSize: 1Gi  # default 1Gb
...
```

Попробуем применить
```shell
helm upgrade -f values.yaml gitlab .
```
```log
WARNING: This chart is deprecated
Error: UPGRADE FAILED: cannot patch "gitlab-gitlab-storage" with kind PersistentVolumeClaim: PersistentVolumeClaim "gitlab-gitlab-storage" is invalid: spec.resources.requests.storage: Forbidden: field can not be less than previous value && cannot patch "gitlab-gitlab-registry-storage" with kind PersistentVolumeClaim: PersistentVolumeClaim "gitlab-gitlab-registry-storage" is invalid: spec.resources.requests.storage: Forbidden: field can not be less than previous value && cannot patch "gitlab-gitlab-postgresql-storage" with kind PersistentVolumeClaim: PersistentVolumeClaim "gitlab-gitlab-postgresql-storage" is invalid: [spec: Forbidden: is immutable after creation except resources.requests for bound claims, spec.resources.requests.storage: Forbidden: field can not be less than previous value]
```

Логично, нельзя уменьшить уже запрошенное место

Тогда полностью передиплоимся
```shell
helm uninstall gitlab
```
```log
release "gitlab" uninstalled
```
```shell
helm list --all       
```
```log
NAME    NAMESPACE       REVISION        UPDATED STATUS  CHART   APP VERSION
```
```shell
helm install -f values.yaml gitlab .
```
```log
WARNING: This chart is deprecated
NAME: gitlab
LAST DEPLOYED: Sat Jan 11 18:50:28 2020
NAMESPACE: default
STATUS: deployed
REVISION: 1
TEST SUITE: None
NOTES:
It may take several minutes for GitLab to reconfigure.
    You can watch the status by running `kubectl get deployment -w gitlab-gitlab --namespace default
  You did not specify a baseIP so one will be assigned for you.
  It may take a few minutes for the LoadBalancer IP to be available.
  Watch the status with: 'kubectl get svc -w --namespace nginx-ingress nginx', then:

  export SERVICE_IP=$(kubectl get svc --namespace nginx-ingress nginx -o jsonpath='{.status.loadBalancer.ingress[0].ip}')

  Then make sure to configure DNS with something like:
    *.your-domain.com   300 IN A $SERVICE_IP
```

Проверяем
```shell
kubectl get pods
```
```log
NAME                                        READY   STATUS    RESTARTS   AGE
gitlab-gitlab-766445f7d7-nfts2              1/1     Running   0          23m
gitlab-gitlab-postgresql-66d5b899b8-95kph   1/1     Running   0          23m
gitlab-gitlab-redis-6c675dd568-9xbpw        1/1     Running   0          23m
gitlab-gitlab-runner-875586966-q8frz        1/1     Running   4          23m
```

Должно пройти несколько минут. Найдите выданный IP-адрес ingress-контроллера nginx.

```shell
kubectl get service -n nginx-ingress nginx
```
```log
NAME    TYPE           CLUSTER-IP   EXTERNAL-IP      PORT(S)                                   AGE
nginx   LoadBalancer   10.4.15.19   35.223.233.250   80:31807/TCP,443:30526/TCP,22:32686/TCP   28m
```

Поместите запись в локальный файл `/etc/hosts` (поставьте свой IP-адрес)
```shell
echo "35.223.233.250 gitlab-gitlab staging production" | sudo tee /etc/hosts
```

Пробуем зайти: `Failed to connect to gitlab-gitlab port 80: В соединении отказано` Фаервол?

```shell
kubectl get pods -n nginx-ingress
```
```log
NAME                                    READY   STATUS             RESTARTS   AGE
default-http-backend-65b964d8cc-npbcq   1/1     Running            0          89m
nginx-lvkst                             0/1     CrashLoopBackOff   22         89m
```
```shell
kubectl logs nginx-lvkst -n nginx-ingress
```
```log
[dumb-init] Unable to detach from controlling tty (errno=25 Inappropriate ioctl for device).
[dumb-init] Child spawned with PID 6.
[dumb-init] Unable to attach to controlling tty (errno=25 Inappropriate ioctl for device).
[dumb-init] setsid complete.
I0111 17:18:11.723933       6 launch.go:105] &{NGINX 0.9.0-beta.11 git-a3131c5 https://github.com/kubernetes/ingress}
I0111 17:18:11.723968       6 launch.go:108] Watching for ingress class: nginx
I0111 17:18:11.724233       6 launch.go:262] Creating API server client for https://10.4.0.1:443
I0111 17:18:11.729500       6 nginx.go:182] starting NGINX process...
F0111 17:18:11.775095       6 launch.go:122] no service with name nginx-ingress/default-http-backend found: services "default-http-backend" is forbidden: User "system:serviceaccount:nginx-ingress:default" cannot get resource "services" in API group "" in the namespace "nginx-ingress"
[dumb-init] Received signal 17.
[dumb-init] A child with PID 6 exited with exit status 255.
[dumb-init] Forwarded signal 15 to children.
[dumb-init] Child exited with status 255. Goodbye.
```

Вот она ошибочка
```log
no service with name nginx-ingress/default-http-backend found: services "default-http-backend" is forbidden: User "system:serviceaccount:nginx-ingress:default" cannot get resource "services" in API group "" in the namespace "nginx-ingress"
```

Попробуем задеплоиться в отдельный неймспейс

```shell
kubectl create namespace gitlab
```
```log
namespace/gitlab created
```
```shell
helm install --namespace gitlab -f values.yaml gitlab .
```
```log
WARNING: This chart is deprecated
NAME: gitlab
LAST DEPLOYED: Sat Jan 11 20:37:37 2020
NAMESPACE: gitlab
STATUS: deployed
REVISION: 1
TEST SUITE: None
NOTES:
It may take several minutes for GitLab to reconfigure.
    You can watch the status by running `kubectl get deployment -w gitlab-gitlab --namespace gitlab
  You did not specify a baseIP so one will be assigned for you.
  It may take a few minutes for the LoadBalancer IP to be available.
  Watch the status with: 'kubectl get svc -w --namespace nginx-ingress nginx', then:

  export SERVICE_IP=$(kubectl get svc --namespace nginx-ingress nginx -o jsonpath='{.status.loadBalancer.ingress[0].ip}')

  Then make sure to configure DNS with something like:
    *.your-domain.com   300 IN A $SERVICE_IP
```

Та же ошибка
```shell
kubectl logs nginx-p4m8s -n nginx-ingress
```
```log
[dumb-init] Unable to detach from controlling tty (errno=25 Inappropriate ioctl for device).
[dumb-init] Child spawned with PID 6.
[dumb-init] Unable to attach to controlling tty (errno=25 Inappropriate ioctl for device).
[dumb-init] setsid complete.
I0111 17:48:38.912239       6 launch.go:105] &{NGINX 0.9.0-beta.11 git-a3131c5 https://github.com/kubernetes/ingress}
I0111 17:48:38.912274       6 launch.go:108] Watching for ingress class: nginx
I0111 17:48:38.912938       6 launch.go:262] Creating API server client for https://10.4.0.1:443
I0111 17:48:38.916966       6 nginx.go:182] starting NGINX process...
F0111 17:48:38.970325       6 launch.go:122] no service with name nginx-ingress/default-http-backend found: services "default-http-backend" is kubectl logs nginx-p4m8s -n nginx-ing
ress
[dumb-init] Unable to detach from controlling tty (errno=25 Inappropriate ioctl for device).
[dumb-init] Child spawned with PID 6.
[dumb-init] Unable to attach to controlling tty (errno=25 Inappropriate ioctl for device).
[dumb-init] setsid complete.
I0111 17:48:38.912239       6 launch.go:105] &{NGINX 0.9.0-beta.11 git-a3131c5 https://github.com/kubernetes/ingress}
I0111 17:48:38.912274       6 launch.go:108] Watching for ingress class: nginx
I0111 17:48:38.912938       6 launch.go:262] Creating API server client for https://10.4.0.1:443
I0111 17:48:38.916966       6 nginx.go:182] starting NGINX process...
F0111 17:48:38.970325       6 launch.go:122] no service with name nginx-ingress/default-http-backend found: services "default-http-backend" is forbidden: User "system:serviceaccount:nginx-ingress:default" cannot get resource "services" in API group "" in the namespace "nginx-ingress"
[dumb-init] Received signal 17.
[dumb-init] A child with PID 6 exited with exit status 255.
[dumb-init] Forwarded signal 15 to children.
[dumb-init] Child exited with status 255. Goodbye. in API group "" in the namespace "nginx-ingress"
[dumb-init] Received signal 17.
[dumb-init] A child with PID 6 exited with exit status 255.
[dumb-init] Forwarded signal 15 to children.
[dumb-init] Child exited with status 255. Goodbye.
```

Гугл говорит: https://stackoverflow.com/questions/50613717/deploy-gitlab-with-helm-nginx-ingress-pods-cant-start

Ещё момент: попробуем включить `Legacy Authorization`

`kubernetes/terraform/main.tf`
```conf
...
module "gke_cluster" {
  ...
  enable_legacy_abac = "true"
}
...
```

Был обнаружен баг в модуле `kubernetes/terraform/modules/gke-cluster`. В `kubernetes/terraform/modules/gke-cluster/variables.tf` есть переменная `enable_legacy_abac`, но она нигде не применяется. Хотя её значение должно устанавливать значение параметра `enable_legacy_abac` в `resource "google_container_cluster" "cluster" {` в `kubernetes/terraform/modules/gke-cluster/main.tf`

Составлена issue https://github.com/gruntwork-io/terraform-google-gke/issues/79

Создан PR https://github.com/gruntwork-io/terraform-google-gke/pull/80

Локально данный баг исправлен

`kubernetes/terraform/modules/gke-cluster/main.tf`
```conf
...
resource "google_container_cluster" "cluster" {
  ...
  enable_legacy_abac = var.enable_legacy_abac
}
```

Ждём когда гитлаб поднимется
```shell
kubectl get pods -n gitlab
```
```log
NAME                                        READY   STATUS    RESTARTS   AGE
gitlab-gitlab-766445f7d7-9ptqb              1/1     Running   0          11h
gitlab-gitlab-postgresql-66d5b899b8-67qbm   1/1     Running   0          11h
gitlab-gitlab-redis-6c675dd568-pb6xw        1/1     Running   0          11h
gitlab-gitlab-runner-644c574f56-48kvd       1/1     Running   4          11h
```

Получаем внешний ip
```shell
kubectl get service -n nginx-ingress nginx
```
```log
NAME    TYPE           CLUSTER-IP   EXTERNAL-IP   PORT(S)                                   AGE
nginx   LoadBalancer   10.4.8.171   35.223.5.28   80:32197/TCP,443:32626/TCP,22:31543/TCP   10h
```

Добавляем `35.223.5.28 gitlab-gitlab staging production` в `/etc/hosts`

Открываем http://gitlab-gitlab/

Ставим собственный пароль. Логинимся под пользователем root и новым паролем otusgitlab (на самом деле нет ^_^).


#### Запустим проект

Создадим группу `vscoder` http://gitlab-gitlab/vscoder

В настройках группы выберите пункт CI/CD http://gitlab-gitlab/groups/vscoder/-/settings/ci_cd

Добавьте 2 переменные:
- `CI_REGISTRY_USER` - логин в dockerhub
- `CI_REGISTRY_PASSWORD` - пароль от Docker Hub

> Эти учетные данные будут использованы при сборке и релизе docker-образов с помощью Gitlab CI

В группе создадим новый проект `reddit-deploy` http://gitlab-gitlab/vscoder/reddit-deploy

**Задание:** Создайте еще 3 проекта: _post_, _ui_, _comment_ (сделайте также их публичными)

Созданы публичные проекты
- `post` http://gitlab-gitlab/vscoder/post
- `comment` http://gitlab-gitlab/vscoder/comment
- `ui` http://gitlab-gitlab/vscoder/ui

Локально (вне основного репозитория) создана директория `Gitlab_ci` со следующей структурой
```log
Gitlab_ci
├── comment
├── post
├── reddit-deploy
└── ui

4 directories, 0 files
```

##### ui

Перенесите исходные коды сервиса `ui` в `Gitlab_ci/ui`

Структура директории стала
```log
Gitlab_ci/ui
├── build_info.txt
├── config.ru
├── docker_build.sh
├── Dockerfile
├── Gemfile
├── Gemfile.lock
├── helpers.rb
├── middleware.rb
├── ui_app.rb
├── VERSION
└── views
    ├── create.haml
    ├── index.haml
    ├── layout.haml
    └── show.haml

1 directory, 14 files
```

Заливаем код сервиса `ui` в соответствующий проект, инструкции представлены на странице пустого проекта `ui` в `gitlab`
В директории `Gitlab_ci/`:
```shell
cd ./ui
git init
git remote add origin git@gitlab-gitlab:vscoder/ui.git
git add .
git commit -m "Initial commit"
git push -u origin master
```
```log
Initialised empty Git repository in /home/vscoder/projects/otus/devops-2019-08/Gitlab_ci/ui/.git/
[master (корневой коммит) 049d01f] Initial commit
 14 files changed, 587 insertions(+)
 create mode 100644 Dockerfile
 create mode 100644 Gemfile
 create mode 100644 Gemfile.lock
 create mode 100644 VERSION
 create mode 100644 build_info.txt
 create mode 100644 config.ru
 create mode 100644 docker_build.sh
 create mode 100644 helpers.rb
 create mode 100644 middleware.rb
 create mode 100644 ui_app.rb
 create mode 100644 views/create.haml
 create mode 100644 views/index.haml
 create mode 100644 views/layout.haml
 create mode 100644 views/show.haml
Подсчет объектов: 17, готово.
Delta compression using up to 12 threads.
Сжатие объектов: 100% (15/15), готово.
Запись объектов: 100% (17/17), 7.28 KiB | 1.04 MiB/s, готово.
Total 17 (delta 1), reused 0 (delta 0)
To gitlab-gitlab:vscoder/ui.git
 * [new branch]      master -> master
Ветка «master» отслеживает внешнюю ветку «master» из «origin».
```

**Задание:** Для post и comment продейлайте аналогичные действия. Не забудьте указывать соответствующие названия репозиториев и групп.


##### comment

В директории `Gitlab_ci/`:
```shell
cd ./comment
git init
git remote add origin git@gitlab-gitlab:vscoder/comment.git
git add .
git commit -m "Initial commit"
git push -u origin master
```
```log
Initialised empty Git repository in /home/vscoder/projects/otus/devops-2019-08/Gitlab_ci/comment/.git/
[master (корневой коммит) 1fa7a7f] Initial commit
 9 files changed, 290 insertions(+)
 create mode 100644 Dockerfile
 create mode 100644 Gemfile
 create mode 100644 Gemfile.lock
 create mode 100644 VERSION
 create mode 100644 build_info.txt
 create mode 100644 comment_app.rb
 create mode 100644 config.ru
 create mode 100644 docker_build.sh
 create mode 100644 helpers.rb
Подсчет объектов: 11, готово.
Delta compression using up to 12 threads.
Сжатие объектов: 100% (9/9), готово.
Запись объектов: 100% (11/11), 3.53 KiB | 1.18 MiB/s, готово.
Total 11 (delta 0), reused 0 (delta 0)
To gitlab-gitlab:vscoder/comment.git
 * [new branch]      master -> master
Ветка «master» отслеживает внешнюю ветку «master» из «origin».
```


##### post

В директории `Gitlab_ci/`:
```shell
cd ./post
git init
git remote add origin git@gitlab-gitlab:vscoder/post.git
git add .
git commit -m "Initial commit"
git push -u origin master
```
```log
Initialised empty Git repository in /home/vscoder/projects/otus/devops-2019-08/Gitlab_ci/post/.git/
[master (корневой коммит) 9be6e80] Initial commit
 7 files changed, 351 insertions(+)
 create mode 100644 Dockerfile
 create mode 100644 VERSION
 create mode 100644 build_info.txt
 create mode 100644 docker_build.sh
 create mode 100644 helpers.py
 create mode 100644 post_app.py
 create mode 100644 requirements.txt
Подсчет объектов: 9, готово.
Delta compression using up to 12 threads.
Сжатие объектов: 100% (7/7), готово.
Запись объектов: 100% (9/9), 3.96 KiB | 1013.00 KiB/s, готово.
Total 9 (delta 0), reused 0 (delta 0)
To gitlab-gitlab:vscoder/post.git
 * [new branch]      master -> master
Ветка «master» отслеживает внешнюю ветку «master» из «origin».
```


##### reddit-deploy

1. Перенести содержимое директории `Charts` (папки ui, post, comment, reddit) в `Gitlab_ci/reddit-deploy`
2. Запушить `reddit-deploy` в gitlab-проект _reddit-deploy_
```shell
cd reddit-deploy
git init
git remote add origin git@gitlab-gitlab:vscoder/reddit-deploy.git
git add .
git commit -m "Initial commit"
git push -u origin master
```
```log
Initialised empty Git repository in /home/vscoder/projects/otus/devops-2019-08/Gitlab_ci/reddit-deploy/.git/
[master (корневой коммит) cbe8d36] Initial commit
 21 files changed, 323 insertions(+)
 create mode 100644 comment/Chart.yaml
 create mode 100644 comment/templates/_helpers.tpl
 create mode 100644 comment/templates/deployment.yaml
 create mode 100644 comment/templates/service.yaml
 create mode 100644 comment/values.yaml
 create mode 100644 post/Chart.yaml
 create mode 100644 post/templates/_helpers.tpl
 create mode 100644 post/templates/deployment.yaml
 create mode 100644 post/templates/service.yaml
 create mode 100644 post/values.yaml
 create mode 100644 reddit/.gitignore
 create mode 100644 reddit/Chart.yaml
 create mode 100644 reddit/requirements.lock
 create mode 100644 reddit/requirements.yaml
 create mode 100644 reddit/values.yaml
 create mode 100644 ui/Chart.yaml
 create mode 100644 ui/templates/_helpers.tpl
 create mode 100644 ui/templates/deployment.yaml
 create mode 100644 ui/templates/ingress.yaml
 create mode 100644 ui/templates/service.yaml
 create mode 100644 ui/values.yaml
Подсчет объектов: 30, готово.
Delta compression using up to 12 threads.
Сжатие объектов: 100% (29/29), готово.
Запись объектов: 100% (30/30), 3.83 KiB | 490.00 KiB/s, готово.
Total 30 (delta 6), reused 0 (delta 0)
To gitlab-gitlab:vscoder/reddit-deploy.git
 * [new branch]      master -> master
Ветка «master» отслеживает внешнюю ветку «master» из «origin».
```
3. Структура должна выглядеть так (да, она выглядит так, добавлять не буду)


#### Настроим CI


##### ui

1. Создайте файл `gitlab_ci/ui/.gitlab-ci.yml` с содержимым
```yaml
image: alpine:latest

stages:
  - build
  - test
  - release
  - cleanup

build:
  stage: build
  image: docker:git
  services:
    - docker:18.09.7-dind
  script:
    - setup_docker
    - build
  variables:
    DOCKER_DRIVER: overlay2
  only:
    - branches

test:
  stage: test
  script:
    - exit 0
  only:
    - branches

release:
  stage: release
  image: docker
  services:
    - docker:dind
  script:
    - setup_docker
    - release
  variables:
    DOCKER_TLS_CERTDIR: ""
  only:
    - master

.auto_devops: &auto_devops |
  [[ "$TRACE" ]] && set -x
  export CI_REGISTRY="index.docker.io"
  export CI_APPLICATION_REPOSITORY=$CI_REGISTRY/$CI_PROJECT_PATH
  export CI_APPLICATION_TAG=$CI_COMMIT_REF_SLUG
  export CI_CONTAINER_NAME=ci_job_build_${CI_JOB_ID}
  export TILLER_NAMESPACE="kube-system"

  function setup_docker() {
    if ! docker info &>/dev/null; then
      if [ -z "$DOCKER_HOST" -a "$KUBERNETES_PORT" ]; then
        export DOCKER_HOST='tcp://localhost:2375'
      fi
    fi
  }

  function release() {

    echo "Updating docker images ..."

    if [[ -n "$CI_REGISTRY_USER" ]]; then
      echo "Logging to GitLab Container Registry with CI credentials..."
      docker login -u "$CI_REGISTRY_USER" -p "$CI_REGISTRY_PASSWORD"
      echo ""
    fi

    docker pull "$CI_APPLICATION_REPOSITORY:$CI_APPLICATION_TAG"
    docker tag "$CI_APPLICATION_REPOSITORY:$CI_APPLICATION_TAG" "$CI_APPLICATION_REPOSITORY:$(cat VERSION)"
    docker push "$CI_APPLICATION_REPOSITORY:$(cat VERSION)"
    echo ""
  }

  function build() {

    echo "Building Dockerfile-based application..."
    echo `git show --format="%h" HEAD | head -1` > build_info.txt
    echo `git rev-parse --abbrev-ref HEAD` >> build_info.txt
    docker build -t "$CI_APPLICATION_REPOSITORY:$CI_APPLICATION_TAG" .

    if [[ -n "$CI_REGISTRY_USER" ]]; then
      echo "Logging to GitLab Container Registry with CI credentials..."
      docker login -u "$CI_REGISTRY_USER" -p "$CI_REGISTRY_PASSWORD"
      echo ""
    fi

    echo "Pushing to GitLab Container Registry..."
    docker push "$CI_APPLICATION_REPOSITORY:$CI_APPLICATION_TAG"
    echo ""
  }

before_script:
  - *auto_devops
```

2. Закомитьте и запуште в gitlab
```shell
cd ./ui
git add .
git ci -m"Add .gitlab-ci.yml"
git push
```
```log
[master e270943] Add .gitlab-ci.yml
 1 file changed, 94 insertions(+)
 create mode 100644 .gitlab-ci.yml
Подсчет объектов: 3, готово.
Delta compression using up to 12 threads.
Сжатие объектов: 100% (3/3), готово.
Запись объектов: 100% (3/3), 1.07 KiB | 1.07 MiB/s, готово.
Total 3 (delta 1), reused 0 (delta 0)
To gitlab-gitlab:vscoder/ui.git
   049d01f..e270943  master -> master
```

3. Проверьте, что Pipeline работает
   После ввода правильного пароля для `CI_REGISTRY_PASSWORD` пайплайн прошёл успешно :)

В текущей конфигурации CI выполняет
1. Build: Сборку докер-образа с тегом master
2. Test: Фиктивное тестирование
3. Release: Смену тега с master на тег из файла VERSION и пуш docker-образа с новым тегом

Job для выполнения каждой задачи запускается в отдельном Kubernetes POD-е.

Требуемые операции вызываются в блоках script:
```yaml
script:
  - setup_docker
  - build
```

Описание самих операций производится в виде bash-функций в блоке `.auto_devops`
```shell
.auto_devops: &auto_devops |
function setup_docker() {
  ...
}
function release() {
  ...
}
function build() {
  ...
}
```

Для `Post` и `Comment` также добавьте в репозиторий `.gitlab-ci.yml` и проследите, что сборки образов прошли успешно.


##### comment

Копируем тот же `.gitlab-ci.yml`, затем
```shell
git add .
git ci -m"Add .gitlab-ci.yml"
git push
```
```log
[master 9961b94] Add .gitlab-ci.yml
 1 file changed, 94 insertions(+)
 create mode 100644 .gitlab-ci.yml
Подсчет объектов: 3, готово.
Delta compression using up to 12 threads.
Сжатие объектов: 100% (3/3), готово.
Запись объектов: 100% (3/3), 1.07 KiB | 1.07 MiB/s, готово.
Total 3 (delta 1), reused 0 (delta 0)
To gitlab-gitlab:vscoder/comment.git
   1fa7a7f..9961b94  master -> master
```

Пайплайн полностью отработал


##### post

Копируем тот же `.gitlab-ci.yml`, затем
```shell
git add .
git ci -m"Add .gitlab-ci.yml"
git push
```
```log
[master e0c8f14] Add .gitlab-ci.yml
 1 file changed, 94 insertions(+)
 create mode 100644 .gitlab-ci.yml
Подсчет объектов: 3, готово.
Delta compression using up to 12 threads.
Сжатие объектов: 100% (3/3), готово.
Запись объектов: 100% (3/3), 1.08 KiB | 1.08 MiB/s, готово.
Total 3 (delta 1), reused 0 (delta 0)
To gitlab-gitlab:vscoder/post.git
   9be6e80..e0c8f14  master -> master
```

Все стадии пайплайна прошли успешно

##### feature-branch

Дадим возможность разработчику запускать отдельное окружение в Kubernetes по коммиту в feature-бранч.

Немного обновим конфиг ингресса для сервиса UI:
`reddit-deploy/ui/templates/ingress.yml`
```yaml
---
apiVersion: extensions/v1beta1
kind: Ingress
metadata:
  name: {{ template "ui.fullname" . }}
  annotations:
    kubernetes.io/ingress.class: {{ .Values.ingress.class }}
spec:
  rules:
  - host: {{ .Values.ingress.host | default .Release.Name }}
    http:
      paths:
      - path: /
        backend:
          serviceName: {{ template "ui.fullname" . }}
          servicePort: {{ .Values.service.externalPort }}
...
```
> В качестве контроллера - nginx, поэтому правило другое

Обновим конфиг ингресса для сервиса UI:
`reddit-deploy/ui/templates/values.yml`  
```yaml
---
service:
  internalPort: 9292
  externalPort: 9292

image:
  repository: vscoder/ui
  tag: latest

# Будем использовать nginx-ingress, 
# который был поставлен вместе с gitlab-ом 
# (так быстрее и правила более гибкие, чем у GCP)
ingress:
  class: nginx

postHost:
postPort:
commentHost:
commentPort:
...
```
**Примечание:** возможно, путь к файлу в ДЗ не правильный, и должен быть `reddit-deploy/ui/values.yml`, так как по данному пути такой файл существует, вотличии от варианта из ДЗ. Его и используем, так как он выглядит логичней.

Дадим возможность разработчику запускать отдельное окружение в Kubernetes по коммиту в feature-бранч.

1. Создайте новый бранч в репозитории ui
```shell
git checkout -b feature/3
```
```log
Переключено на новую ветку «feature/3»
```
2. Обновите `ui/.gitlab-ci.yml` файл:
```yaml
---
image: alpine:latest

stages:
  - build
  - test
  - review
  - release

build:
  stage: build
  image: docker:git
  services:
    - docker:18.09.7-dind
  script:
    - setup_docker
    - build
  variables:
    DOCKER_DRIVER: overlay2
  only:
    - branches

test:
  stage: test
  script:
    - exit 0
  only:
    - branches

release:
  stage: release
  image: docker
  services:
    - docker:18.09.7-dind
  script:
    - setup_docker
    - release
  only:
    - master

review:
  stage: review
  script:
    - install_dependencies
    - ensure_namespace
    - install_tiller
    - deploy
  variables:
    KUBE_NAMESPACE: review
    host: $CI_PROJECT_PATH_SLUG-$CI_COMMIT_REF_SLUG
  environment:
    name: review/$CI_PROJECT_PATH/$CI_COMMIT_REF_NAME
    url: http://$CI_PROJECT_PATH_SLUG-$CI_COMMIT_REF_SLUG
    on_stop: stop_review
  only:
    refs:
      - branches
    kubernetes: active
  except:
    - master

.auto_devops: &auto_devops |
  [[ "$TRACE" ]] && set -x
  export CI_REGISTRY="index.docker.io"
  export CI_APPLICATION_REPOSITORY=$CI_REGISTRY/$CI_PROJECT_PATH
  export CI_APPLICATION_TAG=$CI_COMMIT_REF_SLUG
  export CI_CONTAINER_NAME=ci_job_build_${CI_JOB_ID}
  export TILLER_NAMESPACE="kube-system"

  function deploy() {
    track="${1-stable}"
    name="$CI_ENVIRONMENT_SLUG"

    if [[ "$track" != "stable" ]]; then
      name="$name-$track"
    fi

    echo "Clone deploy repository..."
    git clone http://gitlab-gitlab/$CI_PROJECT_NAMESPACE/reddit-deploy.git

    echo "Download helm dependencies..."
    helm dep update reddit-deploy/reddit

    echo "Deploy helm release $name to $KUBE_NAMESPACE"
    helm upgrade --install \
      --wait \
      --set ui.ingress.host="$host" \
      --set $CI_PROJECT_NAME.image.tag=$CI_APPLICATION_TAG \
      --namespace="$KUBE_NAMESPACE" \
      --version="$CI_PIPELINE_ID-$CI_JOB_ID" \
      "$name" \
      reddit-deploy/reddit/
  }

  function install_dependencies() {

    apk add -U openssl curl tar gzip bash ca-certificates git
    wget -q -O /etc/apk/keys/sgerrand.rsa.pub https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub
    wget https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.23-r3/glibc-2.23-r3.apk
    apk add glibc-2.23-r3.apk
    rm glibc-2.23-r3.apk

    curl https://storage.googleapis.com/pub/gsutil.tar.gz | tar -xz -C $HOME
    export PATH=${PATH}:$HOME/gsutil

    curl https://kubernetes-helm.storage.googleapis.com/helm-v2.13.1-linux-amd64.tar.gz | tar zx

    mv linux-amd64/helm /usr/bin/
    helm version --client

    curl  -o /usr/bin/sync-repo.sh https://raw.githubusercontent.com/kubernetes/helm/master/scripts/sync-repo.sh
    chmod a+x /usr/bin/sync-repo.sh

    curl -L -o /usr/bin/kubectl https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl
    chmod +x /usr/bin/kubectl
    kubectl version --client
  }

  function setup_docker() {
    if ! docker info &>/dev/null; then
      if [ -z "$DOCKER_HOST" -a "$KUBERNETES_PORT" ]; then
        export DOCKER_HOST='tcp://localhost:2375'
      fi
    fi
  }

  function ensure_namespace() {
    kubectl describe namespace "$KUBE_NAMESPACE" || kubectl create namespace "$KUBE_NAMESPACE"
  }

  function release() {

    echo "Updating docker images ..."

    if [[ -n "$CI_REGISTRY_USER" ]]; then
      echo "Logging to GitLab Container Registry with CI credentials..."
      docker login -u "$CI_REGISTRY_USER" -p "$CI_REGISTRY_PASSWORD"
      echo ""
    fi

    docker pull "$CI_APPLICATION_REPOSITORY:$CI_APPLICATION_TAG"
    docker tag "$CI_APPLICATION_REPOSITORY:$CI_APPLICATION_TAG" "$CI_APPLICATION_REPOSITORY:$(cat VERSION)"
    docker push "$CI_APPLICATION_REPOSITORY:$(cat VERSION)"
    echo ""
  }

  function build() {

    echo "Building Dockerfile-based application..."
    echo `git show --format="%h" HEAD | head -1` > build_info.txt
    echo `git rev-parse --abbrev-ref HEAD` >> build_info.txt
    docker build -t "$CI_APPLICATION_REPOSITORY:$CI_APPLICATION_TAG" .

    if [[ -n "$CI_REGISTRY_USER" ]]; then
      echo "Logging to GitLab Container Registry with CI credentials..."
      docker login -u "$CI_REGISTRY_USER" -p "$CI_REGISTRY_PASSWORD"
      echo ""
    fi

    echo "Pushing to GitLab Container Registry..."
    docker push "$CI_APPLICATION_REPOSITORY:$CI_APPLICATION_TAG"
    echo ""
  }

  function install_tiller() {
    echo "Checking Tiller..."
    helm init --upgrade
    kubectl rollout status -n "$TILLER_NAMESPACE" -w "deployment/tiller-deploy"
    if ! helm version --debug; then
      echo "Failed to init Tiller."
      return 1
    fi
    echo ""
  }

before_script:
  - *auto_devops
...
```

3. Закоммитьте и запушьте изменения
```shell
git push
```
```log
Подсчет объектов: 3, готово.
Delta compression using up to 12 threads.
Сжатие объектов: 100% (3/3), готово.
Запись объектов: 100% (3/3), 1.91 KiB | 1.91 MiB/s, готово.
Total 3 (delta 1), reused 0 (delta 0)
remote: 
remote: To create a merge request for feature/3, visit:
remote:   http://gitlab-gitlab/vscoder/ui/merge_requests/new?merge_request%5Bsource_branch%5D=feature%2F3
remote: 
To gitlab-gitlab:vscoder/ui.git
 * [new branch]      feature/3 -> feature/3
```

Но ошибка однако, `yaml invalid` говорит гитлаб. Проверим: http://gitlab-gitlab/ci/lint
```log
Error: review job: on_stop job stop_review is not defined
```
Job `stop_review` будет добавлен далее в ДЗ.

В коммитах ветки `feature/3` можете найти сделанные изменения

Отметим, что мы добавили стадию `review`, запускающую приложение в k8s по коммиту в **feature-бранчи** (не master).
```yaml
review:
  stage: review
  script:
    - install_dependencies
    - ensure_namespace
    - install_tiller
    - deploy
  variables:
    KUBE_NAMESPACE: review
    host: $CI_PROJECT_PATH_SLUG-$CI_COMMIT_REF_SLUG
  environment:
    name: review/$CI_PROJECT_PATH/$CI_COMMIT_REF_NAME
    url: http://$CI_PROJECT_PATH_SLUG-$CI_COMMIT_REF_SLUG
    on_stop: stop_review
  only:
    refs:
      - branches
    kubernetes: active
  except:
    - master
```

Мы добавили функцию `deploy`, которая загружает _Chart_ из репозитория `reddit-deploy` и делает релиз в неймспейсе `review` с образом приложения, собранным на стадии `build`.
```shell
function deploy() {
  track="${1-stable}"
  name="$CI_ENVIRONMENT_SLUG"

  if [[ "$track" != "stable" ]]; then
    name="$name-$track"
  fi

  echo "Clone deploy repository..."
  git clone http://gitlab-gitlab/$CI_PROJECT_NAMESPACE/reddit-deploy.git

  echo "Download helm dependencies..."
  helm dep update reddit-deploy/reddit

  echo "Deploy helm release $name to $KUBE_NAMESPACE"
  helm upgrade --install \
    --wait \
    --set ui.ingress.host="$host" \
    --set $CI_PROJECT_NAME.image.tag=$CI_APPLICATION_TAG \
    --namespace="$KUBE_NAMESPACE" \
    --version="$CI_PIPELINE_ID-$CI_JOB_ID" \
    "$name" \
    reddit-deploy/reddit/
}
```

Можем увидеть какие релизы запущены (на самом деле не можем, так как у нас до сих пор не содан job `review`, поэтому пока просто пойдём дальше)

Созданные для таких целей окружения временны, их требуется "убивать", когда они больше не нужны

Добавьте в `.gitlab-ci.yml`
```yaml
stages:
  - build
  - test
  - review
  - release
  - cleanup  # вот это вот

stop_review:  # и вот это
  stage: cleanup
  variables:
    GIT_STRATEGY: none
  script:
    - install_dependencies
    - delete
  environment:
    name: review/$CI_PROJECT_PATH/$CI_COMMIT_REF_NAME
    action: stop
  when: manual
  allow_failure: true
  only:
    refs:
      - branches
    kubernetes: active
  except:
    - master
```

Добавьте функцию удаления окружения
```shell
  function delete() {
    track="${1-stable}"
    name="$CI_ENVIRONMENT_SLUG"
    helm delete "$name" --purge || true
  }
```

Итоговый `ui/.gitlab-ci.yml`
```yaml
---
image: alpine:latest

stages:
  - build
  - test
  - review
  - release
  - cleanup

build:
  stage: build
  image: docker:git
  services:
    - docker:18.09.7-dind
  script:
    - setup_docker
    - build
  variables:
    DOCKER_DRIVER: overlay2
  only:
    - branches

test:
  stage: test
  script:
    - exit 0
  only:
    - branches

release:
  stage: release
  image: docker
  services:
    - docker:18.09.7-dind
  script:
    - setup_docker
    - release
  only:
    - master

review:
  stage: review
  script:
    - install_dependencies
    - ensure_namespace
    - install_tiller
    - deploy
  variables:
    KUBE_NAMESPACE: review
    host: $CI_PROJECT_PATH_SLUG-$CI_COMMIT_REF_SLUG
  environment:
    name: review/$CI_PROJECT_PATH/$CI_COMMIT_REF_NAME
    url: http://$CI_PROJECT_PATH_SLUG-$CI_COMMIT_REF_SLUG
    on_stop: stop_review
  only:
    refs:
      - branches
    kubernetes: active
  except:
    - master

stop_review:
  stage: cleanup
  variables:
    GIT_STRATEGY: none
  script:
    - install_dependencies
    - delete
  environment:
    name: review/$CI_PROJECT_PATH/$CI_COMMIT_REF_NAME
    action: stop
  when: manual
  allow_failure: true
  only:
    refs:
      - branches
    kubernetes: active
  except:
    - master

.auto_devops: &auto_devops |
  [[ "$TRACE" ]] && set -x
  export CI_REGISTRY="index.docker.io"
  export CI_APPLICATION_REPOSITORY=$CI_REGISTRY/$CI_PROJECT_PATH
  export CI_APPLICATION_TAG=$CI_COMMIT_REF_SLUG
  export CI_CONTAINER_NAME=ci_job_build_${CI_JOB_ID}
  export TILLER_NAMESPACE="kube-system"

  function deploy() {
    track="${1-stable}"
    name="$CI_ENVIRONMENT_SLUG"

    if [[ "$track" != "stable" ]]; then
      name="$name-$track"
    fi

    echo "Clone deploy repository..."
    git clone http://gitlab-gitlab/$CI_PROJECT_NAMESPACE/reddit-deploy.git

    echo "Download helm dependencies..."
    helm dep update reddit-deploy/reddit

    echo "Deploy helm release $name to $KUBE_NAMESPACE"
    helm upgrade --install \
      --wait \
      --set ui.ingress.host="$host" \
      --set $CI_PROJECT_NAME.image.tag=$CI_APPLICATION_TAG \
      --namespace="$KUBE_NAMESPACE" \
      --version="$CI_PIPELINE_ID-$CI_JOB_ID" \
      "$name" \
      reddit-deploy/reddit/
  }

  function install_dependencies() {

    apk add -U openssl curl tar gzip bash ca-certificates git
    wget -q -O /etc/apk/keys/sgerrand.rsa.pub https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub
    wget https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.23-r3/glibc-2.23-r3.apk
    apk add glibc-2.23-r3.apk
    rm glibc-2.23-r3.apk

    curl https://storage.googleapis.com/pub/gsutil.tar.gz | tar -xz -C $HOME
    export PATH=${PATH}:$HOME/gsutil

    curl https://kubernetes-helm.storage.googleapis.com/helm-v2.13.1-linux-amd64.tar.gz | tar zx

    mv linux-amd64/helm /usr/bin/
    helm version --client

    curl  -o /usr/bin/sync-repo.sh https://raw.githubusercontent.com/kubernetes/helm/master/scripts/sync-repo.sh
    chmod a+x /usr/bin/sync-repo.sh

    curl -L -o /usr/bin/kubectl https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl
    chmod +x /usr/bin/kubectl
    kubectl version --client
  }

  function setup_docker() {
    if ! docker info &>/dev/null; then
      if [ -z "$DOCKER_HOST" -a "$KUBERNETES_PORT" ]; then
        export DOCKER_HOST='tcp://localhost:2375'
      fi
    fi
  }

  function ensure_namespace() {
    kubectl describe namespace "$KUBE_NAMESPACE" || kubectl create namespace "$KUBE_NAMESPACE"
  }

  function release() {

    echo "Updating docker images ..."

    if [[ -n "$CI_REGISTRY_USER" ]]; then
      echo "Logging to GitLab Container Registry with CI credentials..."
      docker login -u "$CI_REGISTRY_USER" -p "$CI_REGISTRY_PASSWORD"
      echo ""
    fi

    docker pull "$CI_APPLICATION_REPOSITORY:$CI_APPLICATION_TAG"
    docker tag "$CI_APPLICATION_REPOSITORY:$CI_APPLICATION_TAG" "$CI_APPLICATION_REPOSITORY:$(cat VERSION)"
    docker push "$CI_APPLICATION_REPOSITORY:$(cat VERSION)"
    echo ""
  }

  function build() {

    echo "Building Dockerfile-based application..."
    echo `git show --format="%h" HEAD | head -1` > build_info.txt
    echo `git rev-parse --abbrev-ref HEAD` >> build_info.txt
    docker build -t "$CI_APPLICATION_REPOSITORY:$CI_APPLICATION_TAG" .

    if [[ -n "$CI_REGISTRY_USER" ]]; then
      echo "Logging to GitLab Container Registry with CI credentials..."
      docker login -u "$CI_REGISTRY_USER" -p "$CI_REGISTRY_PASSWORD"
      echo ""
    fi

    echo "Pushing to GitLab Container Registry..."
    docker push "$CI_APPLICATION_REPOSITORY:$CI_APPLICATION_TAG"
    echo ""
  }

  function delete() {
    track="${1-stable}"
    name="$CI_ENVIRONMENT_SLUG"
    helm delete "$name" --purge || true
  }

  function install_tiller() {
    echo "Checking Tiller..."
    helm init --upgrade
    kubectl rollout status -n "$TILLER_NAMESPACE" -w "deployment/tiller-deploy"
    if ! helm version --debug; then
      echo "Failed to init Tiller."
      return 1
    fi
    echo ""
  }

before_script:
  - *auto_devops
```

Запуште изменения в Git
```shell
git add .
git ci -m"Update .gitlab-ci.yml"
git push
```
```log
[feature/3 f116405] Update .gitlab-ci.yml
 1 file changed, 25 insertions(+)
Подсчет объектов: 3, готово.
Delta compression using up to 12 threads.
Сжатие объектов: 100% (3/3), готово.
Запись объектов: 100% (3/3), 467 bytes | 467.00 KiB/s, готово.
Total 3 (delta 2), reused 0 (delta 0)
remote: 
remote: To create a merge request for feature/3, visit:
remote:   http://gitlab-gitlab/vscoder/ui/merge_requests/new?merge_request%5Bsource_branch%5D=feature%2F3
remote: 
To gitlab-gitlab:vscoder/ui.git
   fc6c6ac..f116405  feature/3 -> feature/3
```

Пайплайн отработал. Проверим деплой
```shell
helm-2.13.1 list                     
```
```log
NAME                            REVISION        UPDATED                         STATUS          CHART           APP VERSION     NAMESPACE
review-vscoder-ui-8kt2zr        1               Mon Jan 13 00:02:38 2020        DEPLOYED        reddit-0.1.0                    review
```

В Environments http://gitlab-gitlab/vscoder/ui/environments/1 смотрим url http://vscoder-ui-feature-3/

Внесём хост `vscoder-ui-feature-3` в `/etc/hosts`

Заходим на http://vscoder-ui-feature-3/
```log
default backend - 404
```
Не ок, будем разбираться... Разобрался, сам себе злобный буратино))

Смотрим ip нашего ingress
```shell
kubectl get ingress -n review 
```
```log
NAME                          HOSTS   ADDRESS          PORTS   AGE
review-vscoder-ui-8kt2zr-ui   *       34.107.198.236   80      15h
```

А мы мисали в `/etc/hosts` имя для ip гитлаба... Диагноз: нужно больше спать))

Прописал в `/etc/hosts` соответствие `34.107.198.236 vscoder-ui-feature-3`. Проверил http://vscoder-ui-feature-3/ **все сервисы работают**


В Pipelines: http://gitlab-gitlab/vscoder/ui/pipelines запустим удаление
```log
release "review-vscoder-ui-8kt2zr" deleted
Job succeeded
```

`helm-2.13.1 ls` в этот раз не показал ничего

**Задание:**

Скопировать полученный файл `.gitlab-ci.yml` для ui в репозитории для post и comment.
Проверить, что динамическое создание и удаление окружений работает с ними как ожидалось

###### Для `post`

```shell
cd ../post
cp ../ui/.gitlab-ci.yml ./
git co -b feature/4
git add .
git ci -m"Test ci"
git push
```
```log
M       .gitlab-ci.yml
Переключено на новую ветку «feature/4»
[feature/4 d12d4a8] Test ci
 1 file changed, 111 insertions(+), 2 deletions(-)
Подсчет объектов: 3, готово.
Delta compression using up to 12 threads.
Сжатие объектов: 100% (3/3), готово.
Запись объектов: 100% (3/3), 2.00 KiB | 2.00 MiB/s, готово.
Total 3 (delta 1), reused 0 (delta 0)
remote: 
remote: To create a merge request for feature/4, visit:
remote:   http://gitlab-gitlab/vscoder/post/merge_requests/new?merge_request%5Bsource_branch%5D=feature%2F4
remote: 
To gitlab-gitlab:vscoder/post.git
 * [new branch]      feature/4 -> feature/4
```

Созданный ingress так же можно посмотреть в GCP https://console.cloud.google.com/kubernetes/ingresses

reddit поднялся

Не забываем удалить


###### comment

```shell
cd ../comment
cp ../ui/.gitlab-ci.yml ./
git co -b feature/5
git add .
git ci -m"Test comment ci"
git push
```
```log
M       .gitlab-ci.yml
Переключено на новую ветку «feature/5»
[feature/5 78c9626] Test comment ci
 1 file changed, 111 insertions(+), 2 deletions(-)
Подсчет объектов: 3, готово.
Delta compression using up to 12 threads.
Сжатие объектов: 100% (3/3), готово.
Запись объектов: 100% (3/3), 2.00 KiB | 2.00 MiB/s, готово.
Total 3 (delta 1), reused 0 (delta 0)
remote: 
remote: To create a merge request for feature/5, visit:
remote:   http://gitlab-gitlab/vscoder/comment/merge_requests/new?merge_request%5Bsource_branch%5D=feature%2F5
remote: 
To gitlab-gitlab:vscoder/comment.git
 * [new branch]      feature/5 -> feature/5
```

Проверяем: окружение рабочее))

Работа 2-х окружений одновременно проверена:
```shell
kubectl get ingress -n review
```
```log
NAME                          HOSTS   ADDRESS         PORTS   AGE
review-vscoder-co-ga6art-ui   *       34.107.213.1    80      7m43s
review-vscoder-po-f2yqms-ui   *       34.95.116.107   80      20m
```
по http оба даступны

helm видит оба
```shell
helm-2.13.1 ls
```
```log
NAME                            REVISION        UPDATED                         STATUS          CHART           APP VERSION     NAMESPACE
review-vscoder-co-ga6art        1               Mon Jan 13 16:01:30 2020        DEPLOYED        reddit-0.1.0                    review   
review-vscoder-po-f2yqms        1               Mon Jan 13 15:48:35 2020        DEPLOYED        reddit-0.1.0                    review
```

Удаляем оба через gitlab


#### Деплоим

Теперь создадим `staging` и `production` среды для работы приложения

Создайте файл `reddit-deploy/.gitlab-ci.yml`
```yaml
---
image: alpine:latest

stages:
  - test
  - staging
  - production

test:
  stage: test
  script:
    - exit 0
  only:
    - triggers
    - branches

staging:
  stage: staging
  script:
  - install_dependencies
  - ensure_namespace
  - install_tiller
  - deploy
  variables:
    KUBE_NAMESPACE: staging
  environment:
    name: staging
    url: http://staging
  only:
    refs:
      - master
    kubernetes: active

production:
  stage: production
  script:
    - install_dependencies
    - ensure_namespace
    - install_tiller
    - deploy
  variables:
    KUBE_NAMESPACE: production
  environment:
    name: production
    url: http://production
  when: manual
  only:
    refs:
      - master
    kubernetes: active

.auto_devops: &auto_devops |
  # Auto DevOps variables and functions
  [[ "$TRACE" ]] && set -x
  export CI_REGISTRY="index.docker.io"
  export CI_APPLICATION_REPOSITORY=$CI_REGISTRY/$CI_PROJECT_PATH
  export CI_APPLICATION_TAG=$CI_COMMIT_REF_SLUG
  export CI_CONTAINER_NAME=ci_job_build_${CI_JOB_ID}
  export TILLER_NAMESPACE="kube-system"

  function deploy() {
    echo $KUBE_NAMESPACE
    track="${1-stable}"
    name="$CI_ENVIRONMENT_SLUG"
    helm dep build reddit

    # for microservice in $(helm dep ls | grep "file://" | awk '{print $1}') ; do
    #   SET_VERSION="$SET_VERSION \ --set $microservice.image.tag='$(curl http://gitlab-gitlab/$CI_PROJECT_NAMESPACE/ui/raw/master/VERSION)' "

    helm upgrade --install \
      --wait \
      --set ui.ingress.host="$host" \
      --set ui.image.tag="$(curl http://gitlab-gitlab/$CI_PROJECT_NAMESPACE/ui/raw/master/VERSION)" \
      --set post.image.tag="$(curl http://gitlab-gitlab/$CI_PROJECT_NAMESPACE/post/raw/master/VERSION)" \
      --set comment.image.tag="$(curl http://gitlab-gitlab/$CI_PROJECT_NAMESPACE/comment/raw/master/VERSION)" \
      --namespace="$KUBE_NAMESPACE" \
      --version="$CI_PIPELINE_ID-$CI_JOB_ID" \
      "$name" \
      reddit
  }

  function install_dependencies() {

    apk add -U openssl curl tar gzip bash ca-certificates git
    wget -q -O /etc/apk/keys/sgerrand.rsa.pub https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub
    wget https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.23-r3/glibc-2.23-r3.apk
    apk add glibc-2.23-r3.apk
    rm glibc-2.23-r3.apk

    curl https://kubernetes-helm.storage.googleapis.com/helm-v2.13.1-linux-amd64.tar.gz | tar zx

    mv linux-amd64/helm /usr/bin/
    helm version --client

    curl -L -o /usr/bin/kubectl https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl
    chmod +x /usr/bin/kubectl
    kubectl version --client
  }

  function ensure_namespace() {
    kubectl describe namespace "$KUBE_NAMESPACE" || kubectl create namespace "$KUBE_NAMESPACE"
  }

  function install_tiller() {
    echo "Checking Tiller..."
    helm init --upgrade
    kubectl rollout status -n "$TILLER_NAMESPACE" -w "deployment/tiller-deploy"
    if ! helm version --debug; then
      echo "Failed to init Tiller."
      return 1
    fi
    echo ""
  }

  function delete() {
    track="${1-stable}"
    name="$CI_ENVIRONMENT_SLUG"
    helm delete "$name" || true
  }

before_script:
  - *auto_devops
```

Запуште в репозиторий reddit-deploy ветку master
```shell
cd ../reddit-deploy
git add .
git ci -m"Update .gitlab-ci.yml and some others..."
git push
```
```log
[master cfe4726] Update .gitlab-ci.yml and some others...
 3 files changed, 130 insertions(+), 3 deletions(-)
 create mode 100644 .gitlab-ci.yml
Подсчет объектов: 7, готово.
Delta compression using up to 12 threads.
Сжатие объектов: 100% (7/7), готово.
Запись объектов: 100% (7/7), 2.16 KiB | 1.08 MiB/s, готово.
Total 7 (delta 2), reused 0 (delta 0)
To gitlab-gitlab:vscoder/reddit-deploy.git
   cbe8d36..cfe4726  master -> master
```

Этот файл отличается от предыдущих тем, что:

1. Не собирает docker-образы
2. Деплоит на статичные окружения (staging и production)
3. Не удаляет окружения

Удостоверьтесь, что staging успешно завершен... Ошибка в job `staging`
```log
$ deploy
staging
Error: requirements.lock is out of sync with requirements.yaml
...
```

Обновим зависимости
```shell
cd reddit-deploy/reddit
helm-2.13.1 dependency update
```
```log
Hang tight while we grab the latest from your chart repositories...
...Unable to get an update from the "local" chart repository (http://127.0.0.1:8879/charts):
        Get http://127.0.0.1:8879/charts/index.yaml: dial tcp 127.0.0.1:8879: connect: connection refused
...Successfully got an update from the "stable" chart repository
Update Complete. ⎈Happy Helming!⎈
Saving 4 charts
Downloading mongodb from repo https://kubernetes-charts.storage.googleapis.com
Deleting outdated charts
```
```shell
reddit-deploy/reddit
git ci -m"Fix Chart reddit requirements"
git push
```
```log
[master 720dc38] Fix Chart reddit requirements
 1 file changed, 2 insertions(+), 2 deletions(-)
Подсчет объектов: 4, готово.
Delta compression using up to 12 threads.
Сжатие объектов: 100% (4/4), готово.
Запись объектов: 100% (4/4), 466 bytes | 466.00 KiB/s, готово.
Total 4 (delta 3), reused 0 (delta 0)
To gitlab-gitlab:vscoder/reddit-deploy.git
   cfe4726..720dc38  master -> master
```

Деплой на staging прошёл успешно. Сайт доступен по ссылке из http://gitlab-gitlab/vscoder/reddit-deploy/environments

Выкатываем на Production: здесь мы запускаем ручной пайплайн деплоя на прод. И ждем, пока пайплайн завершится

В http://gitlab-gitlab/vscoder/reddit-deploy/environments видно  оба окружения

В helm также все видно
```shell
helm-2.13.1 ls
```
```log
NAME            REVISION        UPDATED                         STATUS          CHART           APP VERSION     NAMESPACE 
production      1               Mon Jan 13 17:16:34 2020        DEPLOYED        reddit-0.1.0                    production
staging         1               Mon Jan 13 17:08:55 2020        DEPLOYED        reddit-0.1.0                    staging
```

#### Пайплайн здорового человека

Сейчас почти вся логика пайплайна заключена в `auto_devops` и трудночитаема. Давайте переделаем имеющийся для `ui` пайплайн так, чтобы он соответствовал синтаксису Gitlab

```yaml
---
image: alpine:latest

stages:
  - build
  - test
  - review
  - release
  - cleanup

build:
  stage: build
  only:
    - branches
  image: docker:git
  services:
    - docker:18.09.7-dind
  variables:
    DOCKER_DRIVER: overlay2
    CI_REGISTRY: 'index.docker.io'
    CI_APPLICATION_REPOSITORY: $CI_REGISTRY/$CI_PROJECT_PATH
    CI_APPLICATION_TAG: $CI_COMMIT_REF_SLUG
    CI_CONTAINER_NAME: ci_job_build_${CI_JOB_ID}
  before_script:
    - >
      if ! docker info &>/dev/null; then
        if [ -z "$DOCKER_HOST" -a "$KUBERNETES_PORT" ]; then
          export DOCKER_HOST='tcp://localhost:2375'
        fi
      fi
  script:
    # Building
    - echo "Building Dockerfile-based application..."
    - echo `git show --format="%h" HEAD | head -1` > build_info.txt
    - echo `git rev-parse --abbrev-ref HEAD` >> build_info.txt
    - docker build -t "$CI_APPLICATION_REPOSITORY:$CI_APPLICATION_TAG" .
    - >
      if [[ -n "$CI_REGISTRY_USER" ]]; then
        echo "Logging to GitLab Container Registry with CI credentials...for build"
        docker login -u "$CI_REGISTRY_USER" -p "$CI_REGISTRY_PASSWORD"
      fi
    - echo "Pushing to GitLab Container Registry..."
    - docker push "$CI_APPLICATION_REPOSITORY:$CI_APPLICATION_TAG"

test:
  stage: test
  script:
    - exit 0
  only:
    - branches

release:
  stage: release
  image: docker
  services:
    - docker:18.09.7-dind
  variables:
    CI_REGISTRY: 'index.docker.io'
    CI_APPLICATION_REPOSITORY: $CI_REGISTRY/$CI_PROJECT_PATH
    CI_APPLICATION_TAG: $CI_COMMIT_REF_SLUG
    CI_CONTAINER_NAME: ci_job_build_${CI_JOB_ID}
  before_script:
    - >
      if ! docker info &>/dev/null; then
        if [ -z "$DOCKER_HOST" -a "$KUBERNETES_PORT" ]; then
          export DOCKER_HOST='tcp://localhost:2375'
        fi
      fi
  script:
    # Releasing
    - echo "Updating docker images ..."
    - >
      if [[ -n "$CI_REGISTRY_USER" ]]; then
        echo "Logging to GitLab Container Registry with CI credentials for release..."
        docker login -u "$CI_REGISTRY_USER" -p "$CI_REGISTRY_PASSWORD"
      fi
    - docker pull "$CI_APPLICATION_REPOSITORY:$CI_APPLICATION_TAG"
    - docker tag "$CI_APPLICATION_REPOSITORY:$CI_APPLICATION_TAG" "$CI_APPLICATION_REPOSITORY:$(cat VERSION)"
    - docker push "$CI_APPLICATION_REPOSITORY:$(cat VERSION)"
    # latest is neede for feature flags
    - docker tag "$CI_APPLICATION_REPOSITORY:$CI_APPLICATION_TAG" "$CI_APPLICATION_REPOSITORY:latest"
    - docker push "$CI_APPLICATION_REPOSITORY:latest"
  only:
    - master

review:
  stage: review
  variables:
    KUBE_NAMESPACE: review
    host: $CI_PROJECT_PATH_SLUG-$CI_COMMIT_REF_SLUG
    TILLER_NAMESPACE: kube-system
    CI_APPLICATION_TAG: $CI_COMMIT_REF_SLUG
    name: $CI_ENVIRONMENT_SLUG
  environment:
    name: review/$CI_PROJECT_PATH/$CI_COMMIT_REF_NAME
    url: http://$CI_PROJECT_PATH_SLUG-$CI_COMMIT_REF_SLUG
    on_stop: stop_review
  only:
    refs:
      - branches
    kubernetes: active
  except:
    - master
  before_script:
    # installing dependencies
    - apk add -U openssl curl tar gzip bash ca-certificates git
    - wget -q -O /etc/apk/keys/sgerrand.rsa.pub https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub
    - wget https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.23-r3/glibc-2.23-r3.apk
    - apk add glibc-2.23-r3.apk
    - curl https://storage.googleapis.com/pub/gsutil.tar.gz | tar -xz -C $HOME
    - export PATH=${PATH}:$HOME/gsutil
    - curl https://kubernetes-helm.storage.googleapis.com/helm-v2.13.1-linux-amd64.tar.gz | tar zx
    - mv linux-amd64/helm /usr/bin/
    - helm version --client
    - curl  -o /usr/bin/sync-repo.sh https://raw.githubusercontent.com/kubernetes/helm/master/scripts/sync-repo.sh
    - chmod a+x /usr/bin/sync-repo.sh
    - curl -L -o /usr/bin/kubectl https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl
    - chmod +x /usr/bin/kubectl
    - kubectl version --client
    # ensuring namespace
    - kubectl describe namespace "$KUBE_NAMESPACE" || kubectl create namespace "$KUBE_NAMESPACE"
    # installing Tiller
    - echo "Checking Tiller..."
    - helm init --upgrade
    - kubectl rollout status -n "$TILLER_NAMESPACE" -w "deployment/tiller-deploy"
    - >
      if ! helm version --debug; then
        echo "Failed to init Tiller."
        exit 1
      fi
  script:
    - export track="${1-stable}"
    - >
      if [[ "$track" != "stable" ]]; then
        name="$name-$track"
      fi
    - echo "Clone deploy repository..."
    - git clone http://gitlab-gitlab/$CI_PROJECT_NAMESPACE/reddit-deploy.git
    - echo "Download helm dependencies..."
    - helm dep update reddit-deploy/reddit
    - echo "Deploy helm release $name to $KUBE_NAMESPACE"
    - echo "Upgrading existing release..."
    - echo "helm upgrade --install --wait --set ui.ingress.host="$host" --set $CI_PROJECT_NAME.image.tag="$CI_APPLICATION_TAG" --namespace="$KUBE_NAMESPACE" --version="$CI_PIPELINE_ID-$CI_JOB_ID" "$name" reddit-deploy/reddit/"
    - >
      helm upgrade \
        --install \
        --wait \
        --set ui.ingress.host="$host" \
        --set $CI_PROJECT_NAME.image.tag="$CI_APPLICATION_TAG" \
        --namespace="$KUBE_NAMESPACE" \
        --version="$CI_PIPELINE_ID-$CI_JOB_ID" \
        "$name" \
        reddit-deploy/reddit/

stop_review:
  stage: cleanup
  variables:
    GIT_STRATEGY: none
    name: $CI_ENVIRONMENT_SLUG
  environment:
    name: review/$CI_PROJECT_PATH/$CI_COMMIT_REF_NAME
    action: stop
  when: manual
  allow_failure: true
  only:
    refs:
      - branches
    kubernetes: active
  except:
    - master
  before_script:
    # installing dependencies
    - apk add -U openssl curl tar gzip bash ca-certificates git
    - wget -q -O /etc/apk/keys/sgerrand.rsa.pub https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub
    - wget https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.23-r3/glibc-2.23-r3.apk
    - apk add glibc-2.23-r3.apk
    - curl https://storage.googleapis.com/pub/gsutil.tar.gz | tar -xz -C $HOME
    - export PATH=${PATH}:$HOME/gsutil
    - curl https://kubernetes-helm.storage.googleapis.com/helm-v2.13.1-linux-amd64.tar.gz | tar zx
    - mv linux-amd64/helm /usr/bin/
    - helm version --client
    - curl  -o /usr/bin/sync-repo.sh https://raw.githubusercontent.com/kubernetes/helm/master/scripts/sync-repo.sh
    - chmod a+x /usr/bin/sync-repo.sh
    - curl -L -o /usr/bin/kubectl https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl
    - chmod +x /usr/bin/kubectl
    - kubectl version --client
  script:
    - helm delete "$name" --purge
...
```
Тонкости синтаксиса:

- Объявление переменных можно перенести в variables
- conditional statements можно записать так:
  ```shell
  if [[ "$track" != "stable" ]]; then
  name="$name-$track"
  fi
  ```
- А рзносить строку на несолько так:
  ```shell
  helm upgrade --install \
  --wait \
  --set ui.ingress.host="$host"
  ```

Как видите, читаемость кода значительно возросла.


#### Evicted

Пока я тут работал, k8s выселил мой gitlab =()
```shell
kubectl get pods -n gitlab
```
```log
NAME                                        READY   STATUS             RESTARTS   AGE
gitlab-gitlab-766445f7d7-2q69s              0/1     Evicted            0          43m
gitlab-gitlab-766445f7d7-4tj6x              0/1     Evicted            0          43m
gitlab-gitlab-766445f7d7-8gmp6              0/1     Evicted            0          43m
gitlab-gitlab-766445f7d7-9brxd              0/1     Evicted            0          43m
gitlab-gitlab-766445f7d7-9ptqb              0/1     Evicted            0          46h
gitlab-gitlab-766445f7d7-9zdkd              0/1     Evicted            0          43m
gitlab-gitlab-766445f7d7-d7mf6              0/1     Evicted            0          43m
gitlab-gitlab-766445f7d7-fnrx4              0/1     Evicted            0          43m
gitlab-gitlab-766445f7d7-jbw4w              0/1     Evicted            0          43m
gitlab-gitlab-766445f7d7-k8spx              0/1     Evicted            0          43m
gitlab-gitlab-766445f7d7-mgv9f              0/1     Evicted            0          43m
gitlab-gitlab-766445f7d7-mkw7l              0/1     Evicted            0          43m
gitlab-gitlab-766445f7d7-r97ht              0/1     Evicted            0          43m
gitlab-gitlab-766445f7d7-rfzl6              0/1     CrashLoopBackOff   8          43m
gitlab-gitlab-766445f7d7-sbd99              0/1     Evicted            0          43m
gitlab-gitlab-766445f7d7-sjt2q              0/1     Evicted            0          43m
gitlab-gitlab-766445f7d7-smwfk              0/1     Evicted            0          43m
gitlab-gitlab-766445f7d7-t6lb7              0/1     Evicted            0          43m
gitlab-gitlab-766445f7d7-tf4vq              0/1     Evicted            0          43m
gitlab-gitlab-postgresql-66d5b899b8-67qbm   1/1     Running            0          46h
gitlab-gitlab-redis-6c675dd568-pb6xw        1/1     Running            0          46h
gitlab-gitlab-runner-644c574f56-48kvd       1/1     Running            4          46h
```

```shell
kubectl logs gitlab-gitlab-766445f7d7-rfzl6 -n gitlab
```
```log
  * service[postgres-exporter] action restart
    - restart service service[postgres-exporter]
  * ruby_block[reload postgres-exporter svlogd configuration] action create
    - execute the ruby block reload postgres-exporter svlogd configuration

Running handlers:
Running handlers complete
Chef Client finished, 318/508 resources updated in 02 minutes 51 seconds
gitlab Reconfigured!
Checking for an omnibus managed postgresql: NOT OK
No currently installed postgresql in the omnibus instance found.
Runnning Post Reconfigure Script...
```

```shell
kubectl describe pod gitlab-gitlab-766445f7d7-rfzl6 -n gitlab
```
```log
Name:           gitlab-gitlab-766445f7d7-rfzl6
Namespace:      gitlab
Priority:       0
Node:           gke-reddit-public-gitlab-pool-05e41e6e-5kqp/10.3.0.3
Start Time:     Mon, 13 Jan 2020 23:35:52 +0300
Labels:         app=gitlab-gitlab
                name=gitlab-gitlab
                pod-template-hash=766445f7d7
Annotations:    cni.projectcalico.org/podIP: 10.4.0.89/32
Status:         Running
IP:             10.4.0.89
IPs:            <none>
Controlled By:  ReplicaSet/gitlab-gitlab-766445f7d7
Containers:
  gitlab:
    Container ID:  docker://e6d8fdc48b61ebdcd596798b22892f3f310b1b644fe82ad18562e521f8292973
    Image:         gitlab/gitlab-ce:10.6.2-ce.0
    Image ID:      docker-pullable://gitlab/gitlab-ce@sha256:573e1cf90a5bf1bd9b964d782dd22394b73d67ccdf7f47e0d3152feb112ac00d
    Ports:         8105/TCP, 8065/TCP, 8005/TCP, 22/TCP, 9090/TCP, 8090/TCP
    Host Ports:    0/TCP, 0/TCP, 0/TCP, 0/TCP, 0/TCP, 0/TCP
    Command:
      /bin/bash
      -c
      sed -i "s/environment ({'GITLAB_ROOT_PASSWORD' => initial_root_password }) if initial_root_password/environment ({'GITLAB_ROOT_PASSWORD' => initial_root_password, 'GITLAB_SHARED_RUNNERS_REGISTRATION_TOKEN' => node['gitlab']['gitlab-rails']['initial_shared_runners_registration_token'] })/g" /opt/gitlab/embedded/cookbooks/gitlab/recipes/database_migrations.rb && echo 'gitlab-omnibus-helm-chart' > /opt/gitlab/embedded/service/gitlab-rails/INSTALLATION_TYPE && exec /assets/wrapper
    State:          Running
      Started:      Tue, 14 Jan 2020 00:17:18 +0300
    Last State:     Terminated
      Reason:       Error
      Exit Code:    137
      Started:      Tue, 14 Jan 2020 00:08:11 +0300
      Finished:     Tue, 14 Jan 2020 00:12:09 +0300
    Ready:          False
    Restart Count:  9
    Liveness:       http-get http://:8005/health_check%3Ftoken=SXBAQichEJasbtDSygrD delay=180s timeout=15s period=10s #success=1 #failure=3
    Readiness:      http-get http://:8005/health_check%3Ftoken=SXBAQichEJasbtDSygrD delay=15s timeout=1s period=10s #success=1 #failure=3
    Environment:
      GITLAB_EXTERNAL_SCHEME:                            <set to the key 'external_scheme' of config map 'gitlab-gitlab-config'>                         Optional: false
      GITLAB_EXTERNAL_HOSTNAME:                          <set to the key 'external_hostname' of config map 'gitlab-gitlab-config'>                       Optional: false
      GITLAB_REGISTRY_EXTERNAL_SCHEME:                   <set to the key 'registry_external_scheme' of config map 'gitlab-gitlab-config'>                Optional: false
      GITLAB_REGISTRY_EXTERNAL_HOSTNAME:                 <set to the key 'registry_external_hostname' of config map 'gitlab-gitlab-config'>              Optional: false
      GITLAB_MATTERMOST_EXTERNAL_SCHEME:                 <set to the key 'mattermost_external_scheme' of config map 'gitlab-gitlab-config'>              Optional: false
      GITLAB_MATTERMOST_EXTERNAL_HOSTNAME:               <set to the key 'mattermost_external_hostname' of config map 'gitlab-gitlab-config'>            Optional: false
      POSTGRES_USER:                                     <set to the key 'postgres_user' of config map 'gitlab-gitlab-config'>                           Optional: false
      POSTGRES_PASSWORD:                                 <set to the key 'postgres_password' in secret 'gitlab-gitlab-secrets'>                          Optional: false
      POSTGRES_DB:                                       <set to the key 'postgres_db' of config map 'gitlab-gitlab-config'>                             Optional: false
      GITLAB_INITIAL_SHARED_RUNNERS_REGISTRATION_TOKEN:  <set to the key 'initial_shared_runners_registration_token' in secret 'gitlab-gitlab-secrets'>  Optional: false
      MATTERMOST_APP_UID:                                <set to the key 'mattermost_app_uid' of config map 'gitlab-gitlab-config'>                      Optional: false
      MATTERMOST_APP_SECRET:                             <set to the key 'mattermost_app_secret' in secret 'gitlab-gitlab-secrets'>                      Optional: false
      PAGES_EXTERNAL_SCHEME:                             <set to the key 'pages_external_scheme' of config map 'gitlab-gitlab-config'>                   Optional: false
      PAGES_EXTERNAL_DOMAIN:                             <set to the key 'pages_external_domain' of config map 'gitlab-gitlab-config'>                   Optional: false
      GITLAB_OMNIBUS_CONFIG:                             external_url "#{ENV['GITLAB_EXTERNAL_SCHEME']}://#{ENV['GITLAB_EXTERNAL_HOSTNAME']}"
                                                         registry_external_url "#{ENV['GITLAB_REGISTRY_EXTERNAL_SCHEME']}://#{ENV['GITLAB_REGISTRY_EXTERNAL_HOSTNAME']}"
                                                         mattermost_external_url "#{ENV['GITLAB_MATTERMOST_EXTERNAL_SCHEME']}://#{ENV['GITLAB_MATTERMOST_EXTERNAL_HOSTNAME']}"
                                                         
                                                         gitlab_rails['initial_shared_runners_registration_token'] = ENV['GITLAB_INITIAL_SHARED_RUNNERS_REGISTRATION_TOKEN']
                                                         
                                                         nginx['enable'] = false
                                                         registry_nginx['enable'] = false
                                                         mattermost_nginx['enable'] = false
                                                         
                                                         gitlab_workhorse['listen_network'] = 'tcp'
                                                         gitlab_workhorse['listen_addr'] = '0.0.0.0:8005'
                                                         
                                                         mattermost['service_address'] = '0.0.0.0'
                                                         mattermost['service_port'] = '8065'
                                                         
                                                         registry['registry_http_addr'] = '0.0.0.0:8105'
                                                         
                                                         postgresql['enable'] = false
                                                         gitlab_rails['db_host'] = 'gitlab-gitlab-postgresql'
                                                         gitlab_rails['db_password'] = ENV['POSTGRES_PASSWORD']
                                                         gitlab_rails['db_username'] = ENV['POSTGRES_USER']
                                                         gitlab_rails['db_database'] = ENV['POSTGRES_DB']
                                                         
                                                         redis['enable'] = false
                                                         gitlab_rails['redis_host'] = 'gitlab-gitlab-redis'
                                                         
                                                         mattermost['file_directory'] = '/gitlab-data/mattermost';
                                                         mattermost['sql_driver_name'] = 'postgres';
                                                         mattermost['sql_data_source'] = "user=#{ENV['POSTGRES_USER']} host=gitlab-gitlab-postgresql port=5432 dbname=mattermost_production password=#{ENV['POSTGRES_PASSWORD']} sslmode=disable";
                                                         mattermost['gitlab_enable'] = true;
                                                         mattermost['gitlab_secret'] = ENV['MATTERMOST_APP_SECRET'];
                                                         mattermost['gitlab_id'] = ENV['MATTERMOST_APP_UID'];
                                                         mattermost['gitlab_scope'] = '';
                                                         mattermost['gitlab_auth_endpoint'] = "#{ENV['GITLAB_EXTERNAL_SCHEME']}://#{ENV['GITLAB_EXTERNAL_HOSTNAME']}/oauth/authorize";
                                                         mattermost['gitlab_token_endpoint'] = "#{ENV['GITLAB_EXTERNAL_SCHEME']}://#{ENV['GITLAB_EXTERNAL_HOSTNAME']}/oauth/token";
                                                         mattermost['gitlab_user_api_endpoint'] = "#{ENV['GITLAB_EXTERNAL_SCHEME']}://#{ENV['GITLAB_EXTERNAL_HOSTNAME']}/api/v4/user"
                                                         
                                                         manage_accounts['enable'] = true
                                                         manage_storage_directories['manage_etc'] = false
                                                         
                                                         if ENV['PAGES_EXTERNAL_SCHEME'] && ENV['PAGES_EXTERNAL_DOMAIN']
                                                           pages_external_url "#{ENV['PAGES_EXTERNAL_SCHEME']}://#{ENV['PAGES_EXTERNAL_DOMAIN']}/"
                                                           gitlab_pages['enable'] = true
                                                           gitlab_pages['listen_proxy'] = "0.0.0.0:8090"
                                                         end
                                                         
                                                         gitlab_shell['auth_file'] = '/gitlab-data/ssh/authorized_keys'
                                                         git_data_dirs({ "default" => { "path" => "/gitlab-data/git-data" } })
                                                         gitlab_rails['shared_path'] = '/gitlab-data/shared'
                                                         gitlab_rails['uploads_directory'] = '/gitlab-data/uploads'
                                                         gitlab_ci['builds_directory'] = '/gitlab-data/builds'
                                                         gitlab_rails['registry_path'] = '/gitlab-registry'
                                                         gitlab_rails['trusted_proxies'] = ["10.0.0.0/8","172.16.0.0/12","192.168.0.0/16"]
                                                         
                                                         prometheus['listen_address'] = '0.0.0.0:9090'
                                                         postgres_exporter['enable'] = true
                                                         postgres_exporter['env'] = {
                                                           'DATA_SOURCE_NAME' => "user=#{ENV['POSTGRES_USER']} host=gitlab-gitlab-postgresql port=5432 dbname=#{ENV['POSTGRES_DB']} password=#{ENV['POSTGRES_PASSWORD']} sslmode=disable"
                                                         }
                                                         redis_exporter['enable'] = true
                                                         redis_exporter['flags'] = {
                                                           'redis.addr' => "gitlab-gitlab-redis:6379",
                                                         }
                                                         
      GITLAB_POST_RECONFIGURE_CODE:                      include Gitlab::CurrentSettings
                                                         
                                                         Doorkeeper::Application.where(uid: ENV["MATTERMOST_APP_UID"]).first_or_create(
                                                           name: "GitLab Mattermost",
                                                           secret: ENV["MATTERMOST_APP_SECRET"],
                                                           redirect_uri: "#{ENV["GITLAB_MATTERMOST_EXTERNAL_SCHEME"]}://#{ENV["GITLAB_MATTERMOST_EXTERNAL_HOSTNAME"]}/signup/gitlab/complete\r\n#{ENV["GITLAB_MATTERMOST_EXTERNAL_SCHEME"]}://#{ENV["GITLAB_MATTERMOST_EXTERNAL_HOSTNAME"]}/login/gitlab/complete")
                                                         
                                                         PrometheusService.where(template: true).first_or_create(
                                                           active: true, api_url: "http://localhost:9090")
                                                         
                                                         KubernetesService.where(template: true).first_or_create(
                                                           active: true,
                                                           api_url: "https://#{ENV["KUBERNETES_SERVICE_HOST"]}:#{ENV["KUBERNETES_SERVICE_PORT"]}",
                                                           token: File.read("/var/run/secrets/kubernetes.io/serviceaccount/token"),
                                                           ca_pem: File.read("/var/run/secrets/kubernetes.io/serviceaccount/ca.crt"))
                                                         
                                                         Gitlab::CurrentSettings.current_application_settings.update_attribute(:health_check_access_token, 'SXBAQichEJasbtDSygrD')
                                                         
      GITLAB_POST_RECONFIGURE_SCRIPT:                    /opt/gitlab/bin/gitlab-rails runner -e production "$GITLAB_POST_RECONFIGURE_CODE"
                                                         
    Mounts:
      /etc/gitlab from config (rw)
      /gitlab-data from data (rw,path="gitlab-data")
      /gitlab-registry from registry (rw)
      /var/run/secrets/kubernetes.io/serviceaccount from default-token-znmvd (ro)
Conditions:
  Type              Status
  Initialized       True 
  Ready             False 
  ContainersReady   False 
  PodScheduled      True 
Volumes:
  data:
    Type:       PersistentVolumeClaim (a reference to a PersistentVolumeClaim in the same namespace)
    ClaimName:  gitlab-gitlab-storage
    ReadOnly:   false
  registry:
    Type:       PersistentVolumeClaim (a reference to a PersistentVolumeClaim in the same namespace)
    ClaimName:  gitlab-gitlab-registry-storage
    ReadOnly:   false
  config:
    Type:       PersistentVolumeClaim (a reference to a PersistentVolumeClaim in the same namespace)
    ClaimName:  gitlab-gitlab-config-storage
    ReadOnly:   false
  default-token-znmvd:
    Type:        Secret (a volume populated by a Secret)
    SecretName:  default-token-znmvd
    Optional:    false
QoS Class:       BestEffort
Node-Selectors:  <none>
Tolerations:     node.kubernetes.io/not-ready:NoExecute for 300s
                 node.kubernetes.io/unreachable:NoExecute for 300s
Events:
  Type     Reason                  Age                    From                                                  Message
  ----     ------                  ----                   ----                                                  -------
  Warning  FailedScheduling        43m (x6 over 48m)      default-scheduler                                     0/1 nodes are available: 1 node(s) had taints that the pod didn't tolerate.
  Normal   Scheduled               43m                    default-scheduler                                     Successfully assigned gitlab/gitlab-gitlab-766445f7d7-rfzl6 to gke-reddit-public-gitlab-pool-05e41e6e-5kqp
  Normal   SuccessfulAttachVolume  43m                    attachdetach-controller                               AttachVolume.Attach succeeded for volume "pvc-89b7b55a-ed38-407a-b541-06c9f59731db"
  Normal   SuccessfulAttachVolume  43m                    attachdetach-controller                               AttachVolume.Attach succeeded for volume "pvc-95f58849-b3fd-4d77-8754-54fa5a807586"
  Normal   SuccessfulAttachVolume  43m                    attachdetach-controller                               AttachVolume.Attach succeeded for volume "pvc-61f1ca90-83b1-47f3-969b-2cf61c6dd293"
  Normal   Pulled                  43m                    kubelet, gke-reddit-public-gitlab-pool-05e41e6e-5kqp  Container image "gitlab/gitlab-ce:10.6.2-ce.0" already present on machine
  Normal   Created                 43m                    kubelet, gke-reddit-public-gitlab-pool-05e41e6e-5kqp  Created container gitlab
  Normal   Started                 43m                    kubelet, gke-reddit-public-gitlab-pool-05e41e6e-5kqp  Started container gitlab
  Warning  Unhealthy               39m (x3 over 40m)      kubelet, gke-reddit-public-gitlab-pool-05e41e6e-5kqp  Liveness probe failed: HTTP probe failed with statuscode: 502
  Warning  Unhealthy               18m (x52 over 42m)     kubelet, gke-reddit-public-gitlab-pool-05e41e6e-5kqp  Readiness probe failed: Get http://10.4.0.89:8005/health_check?token=SXBAQichEJasbtDSygrD: dial tcp 10.4.0.89:8005: connect: connection refused
  Warning  Unhealthy               8m15s (x113 over 40m)  kubelet, gke-reddit-public-gitlab-pool-05e41e6e-5kqp  Readiness probe failed: HTTP probe failed with statuscode: 502
  Warning  BackOff                 3m7s (x23 over 7m19s)  kubelet, gke-reddit-public-gitlab-pool-05e41e6e-5kqp  Back-off restarting failed container
```

После некоторых танцев с бубном, пересоздал кластер и передеплоил всё. Теперь хельмы показывают все инсталляции корректно.
```shell
helm-3.0.2 list --all
```
```log
NAME    NAMESPACE       REVISION        UPDATED                                 STATUS          CHART                   APP VERSION
gitlab  default         1               2020-01-14 20:19:24.615711767 +0300 MSK deployed        gitlab-omnibus-0.1.37
```
```shell
helm-2.13.1 list --all
```
```log
NAME                            REVISION        UPDATED                         STATUS          CHART           APP VERSION     NAMESPACE 
production                      1               Tue Jan 14 21:12:00 2020        DEPLOYED        reddit-0.1.0                    production
review-vscoder-co-tl8stj        1               Tue Jan 14 21:12:49 2020        DEPLOYED        reddit-0.1.0                    review    
review-vscoder-po-7fbjm5        1               Tue Jan 14 21:08:58 2020        DEPLOYED        reddit-0.1.0                    review    
review-vscoder-ui-a347ed        1               Tue Jan 14 21:08:58 2020        DEPLOYED        reddit-0.1.0                    review    
review-vscoder-ui-szjzwy        1               Tue Jan 14 21:08:22 2020        DEPLOYED        reddit-0.1.0                    review    
staging                         1               Tue Jan 14 21:03:16 2020        DEPLOYED        reddit-0.1.0                    staging
```


#### Пайплайн здорового человека: задание

1. Изменить пайплайн сервиса _COMMENT_, использующих для деплоя `helm2` таким образом, чтобы деплой осуществлялся с использованием `tiller plugin`. Таким образом, деплой каждого пайплайна из трех сервисов должен производиться по-разному.
2. Изменить пайплайн сервиса _POST_, чтобы он использовал `helm3` для деплоя.

Полученные файлы пайплайнов для сервисов (4 штуки: `ui`, `post`, `comment`, `reddit`) положить в директорию `Charts/gitlabci` под именами `gitlab-ci-.yml` и закоммитить.


##### Оптимизируем пайплайн ui

Создан а директория `kubernetes/docker-helm` с Dockerfile для сборки базового образа с предустановленными `helm` и `kubectl`

Соответствующий образ создан и загружен на docker hub

Jobs `review` и `stop_review` в указанном пайплайне неоптимальны, так как каждый раз устанавливают `helm` и `kubectl` в базовый образ `alpine:latest`. Для дальнейшей работы данный пайплайн будет переделан на использование образа `vscoder/helm:v2.13.1` собственной сборки

`ui/.gitlab-ci.yml`
```yaml
---
image: vscoder/helm:v2.13.1

stages:
  - build
  - test
  - review
  - release
  - cleanup

build:
  stage: build
  only:
    - branches
  image: docker:git
  services:
    - docker:18.09.7-dind
  variables:
    DOCKER_DRIVER: overlay2
    CI_REGISTRY: "index.docker.io"
    CI_APPLICATION_REPOSITORY: $CI_REGISTRY/$CI_PROJECT_PATH
    CI_APPLICATION_TAG: $CI_COMMIT_REF_SLUG
    CI_CONTAINER_NAME: ci_job_build_${CI_JOB_ID}
  before_script:
    - >
      if ! docker info &>/dev/null; then
        if [ -z "$DOCKER_HOST" -a "$KUBERNETES_PORT" ]; then
          export DOCKER_HOST='tcp://localhost:2375'
        fi
      fi
  script:
    # Building
    - echo "Building Dockerfile-based application..."
    - echo `git show --format="%h" HEAD | head -1` > build_info.txt
    - echo `git rev-parse --abbrev-ref HEAD` >> build_info.txt
    - docker build -t "$CI_APPLICATION_REPOSITORY:$CI_APPLICATION_TAG" .
    - >
      if [[ -n "$CI_REGISTRY_USER" ]]; then
        echo "Logging to GitLab Container Registry with CI credentials...for build"
        docker login -u "$CI_REGISTRY_USER" -p "$CI_REGISTRY_PASSWORD"
      fi
    - echo "Pushing to GitLab Container Registry..."
    - docker push "$CI_APPLICATION_REPOSITORY:$CI_APPLICATION_TAG"

test:
  stage: test
  script:
    - exit 0
  only:
    - branches

release:
  stage: release
  image: docker
  services:
    - docker:18.09.7-dind
  variables:
    CI_REGISTRY: "index.docker.io"
    CI_APPLICATION_REPOSITORY: $CI_REGISTRY/$CI_PROJECT_PATH
    CI_APPLICATION_TAG: $CI_COMMIT_REF_SLUG
    CI_CONTAINER_NAME: ci_job_build_${CI_JOB_ID}
  before_script:
    - >
      if ! docker info &>/dev/null; then
        if [ -z "$DOCKER_HOST" -a "$KUBERNETES_PORT" ]; then
          export DOCKER_HOST='tcp://localhost:2375'
        fi
      fi
  script:
    # Releasing
    - echo "Updating docker images ..."
    - >
      if [[ -n "$CI_REGISTRY_USER" ]]; then
        echo "Logging to GitLab Container Registry with CI credentials for release..."
        docker login -u "$CI_REGISTRY_USER" -p "$CI_REGISTRY_PASSWORD"
      fi
    - docker pull "$CI_APPLICATION_REPOSITORY:$CI_APPLICATION_TAG"
    - docker tag "$CI_APPLICATION_REPOSITORY:$CI_APPLICATION_TAG" "$CI_APPLICATION_REPOSITORY:$(cat VERSION)"
    - docker push "$CI_APPLICATION_REPOSITORY:$(cat VERSION)"
    # latest is neede for feature flags
    - docker tag "$CI_APPLICATION_REPOSITORY:$CI_APPLICATION_TAG" "$CI_APPLICATION_REPOSITORY:latest"
    - docker push "$CI_APPLICATION_REPOSITORY:latest"
  only:
    - master

review:
  stage: review
  variables:
    KUBE_NAMESPACE: review
    host: $CI_PROJECT_PATH_SLUG-$CI_COMMIT_REF_SLUG
    TILLER_NAMESPACE: kube-system
    CI_APPLICATION_TAG: $CI_COMMIT_REF_SLUG
    name: $CI_ENVIRONMENT_SLUG
  environment:
    name: review/$CI_PROJECT_PATH/$CI_COMMIT_REF_NAME
    url: http://$CI_PROJECT_PATH_SLUG-$CI_COMMIT_REF_SLUG
    on_stop: stop_review
  only:
    refs:
      - branches
    kubernetes: active
  except:
    - master
  before_script:
    - helm version --client
    - kubectl version --client
    # ensuring namespace
    - kubectl describe namespace "$KUBE_NAMESPACE" || kubectl create namespace "$KUBE_NAMESPACE"
    # installing Tiller
    - echo "Checking Tiller..."
    - helm init --upgrade
    - kubectl rollout status -n "$TILLER_NAMESPACE" -w "deployment/tiller-deploy"
    - >
      if ! helm version --debug; then
        echo "Failed to init Tiller."
        exit 1
      fi
  script:
    - export track="${1-stable}"
    - >
      if [[ "$track" != "stable" ]]; then
        name="$name-$track"
      fi
    - echo "Clone deploy repository..."
    - git clone http://gitlab-gitlab/$CI_PROJECT_NAMESPACE/reddit-deploy.git
    - echo "Download helm dependencies..."
    - helm dep update reddit-deploy/reddit
    - echo "Deploy helm release $name to $KUBE_NAMESPACE"
    - echo "Upgrading existing release..."
    - echo "helm upgrade --install --wait --set ui.ingress.host="$host" --set $CI_PROJECT_NAME.image.tag="$CI_APPLICATION_TAG" --namespace="$KUBE_NAMESPACE" --version="$CI_PIPELINE_ID-$CI_JOB_ID" "$name" reddit-deploy/reddit/"
    - >
      helm upgrade \
        --install \
        --wait \
        --set ui.ingress.host="$host" \
        --set $CI_PROJECT_NAME.image.tag="$CI_APPLICATION_TAG" \
        --namespace="$KUBE_NAMESPACE" \
        --version="$CI_PIPELINE_ID-$CI_JOB_ID" \
        "$name" \
        reddit-deploy/reddit/

stop_review:
  stage: cleanup
  variables:
    GIT_STRATEGY: none
    name: $CI_ENVIRONMENT_SLUG
  environment:
    name: review/$CI_PROJECT_PATH/$CI_COMMIT_REF_NAME
    action: stop
  when: manual
  allow_failure: true
  only:
    refs:
      - branches
    kubernetes: active
  except:
    - master
  before_script:
    - helm version --client
    - kubectl version --client
  script:
    - helm delete "$name" --purge
```

Пайплайн проверен. Работает. 

Окружение `review` работает

Остановка окружения `review` работает

##### comment + tiller plugin

Модифицируем пайплайн для работы через helm tiller plugin

`comment/.gitlab-ci.yml`
```yaml
---
image: vscoder/helm:v2.13.1

stages:
  - build
  - test
  - review
  - release
  - cleanup

build:
  stage: build
  only:
    - branches
  image: docker:git
  services:
    - docker:18.09.7-dind
  variables:
    DOCKER_DRIVER: overlay2
    CI_REGISTRY: "index.docker.io"
    CI_APPLICATION_REPOSITORY: $CI_REGISTRY/$CI_PROJECT_PATH
    CI_APPLICATION_TAG: $CI_COMMIT_REF_SLUG
    CI_CONTAINER_NAME: ci_job_build_${CI_JOB_ID}
  before_script:
    - >
      if ! docker info &>/dev/null; then
        if [ -z "$DOCKER_HOST" -a "$KUBERNETES_PORT" ]; then
          export DOCKER_HOST='tcp://localhost:2375'
        fi
      fi
  script:
    # Building
    - echo "Building Dockerfile-based application..."
    - echo `git show --format="%h" HEAD | head -1` > build_info.txt
    - echo `git rev-parse --abbrev-ref HEAD` >> build_info.txt
    - docker build -t "$CI_APPLICATION_REPOSITORY:$CI_APPLICATION_TAG" .
    - >
      if [[ -n "$CI_REGISTRY_USER" ]]; then
        echo "Logging to GitLab Container Registry with CI credentials...for build"
        docker login -u "$CI_REGISTRY_USER" -p "$CI_REGISTRY_PASSWORD"
      fi
    - echo "Pushing to GitLab Container Registry..."
    - docker push "$CI_APPLICATION_REPOSITORY:$CI_APPLICATION_TAG"

test:
  stage: test
  script:
    - exit 0
  only:
    - branches

release:
  stage: release
  image: docker
  services:
    - docker:18.09.7-dind
  variables:
    CI_REGISTRY: "index.docker.io"
    CI_APPLICATION_REPOSITORY: $CI_REGISTRY/$CI_PROJECT_PATH
    CI_APPLICATION_TAG: $CI_COMMIT_REF_SLUG
    CI_CONTAINER_NAME: ci_job_build_${CI_JOB_ID}
  before_script:
    - >
      if ! docker info &>/dev/null; then
        if [ -z "$DOCKER_HOST" -a "$KUBERNETES_PORT" ]; then
          export DOCKER_HOST='tcp://localhost:2375'
        fi
      fi
  script:
    # Releasing
    - echo "Updating docker images ..."
    - >
      if [[ -n "$CI_REGISTRY_USER" ]]; then
        echo "Logging to GitLab Container Registry with CI credentials for release..."
        docker login -u "$CI_REGISTRY_USER" -p "$CI_REGISTRY_PASSWORD"
      fi
    - docker pull "$CI_APPLICATION_REPOSITORY:$CI_APPLICATION_TAG"
    - docker tag "$CI_APPLICATION_REPOSITORY:$CI_APPLICATION_TAG" "$CI_APPLICATION_REPOSITORY:$(cat VERSION)"
    - docker push "$CI_APPLICATION_REPOSITORY:$(cat VERSION)"
    # latest is neede for feature flags
    - docker tag "$CI_APPLICATION_REPOSITORY:$CI_APPLICATION_TAG" "$CI_APPLICATION_REPOSITORY:latest"
    - docker push "$CI_APPLICATION_REPOSITORY:latest"
  only:
    - master

review:
  stage: review
  variables:
    KUBE_NAMESPACE: review
    host: $CI_PROJECT_PATH_SLUG-$CI_COMMIT_REF_SLUG
    CI_APPLICATION_TAG: $CI_COMMIT_REF_SLUG
    name: $CI_ENVIRONMENT_SLUG
  environment:
    name: review/$CI_PROJECT_PATH/$CI_COMMIT_REF_NAME
    url: http://$CI_PROJECT_PATH_SLUG-$CI_COMMIT_REF_SLUG
    on_stop: stop_review
  only:
    refs:
      - branches
    kubernetes: active
  except:
    - master
  before_script:
    - helm init --client-only  # init $HELM_HOME
    - helm plugin install https://github.com/rimusz/helm-tiller  # install tiller plugin
    - helm version --client
    - kubectl version --client
    # ensuring namespace
    - kubectl describe namespace "$KUBE_NAMESPACE" || kubectl create namespace "$KUBE_NAMESPACE"
    # installing Tiller
    #- echo "Checking Tiller..."
    #- helm init --upgrade
    #- kubectl rollout status -n "$TILLER_NAMESPACE" -w "deployment/tiller-deploy"
    #- >
    #  if ! helm version --debug; then
    #    echo "Failed to init Tiller."
    #    exit 1
    #  fi
  script:
    - export track="${1-stable}"
    - >
      if [[ "$track" != "stable" ]]; then
        name="$name-$track"
      fi
    - echo "Clone deploy repository..."
    - git clone http://gitlab-gitlab/$CI_PROJECT_NAMESPACE/reddit-deploy.git
    - echo "Download helm dependencies..."
    - helm tiller run -- helm dep update reddit-deploy/reddit
    - echo "Deploy helm release $name to $KUBE_NAMESPACE"
    - echo "Upgrading existing release..."
    - echo "helm upgrade --install --wait --set ui.ingress.host="$host" --set $CI_PROJECT_NAME.image.tag="$CI_APPLICATION_TAG" --namespace="$KUBE_NAMESPACE" --version="$CI_PIPELINE_ID-$CI_JOB_ID" "$name" reddit-deploy/reddit/"
    - >
      helm tiller run -- helm upgrade \
        --install \
        --wait \
        --set ui.ingress.host="$host" \
        --set $CI_PROJECT_NAME.image.tag="$CI_APPLICATION_TAG" \
        --namespace="$KUBE_NAMESPACE" \
        --version="$CI_PIPELINE_ID-$CI_JOB_ID" \
        "$name" \
        reddit-deploy/reddit/

stop_review:
  stage: cleanup
  variables:
    GIT_STRATEGY: none
    name: $CI_ENVIRONMENT_SLUG
  environment:
    name: review/$CI_PROJECT_PATH/$CI_COMMIT_REF_NAME
    action: stop
  when: manual
  allow_failure: true
  only:
    refs:
      - branches
    kubernetes: active
  except:
    - master
  before_script:
    - helm init --client-only
    - helm plugin install https://github.com/rimusz/helm-tiller
    - helm version --client
    - kubectl version --client
  script:
    - helm tiller run -- helm delete "$name" --purge
```

Пайплайн проверен: окружение `review` деплоится, работает. Удаление окружения работает.

При желании, можно перенести установку tiller plugin в базовый docker-образ. Я оставлю в пайплайне для наглядности, а так же чтобы не усложнять излишне сборку базового докер-образа для разных версий helm (2 и 3)


##### post + helm3

Исправим ошибку при передаче версии helm при сборке docker-образа
`kubernetes/docker-helm/Dockerfile`
```dockerfile
FROM alpine:3

# variable "HELM_VERSION" must be passed as docker environment variables during the image build
# docker build --no-cache --build-arg HELM_VERSION=2.13.1 -t vscoder/helm:2.13.1 .

ARG HELM_VERSION

RUN apk add --update --no-cache openssl curl tar gzip bash ca-certificates git && \
    wget -q -O /etc/apk/keys/sgerrand.rsa.pub https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub && \
    wget https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.23-r3/glibc-2.23-r3.apk && \
    apk add glibc-2.23-r3.apk && \
    curl https://storage.googleapis.com/pub/gsutil.tar.gz | tar -xz -C $HOME && \
    export PATH=${PATH}:$HOME/gsutil && \
    curl https://get.helm.sh/helm-v${HELM_VERSION}-linux-amd64.tar.gz | tar zx && \
    mv linux-amd64/helm /usr/bin/ && \
    helm version --client && \
    curl  -o /usr/bin/sync-repo.sh https://raw.githubusercontent.com/kubernetes/helm/master/scripts/sync-repo.sh && \
    chmod a+x /usr/bin/sync-repo.sh && \
    curl -L -o /usr/bin/kubectl https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl && \
    chmod +x /usr/bin/kubectl && \
    kubectl version --client && \
    rm -rf linux-amd64 && \
    apk del curl tar gzip && \
    rm -f /var/cache/apk/*

CMD ["bash"]
```

Соберём базовый образ с helm3
Параметризована версия helm в `kubernetes/docker-helm/Makefile`
```makefile
HELM_VERSION=2.16.1

.PHONY: build publish

build:
	. ./env \
	&& export HELM_VERSION=$${HELM_VERSION} \
	&& ./docker_build.sh

publish:
	. ./env \
	&& export HELM_VERSION=$${HELM_VERSION} \
	&& ./docker_push.sh
```

Соберём и загрузим в докерхаб образ с helm 3.0.2
```shell
cd ./kubernetes/docker-helm
make build publish HELM_VERSION=3.0.2
```
```log
. ./env \
&& export HELM_VERSION=${HELM_VERSION} \
&& ./docker_build.sh
+ echo docker build --build-arg HELM_VERSION=3.0.2 -t vscoder/helm:v3.0.2 .
docker build --build-arg HELM_VERSION=3.0.2 -t vscoder/helm:v3.0.2 .
+ docker build --build-arg HELM_VERSION=3.0.2 -t vscoder/helm:v3.0.2 .
Sending build context to Docker daemon  10.24kB
Step 1/4 : FROM alpine:3
 ---> cc0abc535e36
Step 2/4 : ARG HELM_VERSION
 ---> Using cache
 ---> eb3418f75466
Step 3/4 : RUN apk add --update --no-cache openssl curl tar gzip bash ca-certificates git &&     wget -q -O /etc/apk/keys/sgerrand.rsa.pub https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub &&     wget https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.23-r3/glibc-2.23-r3.apk &&     apk add glibc-2.23-r3.apk &&     curl https://storage.googleapis.com/pub/gsutil.tar.gz | tar -xz -C $HOME &&     export PATH=${PATH}:$HOME/gsutil &&     curl https://get.helm.sh/helm-v${HELM_VERSION}-linux-amd64.tar.gz | tar zx &&     mv linux-amd64/helm /usr/bin/ &&     helm version --client &&     curl  -o /usr/bin/sync-repo.sh https://raw.githubusercontent.com/kubernetes/helm/master/scripts/sync-repo.sh &&     chmod a+x /usr/bin/sync-repo.sh &&     curl -L -o /usr/bin/kubectl https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl &&     chmod +x /usr/bin/kubectl &&     kubectl version --client &&     rm -rf linux-amd64 &&     apk del curl tar gzip &&     rm -f /var/cache/apk/*
 ---> Using cache
 ---> 2bff76f532a9
Step 4/4 : CMD ["bash"]
 ---> Using cache
 ---> 4d5ef4d1bfe0
Successfully built 4d5ef4d1bfe0
Successfully tagged vscoder/helm:v3.0.2
. ./env \
&& export HELM_VERSION=${HELM_VERSION} \
&& ./docker_push.sh
+ docker push vscoder/helm:v3.0.2
The push refers to repository [docker.io/vscoder/helm]
63373a9367f2: Pushed 
6b27de954cca: Layer already exists 
v3.0.2: digest: sha256:8e0512402256b17834c6cdf920fe4c688a3a9600aed3d893fb6990e257be2df1 size: 740
```

Изменим соответствующим образом пайплайн
`post/.gitlab-ci.yml`
```yaml
---
image: vscoder/helm:v3.0.2

stages:
  - build
  - test
  - review
  - release
  - cleanup

build:
  stage: build
  only:
    - branches
  image: docker:git
  services:
    - docker:18.09.7-dind
  variables:
    DOCKER_DRIVER: overlay2
    CI_REGISTRY: "index.docker.io"
    CI_APPLICATION_REPOSITORY: $CI_REGISTRY/$CI_PROJECT_PATH
    CI_APPLICATION_TAG: $CI_COMMIT_REF_SLUG
    CI_CONTAINER_NAME: ci_job_build_${CI_JOB_ID}
  before_script:
    - >
      if ! docker info &>/dev/null; then
        if [ -z "$DOCKER_HOST" -a "$KUBERNETES_PORT" ]; then
          export DOCKER_HOST='tcp://localhost:2375'
        fi
      fi
  script:
    # Building
    - echo "Building Dockerfile-based application..."
    - echo `git show --format="%h" HEAD | head -1` > build_info.txt
    - echo `git rev-parse --abbrev-ref HEAD` >> build_info.txt
    - docker build -t "$CI_APPLICATION_REPOSITORY:$CI_APPLICATION_TAG" .
    - >
      if [[ -n "$CI_REGISTRY_USER" ]]; then
        echo "Logging to GitLab Container Registry with CI credentials...for build"
        docker login -u "$CI_REGISTRY_USER" -p "$CI_REGISTRY_PASSWORD"
      fi
    - echo "Pushing to GitLab Container Registry..."
    - docker push "$CI_APPLICATION_REPOSITORY:$CI_APPLICATION_TAG"

test:
  stage: test
  script:
    - exit 0
  only:
    - branches

release:
  stage: release
  image: docker
  services:
    - docker:18.09.7-dind
  variables:
    CI_REGISTRY: "index.docker.io"
    CI_APPLICATION_REPOSITORY: $CI_REGISTRY/$CI_PROJECT_PATH
    CI_APPLICATION_TAG: $CI_COMMIT_REF_SLUG
    CI_CONTAINER_NAME: ci_job_build_${CI_JOB_ID}
  before_script:
    - >
      if ! docker info &>/dev/null; then
        if [ -z "$DOCKER_HOST" -a "$KUBERNETES_PORT" ]; then
          export DOCKER_HOST='tcp://localhost:2375'
        fi
      fi
  script:
    # Releasing
    - echo "Updating docker images ..."
    - >
      if [[ -n "$CI_REGISTRY_USER" ]]; then
        echo "Logging to GitLab Container Registry with CI credentials for release..."
        docker login -u "$CI_REGISTRY_USER" -p "$CI_REGISTRY_PASSWORD"
      fi
    - docker pull "$CI_APPLICATION_REPOSITORY:$CI_APPLICATION_TAG"
    - docker tag "$CI_APPLICATION_REPOSITORY:$CI_APPLICATION_TAG" "$CI_APPLICATION_REPOSITORY:$(cat VERSION)"
    - docker push "$CI_APPLICATION_REPOSITORY:$(cat VERSION)"
    # latest is neede for feature flags
    - docker tag "$CI_APPLICATION_REPOSITORY:$CI_APPLICATION_TAG" "$CI_APPLICATION_REPOSITORY:latest"
    - docker push "$CI_APPLICATION_REPOSITORY:latest"
  only:
    - master

review:
  stage: review
  variables:
    KUBE_NAMESPACE: review
    host: $CI_PROJECT_PATH_SLUG-$CI_COMMIT_REF_SLUG
    CI_APPLICATION_TAG: $CI_COMMIT_REF_SLUG
    name: $CI_ENVIRONMENT_SLUG
  environment:
    name: review/$CI_PROJECT_PATH/$CI_COMMIT_REF_NAME
    url: http://$CI_PROJECT_PATH_SLUG-$CI_COMMIT_REF_SLUG
    on_stop: stop_review
  only:
    refs:
      - branches
    kubernetes: active
  except:
    - master
  before_script:
    # - helm init --client-only
    # - helm plugin install https://github.com/rimusz/helm-tiller
    - helm version --client
    - kubectl version --client
    # ensuring namespace
    - kubectl describe namespace "$KUBE_NAMESPACE" || kubectl create namespace "$KUBE_NAMESPACE"
  script:
    - export track="${1-stable}"
    - >
      if [[ "$track" != "stable" ]]; then
        name="$name-$track"
      fi
    - echo "Clone deploy repository..."
    - git clone http://gitlab-gitlab/$CI_PROJECT_NAMESPACE/reddit-deploy.git
    - echo "Download helm dependencies..."
    - helm dep update reddit-deploy/reddit # убрали использование tiller plugin
    - echo "Deploy helm release $name to $KUBE_NAMESPACE"
    - echo "Upgrading existing release..."
    - echo "helm upgrade --install --wait --set ui.ingress.host="$host" --set $CI_PROJECT_NAME.image.tag="$CI_APPLICATION_TAG" --namespace="$KUBE_NAMESPACE" --version="$CI_PIPELINE_ID-$CI_JOB_ID" "$name" reddit-deploy/reddit/"
    - >  # убрали использование tiller plugin
      helm upgrade \
        "$name" \
        reddit-deploy/reddit/ \
        --install \
        --wait \
        --set ui.ingress.host="$host" \
        --set $CI_PROJECT_NAME.image.tag="$CI_APPLICATION_TAG" \
        --namespace="$KUBE_NAMESPACE" \
        --version="$CI_PIPELINE_ID-$CI_JOB_ID"

stop_review:
  stage: cleanup
  variables:
    GIT_STRATEGY: none
    name: $CI_ENVIRONMENT_SLUG
  environment:
    name: review/$CI_PROJECT_PATH/$CI_COMMIT_REF_NAME
    action: stop
  when: manual
  allow_failure: true
  only:
    refs:
      - branches
    kubernetes: active
  except:
    - master
  before_script:
    # - helm init --client-only
    # - helm plugin install https://github.com/rimusz/helm-tiller
    - helm version --client
    - kubectl version --client
  script:
    - helm delete "$name" # убрали использование tiller plugin. Так же helm3 не умеет флаг --purge
```

Пайплайн отработал успешно (да, не с первого раза ^_^ )
```log
helm upgrade --install --wait --set ui.ingress.host=vscoder-post-feature-4 --set post.image.tag=feature-4 --namespace=review --version=15-66 review-vscoder-po-7fbjm5 reddit-deploy/reddit/
$ helm upgrade \ # collapsed multi-line command
Release "review-vscoder-po-7fbjm5" does not exist. Installing it now.
NAME: review-vscoder-po-7fbjm5
LAST DEPLOYED: Wed Jan 15 19:02:38 2020
NAMESPACE: review
STATUS: deployed
REVISION: 1
TEST SUITE: None
Job succeeded
```

Environment проверен. Работает.

Удаление environment-а не отработало. Причина: старый базовый образ
```log
Running with gitlab-runner 10.3.0 (5cf5e19a)
  on gitlab-gitlab-runner-875586966-psz7q (0562f0e5)
Using Kubernetes namespace: default
Using Kubernetes executor with image vscoder/helm:v3.0.2 ...
Waiting for pod default/runner-0562f0e5-project-1-concurrent-0bgb74 to be running, status is Pending
Waiting for pod default/runner-0562f0e5-project-1-concurrent-0bgb74 to be running, status is Pending
Waiting for pod default/runner-0562f0e5-project-1-concurrent-0bgb74 to be running, status is Pending
Running on runner-0562f0e5-project-1-concurrent-0bgb74 via gitlab-gitlab-runner-875586966-psz7q...
Skipping Git repository setup
Skippping Git checkout
Skipping Git submodules setup
$ helm version --client
Client: &version.Version{SemVer:"v2.13.1", GitCommit:"618447cbf203d147601b4b9bd7f8c37a5d39fbb4", GitTreeState:"clean"}
$ kubectl version --client
Client Version: version.Info{Major:"1", Minor:"17", GitVersion:"v1.17.0", GitCommit:"70132b0f130acc0bed193d9ba59dd186f0e634cf", GitTreeState:"clean", BuildDate:"2019-12-07T21:20:10Z", GoVersion:"go1.13.4", Compiler:"gc", Platform:"linux/amd64"}
$ helm delete "$name" --purge
Error: release: "review-vscoder-po-7fbjm5" not found
ERROR: Job failed: error executing remote command: command terminated with non-zero exit code: Error executing in Docker Container: 1
```

Полезная ссылка по теме кеша gitlab https://docs.gitlab.com/ce/ci/caching/

Выполнен на всех 3 нодах кубера `sudo docker image rm vscoder/helm:v3.0.2`


Руками дропнул под с раннером, кубик его пересоздал. В гитлабе новый раннер зарегистрирован.

Но! Проблема. Некоторые пайплайны не отрабатывают:
```log
Running with gitlab-runner 10.3.0 (5cf5e19a)
  on gitlab-gitlab-runner-875586966-94clb (d2450449)
Using Kubernetes namespace: default
Using Kubernetes executor with image vscoder/helm:v3.0.2 ...
Waiting for pod default/runner-d2450449-project-1-concurrent-0gjfkz to be running, status is Pending
Waiting for pod default/runner-d2450449-project-1-concurrent-0gjfkz to be running, status is Pending
Waiting for pod default/runner-d2450449-project-1-concurrent-0gjfkz to be running, status is Pending
Waiting for pod default/runner-d2450449-project-1-concurrent-0gjfkz to be running, status is Pending
Waiting for pod default/runner-d2450449-project-1-concurrent-0gjfkz to be running, status is Pending
Waiting for pod default/runner-d2450449-project-1-concurrent-0gjfkz to be running, status is Pending
Waiting for pod default/runner-d2450449-project-1-concurrent-0gjfkz to be running, status is Pending
Waiting for pod default/runner-d2450449-project-1-concurrent-0gjfkz to be running, status is Pending
Waiting for pod default/runner-d2450449-project-1-concurrent-0gjfkz to be running, status is Pending
... # и в конце
ERROR: Job failed (system failure): timedout waiting for pod to start
```

Проверил на какой ноде запускался под: `kubectl get pods` `kubectl describe pod runner-d2450449-project-1-concurrent-0gjfkz`

_gke-reddit-public-main-pool-a1c843ac-kj9h_

Повторный запуск прошёл успешно.

Закоммитил в новый бренч: снова та же проблема. Нода `gke-reddit-public-main-pool-a1c843ac-td4d/`
 
Ещё и раннер упал
```shell
kubectl get pods                                                
```
```log
NAME                                          READY   STATUS    RESTARTS   AGE
gitlab-gitlab-766445f7d7-72cl4                1/1     Running   0          23h
gitlab-gitlab-postgresql-66d5b899b8-grfbz     1/1     Running   0          23h
gitlab-gitlab-redis-6c675dd568-b5svr          1/1     Running   0          23h
gitlab-gitlab-runner-875586966-94clb          0/1     Running   0          24m
runner-d2450449-project-1-concurrent-0hp6m7   0/3     Pending   0          2m41s
```
```shell
kubectl describe pod gitlab-gitlab-runner-875586966-94clb
```
```log
Name:           gitlab-gitlab-runner-875586966-94clb
Namespace:      default
Priority:       0
Node:           gke-reddit-public-main-pool-a1c843ac-td4d/10.3.0.12
Start Time:     Wed, 15 Jan 2020 22:27:06 +0300
Labels:         app=gitlab-gitlab-runner
                pod-template-hash=875586966
Annotations:    checksum/configmap: 9881f87576bd484ffb2801f6abf1b90cd637d2a61c44e01b5fbc639d206ddfac
                checksum/secrets: 2bb41baa011e9685826ef270dc14a2c5d51f791686bd9196c26b3df16da95a6f
                cni.projectcalico.org/podIP: 10.4.2.17/32
                kubernetes.io/limit-ranger: LimitRanger plugin set: cpu request for container gitlab-gitlab-runner
Status:         Running
IP:             10.4.2.17
IPs:            <none>
Controlled By:  ReplicaSet/gitlab-gitlab-runner-875586966
Containers:
  gitlab-gitlab-runner:
    Container ID:  docker://26cf3fe8bfdecc0cfa7d87127c0ce98a8ee43491244d990b35b25678239dd868
    Image:         gitlab/gitlab-runner:alpine-v10.3.0
    Image ID:      docker-pullable://gitlab/gitlab-runner@sha256:9b1e53a91fc8914c934b9eacf93365c7af97d97514c71b1825f677c8ee2a2369
    Port:          <none>
    Host Port:     <none>
    Command:
      /bin/bash
      /scripts/entrypoint
    State:          Running
      Started:      Wed, 15 Jan 2020 22:28:52 +0300
    Ready:          False
    Restart Count:  0
    Requests:
      cpu:      100m
    Liveness:   exec [/usr/bin/pgrep gitlab.*runner] delay=60s timeout=1s period=10s #success=1 #failure=3
    Readiness:  exec [/usr/bin/pgrep gitlab.*runner] delay=10s timeout=1s period=10s #success=1 #failure=3
    Environment:
      CI_SERVER_URL:                      http://gitlab-gitlab.default:8005/
      CI_SERVER_TOKEN:                    <set to the key 'runner-token' in secret 'gitlab-gitlab-runner'>               Optional: false
      REGISTRATION_TOKEN:                 <set to the key 'runner-registration-token' in secret 'gitlab-gitlab-runner'>  Optional: false
      KUBERNETES_IMAGE:                   ubuntu:16.04
      KUBERNETES_PRIVILEGED:              true
      KUBERNETES_NAMESPACE:               default
      KUBERNETES_CPU_LIMIT:               
      KUBERNETES_MEMORY_LIMIT:            
      KUBERNETES_CPU_REQUEST:             
      KUBERNETES_MEMORY_REQUEST:          
      KUBERNETES_SERVICE_CPU_LIMIT:       
      KUBERNETES_SERVICE_MEMORY_LIMIT:    
      KUBERNETES_SERVICE_CPU_REQUEST:     
      KUBERNETES_SERVICE_MEMORY_REQUEST:  
      KUBERNETES_HELPERS_CPU_LIMIT:       
      KUBERNETES_HELPERS_MEMORY_LIMIT:    
      KUBERNETES_HELPERS_CPU_REQUEST:     
      KUBERNETES_HELPERS_MEMORY_REQUEST:  
    Mounts:
      /scripts from scripts (rw)
      /var/run/secrets/kubernetes.io/serviceaccount from default-token-l84tq (ro)
Conditions:
  Type              Status
  Initialized       True 
  Ready             False 
  ContainersReady   False 
  PodScheduled      True 
Volumes:
  var-run-docker-sock:
    Type:          HostPath (bare host directory volume)
    Path:          /var/run/docker.sock
    HostPathType:  
  scripts:
    Type:      ConfigMap (a volume populated by a ConfigMap)
    Name:      gitlab-gitlab-runner
    Optional:  false
  default-token-l84tq:
    Type:        Secret (a volume populated by a Secret)
    SecretName:  default-token-l84tq
    Optional:    false
QoS Class:       Burstable
Node-Selectors:  <none>
Tolerations:     node.kubernetes.io/not-ready:NoExecute for 300s
                 node.kubernetes.io/unreachable:NoExecute for 300s
Events:
  Type     Reason       Age    From                                                Message
  ----     ------       ----   ----                                                -------
  Normal   Scheduled    25m    default-scheduler                                   Successfully assigned default/gitlab-gitlab-runner-875586966-94clb to gke-reddit-public-main-pool-a1c843ac-td4d
  Normal   Pulling      25m    kubelet, gke-reddit-public-main-pool-a1c843ac-td4d  Pulling image "gitlab/gitlab-runner:alpine-v10.3.0"
  Normal   Pulled       23m    kubelet, gke-reddit-public-main-pool-a1c843ac-td4d  Successfully pulled image "gitlab/gitlab-runner:alpine-v10.3.0"
  Normal   Created      23m    kubelet, gke-reddit-public-main-pool-a1c843ac-td4d  Created container gitlab-gitlab-runner
  Normal   Started      23m    kubelet, gke-reddit-public-main-pool-a1c843ac-td4d  Started container gitlab-gitlab-runner
  Warning  FailedMount  8m56s  kubelet, gke-reddit-public-main-pool-a1c843ac-td4d  MountVolume.SetUp failed for volume "default-token-l84tq" : couldn't propagate object cache: timed out waiting for the condition
  Warning  FailedMount  8m56s  kubelet, gke-reddit-public-main-pool-a1c843ac-td4d  MountVolume.SetUp failed for volume "scripts" : couldn't propagate object cache: timed out waiting for the condition
  Warning  FailedMount  5m53s  kubelet, gke-reddit-public-main-pool-a1c843ac-td4d  MountVolume.SetUp failed for volume "scripts" : couldn't propagate object cache: timed out waiting for the condition
  Warning  FailedMount  5m53s  kubelet, gke-reddit-public-main-pool-a1c843ac-td4d  MountVolume.SetUp failed for volume "default-token-l84tq" : couldn't propagate object cache: timed out waiting for the condition
  ```

Странно. Повторный запуск задачи в пайплайне помог, но при этом гитлаб-раннер всё ещё "лежит"
```shell
kubectl get pods                                                
```
```log
NAME                                          READY   STATUS    RESTARTS   AGE
gitlab-gitlab-766445f7d7-72cl4                1/1     Running   0          23h
gitlab-gitlab-postgresql-66d5b899b8-grfbz     1/1     Running   0          23h
gitlab-gitlab-redis-6c675dd568-b5svr          1/1     Running   0          23h
gitlab-gitlab-runner-875586966-94clb          0/1     Running   0          29m
runner-d2450449-project-1-concurrent-0bkvlp   3/3     Running   0          52s
```

Спустя какое-то время запустился другой раннер
```log
kubectl get pods
NAME                                          READY   STATUS    RESTARTS   AGE
gitlab-gitlab-766445f7d7-72cl4                1/1     Running   0          23h
gitlab-gitlab-postgresql-66d5b899b8-grfbz     1/1     Running   0          23h
gitlab-gitlab-redis-6c675dd568-b5svr          1/1     Running   0          23h
gitlab-gitlab-runner-875586966-94clb          0/1     Unknown   0          36m
gitlab-gitlab-runner-875586966-qktll          1/1     Running   0          5m24s
runner-d2450449-project-1-concurrent-0bkvlp   3/3     Running   0          7m43s
```

А вот наша сборка уже достаточно долго висит на
```log
...
(14/17) Installing gcc (5.3.0-r0)
(15/17) Installing musl-dev (1.1.14-r16)
(16/17) Installing .build-deps (0)
(17/17) Upgrading musl-utils (1.1.14-r14 -> 1.1.14-r16)
Executing busybox-1.24.2-r13.trigger
OK: 117 MiB in 48 packages
Collecting prometheus_client==0.0.21 (from -r /app/requirements.txt (line 1))
  Downloading https://files.pythonhosted.org/packages/45/6d/0cc171ce82a8f284133faf12a50018501abdc4b0742e4f8f471b6b2dc81f/prometheus_client-0.0.21.tar.gz
```

Перезапущу ка я пайплайн руками ^_^. Посмотрим на результат))

Пока дело движется....

Все стадии, включая review, прошли успешно! Окружение доступно http://vscoder-post-feature-10/

А вот удаление релиза не работает((
```log
Running with gitlab-runner 10.3.0 (5cf5e19a)
  on gitlab-gitlab-runner-875586966-qktll (d0b36d07)
Using Kubernetes namespace: default
Using Kubernetes executor with image vscoder/helm:v3.0.2 ...
Waiting for pod default/runner-d0b36d07-project-1-concurrent-086wv8 to be running, status is Pending
Running on runner-d0b36d07-project-1-concurrent-086wv8 via gitlab-gitlab-runner-875586966-qktll...
Skipping Git repository setup
Skippping Git checkout
Skipping Git submodules setup
$ helm version --client
version.BuildInfo{Version:"v3.0.2", GitCommit:"19e47ee3283ae98139d98460de796c1be1e3975f", GitTreeState:"clean", GoVersion:"go1.13.5"}
$ kubectl version --client
Client Version: version.Info{Major:"1", Minor:"17", GitVersion:"v1.17.1", GitCommit:"d224476cd0730baca2b6e357d144171ed74192d6", GitTreeState:"clean", BuildDate:"2020-01-14T21:04:32Z", GoVersion:"go1.13.5", Compiler:"gc", Platform:"linux/amd64"}
$ helm delete "$name"
Error: uninstall: Release not loaded: review-vscoder-po-zthnmc: release: not found
ERROR: Job failed: error executing remote command: command terminated with non-zero exit code: Error executing in Docker Container: 1
```

Вопрос: где helm3 хранит список релизов? В локальной директории? Получает из кубика?

Но вот ещё одна странность: в который раз пересоздаётся нода
```shell
kubectl get nodes
```
```log
NAME                                          STATUS     ROLES    AGE     VERSION
gke-reddit-public-gitlab-pool-3b2988e5-mx8f   Ready      <none>   3h16m   v1.15.7-gke.2
gke-reddit-public-main-pool-a1c843ac-kj9h     Ready      <none>   24m     v1.15.7-gke.2
gke-reddit-public-main-pool-a1c843ac-td4d     NotReady   <none>   11m     v1.15.7-gke.2
```
```shell
kubectl describe node gke-reddit-public-main-pool-a1c843ac-td4d
Name:               gke-reddit-public-main-pool-a1c843ac-td4d
Roles:              <none>
Labels:             all-pools-example=true
                    beta.kubernetes.io/arch=amd64
                    beta.kubernetes.io/fluentd-ds-ready=true
                    beta.kubernetes.io/instance-type=g1-small
                    beta.kubernetes.io/masq-agent-ds-ready=true
                    beta.kubernetes.io/os=linux
                    cloud.google.com/gke-nodepool=main-pool
                    cloud.google.com/gke-os-distribution=cos
                    failure-domain.beta.kubernetes.io/region=us-central1
                    failure-domain.beta.kubernetes.io/zone=us-central1-a
                    kubernetes.io/arch=amd64
                    kubernetes.io/hostname=gke-reddit-public-main-pool-a1c843ac-td4d
                    kubernetes.io/os=linux
                    node.kubernetes.io/masq-agent-ds-ready=true
                    projectcalico.org/ds-ready=true
Annotations:        container.googleapis.com/instance_id: 5153271999223746451
                    node.alpha.kubernetes.io/ttl: 0
                    projectcalico.org/IPv4IPIPTunnelAddr: 10.4.2.1
                    volumes.kubernetes.io/controller-managed-attach-detach: true
CreationTimestamp:  Wed, 15 Jan 2020 23:10:18 +0300
Taints:             ToBeDeletedByClusterAutoscaler=1579119624:NoSchedule
                    node.kubernetes.io/unreachable:NoSchedule
                    DeletionCandidateOfClusterAutoscaler=1579119021:PreferNoSchedule
Unschedulable:      false
Lease:
  HolderIdentity:  gke-reddit-public-main-pool-a1c843ac-td4d
  AcquireTime:     <unset>
  RenewTime:       Wed, 15 Jan 2020 23:20:29 +0300
Conditions:
  Type                          Status    LastHeartbeatTime                 LastTransitionTime                Reason                          Message
  ----                          ------    -----------------                 ------------------                ------                          -------
  CorruptDockerOverlay2         False     Wed, 15 Jan 2020 23:20:25 +0300   Wed, 15 Jan 2020 23:10:18 +0300   NoCorruptDockerOverlay2         docker overlay2 is functioning properly
  FrequentUnregisterNetDevice   False     Wed, 15 Jan 2020 23:20:25 +0300   Wed, 15 Jan 2020 23:10:18 +0300   NoFrequentUnregisterNetDevice   node is functioning properly
  FrequentKubeletRestart        False     Wed, 15 Jan 2020 23:20:25 +0300   Wed, 15 Jan 2020 23:10:18 +0300   NoFrequentKubeletRestart        kubelet is functioning properly
  FrequentDockerRestart         False     Wed, 15 Jan 2020 23:20:25 +0300   Wed, 15 Jan 2020 23:10:18 +0300   NoFrequentDockerRestart         docker is functioning properly
  FrequentContainerdRestart     False     Wed, 15 Jan 2020 23:20:25 +0300   Wed, 15 Jan 2020 23:10:18 +0300   NoFrequentContainerdRestart     containerd is functioning properly
  KernelDeadlock                False     Wed, 15 Jan 2020 23:20:25 +0300   Wed, 15 Jan 2020 23:10:18 +0300   KernelHasNoDeadlock             kernel has no deadlock
  ReadonlyFilesystem            False     Wed, 15 Jan 2020 23:20:25 +0300   Wed, 15 Jan 2020 23:10:18 +0300   FilesystemIsNotReadOnly         Filesystem is not read-only
  NetworkUnavailable            False     Wed, 15 Jan 2020 23:10:19 +0300   Wed, 15 Jan 2020 23:10:19 +0300   RouteCreated                    NodeController create implicit route
  MemoryPressure                Unknown   Wed, 15 Jan 2020 23:20:21 +0300   Wed, 15 Jan 2020 23:21:13 +0300   NodeStatusUnknown               Kubelet stopped posting node status.
  DiskPressure                  Unknown   Wed, 15 Jan 2020 23:20:21 +0300   Wed, 15 Jan 2020 23:21:13 +0300   NodeStatusUnknown               Kubelet stopped posting node status.
  PIDPressure                   Unknown   Wed, 15 Jan 2020 23:20:21 +0300   Wed, 15 Jan 2020 23:21:13 +0300   NodeStatusUnknown               Kubelet stopped posting node status.
  Ready                         Unknown   Wed, 15 Jan 2020 23:20:21 +0300   Wed, 15 Jan 2020 23:21:13 +0300   NodeStatusUnknown               Kubelet stopped posting node status.
Addresses:
  InternalIP:   10.3.0.16
  ExternalIP:   35.202.167.185
  InternalDNS:  gke-reddit-public-main-pool-a1c843ac-td4d.us-central1-a.c.docker-257914.internal
  Hostname:     gke-reddit-public-main-pool-a1c843ac-td4d.us-central1-a.c.docker-257914.internal
Capacity:
  attachable-volumes-gce-pd:  15
  cpu:                        1
  ephemeral-storage:          26615568Ki
  hugepages-2Mi:              0
  memory:                     1732780Ki
  pods:                       110
Allocatable:
  attachable-volumes-gce-pd:  15
  cpu:                        940m
  ephemeral-storage:          8422780069
  hugepages-2Mi:              0
  memory:                     1184940Ki
  pods:                       110
System Info:
  Machine ID:                 f417f94ad5bed3d2924f39b8bb9a7c07
  System UUID:                f417f94a-d5be-d3d2-924f-39b8bb9a7c07
  Boot ID:                    c05f745c-8ec0-4ede-b5a9-71beabe87aa5
  Kernel Version:             4.19.76+
  OS Image:                   Container-Optimized OS from Google
  Operating System:           linux
  Architecture:               amd64
  Container Runtime Version:  docker://19.3.1
  Kubelet Version:            v1.15.7-gke.2
  Kube-Proxy Version:         v1.15.7-gke.2
PodCIDR:                      10.4.2.0/24
ProviderID:                   gce://docker-257914/us-central1-a/gke-reddit-public-main-pool-a1c843ac-td4d
Non-terminated Pods:          (6 in total)
  Namespace                   Name                                                    CPU Requests  CPU Limits  Memory Requests  Memory Limits  AGE
  ---------                   ----                                                    ------------  ----------  ---------------  -------------  ---
  kube-system                 calico-node-x7vv5                                       100m (10%)    0 (0%)      0 (0%)           0 (0%)         11m
  kube-system                 fluentd-gcp-v3.1.1-fkn56                                100m (10%)    1 (106%)    200Mi (17%)      500Mi (43%)    11m
  kube-system                 ip-masq-agent-85596                                     10m (1%)      0 (0%)      16Mi (1%)        0 (0%)         11m
  kube-system                 kube-proxy-gke-reddit-public-main-pool-a1c843ac-td4d    100m (10%)    0 (0%)      0 (0%)           0 (0%)         11m
  kube-system                 prometheus-to-sd-4ndfz                                  1m (0%)       3m (0%)     20Mi (1%)        20Mi (1%)      11m
  nginx-ingress               nginx-46fr5                                             0 (0%)        0 (0%)      0 (0%)           0 (0%)         11m
Allocated resources:
  (Total limits may be over 100 percent, i.e., overcommitted.)
  Resource                   Requests     Limits
  --------                   --------     ------
  cpu                        311m (33%)   1003m (106%)
  memory                     236Mi (20%)  520Mi (44%)
  ephemeral-storage          0 (0%)       0 (0%)
  attachable-volumes-gce-pd  0            0
Events:
  Type    Reason                         Age                From                                                        Message
  ----    ------                         ----               ----                                                        -------
  Normal  Starting                       47m                kubelet, gke-reddit-public-main-pool-a1c843ac-td4d          Starting kubelet.
  Normal  NodeHasSufficientMemory        47m (x2 over 47m)  kubelet, gke-reddit-public-main-pool-a1c843ac-td4d          Node gke-reddit-public-main-pool-a1c843ac-td4d status is now: NodeHasSufficientMemory
  Normal  NodeHasNoDiskPressure          47m (x2 over 47m)  kubelet, gke-reddit-public-main-pool-a1c843ac-td4d          Node gke-reddit-public-main-pool-a1c843ac-td4d status is now: NodeHasNoDiskPressure
  Normal  NodeHasSufficientPID           47m (x2 over 47m)  kubelet, gke-reddit-public-main-pool-a1c843ac-td4d          Node gke-reddit-public-main-pool-a1c843ac-td4d status is now: NodeHasSufficientPID
  Normal  NodeNotReady                   47m                kubelet, gke-reddit-public-main-pool-a1c843ac-td4d          Node gke-reddit-public-main-pool-a1c843ac-td4d status is now: NodeNotReady
  Normal  NodeReady                      47m                kubelet, gke-reddit-public-main-pool-a1c843ac-td4d          Node gke-reddit-public-main-pool-a1c843ac-td4d status is now: NodeReady
  Normal  NodeAllocatableEnforced        47m                kubelet, gke-reddit-public-main-pool-a1c843ac-td4d          Updated Node Allocatable limit across pods
  Normal  Starting                       44m                kubelet, gke-reddit-public-main-pool-a1c843ac-td4d          Starting kubelet.
  Normal  NodeNotReady                   44m                kubelet, gke-reddit-public-main-pool-a1c843ac-td4d          Node gke-reddit-public-main-pool-a1c843ac-td4d status is now: NodeNotReady
  Normal  NodeHasSufficientMemory        44m (x2 over 44m)  kubelet, gke-reddit-public-main-pool-a1c843ac-td4d          Node gke-reddit-public-main-pool-a1c843ac-td4d status is now: NodeHasSufficientMemory
  Normal  NodeHasNoDiskPressure          44m (x2 over 44m)  kubelet, gke-reddit-public-main-pool-a1c843ac-td4d          Node gke-reddit-public-main-pool-a1c843ac-td4d status is now: NodeHasNoDiskPressure
  Normal  NodeHasSufficientPID           44m (x2 over 44m)  kubelet, gke-reddit-public-main-pool-a1c843ac-td4d          Node gke-reddit-public-main-pool-a1c843ac-td4d status is now: NodeHasSufficientPID
  Normal  NodeAllocatableEnforced        44m                kubelet, gke-reddit-public-main-pool-a1c843ac-td4d          Updated Node Allocatable limit across pods
  Normal  NodeReady                      44m                kubelet, gke-reddit-public-main-pool-a1c843ac-td4d          Node gke-reddit-public-main-pool-a1c843ac-td4d status is now: NodeReady
  Normal  Starting                       43m                kubelet, gke-reddit-public-main-pool-a1c843ac-td4d          Starting kubelet.
  Normal  NodeHasSufficientMemory        43m (x2 over 43m)  kubelet, gke-reddit-public-main-pool-a1c843ac-td4d          Node gke-reddit-public-main-pool-a1c843ac-td4d status is now: NodeHasSufficientMemory
  Normal  NodeHasNoDiskPressure          43m (x2 over 43m)  kubelet, gke-reddit-public-main-pool-a1c843ac-td4d          Node gke-reddit-public-main-pool-a1c843ac-td4d status is now: NodeHasNoDiskPressure
  Normal  NodeHasSufficientPID           43m (x2 over 43m)  kubelet, gke-reddit-public-main-pool-a1c843ac-td4d          Node gke-reddit-public-main-pool-a1c843ac-td4d status is now: NodeHasSufficientPID
  Normal  NodeNotReady                   43m                kubelet, gke-reddit-public-main-pool-a1c843ac-td4d          Node gke-reddit-public-main-pool-a1c843ac-td4d status is now: NodeNotReady
  Normal  NodeAllocatableEnforced        43m                kubelet, gke-reddit-public-main-pool-a1c843ac-td4d          Updated Node Allocatable limit across pods
  Normal  NodeReady                      43m                kubelet, gke-reddit-public-main-pool-a1c843ac-td4d          Node gke-reddit-public-main-pool-a1c843ac-td4d status is now: NodeReady
  Normal  Starting                       41m                kubelet, gke-reddit-public-main-pool-a1c843ac-td4d          Starting kubelet.
  Normal  NodeHasSufficientMemory        41m (x2 over 41m)  kubelet, gke-reddit-public-main-pool-a1c843ac-td4d          Node gke-reddit-public-main-pool-a1c843ac-td4d status is now: NodeHasSufficientMemory
  Normal  NodeHasNoDiskPressure          41m (x2 over 41m)  kubelet, gke-reddit-public-main-pool-a1c843ac-td4d          Node gke-reddit-public-main-pool-a1c843ac-td4d status is now: NodeHasNoDiskPressure
  Normal  NodeHasSufficientPID           41m (x2 over 41m)  kubelet, gke-reddit-public-main-pool-a1c843ac-td4d          Node gke-reddit-public-main-pool-a1c843ac-td4d status is now: NodeHasSufficientPID
  Normal  NodeAllocatableEnforced        41m                kubelet, gke-reddit-public-main-pool-a1c843ac-td4d          Updated Node Allocatable limit across pods
  Normal  NodeNotReady                   40m (x2 over 41m)  kubelet, gke-reddit-public-main-pool-a1c843ac-td4d          Node gke-reddit-public-main-pool-a1c843ac-td4d status is now: NodeNotReady
  Normal  NodeReady                      40m (x2 over 41m)  kubelet, gke-reddit-public-main-pool-a1c843ac-td4d          Node gke-reddit-public-main-pool-a1c843ac-td4d status is now: NodeReady
  Normal  Starting                       38m                kubelet, gke-reddit-public-main-pool-a1c843ac-td4d          Starting kubelet.
  Normal  NodeHasSufficientMemory        38m (x2 over 38m)  kubelet, gke-reddit-public-main-pool-a1c843ac-td4d          Node gke-reddit-public-main-pool-a1c843ac-td4d status is now: NodeHasSufficientMemory
  Normal  NodeNotReady                   38m                kubelet, gke-reddit-public-main-pool-a1c843ac-td4d          Node gke-reddit-public-main-pool-a1c843ac-td4d status is now: NodeNotReady
  Normal  NodeHasSufficientPID           38m (x2 over 38m)  kubelet, gke-reddit-public-main-pool-a1c843ac-td4d          Node gke-reddit-public-main-pool-a1c843ac-td4d status is now: NodeHasSufficientPID
  Normal  NodeHasNoDiskPressure          38m (x2 over 38m)  kubelet, gke-reddit-public-main-pool-a1c843ac-td4d          Node gke-reddit-public-main-pool-a1c843ac-td4d status is now: NodeHasNoDiskPressure
  Normal  NodeAllocatableEnforced        38m                kubelet, gke-reddit-public-main-pool-a1c843ac-td4d          Updated Node Allocatable limit across pods
  Normal  NodeReady                      38m                kubelet, gke-reddit-public-main-pool-a1c843ac-td4d          Node gke-reddit-public-main-pool-a1c843ac-td4d status is now: NodeReady
  Normal  Starting                       36m                kubelet, gke-reddit-public-main-pool-a1c843ac-td4d          Starting kubelet.
  Normal  NodeHasSufficientMemory        36m (x2 over 36m)  kubelet, gke-reddit-public-main-pool-a1c843ac-td4d          Node gke-reddit-public-main-pool-a1c843ac-td4d status is now: NodeHasSufficientMemory
  Normal  NodeHasNoDiskPressure          36m (x2 over 36m)  kubelet, gke-reddit-public-main-pool-a1c843ac-td4d          Node gke-reddit-public-main-pool-a1c843ac-td4d status is now: NodeHasNoDiskPressure
  Normal  NodeHasSufficientPID           36m (x2 over 36m)  kubelet, gke-reddit-public-main-pool-a1c843ac-td4d          Node gke-reddit-public-main-pool-a1c843ac-td4d status is now: NodeHasSufficientPID
  Normal  NodeNotReady                   36m                kubelet, gke-reddit-public-main-pool-a1c843ac-td4d          Node gke-reddit-public-main-pool-a1c843ac-td4d status is now: NodeNotReady
  Normal  NodeReady                      36m                kubelet, gke-reddit-public-main-pool-a1c843ac-td4d          Node gke-reddit-public-main-pool-a1c843ac-td4d status is now: NodeReady
  Normal  NodeAllocatableEnforced        36m                kubelet, gke-reddit-public-main-pool-a1c843ac-td4d          Updated Node Allocatable limit across pods
  Normal  Starting                       35m                kubelet, gke-reddit-public-main-pool-a1c843ac-td4d          Starting kubelet.
  Normal  NodeHasSufficientMemory        35m (x2 over 35m)  kubelet, gke-reddit-public-main-pool-a1c843ac-td4d          Node gke-reddit-public-main-pool-a1c843ac-td4d status is now: NodeHasSufficientMemory
  Normal  NodeHasNoDiskPressure          35m (x2 over 35m)  kubelet, gke-reddit-public-main-pool-a1c843ac-td4d          Node gke-reddit-public-main-pool-a1c843ac-td4d status is now: NodeHasNoDiskPressure
  Normal  NodeHasSufficientPID           35m (x2 over 35m)  kubelet, gke-reddit-public-main-pool-a1c843ac-td4d          Node gke-reddit-public-main-pool-a1c843ac-td4d status is now: NodeHasSufficientPID
  Normal  NodeNotReady                   35m                kubelet, gke-reddit-public-main-pool-a1c843ac-td4d          Node gke-reddit-public-main-pool-a1c843ac-td4d status is now: NodeNotReady
  Normal  NodeAllocatableEnforced        35m                kubelet, gke-reddit-public-main-pool-a1c843ac-td4d          Updated Node Allocatable limit across pods
  Normal  NodeReady                      35m                kubelet, gke-reddit-public-main-pool-a1c843ac-td4d          Node gke-reddit-public-main-pool-a1c843ac-td4d status is now: NodeReady
  Normal  Starting                       33m                kubelet, gke-reddit-public-main-pool-a1c843ac-td4d          Starting kubelet.
  Normal  NodeNotReady                   33m                kubelet, gke-reddit-public-main-pool-a1c843ac-td4d          Node gke-reddit-public-main-pool-a1c843ac-td4d status is now: NodeNotReady
  Normal  NodeHasSufficientMemory        33m (x2 over 33m)  kubelet, gke-reddit-public-main-pool-a1c843ac-td4d          Node gke-reddit-public-main-pool-a1c843ac-td4d status is now: NodeHasSufficientMemory
  Normal  NodeHasNoDiskPressure          33m (x2 over 33m)  kubelet, gke-reddit-public-main-pool-a1c843ac-td4d          Node gke-reddit-public-main-pool-a1c843ac-td4d status is now: NodeHasNoDiskPressure
  Normal  NodeHasSufficientPID           33m (x2 over 33m)  kubelet, gke-reddit-public-main-pool-a1c843ac-td4d          Node gke-reddit-public-main-pool-a1c843ac-td4d status is now: NodeHasSufficientPID
  Normal  NodeReady                      33m                kubelet, gke-reddit-public-main-pool-a1c843ac-td4d          Node gke-reddit-public-main-pool-a1c843ac-td4d status is now: NodeReady
  Normal  NodeAllocatableEnforced        33m                kubelet, gke-reddit-public-main-pool-a1c843ac-td4d          Updated Node Allocatable limit across pods
  Normal  Starting                       32m                kubelet, gke-reddit-public-main-pool-a1c843ac-td4d          Starting kubelet.
  Normal  NodeHasSufficientPID           32m (x2 over 32m)  kubelet, gke-reddit-public-main-pool-a1c843ac-td4d          Node gke-reddit-public-main-pool-a1c843ac-td4d status is now: NodeHasSufficientPID
  Normal  NodeHasSufficientMemory        32m (x2 over 32m)  kubelet, gke-reddit-public-main-pool-a1c843ac-td4d          Node gke-reddit-public-main-pool-a1c843ac-td4d status is now: NodeHasSufficientMemory
  Normal  NodeNotReady                   32m                kubelet, gke-reddit-public-main-pool-a1c843ac-td4d          Node gke-reddit-public-main-pool-a1c843ac-td4d status is now: NodeNotReady
  Normal  NodeHasNoDiskPressure          32m (x2 over 32m)  kubelet, gke-reddit-public-main-pool-a1c843ac-td4d          Node gke-reddit-public-main-pool-a1c843ac-td4d status is now: NodeHasNoDiskPressure
  Normal  NodeAllocatableEnforced        32m                kubelet, gke-reddit-public-main-pool-a1c843ac-td4d          Updated Node Allocatable limit across pods
  Normal  NodeReady                      31m                kubelet, gke-reddit-public-main-pool-a1c843ac-td4d          Node gke-reddit-public-main-pool-a1c843ac-td4d status is now: NodeReady
  Normal  NoFrequentKubeletRestart       30m                systemd-monitor, gke-reddit-public-main-pool-a1c843ac-td4d  Node condition FrequentKubeletRestart is now: Unknown, reason: NoFrequentKubeletRestart
  Normal  NoFrequentUnregisterNetDevice  30m                kernel-monitor, gke-reddit-public-main-pool-a1c843ac-td4d   Node condition FrequentUnregisterNetDevice is now: Unknown, reason: NoFrequentUnregisterNetDevice
  Normal  Starting                       28m                kubelet, gke-reddit-public-main-pool-a1c843ac-td4d          Starting kubelet.
  Normal  NodeNotReady                   28m                kubelet, gke-reddit-public-main-pool-a1c843ac-td4d          Node gke-reddit-public-main-pool-a1c843ac-td4d status is now: NodeNotReady
  Normal  NodeHasSufficientMemory        28m (x2 over 28m)  kubelet, gke-reddit-public-main-pool-a1c843ac-td4d          Node gke-reddit-public-main-pool-a1c843ac-td4d status is now: NodeHasSufficientMemory
  Normal  NodeHasNoDiskPressure          28m (x2 over 28m)  kubelet, gke-reddit-public-main-pool-a1c843ac-td4d          Node gke-reddit-public-main-pool-a1c843ac-td4d status is now: NodeHasNoDiskPressure
  Normal  NodeHasSufficientPID           28m (x2 over 28m)  kubelet, gke-reddit-public-main-pool-a1c843ac-td4d          Node gke-reddit-public-main-pool-a1c843ac-td4d status is now: NodeHasSufficientPID
  Normal  NodeAllocatableEnforced        28m                kubelet, gke-reddit-public-main-pool-a1c843ac-td4d          Updated Node Allocatable limit across pods
  Normal  NodeReady                      28m                kubelet, gke-reddit-public-main-pool-a1c843ac-td4d          Node gke-reddit-public-main-pool-a1c843ac-td4d status is now: NodeReady
  Normal  NoFrequentUnregisterNetDevice  25m                kernel-monitor, gke-reddit-public-main-pool-a1c843ac-td4d   Node condition FrequentUnregisterNetDevice is now: False, reason: NoFrequentUnregisterNetDevice
  Normal  FrequentKubeletRestart         25m (x2 over 36m)  systemd-monitor, gke-reddit-public-main-pool-a1c843ac-td4d  Node condition FrequentKubeletRestart is now: True, reason: FrequentKubeletRestart
  Normal  Starting                       11m                kubelet, gke-reddit-public-main-pool-a1c843ac-td4d          Starting kubelet.
  Normal  NodeAllocatableEnforced        11m                kubelet, gke-reddit-public-main-pool-a1c843ac-td4d          Updated Node Allocatable limit across pods
  Normal  NodeHasNoDiskPressure          11m (x7 over 11m)  kubelet, gke-reddit-public-main-pool-a1c843ac-td4d          Node gke-reddit-public-main-pool-a1c843ac-td4d status is now: NodeHasNoDiskPressure
  Normal  NodeHasSufficientMemory        11m (x8 over 11m)  kubelet, gke-reddit-public-main-pool-a1c843ac-td4d          Node gke-reddit-public-main-pool-a1c843ac-td4d status is now: NodeHasSufficientMemory
  Normal  NodeHasSufficientPID           11m (x8 over 11m)  kubelet, gke-reddit-public-main-pool-a1c843ac-td4d          Node gke-reddit-public-main-pool-a1c843ac-td4d status is now: NodeHasSufficientPID
  Normal  Starting                       11m                kube-proxy, gke-reddit-public-main-pool-a1c843ac-td4d       Starting kube-proxy.
```

В итоге GKE удалил ноду. Но, возможно, ему просто нужны ноды по-жирнее? ))

Заменим `g1-small` на `n1-standard-1` для node pool main

Сделал. Перезапустил пайплайн. А гитлаб стал `Evicted`
```shell
kubectl get pods 
```
```log
NAME                                          READY   STATUS    RESTARTS   AGE
gitlab-gitlab-766445f7d7-72cl4                0/1     Evicted   0          24h
gitlab-gitlab-766445f7d7-7p2gd                0/1     Running   0          57s
gitlab-gitlab-postgresql-66d5b899b8-grfbz     1/1     Running   0          24h
gitlab-gitlab-redis-6c675dd568-b5svr          1/1     Running   0          24h
gitlab-gitlab-runner-875586966-ljkcn          1/1     Running   0          13m
runner-34e3fb54-project-1-concurrent-09r8gd   3/3     Running   0          2m
runner-d2450449-project-1-concurrent-0bkvlp   3/3     Running   0          55m
```

Всю память скушал наш гитлаб...
```log
kubelet, gke-reddit-public-gitlab-pool-3b2988e5-mx8f  The node was low on resource: memory. Container gitlab was using 2703536Ki, which exceeds its request of 0.
```

А внось созданный под с гитлабом запустился только со второго раза.

В очередной раз пофиксил пайплайн
`post/.gitlab-ci.yml`
```yaml
---
image: vscoder/helm:v3.0.2

stages:
  - build
  - test
  - review
  - release
  - cleanup

build:
  stage: build
  only:
    - branches
  image: docker:git
  services:
    - docker:18.09.7-dind
  variables:
    DOCKER_DRIVER: overlay2
    CI_REGISTRY: "index.docker.io"
    CI_APPLICATION_REPOSITORY: $CI_REGISTRY/$CI_PROJECT_PATH
    CI_APPLICATION_TAG: $CI_COMMIT_REF_SLUG
    CI_CONTAINER_NAME: ci_job_build_${CI_JOB_ID}
  before_script:
    - >
      if ! docker info &>/dev/null; then
        if [ -z "$DOCKER_HOST" -a "$KUBERNETES_PORT" ]; then
          export DOCKER_HOST='tcp://localhost:2375'
        fi
      fi
  script:
    # Building
    - echo "Building Dockerfile-based application..."
    - echo `git show --format="%h" HEAD | head -1` > build_info.txt
    - echo `git rev-parse --abbrev-ref HEAD` >> build_info.txt
    - docker build -t "$CI_APPLICATION_REPOSITORY:$CI_APPLICATION_TAG" .
    - >
      if [[ -n "$CI_REGISTRY_USER" ]]; then
        echo "Logging to GitLab Container Registry with CI credentials...for build"
        docker login -u "$CI_REGISTRY_USER" -p "$CI_REGISTRY_PASSWORD"
      fi
    - echo "Pushing to GitLab Container Registry..."
    - docker push "$CI_APPLICATION_REPOSITORY:$CI_APPLICATION_TAG"

test:
  stage: test
  script:
    - exit 0
  only:
    - branches

release:
  stage: release
  image: docker
  services:
    - docker:18.09.7-dind
  variables:
    CI_REGISTRY: "index.docker.io"
    CI_APPLICATION_REPOSITORY: $CI_REGISTRY/$CI_PROJECT_PATH
    CI_APPLICATION_TAG: $CI_COMMIT_REF_SLUG
    CI_CONTAINER_NAME: ci_job_build_${CI_JOB_ID}
  before_script:
    - >
      if ! docker info &>/dev/null; then
        if [ -z "$DOCKER_HOST" -a "$KUBERNETES_PORT" ]; then
          export DOCKER_HOST='tcp://localhost:2375'
        fi
      fi
  script:
    # Releasing
    - echo "Updating docker images ..."
    - >
      if [[ -n "$CI_REGISTRY_USER" ]]; then
        echo "Logging to GitLab Container Registry with CI credentials for release..."
        docker login -u "$CI_REGISTRY_USER" -p "$CI_REGISTRY_PASSWORD"
      fi
    - docker pull "$CI_APPLICATION_REPOSITORY:$CI_APPLICATION_TAG"
    - docker tag "$CI_APPLICATION_REPOSITORY:$CI_APPLICATION_TAG" "$CI_APPLICATION_REPOSITORY:$(cat VERSION)"
    - docker push "$CI_APPLICATION_REPOSITORY:$(cat VERSION)"
    # latest is neede for feature flags
    - docker tag "$CI_APPLICATION_REPOSITORY:$CI_APPLICATION_TAG" "$CI_APPLICATION_REPOSITORY:latest"
    - docker push "$CI_APPLICATION_REPOSITORY:latest"
  only:
    - master

review:
  stage: review
  variables:
    KUBE_NAMESPACE: review
    host: $CI_PROJECT_PATH_SLUG-$CI_COMMIT_REF_SLUG
    CI_APPLICATION_TAG: $CI_COMMIT_REF_SLUG
    name: $CI_ENVIRONMENT_SLUG
  environment:
    name: review/$CI_PROJECT_PATH/$CI_COMMIT_REF_NAME
    url: http://$CI_PROJECT_PATH_SLUG-$CI_COMMIT_REF_SLUG
    on_stop: stop_review
  only:
    refs:
      - branches
    kubernetes: active
  except:
    - master
  before_script:
    # - helm init --client-only
    # - helm plugin install https://github.com/rimusz/helm-tiller
    - helm version --client
    - kubectl version --client
    # ensuring namespace
    - kubectl describe namespace "$KUBE_NAMESPACE" || kubectl create namespace "$KUBE_NAMESPACE"
  script:
    - export track="${1-stable}"
    - >
      if [[ "$track" != "stable" ]]; then
        name="$name-$track"
      fi
    - echo "Clone deploy repository..."
    - git clone http://gitlab-gitlab/$CI_PROJECT_NAMESPACE/reddit-deploy.git
    - echo "Download helm dependencies..."
    - helm dep update reddit-deploy/reddit
    - echo "Deploy helm release $name to $KUBE_NAMESPACE"
    - echo "Upgrading existing release..."
    - echo "helm upgrade --install --wait --set ui.ingress.host="$host" --set $CI_PROJECT_NAME.image.tag="$CI_APPLICATION_TAG" --namespace="$KUBE_NAMESPACE" --version="$CI_PIPELINE_ID-$CI_JOB_ID" "$name" reddit-deploy/reddit/"
    - >
      helm upgrade \
        "$name" \
        reddit-deploy/reddit/ \
        --install \
        --wait \
        --set ui.ingress.host="$host" \
        --set $CI_PROJECT_NAME.image.tag="$CI_APPLICATION_TAG" \
        --namespace="$KUBE_NAMESPACE" \
        --version="$CI_PIPELINE_ID-$CI_JOB_ID"

stop_review:
  stage: cleanup
  variables:
    KUBE_NAMESPACE: review  # Добавил для передачи в --namespace
    GIT_STRATEGY: none
    name: $CI_ENVIRONMENT_SLUG
  environment:
    name: review/$CI_PROJECT_PATH/$CI_COMMIT_REF_NAME
    action: stop
  when: manual
  allow_failure: true
  only:
    refs:
      - branches
    kubernetes: active
  except:
    - master
  before_script:
    # - helm init --client-only
    # - helm plugin install https://github.com/rimusz/helm-tiller
    - helm version --client
    - kubectl version --client
  script:
    - helm delete "$name" --namespace="$KUBE_NAMESPACE" # Добавил --namespace
```

И теперь все стадии, включая удаление окружения, прошли успешно! Доступность окружения так же была проверена.


##### reddit-deploy

Самостоятельно переделать пайплайн для reddit-deploy (`reddit-deploy/.gitlab-ci.yml`) аналогичным образом, избавившись от auto_devops.

**Старый** вариант
```yaml
---
image: alpine:latest

stages:
  - test
  - staging
  - production

test:
  stage: test
  script:
    - exit 0
  only:
    - triggers
    - branches

staging:
  stage: staging
  script:
    - install_dependencies
    - ensure_namespace
    - install_tiller
    - deploy
  variables:
    KUBE_NAMESPACE: staging
  environment:
    name: staging
    url: http://staging
  only:
    refs:
      - master
    kubernetes: active

production:
  stage: production
  script:
    - install_dependencies
    - ensure_namespace
    - install_tiller
    - deploy
  variables:
    KUBE_NAMESPACE: production
  environment:
    name: production
    url: http://production
  when: manual
  only:
    refs:
      - master
    kubernetes: active

.auto_devops: &auto_devops |
  # Auto DevOps variables and functions
  [[ "$TRACE" ]] && set -x
  export CI_REGISTRY="index.docker.io"
  export CI_APPLICATION_REPOSITORY=$CI_REGISTRY/$CI_PROJECT_PATH
  export CI_APPLICATION_TAG=$CI_COMMIT_REF_SLUG
  export CI_CONTAINER_NAME=ci_job_build_${CI_JOB_ID}
  export TILLER_NAMESPACE="kube-system"

  function deploy() {
    echo $KUBE_NAMESPACE
    track="${1-stable}"
    name="$CI_ENVIRONMENT_SLUG"
    helm dep build reddit

    # for microservice in $(helm dep ls | grep "file://" | awk '{print $1}') ; do
    #   SET_VERSION="$SET_VERSION \ --set $microservice.image.tag='$(curl http://gitlab-gitlab/$CI_PROJECT_NAMESPACE/ui/raw/master/VERSION)' "

    helm upgrade --install \
      --wait \
      --set ui.ingress.host="$host" \
      --set ui.image.tag="$(curl http://gitlab-gitlab/$CI_PROJECT_NAMESPACE/ui/raw/master/VERSION)" \
      --set post.image.tag="$(curl http://gitlab-gitlab/$CI_PROJECT_NAMESPACE/post/raw/master/VERSION)" \
      --set comment.image.tag="$(curl http://gitlab-gitlab/$CI_PROJECT_NAMESPACE/comment/raw/master/VERSION)" \
      --namespace="$KUBE_NAMESPACE" \
      --version="$CI_PIPELINE_ID-$CI_JOB_ID" \
      "$name" \
      reddit
  }

  function install_dependencies() {

    apk add -U openssl curl tar gzip bash ca-certificates git
    wget -q -O /etc/apk/keys/sgerrand.rsa.pub https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub
    wget https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.23-r3/glibc-2.23-r3.apk
    apk add glibc-2.23-r3.apk
    rm glibc-2.23-r3.apk

    curl https://kubernetes-helm.storage.googleapis.com/helm-v2.13.1-linux-amd64.tar.gz | tar zx

    mv linux-amd64/helm /usr/bin/
    helm version --client

    curl -L -o /usr/bin/kubectl https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl
    chmod +x /usr/bin/kubectl
    kubectl version --client
  }

  function ensure_namespace() {
    kubectl describe namespace "$KUBE_NAMESPACE" || kubectl create namespace "$KUBE_NAMESPACE"
  }

  function install_tiller() {
    echo "Checking Tiller..."
    helm init --upgrade
    kubectl rollout status -n "$TILLER_NAMESPACE" -w "deployment/tiller-deploy"
    if ! helm version --debug; then
      echo "Failed to init Tiller."
      return 1
    fi
    echo ""
  }

  function delete() {
    track="${1-stable}"
    name="$CI_ENVIRONMENT_SLUG"
    helm delete "$name" || true
  }

before_script:
  - *auto_devops
```

**Новый** вариант, изменённый в соответствии с заданием
```yaml
---
---
image: vscoder/helm:v3.0.2

stages:
  - test
  - staging
  - production

test:
  stage: test
  script:
    - exit 0
  only:
    - triggers
    - branches

staging:
  stage: staging
  variables:
    KUBE_NAMESPACE: staging
    name: $CI_ENVIRONMENT_SLUG
  before_script:
    - helm version --client
    - kubectl version --client
    - kubectl describe namespace "$KUBE_NAMESPACE" || kubectl create namespace "$KUBE_NAMESPACE"
  script:
    - echo KUBE_NAMESPACE=$KUBE_NAMESPACE
    - export track="${1-stable}"
    - echo "Download helm dependencies..."
    - helm dep update reddit
    - >
      # for microservice in $(helm dep ls | grep "file://" | awk '{print $1}') ; do
      #   SET_VERSION="$SET_VERSION \ --set $microservice.image.tag='$(curl http://gitlab-gitlab/$CI_PROJECT_NAMESPACE/ui/raw/master/VERSION)' "
    - >
      echo helm upgrade --install --wait --set ui.ingress.host="$host" --set ui.image.tag="$(curl http://gitlab-gitlab/$CI_PROJECT_NAMESPACE/ui/raw/master/VERSION)" --set post.image.tag="$(curl http://gitlab-gitlab/$CI_PROJECT_NAMESPACE/post/raw/master/VERSION)" --set comment.image.tag="$(curl http://gitlab-gitlab/$CI_PROJECT_NAMESPACE/comment/raw/master/VERSION)" --namespace="$KUBE_NAMESPACE" --version="$CI_PIPELINE_ID-$CI_JOB_ID" "$name" reddit
    - >
      helm upgrade --install \
        --wait \
        --set ui.ingress.host="$host" \
        --set ui.image.tag="$(curl http://gitlab-gitlab/$CI_PROJECT_NAMESPACE/ui/raw/master/VERSION)" \
        --set post.image.tag="$(curl http://gitlab-gitlab/$CI_PROJECT_NAMESPACE/post/raw/master/VERSION)" \
        --set comment.image.tag="$(curl http://gitlab-gitlab/$CI_PROJECT_NAMESPACE/comment/raw/master/VERSION)" \
        --namespace="$KUBE_NAMESPACE" \
        --version="$CI_PIPELINE_ID-$CI_JOB_ID" \
        "$name" \
        reddit
  environment:
    name: staging
    url: http://staging
  only:
    refs:
      - master
    kubernetes: active

production:
  stage: production
  variables:
    KUBE_NAMESPACE: production
    name: $CI_ENVIRONMENT_SLUG
  before_script:
    - helm version --client
    - kubectl version --client
    - kubectl describe namespace "$KUBE_NAMESPACE" || kubectl create namespace "$KUBE_NAMESPACE"
  script:
    - echo KUBE_NAMESPACE=$KUBE_NAMESPACE
    - export track="${1-stable}"
    - echo "Download helm dependencies..."
    - helm dep update reddit
    - >
      # for microservice in $(helm dep ls | grep "file://" | awk '{print $1}') ; do
      #   SET_VERSION="$SET_VERSION \ --set $microservice.image.tag='$(curl http://gitlab-gitlab/$CI_PROJECT_NAMESPACE/ui/raw/master/VERSION)' "
    - >
      echo helm upgrade --install --wait --set ui.ingress.host="$host" --set ui.image.tag="$(curl http://gitlab-gitlab/$CI_PROJECT_NAMESPACE/ui/raw/master/VERSION)" --set post.image.tag="$(curl http://gitlab-gitlab/$CI_PROJECT_NAMESPACE/post/raw/master/VERSION)" --set comment.image.tag="$(curl http://gitlab-gitlab/$CI_PROJECT_NAMESPACE/comment/raw/master/VERSION)" --namespace="$KUBE_NAMESPACE" --version="$CI_PIPELINE_ID-$CI_JOB_ID" "$name" reddit
    - >
      helm upgrade --install \
        --wait \
        --set ui.ingress.host="$host" \
        --set ui.image.tag="$(curl http://gitlab-gitlab/$CI_PROJECT_NAMESPACE/ui/raw/master/VERSION)" \
        --set post.image.tag="$(curl http://gitlab-gitlab/$CI_PROJECT_NAMESPACE/post/raw/master/VERSION)" \
        --set comment.image.tag="$(curl http://gitlab-gitlab/$CI_PROJECT_NAMESPACE/comment/raw/master/VERSION)" \
        --namespace="$KUBE_NAMESPACE" \
        --version="$CI_PIPELINE_ID-$CI_JOB_ID" \
        "$name" \
        reddit
  environment:
    name: production
    url: http://production
  when: manual
  only:
    refs:
      - master
    kubernetes: active
```

В процессе деплоя возникла ошибка о том что создаваемые ресурсы уже существуют (к сожалению, лог уже не получить).

Понадобилось удалить `staging` и `prodaction`, созданные ранее с использованием `helm-2.13.1`
```shell
helm-2.13.1 delete production --purge
helm-2.13.1 delete staging --purge
```
TODO: разобраться как перейти на helm3 без удаления `production` ^_^


Все стадии работают. Окружения создаются. Релизы деплоятся. Окружения работают.


### Задание со \*: Автоматический деплой production

Сейчас у нас выкатка на staging и production - по нажатию кнопки. Свяжите пайплайны сборки образов и пайплайн деплоя на staging и production так, чтобы после релиза образа из ветки мастер запускался деплой уже новой версии приложения на production

Как я понял из задания, нужно чтобы пайплайн `reddit-deploy/.gitlab-ci.yml` (включая джобу `production`) автоматически запускался при запуске джобы `reelease` в `*/.gitlab-ci.yml` любого из 3х сервисов (`ui`, `post` или `comment`)

На почитать: https://docs.gitlab.com/сe/ci/yaml/#trigger-premium

То есть это фича премиумного гитлаба. Но всё равно, внесём необходимые изменения.

В `reddit-deploy/.gitlab-ci.yml` джобе `production` заменяем `when: manual` на `when: on_success`

TODO: change app's pipelines

Второй вариант: https://docs.gitlab.com/ce/ci/triggers/

Протестируем на ui:

Смотрим ID проекта: _Settings_ -> _General_ -> _General project settings_ -> **Project ID** в нашем случае ***4***
![](kubernetes/img/screenshot-gitlab-projectid.png)

Добавим в конец секции `script` джобы `release` команду
```shell
- curl -v --request POST --form "token=$CI_JOB_TOKEN" --form ref=master http://gitlab-gitlab/api/v4/projects/4/trigger/pipeline
```

Ошибка:
```log
curl: (28) Failed to connect to gitlab-gitlab port 443: Operation timed out
```

Нашлась лишняя подсеть...
![](kubernetes/img/screenshot-vpc-subnetworks.png)

На обоих воркерах (их сейчас два), в качестве default gateway указан `10.3.0.1`, значит они оба в подсети `reddit-public-network-5opx-subnetwork-public`. Да, знаю, можно и по другому посмотретьопределить))

Возможно, подсеть `reddit-public-network-5opx-subnetwork-private` осталась от ранее созданного `private`-кластера... TODO: разобраться.

Но подсети здесь не при чём.

После приведения команды к следующему виду:
```shell
curl -v --request POST --form "token=$CI_JOB_TOKEN" --form ref=master http://gitlab-gitlab/api/v4/projects/4/trigger/pipeline
```
Получили ошибку
```log
curl -v --request POST --form "token=$CI_JOB_TOKEN" --form ref=master http://gitlab-gitlab/api/v4/projects/4/trigger/pipeline
*   Trying 10.4.2.243:80...
* TCP_NODELAY set
* Connected to gitlab-gitlab (10.4.2.243) port 80 (#0)
> POST /api/v4/projects/4/trigger/pipeline HTTP/1.1
> Host: gitlab-gitlab
> User-Agent: curl/7.67.0
> Accept: */*
> Content-Length: 258
> Content-Type: multipart/form-data; boundary=------------------------3bba22cfb87cb6b0
> 
} [258 bytes data]
* We are completely uploaded and fine
{"message":"404 Not Found"}* Mark bundle as not supporting multiuse
< HTTP/1.1 404 Not Found
< Cache-Control: no-cache
< Content-Length: 27
< Content-Type: application/json
< Date: Fri, 17 Jan 2020 19:57:05 GMT
< Vary: Origin
< X-Content-Type-Options: nosniff
< X-Frame-Options: SAMEORIGIN
< X-Request-Id: 182d383e-7ac9-40ae-a152-d10ce875856e
< X-Runtime: 0.029111
< 
{ [27 bytes data]
```

Опять же, В - внимательность: https://docs.gitlab.com/ce/ci/multi_project_pipelines.html

Это **Премиумная фича**, в бесплатной версии недоступна...
> Available in GitLab Premium, GitLab.com Silver, and higher tiers

Но в теории, должно работать))

Буду считать задание выполненым ^_^

Оставлю примет только для ui


### Завершение

Файлы `.gitlab-ci.yml`, полученные в ходе работы, поместите в папку с исходниками для каждой компоненты приложения.

Done. Placed in `./src/*/.gitlab-ci.yml`

Файл `.gitlab-ci.yml` для reddit-deploy поместите в `charts`.

Done. Placed in `kubernetes/Charts/.gitlab-ci.yml`

Все изменения, которые были внесены в Chart’ы - перенести в папку charts, созданную вначале.

Done. Placed in `kubernetes/Charts`

Папку `Gitlab_ci` - **не комитить**!

Удалил так же все директории `.git` из `./src/*/`

Проблема: директория `./src/post` в репозитории пустая
```shell
LANG=C git add src/post/.gitlab-ci.yml
```
```log
fatal: Pathspec 'src/post/.gitlab-ci.yml' is in submodule 'src/post'
```

Лекарство: https://stackoverflow.com/a/31270959/3488348
```shell
 git rm --cached src/post
 git add src/post
 ```

## HomeWork 23: Kubernetes. Мониторинг и логирование

### Подготовка

#### Настройка инфраструктуры

В `kubernetes/terraform/main.tf` отключены rbac, логгирование и мониторинг, а так же описано 2 node-pools
```conf
module "gke_cluster" {
  ...
  enable_legacy_abac = "true"  # отключен rbac
  logging_service = "none"  # отключено логгирование
  monitoring_service = "none"  # отключен мониторинг
}
resource "google_container_node_pool" "node_pool" {
  node_config {
    machine_type = "g1-small"  # тип инстанса для первого пула
    ...
  }
  autoscaling {
    min_node_count = "2"  # минимум 2 ноды
    max_node_count = "3"
  }
  ...
}
resource "google_container_node_pool" "elastic_node_pool" {
  initial_node_count = "1"  # количество нод, autoscaling не включен
  node_config {
    machine_type = "n1-standard-2"  # тип инстанса для второго пула
    labels = {
      elastichost = true  # добавляем лейбл
    }
    ...
  }
  ...
}
```

Инфраструктура применена
```shell
cd kubernetes/terraform
make init apply
```
и создана спустя примерно 15 минут

Зададим контекст для kubectl
```shell
gcloud container clusters get-credentials reddit-public --zone us-central1-a --project docker-257914
```
```log
Fetching cluster endpoint and auth data.
kubeconfig entry generated for reddit-public.
```

#### Установка nginx-ingress-controller

##### Путь ДЗ

Из Helm-чарта установим ingress-контроллер nginx
```shell
helm install stable/nginx-ingress --name nginx
```
но мы пойдём другим путём

##### Путь terraform

Создадим файл `kubernetes/terraform/nginx-ingress-controller.tf`
```conf
provider "helm" {
  kubernetes {
    host     = module.gke_cluster.endpoint

    client_certificate     = module.gke_cluster.client_certificate
    client_key             = module.gke_cluster.client_key
    cluster_ca_certificate = module.gke_cluster.cluster_ca_certificate
  }
}
data "helm_repository" "stable" {
  name = "stable"
  url  = "https://kubernetes-charts.storage.googleapis.com"
}
resource "helm_release" "nginx" {
  name  = "nginx"
  chart = "stable/nginx-ingress"
  repository = data.helm_repository.stable.metadata[0].name

  cleanup_on_fail = true
  wait = true
}
```

Найдите IP-адрес, выданный nginx’у
```shell
kubectl get svc
```
```log
NAME                                  TYPE           CLUSTER-IP   EXTERNAL-IP     PORT(S)                      AGE
kubernetes                            ClusterIP      10.4.0.1     <none>          443/TCP                      39m
nginx-nginx-ingress-controller        LoadBalancer   10.4.7.187   34.69.197.128   80:32087/TCP,443:30552/TCP   9m59s
nginx-nginx-ingress-default-backend   ClusterIP      10.4.5.206   <none>          80/TCP                       9m59s
```

Добавьте в `/etc/hosts`
```
34.69.197.128 reddit reddit-prometheus reddit-grafana reddit-non-prod production reddit-kibana staging prod
```

### План

- Развертывание Prometheus в k8s
- Настройка Prometheus и Grafana для сбора метрик
- Настройка EFK для сбора логов

### Мониторинг

#### Стек

В задании будем использовать уже знакомые нам инструменты:
- *prometheus* - сервер сбора метрик
- *grafana* - сервер визуализации метрик
- *alertmanager* - компонент prometheus для алертинга различные
- экспортеры для метрик prometheus

Prometheus отлично подходит для работы с контейнерами и динамичным размещением сервисов
Общая схема работы представлена на следующем слайде

#### Установим Prometheus

Prometheus будем ставить с помощью Helm чарта

Загрузим prometheus локально в `Charts` каталог
```shell
cd kubernetes/charts && helm fetch --untar stable/prometheus
```

Создайте внутри директории чарта файл `custom_values.yml`
```yaml
rbac:
  create: false

alertmanager:
  ## If false, alertmanager will not be installed
  ##
  enabled: false

  # Defines the serviceAccountName to use when `rbac.create=false`
  serviceAccountName: default

  ## alertmanager container name
  ##
  name: alertmanager

  ## alertmanager container image
  ##
  image:
    repository: prom/alertmanager
    tag: v0.10.0
    pullPolicy: IfNotPresent

  ## Additional alertmanager container arguments
  ##
  extraArgs: {}

  ## The URL prefix at which the container can be accessed. Useful in the case the '-web.external-url' includes a slug
  ## so that the various internal URLs are still able to access as they are in the default case.
  ## (Optional)
  baseURL: "/"

  ## Additional alertmanager container environment variable
  ## For instance to add a http_proxy
  ##
  extraEnv: {}

  ## ConfigMap override where fullname is {{.Release.Name}}-{{.Values.alertmanager.configMapOverrideName}}
  ## Defining configMapOverrideName will cause templates/alertmanager-configmap.yaml
  ## to NOT generate a ConfigMap resource
  ##
  configMapOverrideName: ""

  ingress:
    ## If true, alertmanager Ingress will be created
    ##
    enabled: false

    ## alertmanager Ingress annotations
    ##
    annotations: {}
    #   kubernetes.io/ingress.class: nginx
    #   kubernetes.io/tls-acme: 'true'

    ## alertmanager Ingress hostnames
    ## Must be provided if Ingress is enabled
    ##
    hosts: []
    #   - alertmanager.domain.com

    ## alertmanager Ingress TLS configuration
    ## Secrets must be manually created in the namespace
    ##
    tls: []
    #   - secretName: prometheus-alerts-tls
    #     hosts:
    #       - alertmanager.domain.com

  ## Alertmanager Deployment Strategy type
  # strategy:
  #   type: Recreate

  ## Node labels for alertmanager pod assignment
  ## Ref: https://kubernetes.io/docs/user-guide/node-selection/
  ##
  nodeSelector: {}

  persistentVolume:
    ## If true, alertmanager will create/use a Persistent Volume Claim
    ## If false, use emptyDir
    ##
    enabled: true

    ## alertmanager data Persistent Volume access modes
    ## Must match those of existing PV or dynamic provisioner
    ## Ref: http://kubernetes.io/docs/user-guide/persistent-volumes/
    ##
    accessModes:
      - ReadWriteOnce

    ## alertmanager data Persistent Volume Claim annotations
    ##
    annotations: {}

    ## alertmanager data Persistent Volume existing claim name
    ## Requires alertmanager.persistentVolume.enabled: true
    ## If defined, PVC must be created manually before volume will be bound
    existingClaim: ""

    ## alertmanager data Persistent Volume mount root path
    ##
    mountPath: /data

    ## alertmanager data Persistent Volume size
    ##
    size: 2Gi

    ## alertmanager data Persistent Volume Storage Class
    ## If defined, storageClassName: <storageClass>
    ## If set to "-", storageClassName: "", which disables dynamic provisioning
    ## If undefined (the default) or set to null, no storageClassName spec is
    ##   set, choosing the default provisioner.  (gp2 on AWS, standard on
    ##   GKE, AWS & OpenStack)
    ##
    # storageClass: "-"

    ## Subdirectory of alertmanager data Persistent Volume to mount
    ## Useful if the volume's root directory is not empty
    ##
    subPath: ""

  ## Annotations to be added to alertmanager pods
  ##
  podAnnotations: {}

  replicaCount: 1

  ## alertmanager resource requests and limits
  ## Ref: http://kubernetes.io/docs/user-guide/compute-resources/
  ##
  resources: {}
    # limits:
    #   cpu: 10m
    #   memory: 32Mi
    # requests:
    #   cpu: 10m
    #   memory: 32Mi

  service:
    annotations: {}
    labels: {}
    clusterIP: ""

    ## List of IP addresses at which the alertmanager service is available
    ## Ref: https://kubernetes.io/docs/user-guide/services/#external-ips
    ##
    externalIPs: []

    loadBalancerIP: ""
    loadBalancerSourceRanges: []
    servicePort: 80
    # nodePort: 30000
    type: ClusterIP

## Monitors ConfigMap changes and POSTs to a URL
## Ref: https://github.com/jimmidyson/configmap-reload
##
configmapReload:
  ## configmap-reload container name
  ##
  name: configmap-reload

  ## configmap-reload container image
  ##
  image:
    repository: jimmidyson/configmap-reload
    tag: v0.1
    pullPolicy: IfNotPresent

  ## configmap-reload resource requests and limits
  ## Ref: http://kubernetes.io/docs/user-guide/compute-resources/
  ##
  resources: {}

kubeStateMetrics:
  ## If false, kube-state-metrics will not be installed
  ##
  enabled: false

  # Defines the serviceAccountName to use when `rbac.create=false`
  serviceAccountName: default

  ## kube-state-metrics container name
  ##
  name: kube-state-metrics

  ## kube-state-metrics container image
  ##
  image:
    repository: gcr.io/google_containers/kube-state-metrics
    tag: v1.1.0
    pullPolicy: IfNotPresent

  ## Node labels for kube-state-metrics pod assignment
  ## Ref: https://kubernetes.io/docs/user-guide/node-selection/
  ##
  nodeSelector: {}

  ## Annotations to be added to kube-state-metrics pods
  ##
  podAnnotations: {}

  replicaCount: 1

  ## kube-state-metrics resource requests and limits
  ## Ref: http://kubernetes.io/docs/user-guide/compute-resources/
  ##
  resources: {}
    # limits:
    #   cpu: 10m
    #   memory: 16Mi
    # requests:
    #   cpu: 10m
    #   memory: 16Mi

  service:
    annotations:
      prometheus.io/scrape: "true"
    labels: {}

    clusterIP: None

    ## List of IP addresses at which the kube-state-metrics service is available
    ## Ref: https://kubernetes.io/docs/user-guide/services/#external-ips
    ##
    externalIPs: []

    loadBalancerIP: ""
    loadBalancerSourceRanges: []
    servicePort: 80
    type: ClusterIP

nodeExporter:
  ## If false, node-exporter will not be installed
  ##
  enabled: false

  # Defines the serviceAccountName to use when `rbac.create=false`
  serviceAccountName: default

  ## node-exporter container name
  ##
  name: node-exporter

  ## node-exporter container image
  ##
  image:
    repository: prom/node-exporter
    tag: v0.15.1
    pullPolicy: IfNotPresent

  ## Custom Update Strategy
  ##
  updateStrategy:
    type: OnDelete

  ## Additional node-exporter container arguments
  ##
  extraArgs: {}

  ## Additional node-exporter hostPath mounts
  ##
  extraHostPathMounts: []
    # - name: textfile-dir
    #   mountPath: /srv/txt_collector
    #   hostPath: /var/lib/node-exporter
    #   readOnly: true

  ## Node tolerations for node-exporter scheduling to nodes with taints
  ## Ref: https://kubernetes.io/docs/concepts/configuration/assign-pod-node/
  ##
  tolerations: []
    # - key: "key"
    #   operator: "Equal|Exists"
    #   value: "value"
    #   effect: "NoSchedule|PreferNoSchedule|NoExecute(1.6 only)"

  ## Node labels for node-exporter pod assignment
  ## Ref: https://kubernetes.io/docs/user-guide/node-selection/
  ##
  nodeSelector: {}

  ## Annotations to be added to node-exporter pods
  ##
  podAnnotations: {}

  ## node-exporter resource limits & requests
  ## Ref: https://kubernetes.io/docs/user-guide/compute-resources/
  ##
  resources: {}
    # limits:
    #   cpu: 200m
    #   memory: 50Mi
    # requests:
    #   cpu: 100m
    #   memory: 30Mi

  service:
    annotations:
      prometheus.io/scrape: "true"
    labels: {}

    clusterIP: None

    ## List of IP addresses at which the node-exporter service is available
    ## Ref: https://kubernetes.io/docs/user-guide/services/#external-ips
    ##
    externalIPs: []

    hostPort: 9100
    loadBalancerIP: ""
    loadBalancerSourceRanges: []
    servicePort: 9100
    type: ClusterIP

server:
  ## Prometheus server container name
  ##
  name: server

  # Defines the serviceAccountName to use when `rbac.create=false`
  serviceAccountName: default

  ## Prometheus server container image
  ##
  image:
    repository: prom/prometheus
    tag: v2.0.0
    pullPolicy: IfNotPresent

  ## (optional) alertmanager hostname
  ## only used if alertmanager.enabled = false
  alertmanagerHostname: ""

  ## The URL prefix at which the container can be accessed. Useful in the case the '-web.external-url' includes a slug
  ## so that the various internal URLs are still able to access as they are in the default case.
  ## (Optional)
  baseURL: ""

  ## Additional Prometheus server container arguments
  ##
  extraArgs: {}

  ## Additional Prometheus server hostPath mounts
  ##
  extraHostPathMounts: []
    # - name: certs-dir
    #   mountPath: /etc/kubernetes/certs
    #   hostPath: /etc/kubernetes/certs
    #   readOnly: true

  ## ConfigMap override where fullname is {{.Release.Name}}-{{.Values.server.configMapOverrideName}}
  ## Defining configMapOverrideName will cause templates/server-configmap.yaml
  ## to NOT generate a ConfigMap resource
  ##
  configMapOverrideName: ""

  ingress:
    ## If true, Prometheus server Ingress will be created
    ##
    enabled: true

    ## Prometheus server Ingress annotations
    ##
    annotations: {}
    #   kubernetes.io/ingress.class: nginx
    #   kubernetes.io/tls-acme: 'true'

    ## Prometheus server Ingress hostnames
    ## Must be provided if Ingress is enabled
    ##
    hosts:
     - reddit-prometheus

    ## Prometheus server Ingress TLS configuration
    ## Secrets must be manually created in the namespace
    ##
    tls: []
    #   - secretName: prometheus-server-tls
    #     hosts:
    #       - prometheus.domain.com

  ## Server Deployment Strategy type
  # strategy:
  #   type: Recreate

  ## Node tolerations for server scheduling to nodes with taints
  ## Ref: https://kubernetes.io/docs/concepts/configuration/assign-pod-node/
  ##
  tolerations: []
    # - key: "key"
    #   operator: "Equal|Exists"
    #   value: "value"
    #   effect: "NoSchedule|PreferNoSchedule|NoExecute(1.6 only)"

  ## Node labels for Prometheus server pod assignment
  ## Ref: https://kubernetes.io/docs/user-guide/node-selection/
  nodeSelector: {}

  persistentVolume:
    ## If true, Prometheus server will create/use a Persistent Volume Claim
    ## If false, use emptyDir
    ##
    enabled: true

    ## Prometheus server data Persistent Volume access modes
    ## Must match those of existing PV or dynamic provisioner
    ## Ref: http://kubernetes.io/docs/user-guide/persistent-volumes/
    ##
    accessModes:
      - ReadWriteOnce

    ## Prometheus server data Persistent Volume annotations
    ##
    annotations: {}

    ## Prometheus server data Persistent Volume existing claim name
    ## Requires server.persistentVolume.enabled: true
    ## If defined, PVC must be created manually before volume will be bound
    existingClaim: ""

    ## Prometheus server data Persistent Volume mount root path
    ##
    mountPath: /data

    ## Prometheus server data Persistent Volume size
    ##
    size: 8Gi

    ## Prometheus server data Persistent Volume Storage Class
    ## If defined, storageClassName: <storageClass>
    ## If set to "-", storageClassName: "", which disables dynamic provisioning
    ## If undefined (the default) or set to null, no storageClassName spec is
    ##   set, choosing the default provisioner.  (gp2 on AWS, standard on
    ##   GKE, AWS & OpenStack)
    ##
    # storageClass: "-"

    ## Subdirectory of Prometheus server data Persistent Volume to mount
    ## Useful if the volume's root directory is not empty
    ##
    subPath: ""

  ## Annotations to be added to Prometheus server pods
  ##
  podAnnotations: {}
    # iam.amazonaws.com/role: prometheus

  replicaCount: 1

  ## Prometheus server resource requests and limits
  ## Ref: http://kubernetes.io/docs/user-guide/compute-resources/
  ##
  resources: {}
    # limits:
    #   cpu: 500m
    #   memory: 512Mi
    # requests:
    #   cpu: 500m
    #   memory: 512Mi

  service:
    annotations: {}
    labels: {}
    clusterIP: ""

    ## List of IP addresses at which the Prometheus server service is available
    ## Ref: https://kubernetes.io/docs/user-guide/services/#external-ips
    ##
    externalIPs: []

    loadBalancerIP: ""
    loadBalancerSourceRanges: []
    servicePort: 80
    type: LoadBalancer

  ## Prometheus server pod termination grace period
  ##
  terminationGracePeriodSeconds: 300

  ## Prometheus data retention period (i.e 360h)
  ##
  retention: ""

pushgateway:
  ## If false, pushgateway will not be installed
  ##
  enabled: false

  ## pushgateway container name
  ##
  name: pushgateway

  ## pushgateway container image
  ##
  image:
    repository: prom/pushgateway
    tag: v0.4.0
    pullPolicy: IfNotPresent

  ## Additional pushgateway container arguments
  ##
  extraArgs: {}

  ingress:
    ## If true, pushgateway Ingress will be created
    ##
    enabled: false

    ## pushgateway Ingress annotations
    ##
    annotations:
    #   kubernetes.io/ingress.class: nginx
    #   kubernetes.io/tls-acme: 'true'

    ## pushgateway Ingress hostnames
    ## Must be provided if Ingress is enabled
    ##
    hosts: []
    #   - pushgateway.domain.com

    ## pushgateway Ingress TLS configuration
    ## Secrets must be manually created in the namespace
    ##
    tls: []
    #   - secretName: prometheus-alerts-tls
    #     hosts:
    #       - pushgateway.domain.com

  ## Node labels for pushgateway pod assignment
  ## Ref: https://kubernetes.io/docs/user-guide/node-selection/
  ##
  nodeSelector: {}

  ## Annotations to be added to pushgateway pods
  ##
  podAnnotations: {}

  replicaCount: 1

  ## pushgateway resource requests and limits
  ## Ref: http://kubernetes.io/docs/user-guide/compute-resources/
  ##
  resources: {}
    # limits:
    #   cpu: 10m
    #   memory: 32Mi
    # requests:
    #   cpu: 10m
    #   memory: 32Mi

  service:
    annotations:
      prometheus.io/probe: pushgateway
    labels: {}
    clusterIP: ""

    ## List of IP addresses at which the pushgateway service is available
    ## Ref: https://kubernetes.io/docs/user-guide/services/#external-ips
    ##
    externalIPs: []

    loadBalancerIP: ""
    loadBalancerSourceRanges: []
    servicePort: 9091
    type: ClusterIP

## alertmanager ConfigMap entries
##
alertmanagerFiles:
  alertmanager.yml: |-
    global:
      # slack_api_url: ''

    receivers:
      - name: default-receiver
        # slack_configs:
        #  - channel: '@you'
        #    send_resolved: true

    route:
      group_wait: 10s
      group_interval: 5m
      receiver: default-receiver
      repeat_interval: 3h

## Prometheus server ConfigMap entries
##
serverFiles:
  alerts: {}
  rules: {}

  prometheus.yml:
    rule_files:
      - /etc/config/rules
      - /etc/config/alerts

    global:
      scrape_interval: 30s

    scrape_configs:
      - job_name: prometheus
        static_configs:
          - targets:
            - localhost:9090

      # A scrape configuration for running Prometheus on a Kubernetes cluster.
      # This uses separate scrape configs for cluster components (i.e. API server, node)
      # and services to allow each to use different authentication configs.
      #
      # Kubernetes labels will be added as Prometheus labels on metrics via the
      # `labelmap` relabeling action.

      # Scrape config for API servers.
      #
      # Kubernetes exposes API servers as endpoints to the default/kubernetes
      # service so this uses `endpoints` role and uses relabelling to only keep
      # the endpoints associated with the default/kubernetes service using the
      # default named port `https`. This works for single API server deployments as
      # well as HA API server deployments.
      - job_name: 'kubernetes-apiservers'

        kubernetes_sd_configs:
          - role: endpoints

        # Default to scraping over https. If required, just disable this or change to
        # `http`.
        scheme: https

        # This TLS & bearer token file config is used to connect to the actual scrape
        # endpoints for cluster components. This is separate to discovery auth
        # configuration because discovery & scraping are two separate concerns in
        # Prometheus. The discovery auth config is automatic if Prometheus runs inside
        # the cluster. Otherwise, more config options have to be provided within the
        # <kubernetes_sd_config>.
        tls_config:
          ca_file: /var/run/secrets/kubernetes.io/serviceaccount/ca.crt
          # If your node certificates are self-signed or use a different CA to the
          # master CA, then disable certificate verification below. Note that
          # certificate verification is an integral part of a secure infrastructure
          # so this should only be disabled in a controlled environment. You can
          # disable certificate verification by uncommenting the line below.
          #
          insecure_skip_verify: true
        bearer_token_file: /var/run/secrets/kubernetes.io/serviceaccount/token

        # Keep only the default/kubernetes service endpoints for the https port. This
        # will add targets for each API server which Kubernetes adds an endpoint to
        # the default/kubernetes service.
        relabel_configs:
          - source_labels: [__meta_kubernetes_namespace, __meta_kubernetes_service_name, __meta_kubernetes_endpoint_port_name]
            action: keep
            regex: default;kubernetes;https

      - job_name: 'kubernetes-nodes'

        # Default to scraping over https. If required, just disable this or change to
        # `http`.
        scheme: https

        # This TLS & bearer token file config is used to connect to the actual scrape
        # endpoints for cluster components. This is separate to discovery auth
        # configuration because discovery & scraping are two separate concerns in
        # Prometheus. The discovery auth config is automatic if Prometheus runs inside
        # the cluster. Otherwise, more config options have to be provided within the
        # <kubernetes_sd_config>.
        tls_config:
          ca_file: /var/run/secrets/kubernetes.io/serviceaccount/ca.crt
          # If your node certificates are self-signed or use a different CA to the
          # master CA, then disable certificate verification below. Note that
          # certificate verification is an integral part of a secure infrastructure
          # so this should only be disabled in a controlled environment. You can
          # disable certificate verification by uncommenting the line below.
          #
          insecure_skip_verify: true
        bearer_token_file: /var/run/secrets/kubernetes.io/serviceaccount/token

        kubernetes_sd_configs:
          - role: node

        relabel_configs:
          - action: labelmap
            regex: __meta_kubernetes_node_label_(.+)
          - target_label: __address__
            replacement: kubernetes.default.svc:443
          - source_labels: [__meta_kubernetes_node_name]
            regex: (.+)
            target_label: __metrics_path__
            replacement: /api/v1/nodes/${1}/proxy/metrics/cadvisor

      # Scrape config for service endpoints.
      #
      # The relabeling allows the actual service scrape endpoint to be configured
      # via the following annotations:
      #
      # * `prometheus.io/scrape`: Only scrape services that have a value of `true`
      # * `prometheus.io/scheme`: If the metrics endpoint is secured then you will need
      # to set this to `https` & most likely set the `tls_config` of the scrape config.
      # * `prometheus.io/path`: If the metrics path is not `/metrics` override this.
      # * `prometheus.io/port`: If the metrics are exposed on a different port to the
      # service then set this appropriately.
      - job_name: 'kubernetes-service-endpoints'

        kubernetes_sd_configs:
          - role: endpoints

        relabel_configs:
          - source_labels: [__meta_kubernetes_service_annotation_prometheus_io_scrape]
            action: keep
            regex: true
          - source_labels: [__meta_kubernetes_service_annotation_prometheus_io_scheme]
            action: replace
            target_label: __scheme__
            regex: (https?)
          - source_labels: [__meta_kubernetes_service_annotation_prometheus_io_path]
            action: replace
            target_label: __metrics_path__
            regex: (.+)
          - source_labels: [__address__, __meta_kubernetes_service_annotation_prometheus_io_port]
            action: replace
            target_label: __address__
            regex: (.+)(?::\d+);(\d+)
            replacement: $1:$2
          - action: labelmap
            regex: __meta_kubernetes_service_label_(.+)
          - source_labels: [__meta_kubernetes_namespace]
            action: replace
            target_label: kubernetes_namespace
          - source_labels: [__meta_kubernetes_service_name]
            action: replace
            target_label: kubernetes_name

      - job_name: 'prometheus-pushgateway'
        honor_labels: true

        kubernetes_sd_configs:
          - role: service

        relabel_configs:
          - source_labels: [__meta_kubernetes_service_annotation_prometheus_io_probe]
            action: keep
            regex: pushgateway

      # Example scrape config for probing services via the Blackbox Exporter.
      #
      # The relabeling allows the actual service scrape endpoint to be configured
      # via the following annotations:
      #
      # * `prometheus.io/probe`: Only probe services that have a value of `true`
      - job_name: 'kubernetes-services'

        metrics_path: /probe
        params:
          module: [http_2xx]

        kubernetes_sd_configs:
          - role: service

        relabel_configs:
          - source_labels: [__meta_kubernetes_service_annotation_prometheus_io_probe]
            action: keep
            regex: true
          - source_labels: [__address__]
            target_label: __param_target
          - target_label: __address__
            replacement: blackbox
          - source_labels: [__param_target]
            target_label: instance
          - action: labelmap
            regex: __meta_kubernetes_service_label_(.+)
          - source_labels: [__meta_kubernetes_namespace]
            target_label: kubernetes_namespace
          - source_labels: [__meta_kubernetes_service_name]
            target_label: kubernetes_name

      # Example scrape config for pods
      #
      # The relabeling allows the actual pod scrape endpoint to be configured via the
      # following annotations:
      #
      # * `prometheus.io/scrape`: Only scrape pods that have a value of `true`
      # * `prometheus.io/path`: If the metrics path is not `/metrics` override this.
      # * `prometheus.io/port`: Scrape the pod on the indicated port instead of the default of `9102`.
      - job_name: 'kubernetes-pods'

        kubernetes_sd_configs:
          - role: pod

        relabel_configs:
          - source_labels: [__meta_kubernetes_pod_annotation_prometheus_io_scrape]
            action: keep
            regex: true
          - source_labels: [__meta_kubernetes_pod_annotation_prometheus_io_path]
            action: replace
            target_label: __metrics_path__
            regex: (.+)
          - source_labels: [__address__, __meta_kubernetes_pod_annotation_prometheus_io_port]
            action: replace
            regex: (.+):(?:\d+);(\d+)
            replacement: ${1}:${2}
            target_label: __address__
          - action: labelmap
            regex: __meta_kubernetes_pod_label_(.+)
          - source_labels: [__meta_kubernetes_namespace]
            action: replace
            target_label: kubernetes_namespace
          - source_labels: [__meta_kubernetes_pod_name]
            action: replace
            target_label: kubernetes_pod_name

networkPolicy:
  ## Enable creation of NetworkPolicy resources.
  ##
  enabled: false
```

Основные отличия от `values.yml`:
- отключена часть устанавливаемых сервисов (pushgateway, alertmanager, kube-state-metrics)
- включено создание Ingress’а для подключения через nginx
- поправлен endpoint для сбора метрик cadvisor
- уменьшен интервал сбора метрик (с 1 минуты до 30 секунд)

Запустите Prometheus в k8s из `Charts/prometheus`
```shell
helm upgrade prom . -f custom_values.yml --install
```

Проверяем: http://reddit-prometheus успешно)


#### Targets

У нас уже присутствует ряд endpoint’ов для сбора метрик:
- Метрики API-сервера
- метрики нод с cadvisor’ов
- сам prometheus

Отметим, что можно собирать метрики cadvisor’а (который уже
является частью kubelet) через проксирующий запрос в kube-apiserver

Если зайти по ssh на любую из машин кластера и запросить `curl http://localhost:4194/metrics` то получим те же метрики у kubelet напрямую

**Но вариант с kube-api предпочтительней, т.к. этот трафик
шифруется TLS и требует аутентификации.**

Таргеты для сбора метрик найдены с помощью service discovery
(**SD**), настроенного в конфиге prometheus (лежит в `custom_values.yml`)

`prometheus.yml`:
```yaml
...
- job_name: 'kubernetes-apiservers' # kubernetes-apiservers (1/1 up)
...
- job_name: 'kubernetes-nodes' # kubernetes-nodes (3/3 up)
  kubernetes_sd_configs: # Настройки Service Discovery (для поиска target’ов)
  - role: node
    scheme: https # Настройки подключения к target’ам (для сбора метрик)
    tls_config:
      ca_file: /var/run/secrets/kubernetes.io/serviceaccount/ca.crt
      insecure_skip_verify: true
    bearer_token_file: /var/run/secrets/kubernetes.io/serviceaccount/token
    relabel_configs: # Настройки различных меток, фильтрация найденных таргетов, их изменений
```

Использование SD в kubernetes позволяет нам динамично менять кластер (как сами хосты, так и сервисы и приложения)

Цели для мониторинга находим c помощью запросов к k8s API:
`prometheus.yml`
```yaml
...
  scrape_configs:
    - job_name: 'kubernetes-nodes'
      kubernetes_sd_configs:
        - role: node  # Role объект, который нужно найти:
                      # - node
                      # - endpoints
                      # - pod
                      # - service
                      # - ingress
```

Т.к. сбор метрик prometheus осуществляется поверх стандартного HTTP-протокола, то могут понадобится доп. настройки для безопасного доступа к метрикам.

Ниже приведены настройки для сбора метрик из k8s AP
```yaml
scheme: https
tls_config:
  ca_file: /var/run/secrets/kubernetes.io/serviceaccount/ca.crt
  insecure_skip_verify: true
bearer_token_file: /var/run/secrets/kubernetes.io/serviceaccount/token
```

1. Схема подключения - http (default) или https
2. Конфиг TLS - коревой сертификат сервера для проверки достоверности сервера
3. Токен для аутентификации насервере

Targets:
- gke-cluster-1-default-pool-f9c66281-kxrc
- gke-cluster-1-default-pool-f9c66281-8gkc
- gke-cluster-1-big-pool-b4209075-jlnq

#### Relabel config

https://prometheus.io/docs/prometheus/latest/configuration/configuration/#relabel_config

```yaml
#Kubernetes nodes
relabel_configs:
  - action: labelmap # преобразовать все k8s лейблы таргета в лейблы prometheus
    regex: __meta_kubernetes_node_label_(.+)
  - target_label: __address__ # Поменять лейбл для адреса сбора метрик
    replacement: kubernetes.default.svc:443
  - source_labels: [__meta_kubernetes_node_name] # Поменять лейбл для пути сбора метрик
    regex: (.+)
    target_label: __metrics_path__
    replacement: /api/v1/nodes/${1}/proxy/metrics/cadvisor
```

В результате получим такие лейблы в prometheus:
```
beta_kubernetes_io_arch="amd64"
beta_kubernetes_io_fluentd_ds_ready="true"
beta_kubernetes_io_instance_type="n1-standard-2"
beta_kubernetes_io_masq_agent_ds_ready="true"
beta_kubernetes_io_os="linux"
cloud_google_com_gke_nodepool="elastic-pool"
cloud_google_com_gke_os_distribution="cos"
elastichost="true"
failure_domain_beta_kubernetes_io_region="us-central1"
failure_domain_beta_kubernetes_io_zone="us-central1-a"
instance="gke-reddit-public-elastic-pool-6fb5390b-fc8w"
kubernetes_io_arch="amd64"
kubernetes_io_hostname="gke-reddit-public-elastic-pool-6fb5390b-fc8w"
kubernetes_io_os="linux"
node_kubernetes_io_masq_agent_ds_ready="true"
projectcalico_org_ds_ready="true"
```

#### Metrics

Все найденные на эндпоинтах метрики сразу же отобразятся в списке (вкладка Graph). Метрики Cadvisor начинаются с `container_`.

Cadvisor собирает лишь информацию о потреблении ресурсов и производительности отдельных docker-контейнеров. При этом он ничего не знает о сущностях k8s (деплойменты, репликасеты, ...).

Для сбора этой информации будем использовать сервис `kube-state-metrics`. Он входит в чарт Prometheus. Включим его.

`prometheus/custom_values.yml`
```yaml
kubeStateMetrics:
  enabled: true
```

Обновим релиз
```shell
helm upgrade prom . -f custom_values.yml --install
```
```log
coalesce.go:196: warning: cannot overwrite table with non table for annotations (map[])
coalesce.go:196: warning: cannot overwrite table with non table for alertmanager.yml (map[global:map[] receivers:[map[name:default-receiver]] route:map[group_interval:5m group_wait:10s receiver:default-receiver repeat_interval:3h]])
Release "prom" has been upgraded. Happy Helming!
NAME: prom
LAST DEPLOYED: Sun Feb 16 22:04:39 2020
NAMESPACE: default
STATUS: deployed
REVISION: 2
TEST SUITE: None
NOTES:
The Prometheus server can be accessed via port 80 on the following DNS name from within your cluster:
prom-prometheus-server.default.svc.cluster.local

From outside the cluster, the server URL(s) are:
http://reddit-prometheus


#################################################################################
######   WARNING: Pod Security Policy has been moved to a global property.  #####
######            use .Values.podSecurityPolicy.enabled with pod-based      #####
######            annotations                                               #####
######            (e.g. .Values.nodeExporter.podSecurityPolicy.annotations) #####
#################################################################################



For more information on running Prometheus, visit:
https://prometheus.io/
```

в Targets:
| Endpoint                     | State | Labels                                                                                                                                                                                                                | Last Scrape | Error                                                                                    |
| ---------------------------- | ----- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------- | ---------------------------------------------------------------------------------------- |
| http://10.4.1.3:8080/metrics | UP    | app="prometheus" chart="prometheus-10.4.0" component="kube-state-metrics" heritage="Helm" instance="10.4.1.3:8080" kubernetes_name="prom-prometheus-kube-state-metrics" kubernetes_namespace="default" release="prom" | 5.875s ago  |                                                                                          |
| http://10.4.1.3:8081/metrics | DOWN  | app="prometheus" chart="prometheus-10.4.0" component="kube-state-metrics" heritage="Helm" instance="10.4.1.3:8081" kubernetes_name="prom-prometheus-kube-state-metrics" kubernetes_namespace="default" release="prom" | 27.232s ago | Get http://10.4.1.3:8081/metrics: dial tcp 10.4.1.3:8081: getsockopt: connection refused |

Пока оставим второй энжпоинт без внимания, на TODO:, так как необходимые метриги отдаются

в Graph: `kube_...` и их много))

##### Задание

По аналогии с kube_state_metrics включите (enabled: true) поды node-exporter в `custom_values.yml`.
```yaml
nodeExporter:
  ## If false, node-exporter will not be installed
  ##
  enabled: true
```
```shell
helm upgrade prom . -f custom_values.yml --install
```
```log
вывод в консоль аналогичен предыдущему
```

Проверьте, что метрики начали собираться с них.

Появилось множество метрик `node_*`


#### Метрики приложений

Запустите приложение из helm чарта reddit (напомню, в отличие от ДЗ у нас тут helm3 ^_^)
```shell
cd kubernetes/Charts/
helm upgrade reddit-test ./reddit --install
kubectl describe namespace production || kubectl create namespace production
helm upgrade production --namespace production ./reddit --install
kubectl describe namespace staging || kubectl create namespace staging
helm upgrade staging --namespace staging ./reddit --install
```

Раньше мы "хардкодили" адреса/dns-имена наших приложений для сбора метрик с них.

`prometheus.yml`
```yaml
- job_name: 'ui'
  static_configs:
    - targets:
      - 'ui:9292'
- job_name: 'comment'
  static_configs:
    - targets:
      - 'comment:9292'
```

Теперь мы можем использовать механизм ServiceDiscovery для обнаружения приложений, запущенных в k8s.

Приложения будем искать так же, как и служебные сервисы k8s.

Модернизируем конфиг prometheus:
`custom_values.yml`
```yaml
  - job_name: "reddit-endpoints"
    kubernetes_sd_configs:
      - role: endpoints
    relabel_configs:
      - source_labels: [__meta_kubernetes_service_label_app]
        action: keep   # Используем действие keep, чтобы оставить
        regex: reddit  # только эндпоинты сервисов с метками
                       # “app=reddit”
```

Обновите релиз prometheus
```shell
cd ./prometheus
helm upgrade prom . -f custom_values.yml --install
```
```log
coalesce.go:196: warning: cannot overwrite table with non table for annotations (map[])
coalesce.go:196: warning: cannot overwrite table with non table for alertmanager.yml (map[global:map[] receivers:[map[name:default-receiver]] route:map[group_interval:5m group_wait:10s receiver:default-receiver repeat_interval:3h]])
Release "prom" has been upgraded. Happy Helming!
NAME: prom
LAST DEPLOYED: Tue Feb 18 22:15:38 2020
NAMESPACE: default
STATUS: deployed
REVISION: 4
TEST SUITE: None
NOTES:
The Prometheus server can be accessed via port 80 on the following DNS name from within your cluster:
prom-prometheus-server.default.svc.cluster.local

From outside the cluster, the server URL(s) are:
http://reddit-prometheus


#################################################################################
######   WARNING: Pod Security Policy has been moved to a global property.  #####
######            use .Values.podSecurityPolicy.enabled with pod-based      #####
######            annotations                                               #####
######            (e.g. .Values.nodeExporter.podSecurityPolicy.annotations) #####
#################################################################################



For more information on running Prometheus, visit:
https://prometheus.io/
```

Мы получили эндпоинты, но что это за поды мы не знаем. Добавим метки k8s

Все лейблы и аннотации k8s изначально отображаются в prometheus в формате:
- `__meta_kubernetes_service_label_labelname`
- `__meta_kubernetes_service_annotation_annotationname`

`custom_values.yml`
```yaml
relabel_configs:
  - action: labelmap # Отобразить все совпадения групп
    regex: __meta_kubernetes_service_label_(.+) # из regex в label’ы Prometheus
```

Обновите релиз prometheus
```shell
helm upgrade prom . -f custom_values.yml --install
```

Теперь мы видим лейблы k8s, присвоенные POD’ам (на примере метрики `ui_request_count`)

Добавим еще label’ы для prometheus и обновим helm-релиз Т.к. метки вида `__meta*` не публикуются, то нужно создать свои, перенеся в них информацию
```yaml
- source_labels: [__meta_kubernetes_namespace]
  target_label: kubernetes_namespace
- source_labels: [__meta_kubernetes_service_name]
  target_label: kubernetes_name
```

Обновите релиз prometheus и ...
```shell
helm upgrade prom . -f custom_values.yml --install
```

Сейчас мы собираем метрики со всех сервисов reddit’а в 1 группе target-ов. Мы можем отделить target-ы компонент друг от друга (по окружениям, по самим компонентам), а также выключать и включать опцию мониторинга для них с помощью все тех же labelов. Например, добавим в конфиг еще 1 job:
```yaml
- job_name: 'reddit-production'
   kubernetes_sd_configs:
     - role: endpoints
   relabel_configs:
     - action: labelmap
       regex: __meta_kubernetes_service_label_(.+)
     - source_labels: [__meta_kubernetes_service_label_app, __meta_kubernetes_namespace]
       action: keep                         # Для разных лейблов
       regex: reddit;(production|staging)+  # разные регекспы
     - source_labels: [__meta_kubernetes_namespace]
       target_label: kubernetes_namespace
     - source_labels: [__meta_kubernetes_service_name]
       target_label: kubernetes_name
```

Обновим релиз prometheus и посмотрим
```shell
helm upgrade prom . -f custom_values.yml --install
```
и видим соответствующие target-ы

Метрики будут отображаться для всех инстансов приложений

##### Задание

Разбейте конфигурацию job’а reddit-endpoints (слайд 24) так,чтобы было 3 job’а для каждой из компонент приложений (post-endpoints, comment-endpoints, ui-endpoints), а reddit-endpoints уберите.

easy:
```yaml
      - job_name: "comment-endpoints"
        kubernetes_sd_configs:
          - role: endpoints
        relabel_configs:
          - source_labels: [__meta_kubernetes_service_label_app]
            action: keep
            regex: reddit
          - source_labels: [__meta_kubernetes_service_label_component]
            action: keep
            regex: comment
          - action: labelmap # Отобразить все совпадения групп
            regex: __meta_kubernetes_service_label_(.+) # из regex в label’ы Prometheus
          - source_labels: [__meta_kubernetes_namespace]
            target_label: kubernetes_namespace
          - source_labels: [__meta_kubernetes_service_name]
            target_label: kubernetes_name

      - job_name: "ui-endpoints"
        kubernetes_sd_configs:
          - role: endpoints
        relabel_configs:
          - source_labels: [__meta_kubernetes_service_label_app]
            action: keep
            regex: reddit
          - source_labels: [__meta_kubernetes_service_label_component]
            action: keep
            regex: ui
          - action: labelmap # Отобразить все совпадения групп
            regex: __meta_kubernetes_service_label_(.+) # из regex в label’ы Prometheus
          - source_labels: [__meta_kubernetes_namespace]
            target_label: kubernetes_namespace
          - source_labels: [__meta_kubernetes_service_name]
            target_label: kubernetes_name

      - job_name: "post-endpoints"
        kubernetes_sd_configs:
          - role: endpoints
        relabel_configs:
          - source_labels: [__meta_kubernetes_service_label_app]
            action: keep
            regex: reddit
          - source_labels: [__meta_kubernetes_service_label_component]
            action: keep
            regex: post
          - action: labelmap # Отобразить все совпадения групп
            regex: __meta_kubernetes_service_label_(.+) # из regex в label’ы Prometheus
          - source_labels: [__meta_kubernetes_namespace]
            target_label: kubernetes_namespace
          - source_labels: [__meta_kubernetes_service_name]
            target_label: kubernetes_name
```

#### Визуализация

Поставим же grafana с помощью helm
```shell
helm upgrade --install grafana stable/grafana --set "server.adminPassword=admin" \
  --set "server.service.type=NodePort" \
  --set "server.ingress.enabled=true" \
  --set "server.ingress.hosts={reddit-grafana}"
```

##### Урашечки, грабельки

И тут нас ждёт сюрприз: http://reddit-grafana/  возвращает `default backend - 404`

Почитав немного https://github.com/helm/charts/tree/master/stable/grafana делаем вывод:

В ДЗ ошибка, нужно так
```shell
helm upgrade --install grafana stable/grafana --set "adminPassword=admin" \
  --set "service.type=NodePort" \
  --set "ingress.enabled=true" \
  --set "ingress.hosts={reddit-grafana}"
```

и получаем веб-интерфейс по ссылке http://reddit-grafana/

Вошли, сменили пароль.

Добавьте prometheus data-source. Адрес найдите из имени сервиса prometheus сервера
```shell
kubectl get svc
```
http://prom-prometheus-server

done

Добавим [самый распространённый](https://grafana.com/grafana/dashboards/315) дашборд для отслеживания
состояния ресурсов k8s

Добавьте собственные дашборды, созданные ранее (в ДЗ по мониторингу). Они должны также успешно отобразить данные.

В дашборде `UI metrics` пришлось заменить параметр `job="ui"` на `component="ui"`

Остальное завелось.


#### Templating

В текущий момент на графиках, относящихся к приложению, одновременно отображены значения метрик со всех источников сразу. При большом количестве сред и при их динамичном изменении имеет смысл сделать динамичной и удобно настройку наших дашбордов в Grafana.

Сделать это можно в нашем случае с помощью механизма templating’а

##### UI metrics

Создадим новую переменную

| Key                | Value                        |
| ------------------ | ---------------------------- |
| Name               | namespace                    |
| Type               | Query                        |
| Label              | env                          |
| Datasource         | Prometheus                   |
| Refresh            | On Dashboard Load            |
| Query              | `label_values(namespace)`    |
| Regex              | `/.+/` все непустые значения |
| Sort               | Alphabetical (asc)           |
| Multi-value        | true                         |
| Include All option | true                         |

У нас появился список со значениями переменной.

Пока что они бесполезны. Чтобы их использование имело эффект нужно шаблонизировать запросы к Prometheus


- Title: `UI http request response time 95 quantile ($namespace)`
- Metrics: `histogram_quantile(0.95, sum(rate(ui_request_response_time_bucket{kubernetes_namespace=~"$namespace"}[5m])) by (le))`

- Title: `UI http errors count ($namespace)`
- Metrics: `rate(ui_request_count{kubernetes_namespace=~"$namespace",http_status=~"^[45].*"}[1m])`

- Title: `UI http requests count ($namespace)`
- Metrics: `rate(ui_request_count{kubernetes_namespace=~"$namespace",component="ui"}[1m])`

Дашборд сохранён в [monitoring/grafana/dashboards/k8s_UI_Service_Monitoring.json](monitoring/grafana/dashboards/k8s_UI_Service_Monitoring.json)

##### Business Logic Monitoring

Создадим новую переменную

| Key                | Value                        |
| ------------------ | ---------------------------- |
| Name               | namespace                    |
| Type               | Query                        |
| Label              | env                          |
| Datasource         | Prometheus                   |
| Refresh            | On Dashboard Load            |
| Query              | `label_values(namespace)`    |
| Regex              | `/.+/` все непустые значения |
| Sort               | Alphabetical (asc)           |
| Multi-value        | true                         |
| Include All option | true                         |

У нас появился список со значениями переменной.

Пока что они бесполезны. Чтобы их использование имело эффект нужно шаблонизировать запросы к Prometheus

- Title: `Post count ($namespace)`
- Metrics: `rate(post_count{kubernetes_namespace=~"$namespace"}[1h])`

- Title: `Comment count ($namespace)`
- Metrics: `rate(comment_count{kubernetes_namespace=~"$namespace"}[1h])`

Дашборд сохранён в [monitoring/grafana/dashboards/k8s_Business_Logic_Monitoring.json](monitoring/grafana/dashboards/k8s_Business_Logic_Monitoring.json)

#### Смешанные графики

Импортируйте следующий график: https://grafana.com/grafana/dashboards/741

Интересная цифра `Deployment memory usage` = 119%. Довольно странная цифра.

На этом графике одновременно используются метрики и шаблоны из cAdvisor, и из kube-state-metrics для отображения сводной информации по деплойментам


### Задание со \*: alertmanager

В целом, принципы работы с инструментами не поменялись. Добавились лишь особенности, поэтому мы можем использовать старые наработки и для k8s.

Задание: запустить alertmanager в k8s и настроить правила для контроля за доступностью api-сервера и хостов k8s

[Формат описания правил](https://prometheus.io/docs/prometheus/latest/configuration/alerting_rules/)

Изменим `kubernetes/Charts/prometheus/custom_values.yml`
```yaml
alertmanager:
  enabled: true
  ...
  ingress:
    enabled: true
    hosts:
      - reddit-alertmanager
    ...
  service:
    type: LoadBalancer
    ...
```

Задеплоим
```shell
cd kubernetes/Charts/prometheus
helm upgrade prom . -f custom_values.yml --install
```

При попытке зайти на http://reddit-alertmanager/ видим ошибку 503: Service Temporarily Unavailable
Причина: `Error syncing load balancer: failed to ensure load balancer: failed to ensure a static IP for load balancer (adff8df779459482fad7d84091869a95(default/prom-prometheus-alertmanager)): error creating gce static IP address: googleapi: Error 403: QUOTA_EXCEEDED - Quota 'STATIC_ADDRESSES' exceeded.  Limit: 1.0 in region us-central1.`

Попробуем по-другому
```yaml
alertmanager:
  service:
    type: ClusterIP
```
```
Error: UPGRADE FAILED: cannot patch "prom-prometheus-alertmanager" with kind Service: Service "prom-prometheus-alertmanager" is invalid: spec.ports[0].nodePort: Forbidden: may not be used when `type` is 'ClusterIP'
```

Значин будем делать nginx-ingress-controller

#### nginx-ingress-controller

Добавлен чарт `kubernetes/Charts/ingress-nginx`
```
ingress-nginx
├── Chart.yaml
└── values.yaml

0 directories, 2 files
```
`Chart.yaml`
```yaml
---
apiVersion: v2
name: nginx-ingress
version: 0.1.0
description: cluster-wide nginx ingress
maintainers:
  - name: Aleksey Koloskov
    email: vsyscoder@gmail.com

dependencies:
  - name: nginx-ingress
    version: 1.30.0
    repository: https://kubernetes-charts.storage.googleapis.com/
```

`values.yaml`
```yaml
---
nginx-ingress:
  publishService:
    enabled: true
  rbac:
    create: false
  controller:
    service:
      loadBalancerIP:
    scope:
      enabled: true
      namespace:
```

Создан `kubernetes/Charts/Makefile`
```makefile
NS?=default

update_deps: clean_deps
	cd ./reddit && helm dep update
	cd ./ingress-nginx && helm dep update

clean_deps:
	rm -rf ./reddit/charts || true
	rm -rf ./ingress-nginx/charts || true

# install nginx-ingress
install_nginx:
	helm upgrade \
		--install \
		--set nginx-ingress.controller.scope.enabled=true \
		--set nginx-ingress.controller.scope.namespace=$(NS) \
		--namespace $(NS) \
		nginx-ingress-$(NS) \
		./ingress-nginx
```

Установлен nginx-ingress-controller
```shell
make update_deps
make install_nginx NS=default
```
```log
helm upgrade \
        --install \
        --set nginx-ingress.controller.scope.enabled=true \
        --set nginx-ingress.controller.scope.namespace=default \
        --namespace default \
        nginx-ingress-default \
        ./ingress-nginx
Release "nginx-ingress-default" does not exist. Installing it now.
NAME: nginx-ingress-default
LAST DEPLOYED: Fri Feb 21 22:36:03 2020
NAMESPACE: default
STATUS: deployed
REVISION: 1
TEST SUITE: None
```

Прописываем аннотации для сервисов мониторинга
```yaml
alertmanager:
  ingress:
    annotations:
      kubernetes.io/ingress.class: nginx
  service:
    type: LoadBalancer
...
server:
  ingress:
    annotations:
      kubernetes.io/ingress.class: nginx
```

В `kubernetes/Charts/Makefile` добавили target
```makefile
# deploy prometheus
deploy_prometheus:
	helm upgrade \
		--install \
		-f ./prometheus/custom_values.yml \
    --namespace default \
		prom \
		./prometheus
```

Деплоим prometheus
```shell
make deploy_prometheus
```

Тут анализ `kubectl get service` внезапно выдал наличие двух nginx-ingress-controller... Есть подозрение, что мой был лишним ^_^
```log
...
nginx-ingress-default-controller        LoadBalancer   10.4.3.90     <pending>       80:31784/TCP,443:30099/TCP   27m
nginx-ingress-default-default-backend   ClusterIP      10.4.0.73     <none>          80/TCP                       27m
nginx-nginx-ingress-controller          LoadBalancer   10.4.7.187    34.69.197.128   80:32087/TCP,443:30552/TCP   5d6h
nginx-nginx-ingress-default-backend     ClusterIP      10.4.5.206    <none>          80/TCP                       5d6h
```

Придётся деинсталлировать)))

Добавим в `kubernetes/Charts/Makefile` target
```makefile
# uninstall nginx-ingress
uninstall_nginx:
	helm uninstall --namespace $(NS) nginx-ingress-$(NS)
```

И выполним деинсталлацию(((
```shell
make uninstall_nginx NS=default
```
```shell
kubectl get service
```
```log
kubectl get service            
NAME                                  TYPE           CLUSTER-IP    EXTERNAL-IP     PORT(S)                      AGE
grafana                               NodePort       10.4.7.117    <none>          80:31701/TCP                 3d
kubernetes                            ClusterIP      10.4.0.1      <none>          443/TCP                      5d7h
nginx-nginx-ingress-controller        LoadBalancer   10.4.7.187    34.69.197.128   80:32087/TCP,443:30552/TCP   5d6h
nginx-nginx-ingress-default-backend   ClusterIP      10.4.5.206    <none>          80/TCP                       5d6h
prom-prometheus-alertmanager          LoadBalancer   10.4.2.75     <pending>       80:32024/TCP                 49m
prom-prometheus-kube-state-metrics    ClusterIP      None          <none>          80/TCP,81/TCP                5d1h
prom-prometheus-node-exporter         ClusterIP      None          <none>          9100/TCP                     5d
prom-prometheus-server                LoadBalancer   10.4.15.25    34.67.57.194    80:31921/TCP                 5d5h
reddit-test-comment                   ClusterIP      10.4.7.46     <none>          9292/TCP                     3d1h
reddit-test-mongodb                   ClusterIP      10.4.0.108    <none>          27017/TCP                    3d1h
reddit-test-post                      ClusterIP      10.4.12.14    <none>          5000/TCP                     3d1h
reddit-test-ui                        NodePort       10.4.14.209   <none>          9292:31304/TCP               3d1h
```

теперь всё выглядит по-приличнее)

Проверим

http://reddit-alertmanager

А воз и ныне там... Похоже я не в ту степь поскакал(
```shell
kubectl describe service prom-prometheus-alertman
```
```log
Error syncing load balancer: failed to ensure load balancer: failed to ensure a static IP for load balancer (adff8df779459482fad7d84091869a95(default/prom-prometheus-alertmanager)): error creating gce static IP address: googleapi: Error 403: QUOTA_EXCEEDED - Quota 'STATIC_ADDRESSES' exceeded.  Limit: 1.0 in region us-central1.
```

Хотя причём здесь static ip? Нас и динамический устроит... Попробуем ка кпередеплоиться...

Добавим в `kubernetes/Charts/Makefile` target
```makefile
# uninstall prometheus
uninstall_prometheus:
	helm uninstall --namespace default prom
```

И передеплоимся
```shell
make uninstall_prometheus
# ...подождём удаления
make deploy_prometheus
# готово
```

Не деплоится алертменеджер, ошибку выдаёт
```shell
kubectl logs prom-prometheus-alertmanager-5fb4dd8574-6mzfw -c prometheus-alertmanager
```
```log
flag provided but not defined: -cluster.advertise-address
...
```

видимо потому, что серис сервера всё ещё `pending`
```log
prom-prometheus-server                LoadBalancer   10.4.11.106   <pending>       80:30165/TCP                 5m23s
```

Что-то нехватает нам ip-адресов
```shell
kubectl describe service prom-prometheus-server
```
```log
Normal   EnsuringLoadBalancer    43s (x7 over 6m11s)  service-controller  Ensuring load balancer
  Warning  SyncLoadBalancerFailed  41s (x7 over 6m9s)   service-controller  Error syncing load balancer: failed to ensure load balancer: failed to ensure a static IP for load balancer (a9642f8c6a0d149c5bb046eecfd6fd9a(default/prom-prometheus-server)): error creating gce static IP address: googleapi: Error 403: QUOTA_EXCEEDED - Quota 'STATIC_ADDRESSES' exceeded.  Limit: 1.0 in region us-central1.
```

Хватит это терпеть! Установим `service.type: NodePort` для сервисов prometheus `server` и `alertmanager`, чтобы не занимать статические ip.

`kubernetes/Charts/prometheus/custom_values.yml`
```yaml
aletrmanager:
  service:
    type: NodePort
...
server:
  service:
    type: NodePort
```

И после применения изменений
```shell
make deploy_prometheus
```
у нас вернулся в строй prometheus-server

#### Fix alertmanager

Но alert-manager морду высовывать так и не хочет ^_^

nginx-ingress-controller говорит: `503 Service Temporarily Unavailable`

А всё потому что... Ошибочку видим в логах
```shell
kubectl logs prom-prometheus-alertmanager-5fb4dd8574-5tr56 prometheus-alertmanager
```
```log
flag provided but not defined: -cluster.advertise-address
```

Значение флага `-cluster.advertise-address`
```shell
kubectl describe pod prom-prometheus-alertmanager-5
fb4dd8574-5tr56
```
```log
...
Containers:
  prometheus-alertmanager:
    ...
    --cluster.Multi-Attach error for volume "pvc-1cba0a70-2b87-4e67-afec-f1f7b0876f93" Volume is already used by pod(s) prom-prometheus-alertmanager-5fb4dd8574-5tr56=$(POD_IP):6783
...
```

Но у нас нет кластера alertmanager-оф, а если ему сделать `replicaCount: 1`, второй под не взлетает так как не может использовать тот же volume
```log
Multi-Attach error for volume "pvc-1cba0a70-2b87-4e67-afec-f1f7b0876f93" Volume is already used by pod(s) prom-prometheus-alertmanager-5fb4dd8574-5tr56
```

Имеет смысл убрать данный параметр, что мы и сделаем в `kubernetes/Charts/prometheus/templates/alertmanager-statefulset.yaml`, закомментировав строку 53
```yaml
...
          args:
            - --config.file=/etc/config/{{ .Values.alertmanager.configFileName }}
            - --storage.path={{ .Values.alertmanager.persistentVolume.mountPath }}
            #- --cluster.advertise-address=$(POD_IP):6783
```

но теперь получаем ту же ситуацию и что-то странное в логе
```shell
kubectl logs -f prom-prometheus-alertmanager-567447967c-5tgct prometheus-alertmanager
```
```log
level=info ts=2020-02-23T20:41:52.492813385Z caller=main.go:155 msg="Starting Alertmanager" version="(version=0.10.0, branch=HEAD, revision=133c888ef3644b47a52acbaeffb09f4cc637df1b)"
level=info ts=2020-02-23T20:41:52.492891792Z caller=main.go:156 build_context="(go=go1.9.2, user=root@01302b7cd08a, date=20171109-15:34:53)"
level=info ts=2020-02-23T20:41:52.494359403Z caller=main.go:293 msg="Loading configuration file" file=/etc/config/alertmanager.yml
level=error ts=2020-02-23T20:41:52.494481786Z caller=main.go:296 msg="Loading configuration file failed" file=/etc/config/alertmanager.yml err="yaml: unmarshal errors:\n  line 1: cannot unmarshal !!str `global:...` into config.plain"
```

Прри замене `$(POD_IP)` на `127.0.0.1`, получаем снова странный результат
```log
flag provided but not defined: -cluster.advertise-address
```
Вывод: `$(POD_IP)` возможно и не пуст, но неверным обращом передаётся параметр...

Дальнейшие танцы с бубном результата не принесли, та же ошибка.

После обновления alertmanager до актуальной версии `v0.20.0` (по ДЗ была `v0.10.0`), удалось добиться запуска, но начались приключения с конфигом.

В итоге пришли к рабочему варианту
```yaml
alertmanager:
  image:
    tag: v0.20.0
  baseURL: "http://reddit-alertmanager"
  service:
    type: NodePort
  ...
server:
  service:
    type: NodePort
  ...
alertmanagerFiles:
  alertmanager.yml:
    receivers:
      - name: default-receiver
        slack_configs:
          - api_url: "https://hooks.slack.com/services/hereisasecret"
            channel: "#vscoder-k5"
            send_resolved: true

    route:
      group_wait: 10s
      group_interval: 5m
      receiver: default-receiver
      repeat_interval: 3h
```

и наконец-то можно увидеть веб-интерфейс по адресу http://reddit-alertmanager


#### Alert rules

Добавим же пару алертов

`custom-values.yml`
```yaml
...
## Prometheus server ConfigMap entries
##
serverFiles:
  alerts: {}
  rules: {}

  ## Alerts configuration
  ## Ref: https://prometheus.io/docs/prometheus/latest/configuration/alerting_rules/
  ## alerting_rules.yml: {}
  alerting_rules.yml:
    groups:
      - name: Instances
        rules:
          - alert: InstanceDown
            expr: up == 0
            for: 30s
            labels:
              severity: page
            annotations:
              description: "{{ $labels.instance }} of job {{ $labels.job }} has been down for more than 5 minutes."
              summary: "Instance {{ $labels.instance }} down"
      - "name": "kubernetes-apps"
        "rules":
          - "alert": "KubePodCrashLooping"
            "annotations":
              "message": 'Pod {{ $labels.namespace }}/{{ $labels.pod }} ({{ $labels.container }}) is restarting {{ printf "%.2f" $value }} times / 5 minutes.'
              "runbook_url": "https://github.com/kubernetes-monitoring/kubernetes-mixin/tree/master/runbook.md#alert-name-kubepodcrashlooping"
            "expr": |
              rate(kube_pod_container_status_restarts_total{component="kube-state-metrics"}[15m]) * 60 * 5 > 0
            "for": "15m"
            "labels":
              "severity": "critical"
          - "alert": "KubePodNotReady"
            "annotations":
              "message": "Pod {{ $labels.namespace }}/{{ $labels.pod }} has been in a non-ready state for longer than 15 minutes."
              "runbook_url": "https://github.com/kubernetes-monitoring/kubernetes-mixin/tree/master/runbook.md#alert-name-kubepodnotready"
            "expr": |
              sum by (namespace, pod) (max by(namespace, pod) (kube_pod_status_phase{component="kube-state-metrics", phase=~"Pending|Unknown"}) * on(namespace, pod) group_left(owner_kind) max by(namespace, pod, owner_kind) (kube_pod_owner{owner_kind!="Job"})) > 0
            "for": "15m"
            "labels":
              "severity": "critical"
          - "alert": "KubeDeploymentGenerationMismatch"
            "annotations":
              "message": "Deployment generation for {{ $labels.namespace }}/{{ $labels.deployment }} does not match, this indicates that the Deployment has failed but has not been rolled back."
              "runbook_url": "https://github.com/kubernetes-monitoring/kubernetes-mixin/tree/master/runbook.md#alert-name-kubedeploymentgenerationmismatch"
            "expr": |
              kube_deployment_status_observed_generation{component="kube-state-metrics"}
                !=
              kube_deployment_metadata_generation{component="kube-state-metrics"}
            "for": "15m"
            "labels":
              "severity": "critical"
          - "alert": "KubeDeploymentReplicasMismatch"
            "annotations":
              "message": "Deployment {{ $labels.namespace }}/{{ $labels.deployment }} has not matched the expected number of replicas for longer than 15 minutes."
              "runbook_url": "https://github.com/kubernetes-monitoring/kubernetes-mixin/tree/master/runbook.md#alert-name-kubedeploymentreplicasmismatch"
            "expr": |
              kube_deployment_spec_replicas{component="kube-state-metrics"}
                !=
              kube_deployment_status_replicas_available{component="kube-state-metrics"}
            "for": "15m"
            "labels":
              "severity": "critical"
          - "alert": "KubeStatefulSetReplicasMismatch"
            "annotations":
              "message": "StatefulSet {{ $labels.namespace }}/{{ $labels.statefulset }} has not matched the expected number of replicas for longer than 15 minutes."
              "runbook_url": "https://github.com/kubernetes-monitoring/kubernetes-mixin/tree/master/runbook.md#alert-name-kubestatefulsetreplicasmismatch"
            "expr": |
              kube_statefulset_status_replicas_ready{component="kube-state-metrics"}
                !=
              kube_statefulset_status_replicas{component="kube-state-metrics"}
            "for": "15m"
            "labels":
              "severity": "critical"
          - "alert": "KubeStatefulSetGenerationMismatch"
            "annotations":
              "message": "StatefulSet generation for {{ $labels.namespace }}/{{ $labels.statefulset }} does not match, this indicates that the StatefulSet has failed but has not been rolled back."
              "runbook_url": "https://github.com/kubernetes-monitoring/kubernetes-mixin/tree/master/runbook.md#alert-name-kubestatefulsetgenerationmismatch"
            "expr": |
              kube_statefulset_status_observed_generation{component="kube-state-metrics"}
                !=
              kube_statefulset_metadata_generation{component="kube-state-metrics"}
            "for": "15m"
            "labels":
              "severity": "critical"
          - "alert": "KubeStatefulSetUpdateNotRolledOut"
            "annotations":
              "message": "StatefulSet {{ $labels.namespace }}/{{ $labels.statefulset }} update has not been rolled out."
              "runbook_url": "https://github.com/kubernetes-monitoring/kubernetes-mixin/tree/master/runbook.md#alert-name-kubestatefulsetupdatenotrolledout"
            "expr": |
              max without (revision) (
                kube_statefulset_status_current_revision{component="kube-state-metrics"}
                  unless
                kube_statefulset_status_update_revision{component="kube-state-metrics"}
              )
                *
              (
                kube_statefulset_replicas{component="kube-state-metrics"}
                  !=
                kube_statefulset_status_replicas_updated{component="kube-state-metrics"}
              )
            "for": "15m"
            "labels":
              "severity": "critical"
          - "alert": "KubeDaemonSetRolloutStuck"
            "annotations":
              "message": "Only {{ $value | humanizePercentage }} of the desired Pods of DaemonSet {{ $labels.namespace }}/{{ $labels.daemonset }} are scheduled and ready."
              "runbook_url": "https://github.com/kubernetes-monitoring/kubernetes-mixin/tree/master/runbook.md#alert-name-kubedaemonsetrolloutstuck"
            "expr": |
              kube_daemonset_status_number_ready{component="kube-state-metrics"}
                /
              kube_daemonset_status_desired_number_scheduled{component="kube-state-metrics"} < 1.00
            "for": "15m"
            "labels":
              "severity": "critical"
          - "alert": "KubeContainerWaiting"
            "annotations":
              "message": "Pod {{ $labels.namespace }}/{{ $labels.pod }} container {{ $labels.container}} has been in waiting state for longer than 1 hour."
              "runbook_url": "https://github.com/kubernetes-monitoring/kubernetes-mixin/tree/master/runbook.md#alert-name-kubecontainerwaiting"
            "expr": |
              sum by (namespace, pod, container) (kube_pod_container_status_waiting_reason{component="kube-state-metrics"}) > 0
            "for": "1h"
            "labels":
              "severity": "warning"
          - "alert": "KubeDaemonSetNotScheduled"
            "annotations":
              "message": "{{ $value }} Pods of DaemonSet {{ $labels.namespace }}/{{ $labels.daemonset }} are not scheduled."
              "runbook_url": "https://github.com/kubernetes-monitoring/kubernetes-mixin/tree/master/runbook.md#alert-name-kubedaemonsetnotscheduled"
            "expr": |
              kube_daemonset_status_desired_number_scheduled{component="kube-state-metrics"}
                -
              kube_daemonset_status_current_number_scheduled{component="kube-state-metrics"} > 0
            "for": "10m"
            "labels":
              "severity": "warning"
          - "alert": "KubeDaemonSetMisScheduled"
            "annotations":
              "message": "{{ $value }} Pods of DaemonSet {{ $labels.namespace }}/{{ $labels.daemonset }} are running where they are not supposed to run."
              "runbook_url": "https://github.com/kubernetes-monitoring/kubernetes-mixin/tree/master/runbook.md#alert-name-kubedaemonsetmisscheduled"
            "expr": |
              kube_daemonset_status_number_misscheduled{component="kube-state-metrics"} > 0
            "for": "10m"
            "labels":
              "severity": "warning"
      - "name": "kubernetes-resources"
        "rules":
          - "alert": "KubeCPUOvercommit"
            "annotations":
              "message": "Cluster has overcommitted CPU resource requests for Pods and cannot tolerate node failure."
              "runbook_url": "https://github.com/kubernetes-monitoring/kubernetes-mixin/tree/master/runbook.md#alert-name-kubecpuovercommit"
            "expr": |
              sum(namespace:kube_pod_container_resource_requests_cpu_cores:sum)
                /
              sum(kube_node_status_allocatable_cpu_cores)
                >
              (count(kube_node_status_allocatable_cpu_cores)-1) / count(kube_node_status_allocatable_cpu_cores)
            "for": "5m"
            "labels":
              "severity": "warning"
          - "alert": "KubeMemOvercommit"
            "annotations":
              "message": "Cluster has overcommitted memory resource requests for Pods and cannot tolerate node failure."
              "runbook_url": "https://github.com/kubernetes-monitoring/kubernetes-mixin/tree/master/runbook.md#alert-name-kubememovercommit"
            "expr": |
              sum(namespace:kube_pod_container_resource_requests_memory_bytes:sum)
                /
              sum(kube_node_status_allocatable_memory_bytes)
                >
              (count(kube_node_status_allocatable_memory_bytes)-1)
                /
              count(kube_node_status_allocatable_memory_bytes)
            "for": "5m"
            "labels":
              "severity": "warning"
          - "alert": "KubeCPUOvercommit"
            "annotations":
              "message": "Cluster has overcommitted CPU resource requests for Namespaces."
              "runbook_url": "https://github.com/kubernetes-monitoring/kubernetes-mixin/tree/master/runbook.md#alert-name-kubecpuovercommit"
            "expr": |
              sum(kube_resourcequota{component="kube-state-metrics", type="hard", resource="cpu"})
                /
              sum(kube_node_status_allocatable_cpu_cores)
                > 1.5
            "for": "5m"
            "labels":
              "severity": "warning"
          - "alert": "KubeMemOvercommit"
            "annotations":
              "message": "Cluster has overcommitted memory resource requests for Namespaces."
              "runbook_url": "https://github.com/kubernetes-monitoring/kubernetes-mixin/tree/master/runbook.md#alert-name-kubememovercommit"
            "expr": |
              sum(kube_resourcequota{component="kube-state-metrics", type="hard", resource="memory"})
                /
              sum(kube_node_status_allocatable_memory_bytes{job="node-exporter"})
                > 1.5
            "for": "5m"
            "labels":
              "severity": "warning"
          - "alert": "KubeQuotaExceeded"
            "annotations":
              "message": "Namespace {{ $labels.namespace }} is using {{ $value | humanizePercentage }} of its {{ $labels.resource }} quota."
              "runbook_url": "https://github.com/kubernetes-monitoring/kubernetes-mixin/tree/master/runbook.md#alert-name-kubequotaexceeded"
            "expr": |
              kube_resourcequota{component="kube-state-metrics", type="used"}
                / ignoring(instance, job, type)
              (kube_resourcequota{component="kube-state-metrics", type="hard"} > 0)
                > 0.90
            "for": "15m"
            "labels":
              "severity": "warning"
          - "alert": "CPUThrottlingHigh"
            "annotations":
              "message": "{{ $value | humanizePercentage }} throttling of CPU in namespace {{ $labels.namespace }} for container {{ $labels.container }} in pod {{ $labels.pod }}."
              "runbook_url": "https://github.com/kubernetes-monitoring/kubernetes-mixin/tree/master/runbook.md#alert-name-cputhrottlinghigh"
            "expr": |
              sum(increase(container_cpu_cfs_throttled_periods_total{container!="", }[5m])) by (container, pod, namespace)
                /
              sum(increase(container_cpu_cfs_periods_total{}[5m])) by (container, pod, namespace)
                > ( 25 / 100 )
            "for": "15m"
            "labels":
              "severity": "warning"
      - "name": "kubernetes-storage"
        "rules":
          - "alert": "KubePersistentVolumeUsageCritical"
            "annotations":
              "message": "The PersistentVolume claimed by {{ $labels.persistentvolumeclaim }} in Namespace {{ $labels.namespace }} is only {{ $value | humanizePercentage }} free."
              "runbook_url": "https://github.com/kubernetes-monitoring/kubernetes-mixin/tree/master/runbook.md#alert-name-kubepersistentvolumeusagecritical"
            "expr": |
              kubelet_volume_stats_available_bytes{job="kubernetes-nodes"}
                /
              kubelet_volume_stats_capacity_bytes{job="kubernetes-nodes"}
                < 0.03
            "for": "1m"
            "labels":
              "severity": "critical"
          - "alert": "KubePersistentVolumeFullInFourDays"
            "annotations":
              "message": "Based on recent sampling, the PersistentVolume claimed by {{ $labels.persistentvolumeclaim }} in Namespace {{ $labels.namespace }} is expected to fill up within four days. Currently {{ $value | humanizePercentage }} is available."
              "runbook_url": "https://github.com/kubernetes-monitoring/kubernetes-mixin/tree/master/runbook.md#alert-name-kubepersistentvolumefullinfourdays"
            "expr": |
              (
                kubelet_volume_stats_available_bytes{job="kubernetes-nodes"}
                  /
                kubelet_volume_stats_capacity_bytes{job="kubernetes-nodes"}
              ) < 0.15
              and
              predict_linear(kubelet_volume_stats_available_bytes{job="kubernetes-nodes"}[6h], 4 * 24 * 3600) < 0
            "for": "1h"
            "labels":
              "severity": "critical"
          - "alert": "KubePersistentVolumeErrors"
            "annotations":
              "message": "The persistent volume {{ $labels.persistentvolume }} has status {{ $labels.phase }}."
              "runbook_url": "https://github.com/kubernetes-monitoring/kubernetes-mixin/tree/master/runbook.md#alert-name-kubepersistentvolumeerrors"
            "expr": |
              kube_persistentvolume_status_phase{phase=~"Failed|Pending",component="kube-state-metrics"} > 0
            "for": "5m"
            "labels":
              "severity": "critical"
      - "name": "kubernetes-system"
        "rules":
          - "alert": "KubeVersionMismatch"
            "annotations":
              "message": "There are {{ $value }} different semantic versions of Kubernetes components running."
              "runbook_url": "https://github.com/kubernetes-monitoring/kubernetes-mixin/tree/master/runbook.md#alert-name-kubeversionmismatch"
            "expr": |
              count(count by (gitVersion) (label_replace(kubernetes_build_info{job!~"kube-dns|coredns"},"gitVersion","$1","gitVersion","(v[0-9]*.[0-9]*.[0-9]*).*"))) > 1
            "for": "15m"
            "labels":
              "severity": "warning"
          - "alert": "KubeClientErrors"
            "annotations":
              "message": "Kubernetes API server client '{{ $labels.job }}/{{ $labels.instance }}' is experiencing {{ $value | humanizePercentage }} errors.'"
              "runbook_url": "https://github.com/kubernetes-monitoring/kubernetes-mixin/tree/master/runbook.md#alert-name-kubeclienterrors"
            "expr": |
              (sum(rate(rest_client_requests_total{code=~"5.."}[5m])) by (instance, job)
                /
              sum(rate(rest_client_requests_total[5m])) by (instance, job))
              > 0.01
            "for": "15m"
            "labels":
              "severity": "warning"
      - "name": "kubernetes-apiservers-error"
        "rules":
          - "alert": "ErrorBudgetBurn"
            "annotations":
              "runbook_url": "https://github.com/kubernetes-monitoring/kubernetes-mixin/tree/master/runbook.md#alert-name-errorbudgetburn"
            "expr": |
              (
                status_class_5xx:apiserver_request_total:ratio_rate1h{job="kubernetes-apiservers"} > (14.4*0.010000)
                and
                status_class_5xx:apiserver_request_total:ratio_rate5m{job="kubernetes-apiservers"} > (14.4*0.010000)
              )
              or
              (
                status_class_5xx:apiserver_request_total:ratio_rate6h{job="kubernetes-apiservers"} > (6*0.010000)
                and
                status_class_5xx:apiserver_request_total:ratio_rate30m{job="kubernetes-apiservers"} > (6*0.010000)
              )
            "labels":
              "job": "kubernetes-apiservers"
              "severity": "critical"
          - "alert": "ErrorBudgetBurn"
            "annotations":
              "runbook_url": "https://github.com/kubernetes-monitoring/kubernetes-mixin/tree/master/runbook.md#alert-name-errorbudgetburn"
            "expr": |
              (
                status_class_5xx:apiserver_request_total:ratio_rate1d{job="kubernetes-apiservers"} > (3*0.010000)
                and
                status_class_5xx:apiserver_request_total:ratio_rate2h{job="kubernetes-apiservers"} > (3*0.010000)
              )
              or
              (
                status_class_5xx:apiserver_request_total:ratio_rate3d{job="kubernetes-apiservers"} > (0.010000)
                and
                status_class_5xx:apiserver_request_total:ratio_rate6h{job="kubernetes-apiservers"} > (0.010000)
              )
            "labels":
              "job": "kubernetes-apiservers"
              "severity": "warning"
          - "expr": |
              sum by (status_class) (
                label_replace(
                  rate(apiserver_request_total{job="kubernetes-apiservers"}[5m]
                ), "status_class", "${1}xx", "code", "([0-9])..")
              )
            "labels":
              "job": "kubernetes-apiservers"
            "record": "status_class:apiserver_request_total:rate5m"
          - "expr": |
              sum by (status_class) (
                label_replace(
                  rate(apiserver_request_total{job="kubernetes-apiservers"}[30m]
                ), "status_class", "${1}xx", "code", "([0-9])..")
              )
            "labels":
              "job": "kubernetes-apiservers"
            "record": "status_class:apiserver_request_total:rate30m"
          - "expr": |
              sum by (status_class) (
                label_replace(
                  rate(apiserver_request_total{job="kubernetes-apiservers"}[1h]
                ), "status_class", "${1}xx", "code", "([0-9])..")
              )
            "labels":
              "job": "kubernetes-apiservers"
            "record": "status_class:apiserver_request_total:rate1h"
          - "expr": |
              sum by (status_class) (
                label_replace(
                  rate(apiserver_request_total{job="kubernetes-apiservers"}[2h]
                ), "status_class", "${1}xx", "code", "([0-9])..")
              )
            "labels":
              "job": "kubernetes-apiservers"
            "record": "status_class:apiserver_request_total:rate2h"
          - "expr": |
              sum by (status_class) (
                label_replace(
                  rate(apiserver_request_total{job="kubernetes-apiservers"}[6h]
                ), "status_class", "${1}xx", "code", "([0-9])..")
              )
            "labels":
              "job": "kubernetes-apiservers"
            "record": "status_class:apiserver_request_total:rate6h"
          - "expr": |
              sum by (status_class) (
                label_replace(
                  rate(apiserver_request_total{job="kubernetes-apiservers"}[1d]
                ), "status_class", "${1}xx", "code", "([0-9])..")
              )
            "labels":
              "job": "kubernetes-apiservers"
            "record": "status_class:apiserver_request_total:rate1d"
          - "expr": |
              sum by (status_class) (
                label_replace(
                  rate(apiserver_request_total{job="kubernetes-apiservers"}[3d]
                ), "status_class", "${1}xx", "code", "([0-9])..")
              )
            "labels":
              "job": "kubernetes-apiservers"
            "record": "status_class:apiserver_request_total:rate3d"
          - "expr": |
              sum(status_class:apiserver_request_total:rate5m{job="kubernetes-apiservers",status_class="5xx"})
              /
              sum(status_class:apiserver_request_total:rate5m{job="kubernetes-apiservers"})
            "labels":
              "job": "kubernetes-apiservers"
            "record": "status_class_5xx:apiserver_request_total:ratio_rate5m"
          - "expr": |
              sum(status_class:apiserver_request_total:rate30m{job="kubernetes-apiservers",status_class="5xx"})
              /
              sum(status_class:apiserver_request_total:rate30m{job="kubernetes-apiservers"})
            "labels":
              "job": "kubernetes-apiservers"
            "record": "status_class_5xx:apiserver_request_total:ratio_rate30m"
          - "expr": |
              sum(status_class:apiserver_request_total:rate1h{job="kubernetes-apiservers",status_class="5xx"})
              /
              sum(status_class:apiserver_request_total:rate1h{job="kubernetes-apiservers"})
            "labels":
              "job": "kubernetes-apiservers"
            "record": "status_class_5xx:apiserver_request_total:ratio_rate1h"
          - "expr": |
              sum(status_class:apiserver_request_total:rate2h{job="kubernetes-apiservers",status_class="5xx"})
              /
              sum(status_class:apiserver_request_total:rate2h{job="kubernetes-apiservers"})
            "labels":
              "job": "kubernetes-apiservers"
            "record": "status_class_5xx:apiserver_request_total:ratio_rate2h"
          - "expr": |
              sum(status_class:apiserver_request_total:rate6h{job="kubernetes-apiservers",status_class="5xx"})
              /
              sum(status_class:apiserver_request_total:rate6h{job="kubernetes-apiservers"})
            "labels":
              "job": "kubernetes-apiservers"
            "record": "status_class_5xx:apiserver_request_total:ratio_rate6h"
          - "expr": |
              sum(status_class:apiserver_request_total:rate1d{job="kubernetes-apiservers",status_class="5xx"})
              /
              sum(status_class:apiserver_request_total:rate1d{job="kubernetes-apiservers"})
            "labels":
              "job": "kubernetes-apiservers"
            "record": "status_class_5xx:apiserver_request_total:ratio_rate1d"
          - "expr": |
              sum(status_class:apiserver_request_total:rate3d{job="kubernetes-apiservers",status_class="5xx"})
              /
              sum(status_class:apiserver_request_total:rate3d{job="kubernetes-apiservers"})
            "labels":
              "job": "kubernetes-apiservers"
            "record": "status_class_5xx:apiserver_request_total:ratio_rate3d"
      - "name": "kubernetes-system-apiserver"
        "rules":
          - "alert": "KubeAPILatencyHigh"
            "annotations":
              "message": "The API server has an abnormal latency of {{ $value }} seconds for {{ $labels.verb }} {{ $labels.resource }}."
              "runbook_url": "https://github.com/kubernetes-monitoring/kubernetes-mixin/tree/master/runbook.md#alert-name-kubeapilatencyhigh"
            "expr": |
              (
                cluster:apiserver_request_duration_seconds:mean5m{job="kubernetes-apiservers"}
                >
                on (verb) group_left()
                (
                  avg by (verb) (cluster:apiserver_request_duration_seconds:mean5m{job="kubernetes-apiservers"} >= 0)
                  +
                  2*stddev by (verb) (cluster:apiserver_request_duration_seconds:mean5m{job="kubernetes-apiservers"} >= 0)
                )
              ) > on (verb) group_left()
              1.2 * avg by (verb) (cluster:apiserver_request_duration_seconds:mean5m{job="kubernetes-apiservers"} >= 0)
              and on (verb,resource)
              cluster_quantile:apiserver_request_duration_seconds:histogram_quantile{job="kubernetes-apiservers",quantile="0.99"}
              >
              1
            "for": "5m"
            "labels":
              "severity": "warning"
          - "alert": "KubeAPILatencyHigh"
            "annotations":
              "message": "The API server has a 99th percentile latency of {{ $value }} seconds for {{ $labels.verb }} {{ $labels.resource }}."
              "runbook_url": "https://github.com/kubernetes-monitoring/kubernetes-mixin/tree/master/runbook.md#alert-name-kubeapilatencyhigh"
            "expr": |
              cluster_quantile:apiserver_request_duration_seconds:histogram_quantile{job="kubernetes-apiservers",quantile="0.99"} > 4
            "for": "10m"
            "labels":
              "severity": "critical"
          - "alert": "KubeAPIErrorsHigh"
            "annotations":
              "message": "API server is returning errors for {{ $value | humanizePercentage }} of requests."
              "runbook_url": "https://github.com/kubernetes-monitoring/kubernetes-mixin/tree/master/runbook.md#alert-name-kubeapierrorshigh"
            "expr": |
              sum(rate(apiserver_request_total{job="kubernetes-apiservers",code=~"5.."}[5m]))
                /
              sum(rate(apiserver_request_total{job="kubernetes-apiservers"}[5m])) > 0.03
            "for": "10m"
            "labels":
              "severity": "critical"
          - "alert": "KubeAPIErrorsHigh"
            "annotations":
              "message": "API server is returning errors for {{ $value | humanizePercentage }} of requests."
              "runbook_url": "https://github.com/kubernetes-monitoring/kubernetes-mixin/tree/master/runbook.md#alert-name-kubeapierrorshigh"
            "expr": |
              sum(rate(apiserver_request_total{job="kubernetes-apiservers",code=~"5.."}[5m]))
                /
              sum(rate(apiserver_request_total{job="kubernetes-apiservers"}[5m])) > 0.01
            "for": "10m"
            "labels":
              "severity": "warning"
          - "alert": "KubeAPIErrorsHigh"
            "annotations":
              "message": "API server is returning errors for {{ $value | humanizePercentage }} of requests for {{ $labels.verb }} {{ $labels.resource }} {{ $labels.subresource }}."
              "runbook_url": "https://github.com/kubernetes-monitoring/kubernetes-mixin/tree/master/runbook.md#alert-name-kubeapierrorshigh"
            "expr": |
              sum(rate(apiserver_request_total{job="kubernetes-apiservers",code=~"5.."}[5m])) by (resource,subresource,verb)
                /
              sum(rate(apiserver_request_total{job="kubernetes-apiservers"}[5m])) by (resource,subresource,verb) > 0.10
            "for": "10m"
            "labels":
              "severity": "critical"
          - "alert": "KubeAPIErrorsHigh"
            "annotations":
              "message": "API server is returning errors for {{ $value | humanizePercentage }} of requests for {{ $labels.verb }} {{ $labels.resource }} {{ $labels.subresource }}."
              "runbook_url": "https://github.com/kubernetes-monitoring/kubernetes-mixin/tree/master/runbook.md#alert-name-kubeapierrorshigh"
            "expr": |
              sum(rate(apiserver_request_total{job="kubernetes-apiservers",code=~"5.."}[5m])) by (resource,subresource,verb)
                /
              sum(rate(apiserver_request_total{job="kubernetes-apiservers"}[5m])) by (resource,subresource,verb) > 0.05
            "for": "10m"
            "labels":
              "severity": "warning"
          - "alert": "KubeClientCertificateExpiration"
            "annotations":
              "message": "A client certificate used to authenticate to the apiserver is expiring in less than 7.0 days."
              "runbook_url": "https://github.com/kubernetes-monitoring/kubernetes-mixin/tree/master/runbook.md#alert-name-kubeclientcertificateexpiration"
            "expr": |
              apiserver_client_certificate_expiration_seconds_count{job="kubernetes-apiservers"} > 0 and on(job) histogram_quantile(0.01, sum by (job, le) (rate(apiserver_client_certificate_expiration_seconds_bucket{job="kubernetes-apiservers"}[5m]))) < 604800
            "labels":
              "severity": "warning"
          - "alert": "KubeClientCertificateExpiration"
            "annotations":
              "message": "A client certificate used to authenticate to the apiserver is expiring in less than 24.0 hours."
              "runbook_url": "https://github.com/kubernetes-monitoring/kubernetes-mixin/tree/master/runbook.md#alert-name-kubeclientcertificateexpiration"
            "expr": |
              apiserver_client_certificate_expiration_seconds_count{job="kubernetes-apiservers"} > 0 and on(job) histogram_quantile(0.01, sum by (job, le) (rate(apiserver_client_certificate_expiration_seconds_bucket{job="kubernetes-apiservers"}[5m]))) < 86400
            "labels":
              "severity": "critical"
          - "alert": "KubeAPIDown"
            "annotations":
              "message": "KubeAPI has disappeared from Prometheus target discovery."
              "runbook_url": "https://github.com/kubernetes-monitoring/kubernetes-mixin/tree/master/runbook.md#alert-name-kubeapidown"
            "expr": |
              absent(up{job="kubernetes-apiservers"} == 1)
            "for": "15m"
            "labels":
              "severity": "critical"
      - "name": "kubernetes-system-kubelet"
        "rules":
          - "alert": "KubeNodeNotReady"
            "annotations":
              "message": "{{ $labels.node }} has been unready for more than 15 minutes."
              "runbook_url": "https://github.com/kubernetes-monitoring/kubernetes-mixin/tree/master/runbook.md#alert-name-kubenodenotready"
            "expr": |
              kube_node_status_condition{component="kube-state-metrics",condition="Ready",status="true"} == 0
            "for": "15m"
            "labels":
              "severity": "warning"
          - "alert": "KubeNodeUnreachable"
            "annotations":
              "message": "{{ $labels.node }} is unreachable and some workloads may be rescheduled."
              "runbook_url": "https://github.com/kubernetes-monitoring/kubernetes-mixin/tree/master/runbook.md#alert-name-kubenodeunreachable"
            "expr": |
              kube_node_spec_taint{component="kube-state-metrics",key="node.kubernetes.io/unreachable",effect="NoSchedule"} == 1
            "for": "2m"
            "labels":
              "severity": "warning"
          - "alert": "KubeletTooManyPods"
            "annotations":
              "message": "Kubelet '{{ $labels.node }}' is running at {{ $value | humanizePercentage }} of its Pod capacity."
              "runbook_url": "https://github.com/kubernetes-monitoring/kubernetes-mixin/tree/master/runbook.md#alert-name-kubelettoomanypods"
            "expr": |
              max(max(kubelet_running_pod_count{job="kubernetes-nodes"}) by(instance) * on(instance) group_left(node) kubelet_node_name{job="kubernetes-nodes"}) by(node) / max(kube_node_status_capacity_pods{component="kube-state-metrics"}) by(node) > 0.95
            "for": "15m"
            "labels":
              "severity": "warning"

  ## Records configuration
  ## Ref: https://prometheus.io/docs/prometheus/latest/configuration/recording_rules/
  recording_rules.yml: {}

  prometheus.yml:
    rule_files:
      - /etc/config/recording_rules.yml
      - /etc/config/alerting_rules.yml
      # - /etc/config/rules
      # - /etc/config/alerts
    ...
```

После применения видим алерты в чате
```shell
make deploy_prometheus
```

### Задание со \*: Prometheus operator

- Установите в кластер Prometheus Operator (можно воспользоваться [helm-чартом](https://github.com/helm/charts/tree/master/stable/prometheus-operator))

- Настройте мониторинг post endpoints

- Приложите используемый манифест serviceMonitor

#### Install prometheus operator

Создана директория 
```log
kubernetes/Charts/prometheus-operator
├── Chart.yaml
└── values.yaml

0 directories, 2 files
```

`kubernetes/Charts/prometheus-operator/Chart.yaml`
```yaml
---
apiVersion: v2
name: prometheus-operator
version: 0.1.0
description: prometheus-operator by bitnami
maintainers:
  - name: Aleksey Koloskov
    email: vsyscoder@gmail.com

dependencies:
  - name: prometheus-operator
    version: 8.9.2
    repository: https://kubernetes-charts.storage.googleapis.com/
```

`kubernetes/Charts/prometheus-operator/values.yaml`
```yaml
---
prometheus-operator:
  prometheus:
    ingress:
      enabled: true
      annotations:
        kubernetes.io/ingress.class: nginx
      hosts:
        - reddit-prometheus

  alertmanager:
    ingress:
      enabled: true
      annotations:
        kubernetes.io/ingress.class: nginx
      hosts:
        - reddit-alertmanager

  grafana:
    ingress:
      enabled: true
      annotations:
        kubernetes.io/ingress.class: nginx
      hosts:
        - reddit-grafana
```

Изменён `kubernetes/Charts/Makefile`
```makefile
# Изменены цели установки/очистки зависимостеё
update_deps: clean_deps
	cd ./reddit && helm dep update
	cd ./ingress-nginx && helm dep update
	cd ./prometheus-operator && helm dep update

clean_deps:
	rm -rf ./reddit/charts || true
	rm -rf ./ingress-nginx/charts || true
	rm -rf ./prometheus-operator/charts || true

...
# Созданы цели
# deploy prometheus operator
deploy_prometheus_operator:
	helm upgrade \
		--install \
		--namespace default \
		prometheus-operator \
		./prometheus-operator

# uninstall prometheus operator
uninstall_prometheus_operator:
	helm uninstall --namespace default prometheus-operator
```

Оператор установлен
```shell
make update_deps
make deploy_prometheus_operator
```
```log
helm upgrade \
        --install \
        --namespace default \
        prometheus-operator \
        ./prometheus-operator
Release "prometheus-operator" does not exist. Installing it now.
manifest_sorter.go:175: info: skipping unknown hook: "crd-install"
manifest_sorter.go:175: info: skipping unknown hook: "crd-install"
manifest_sorter.go:175: info: skipping unknown hook: "crd-install"
manifest_sorter.go:175: info: skipping unknown hook: "crd-install"
manifest_sorter.go:175: info: skipping unknown hook: "crd-install"
NAME: prometheus-operator
LAST DEPLOYED: Tue Feb 25 00:13:47 2020
NAMESPACE: default
STATUS: deployed
REVISION: 1
```

Как видно из лога, не были установлены CRD, потому что helm3. В документации на эту тему есть [workaround](https://github.com/helm/charts/blob/master/stable/prometheus-operator/README.md#helm-fails-to-create-crds).

В `kubernetes/Charts/Makefile` реализован соответствующий workaround
```makefile
# deploy prometheus operator
deploy_prometheus_operator: install_prometheus_operator_crds
	helm upgrade \
		--install \
		--set prometheus-operator.prometheusOperator.createCustomResource=false \
		--namespace default \
		prometheus-operator \
		./prometheus-operator

# uninstall prometheus operator
uninstall_prometheus_operator:
	helm uninstall --namespace default prometheus-operator
	$(MAKE) uninstall_prometheus_operator_crds

# install prometheus operator CRDs
install_prometheus_operator_crds:
	kubectl apply -n default -f https://raw.githubusercontent.com/coreos/prometheus-operator/release-0.35/example/prometheus-operator-crd/monitoring.coreos.com_alertmanagers.yaml
	kubectl apply -n default -f https://raw.githubusercontent.com/coreos/prometheus-operator/release-0.35/example/prometheus-operator-crd/monitoring.coreos.com_podmonitors.yaml
	kubectl apply -n default -f https://raw.githubusercontent.com/coreos/prometheus-operator/release-0.35/example/prometheus-operator-crd/monitoring.coreos.com_prometheuses.yaml
	kubectl apply -n default -f https://raw.githubusercontent.com/coreos/prometheus-operator/release-0.35/example/prometheus-operator-crd/monitoring.coreos.com_prometheusrules.yaml
	kubectl apply -n default -f https://raw.githubusercontent.com/coreos/prometheus-operator/release-0.35/example/prometheus-operator-crd/monitoring.coreos.com_servicemonitors.yaml

# uninstall prometheus operator CRDs
uninstall_prometheus_operator_crds:
	kubectl delete -n default -f https://raw.githubusercontent.com/coreos/prometheus-operator/release-0.35/example/prometheus-operator-crd/monitoring.coreos.com_alertmanagers.yaml
	kubectl delete -n default -f https://raw.githubusercontent.com/coreos/prometheus-operator/release-0.35/example/prometheus-operator-crd/monitoring.coreos.com_podmonitors.yaml
	kubectl delete -n default -f https://raw.githubusercontent.com/coreos/prometheus-operator/release-0.35/example/prometheus-operator-crd/monitoring.coreos.com_prometheuses.yaml
	kubectl delete -n default -f https://raw.githubusercontent.com/coreos/prometheus-operator/release-0.35/example/prometheus-operator-crd/monitoring.coreos.com_prometheusrules.yaml
	kubectl delete -n default -f https://raw.githubusercontent.com/coreos/prometheus-operator/release-0.35/example/prometheus-operator-crd/monitoring.coreos.com_servicemonitors.yaml
```

Оператор установлен `make deploy_prometheus_operator`

Смотрим дашборды графаны http://reddit-grafana (пароль по умолчанию так же есть в документации, искать или задать (`grafana.adminPassword`). Общее впечатление: восторг, минимальными усилиями имеем огромное количество информации о нашем кластере))

Далее:
- Настройте мониторинг post endpoints
- Приложите используемый манифест serviceMonitor

#### ServiceMonitor

Очень помогла документация https://github.com/coreos/prometheus-operator/blob/master/Documentation/troubleshooting.md

Итак, что было сделано для получения бизнес-метрик компонента `post` на дашборде графаны:

Изменён чарт компонента `post`
`kubernetes/Charts/post/templates/service.yaml`
```yaml
---
apiVersion: v1
kind: Service
metadata:
  name: {{ template "post.fullname" . }}
  labels:
    app: reddit
    component: post
    release: {{ .Release.Name }}
spec:
  type: ClusterIP
  ports:
  - name: http # Добавлено имя эндпоинта для указания в ServiceMonitor
    port: {{ .Values.service.externalPort }}
    protocol: TCP
    targetPort: {{ .Values.service.internalPort }}
  selector:
    app: reddit
    component: post
    release: {{ .Release.Name }}
...
```

Инкрементирована версия чарта `kubernetes/Charts/post/Chart.yaml`
```yaml
---
name: post
version: 1.1.0
description: OTUS reddit application Post
maintainers:
  - name: Someone
    email: my@mail.com
appVersion: 1.0
```

Обновлена версия зависимости в `kubernetes/Charts/reddit/requirements.yaml`
```yaml
---
dependencies:
  ...
  - name: post
    version: 1.1.0
    repository: "file://../post"
```

Установлены зависимости
```shell
helm dependency update --debug ./reddit
```

HINT: посмотреть _Service Monitor Selector_: `kubectl describe prometheus prometheus-operator-prometheus`

Создан `kubernetes/reddit/post-servicemonitor.yaml`
```yaml
---
apiVersion: monitoring.coreos.com/v1
kind: ServiceMonitor
metadata:
  name: reddit-post
  labels:
    app: reddit
    release: prometheus-operator  # Обязательно должен совпадать с Service Monitor Selector: Match Labels: Release:  prometheus-operator
spec:
  jobLabel: component  # из какой label взять имя job
  selector:  # selector для сервиса
    matchLabels:  # возможно так же указать matchName
      app: reddit
      component: post
  namespaceSelector:
    matchNames:  # namespaces, можно указать any
      - default
      - production
      - staging
  endpoints:
    - port: http  # обязательно должно совпадать с service spec.ports[].name
      path: /metrics  # url path для получения метрик
      scheme: http  # схема подключения, http/https
      interval: 10s  # интервал опроса
```

После этого приложение передеплоено
```shell
helm upgrade reddit-test ./reddit --install
helm upgrade staging --namespace staging ./reddit --install
helm upgrade production --namespace production ./reddit --install
```

И создан ServiceMonitor
```shell
kubectl apply -f ../reddit/post-servicemonitor.yaml
```

Теперь мы видим target в http://reddit-prometheus
```
default/reddit-post/0 (3/3 up)
```

Далее импортируем в графану дашборд `monitoring/grafana/dashboards/Business_Logic_Monitoring.json` (да, именно прежний дашборд с лейблом `namespace` а не `kubernetes_namespace`) и видим на графике _Post count_ количество новых постов... Profit!

Это заняло больше времени, чем я расчитывал... Далее - логгирование

### Логгирование

#### Подготовка

1. Данную часть ДЗ рекомендуется выполянять уже после выполения ДЗ No 25 (по логированию), наработки из которого используюстя в данной работе
2. Выполнение данной части ДЗ не является обязательным
3. Добавьте label самой мощной ноде в кластере (уже сделано ранее при создании инфраструктуры)


#### Стек

Логирование в k8s будем выстраивать с помощью уже известного стека EFK:

- ElasticSearch - база данных + поисковый движок
- Fluentd - шипер (отправитель) и агрегатор логов
- Kibana - веб-интерфейс для запросов в хранилище и отображения их результатов


#### EFK

Создайте файлы в новой папке `kubernetes/efk/`

`fluentd-ds.yaml`
```yaml
---
apiVersion: apps/v1beta2
kind: DaemonSet
metadata:
  name: fluentd-es-v2.0.2
  labels:
    k8s-app: fluentd-es
    version: v2.0.2
    kubernetes.io/cluster-service: "true"
    addonmanager.kubernetes.io/mode: Reconcile
spec:
  selector:
    matchLabels:
      k8s-app: fluentd-es
      version: v2.0.2
  template:
    metadata:
      labels:
        k8s-app: fluentd-es
        kubernetes.io/cluster-service: "true"
        version: v2.0.2
      # This annotation ensures that fluentd does not get evicted if the node
      # supports critical pod annotation based priority scheme.
      # Note that this does not guarantee admission on the nodes (#40573).
      annotations:
        scheduler.alpha.kubernetes.io/critical-pod: ''
    spec:
      containers:
      - name: fluentd-es
        image: gcr.io/google-containers/fluentd-elasticsearch:v2.0.2
        env:
        - name: FLUENTD_ARGS
          value: --no-supervisor -q
        resources:
          limits:
            memory: 500Mi
          requests:
            cpu: 100m
            memory: 200Mi
        volumeMounts:
        - name: varlog
          mountPath: /var/log
        - name: varlibdockercontainers
          mountPath: /var/lib/docker/containers
          readOnly: true
        - name: libsystemddir
          mountPath: /host/lib
          readOnly: true
        - name: config-volume
          mountPath: /etc/fluent/config.d
      nodeSelector:
        beta.kubernetes.io/fluentd-ds-ready: "true"
      terminationGracePeriodSeconds: 30
      volumes:
      - name: varlog
        hostPath:
          path: /var/log
      - name: varlibdockercontainers
        hostPath:
          path: /var/lib/docker/containers
      # It is needed to copy systemd library to decompress journals
      - name: libsystemddir
        hostPath:
          path: /usr/lib64
      - name: config-volume
        configMap:
          name: fluentd-es-config-v0.1.1
```

`fluentd-configmap.yaml`
```yaml
kind: ConfigMap
apiVersion: v1
data:
  containers.input.conf: |-
    # This configuration file for Fluentd / td-agent is used
    # to watch changes to Docker log files. The kubelet creates symlinks that
    # capture the pod name, namespace, container name & Docker container ID
    # to the docker logs for pods in the /var/log/containers directory on the host.
    # If running this fluentd configuration in a Docker container, the /var/log
    # directory should be mounted in the container.
    #
    # These logs are then submitted to Elasticsearch which assumes the
    # installation of the fluent-plugin-elasticsearch & the
    # fluent-plugin-kubernetes_metadata_filter plugins.
    # See https://github.com/uken/fluent-plugin-elasticsearch &
    # https://github.com/fabric8io/fluent-plugin-kubernetes_metadata_filter for
    # more information about the plugins.
    #
    # Example
    # =======
    # A line in the Docker log file might look like this JSON:
    #
    # {"log":"2014/09/25 21:15:03 Got request with path wombat\n",
    #  "stream":"stderr",
    #   "time":"2014-09-25T21:15:03.499185026Z"}
    #
    # The time_format specification below makes sure we properly
    # parse the time format produced by Docker. This will be
    # submitted to Elasticsearch and should appear like:
    # $ curl 'http://elasticsearch-logging:9200/_search?pretty'
    # ...
    # {
    #      "_index" : "logstash-2014.09.25",
    #      "_type" : "fluentd",
    #      "_id" : "VBrbor2QTuGpsQyTCdfzqA",
    #      "_score" : 1.0,
    #      "_source":{"log":"2014/09/25 22:45:50 Got request with path wombat\n",
    #                 "stream":"stderr","tag":"docker.container.all",
    #                 "@timestamp":"2014-09-25T22:45:50+00:00"}
    #    },
    # ...
    #
    # The Kubernetes fluentd plugin is used to write the Kubernetes metadata to the log
    # record & add labels to the log record if properly configured. This enables users
    # to filter & search logs on any metadata.
    # For example a Docker container's logs might be in the directory:
    #
    #  /var/lib/docker/containers/997599971ee6366d4a5920d25b79286ad45ff37a74494f262e3bc98d909d0a7b
    #
    # and in the file:
    #
    #  997599971ee6366d4a5920d25b79286ad45ff37a74494f262e3bc98d909d0a7b-json.log
    #
    # where 997599971ee6... is the Docker ID of the running container.
    # The Kubernetes kubelet makes a symbolic link to this file on the host machine
    # in the /var/log/containers directory which includes the pod name and the Kubernetes
    # container name:
    #
    #    synthetic-logger-0.25lps-pod_default_synth-lgr-997599971ee6366d4a5920d25b79286ad45ff37a74494f262e3bc98d909d0a7b.log
    #    ->
    #    /var/lib/docker/containers/997599971ee6366d4a5920d25b79286ad45ff37a74494f262e3bc98d909d0a7b/997599971ee6366d4a5920d25b79286ad45ff37a74494f262e3bc98d909d0a7b-json.log
    #
    # The /var/log directory on the host is mapped to the /var/log directory in the container
    # running this instance of Fluentd and we end up collecting the file:
    #
    #   /var/log/containers/synthetic-logger-0.25lps-pod_default_synth-lgr-997599971ee6366d4a5920d25b79286ad45ff37a74494f262e3bc98d909d0a7b.log
    #
    # This results in the tag:
    #
    #  var.log.containers.synthetic-logger-0.25lps-pod_default_synth-lgr-997599971ee6366d4a5920d25b79286ad45ff37a74494f262e3bc98d909d0a7b.log
    #
    # The Kubernetes fluentd plugin is used to extract the namespace, pod name & container name
    # which are added to the log message as a kubernetes field object & the Docker container ID
    # is also added under the docker field object.
    # The final tag is:
    #
    #   kubernetes.var.log.containers.synthetic-logger-0.25lps-pod_default_synth-lgr-997599971ee6366d4a5920d25b79286ad45ff37a74494f262e3bc98d909d0a7b.log
    #
    # And the final log record look like:
    #
    # {
    #   "log":"2014/09/25 21:15:03 Got request with path wombat\n",
    #   "stream":"stderr",
    #   "time":"2014-09-25T21:15:03.499185026Z",
    #   "kubernetes": {
    #     "namespace": "default",
    #     "pod_name": "synthetic-logger-0.25lps-pod",
    #     "container_name": "synth-lgr"
    #   },
    #   "docker": {
    #     "container_id": "997599971ee6366d4a5920d25b79286ad45ff37a74494f262e3bc98d909d0a7b"
    #   }
    # }
    #
    # This makes it easier for users to search for logs by pod name or by
    # the name of the Kubernetes container regardless of how many times the
    # Kubernetes pod has been restarted (resulting in a several Docker container IDs).

    # Json Log Example:
    # {"log":"[info:2016-02-16T16:04:05.930-08:00] Some log text here\n","stream":"stdout","time":"2016-02-17T00:04:05.931087621Z"}
    # CRI Log Example:
    # 2016-02-17T00:04:05.931087621Z stdout F [info:2016-02-16T16:04:05.930-08:00] Some log text here
    <source>
      type tail
      path /var/log/containers/*.log
      pos_file /var/log/es-containers.log.pos
      time_format %Y-%m-%dT%H:%M:%S.%NZ
      tag kubernetes.*
      read_from_head true
      format multi_format
      <pattern>
        format json
        time_key time
        time_format %Y-%m-%dT%H:%M:%S.%NZ
      </pattern>
      <pattern>
        format /^(?<time>.+) (?<stream>stdout|stderr) [^ ]* (?<log>.*)$/
        time_format %Y-%m-%dT%H:%M:%S.%N%:z
      </pattern>
    </source>
  system.input.conf: |-
    # Example:
    # 2015-12-21 23:17:22,066 [salt.state       ][INFO    ] Completed state [net.ipv4.ip_forward] at time 23:17:22.066081
    <source>
      type tail
      format /^(?<time>[^ ]* [^ ,]*)[^\[]*\[[^\]]*\]\[(?<severity>[^ \]]*) *\] (?<message>.*)$/
      time_format %Y-%m-%d %H:%M:%S
      path /var/log/salt/minion
      pos_file /var/log/es-salt.pos
      tag salt
    </source>

    # Example:
    # Dec 21 23:17:22 gke-foo-1-1-4b5cbd14-node-4eoj startupscript: Finished running startup script /var/run/google.startup.script
    <source>
      type tail
      format syslog
      path /var/log/startupscript.log
      pos_file /var/log/es-startupscript.log.pos
      tag startupscript
    </source>

    # Examples:
    # time="2016-02-04T06:51:03.053580605Z" level=info msg="GET /containers/json"
    # time="2016-02-04T07:53:57.505612354Z" level=error msg="HTTP Error" err="No such image: -f" statusCode=404
    <source>
      type tail
      format /^time="(?<time>[^)]*)" level=(?<severity>[^ ]*) msg="(?<message>[^"]*)"( err="(?<error>[^"]*)")?( statusCode=($<status_code>\d+))?/
      path /var/log/docker.log
      pos_file /var/log/es-docker.log.pos
      tag docker
    </source>

    # Example:
    # 2016/02/04 06:52:38 filePurge: successfully removed file /var/etcd/data/member/wal/00000000000006d0-00000000010a23d1.wal
    <source>
      type tail
      # Not parsing this, because it doesn't have anything particularly useful to
      # parse out of it (like severities).
      format none
      path /var/log/etcd.log
      pos_file /var/log/es-etcd.log.pos
      tag etcd
    </source>

    # Multi-line parsing is required for all the kube logs because very large log
    # statements, such as those that include entire object bodies, get split into
    # multiple lines by glog.

    # Example:
    # I0204 07:32:30.020537    3368 server.go:1048] POST /stats/container/: (13.972191ms) 200 [[Go-http-client/1.1] 10.244.1.3:40537]
    <source>
      type tail
      format multiline
      multiline_flush_interval 5s
      format_firstline /^\w\d{4}/
      format1 /^(?<severity>\w)(?<time>\d{4} [^\s]*)\s+(?<pid>\d+)\s+(?<source>[^ \]]+)\] (?<message>.*)/
      time_format %m%d %H:%M:%S.%N
      path /var/log/kubelet.log
      pos_file /var/log/es-kubelet.log.pos
      tag kubelet
    </source>

    # Example:
    # I1118 21:26:53.975789       6 proxier.go:1096] Port "nodePort for kube-system/default-http-backend:http" (:31429/tcp) was open before and is still needed
    <source>
      type tail
      format multiline
      multiline_flush_interval 5s
      format_firstline /^\w\d{4}/
      format1 /^(?<severity>\w)(?<time>\d{4} [^\s]*)\s+(?<pid>\d+)\s+(?<source>[^ \]]+)\] (?<message>.*)/
      time_format %m%d %H:%M:%S.%N
      path /var/log/kube-proxy.log
      pos_file /var/log/es-kube-proxy.log.pos
      tag kube-proxy
    </source>

    # Example:
    # I0204 07:00:19.604280       5 handlers.go:131] GET /api/v1/nodes: (1.624207ms) 200 [[kube-controller-manager/v1.1.3 (linux/amd64) kubernetes/6a81b50] 127.0.0.1:38266]
    <source>
      type tail
      format multiline
      multiline_flush_interval 5s
      format_firstline /^\w\d{4}/
      format1 /^(?<severity>\w)(?<time>\d{4} [^\s]*)\s+(?<pid>\d+)\s+(?<source>[^ \]]+)\] (?<message>.*)/
      time_format %m%d %H:%M:%S.%N
      path /var/log/kube-apiserver.log
      pos_file /var/log/es-kube-apiserver.log.pos
      tag kube-apiserver
    </source>

    # Example:
    # I0204 06:55:31.872680       5 servicecontroller.go:277] LB already exists and doesn't need update for service kube-system/kube-ui
    <source>
      type tail
      format multiline
      multiline_flush_interval 5s
      format_firstline /^\w\d{4}/
      format1 /^(?<severity>\w)(?<time>\d{4} [^\s]*)\s+(?<pid>\d+)\s+(?<source>[^ \]]+)\] (?<message>.*)/
      time_format %m%d %H:%M:%S.%N
      path /var/log/kube-controller-manager.log
      pos_file /var/log/es-kube-controller-manager.log.pos
      tag kube-controller-manager
    </source>

    # Example:
    # W0204 06:49:18.239674       7 reflector.go:245] pkg/scheduler/factory/factory.go:193: watch of *api.Service ended with: 401: The event in requested index is outdated and cleared (the requested history has been cleared [2578313/2577886]) [2579312]
    <source>
      type tail
      format multiline
      multiline_flush_interval 5s
      format_firstline /^\w\d{4}/
      format1 /^(?<severity>\w)(?<time>\d{4} [^\s]*)\s+(?<pid>\d+)\s+(?<source>[^ \]]+)\] (?<message>.*)/
      time_format %m%d %H:%M:%S.%N
      path /var/log/kube-scheduler.log
      pos_file /var/log/es-kube-scheduler.log.pos
      tag kube-scheduler
    </source>

    # Example:
    # I1104 10:36:20.242766       5 rescheduler.go:73] Running Rescheduler
    <source>
      type tail
      format multiline
      multiline_flush_interval 5s
      format_firstline /^\w\d{4}/
      format1 /^(?<severity>\w)(?<time>\d{4} [^\s]*)\s+(?<pid>\d+)\s+(?<source>[^ \]]+)\] (?<message>.*)/
      time_format %m%d %H:%M:%S.%N
      path /var/log/rescheduler.log
      pos_file /var/log/es-rescheduler.log.pos
      tag rescheduler
    </source>

    # Example:
    # I0603 15:31:05.793605       6 cluster_manager.go:230] Reading config from path /etc/gce.conf
    <source>
      type tail
      format multiline
      multiline_flush_interval 5s
      format_firstline /^\w\d{4}/
      format1 /^(?<severity>\w)(?<time>\d{4} [^\s]*)\s+(?<pid>\d+)\s+(?<source>[^ \]]+)\] (?<message>.*)/
      time_format %m%d %H:%M:%S.%N
      path /var/log/glbc.log
      pos_file /var/log/es-glbc.log.pos
      tag glbc
    </source>

    # Example:
    # I0603 15:31:05.793605       6 cluster_manager.go:230] Reading config from path /etc/gce.conf
    <source>
      type tail
      format multiline
      multiline_flush_interval 5s
      format_firstline /^\w\d{4}/
      format1 /^(?<severity>\w)(?<time>\d{4} [^\s]*)\s+(?<pid>\d+)\s+(?<source>[^ \]]+)\] (?<message>.*)/
      time_format %m%d %H:%M:%S.%N
      path /var/log/cluster-autoscaler.log
      pos_file /var/log/es-cluster-autoscaler.log.pos
      tag cluster-autoscaler
    </source>

    # Logs from systemd-journal for interesting services.
    <source>
      type systemd
      filters [{ "_SYSTEMD_UNIT": "docker.service" }]
      pos_file /var/log/gcp-journald-docker.pos
      read_from_head true
      tag docker
    </source>

    <source>
      type systemd
      filters [{ "_SYSTEMD_UNIT": "kubelet.service" }]
      pos_file /var/log/gcp-journald-kubelet.pos
      read_from_head true
      tag kubelet
    </source>

    <source>
      type systemd
      filters [{ "_SYSTEMD_UNIT": "node-problem-detector.service" }]
      pos_file /var/log/gcp-journald-node-problem-detector.pos
      read_from_head true
      tag node-problem-detector
    </source>
  forward.input.conf: |-
    # Takes the messages sent over TCP
    <source>
      type forward
    </source>
  monitoring.conf: |-
    # Prometheus Exporter Plugin
    # input plugin that exports metrics
    <source>
      @type prometheus
    </source>

    <source>
      @type monitor_agent
    </source>

    # input plugin that collects metrics from MonitorAgent
    <source>
      @type prometheus_monitor
      <labels>
        host ${hostname}
      </labels>
    </source>

    # input plugin that collects metrics for output plugin
    <source>
      @type prometheus_output_monitor
      <labels>
        host ${hostname}
      </labels>
    </source>

    # input plugin that collects metrics for in_tail plugin
    <source>
      @type prometheus_tail_monitor
      <labels>
        host ${hostname}
      </labels>
    </source>
  output.conf: |-
    # Enriches records with Kubernetes metadata
    <filter kubernetes.**>
      type kubernetes_metadata
    </filter>

    <match **>
       type elasticsearch
       log_level info
       include_tag_key true
       host elasticsearch-logging
       port 9200
       logstash_format true
       logstash_prefix fluentd
       # Set the chunk limits.
       buffer_chunk_limit 2M
       buffer_queue_limit 8
       flush_interval 5s
       # Never wait longer than 5 minutes between retries.
       max_retry_wait 30
       # Disable the limit on the number of retries (retry forever).
       disable_retry_limit
       # Use multiple threads for processing.
       num_threads 2
    </match>
metadata:
  name: fluentd-es-config-v0.1.1
  labels:
    addonmanager.kubernetes.io/mode: Reconcile
```

`es-service.yaml`
```yaml
apiVersion: v1
kind: Service
metadata:
  name: elasticsearch-logging
  labels:
    k8s-app: elasticsearch-logging
    kubernetes.io/cluster-service: "true"
    addonmanager.kubernetes.io/mode: Reconcile
    kubernetes.io/name: "Elasticsearch"
spec:
  ports:
  - port: 9200
    protocol: TCP
    targetPort: db
  selector:
    k8s-app: elasticsearch-logging
```

`es-statefulSet.yaml`
```yaml
apiVersion: apps/v1beta2
kind: StatefulSet
metadata:
  name: elasticsearch-logging
  labels:
    k8s-app: elasticsearch-logging
    version: v5.6.4
    kubernetes.io/cluster-service: "true"
    addonmanager.kubernetes.io/mode: Reconcile
spec:
  serviceName: elasticsearch-logging
  replicas: 1
  selector:
    matchLabels:
      k8s-app: elasticsearch-logging
      version: v5.6.4
  template:
    metadata:
      labels:
        k8s-app: elasticsearch-logging
        version: v5.6.4
        kubernetes.io/cluster-service: "true"
    spec:
      nodeSelector:
        elastichost: "true"
      containers:
      - image: k8s.gcr.io/elasticsearch:v5.6.4
        name: elasticsearch-logging
        resources:
          # need more cpu upon initialization, therefore burstable class
          limits:
            cpu: 1000m
          requests:
            cpu: 100m
        ports:
        - containerPort: 9200
          name: db
          protocol: TCP
        - containerPort: 9300
          name: transport
          protocol: TCP
        volumeMounts:
        - name: es-pvc-volume
          mountPath: /data
        env:
        - name: MINIMUM_MASTER_NODES
          value: "1"
        - name: "NAMESPACE"
          valueFrom:
            fieldRef:
              fieldPath: metadata.namespace
      volumes:
      - name: es-pvc-volume
        persistentVolumeClaim:
          claimName: elasticsearch-logging-claim
      # Elasticsearch requires vm.max_map_count to be at least 262144.
      # If your OS already sets up this number to a higher value, feel free
      # to remove this init container.
      initContainers:
      - image: alpine:3.6
        command: ["/sbin/sysctl", "-w", "vm.max_map_count=262144"]
        name: elasticsearch-logging-init
        securityContext:
          privileged: true
```

`es-pvc.yaml`
```yaml
---
kind: PersistentVolumeClaim
apiVersion: v1
metadata:
  name: elasticsearch-logging-claim
spec:
  storageClassName: standard
  accessModes:
    - ReadWriteOnce
  resources:
    requests:
      storage: 2Gi
```

Запустите стек в вашем k8s
```shell
kubectl apply -f ./efk
```

Kibana поставим из helm чарта

```shell
helm upgrade --install kibana stable/kibana \
  --set "ingress.enabled=true" \
  --set "ingress.hosts={reddit-kibana}" \
  --set "env.ELASTICSEARCH_URL=http://elasticsearch-logging:9200" \
  --version 0.1.1
```

```shell
kubectl --namespace=default get pods -l "app=kibana"
```
```log
NAME                      READY   STATUS    RESTARTS   AGE
kibana-65f8986c64-tpgb2   1/1     Running   0          4m24s
```

Запустилось всё успешно с первого раза О_о

Интерфейс доступен по адресу http://reddit-kibana

Создаём index pattern `fluentd-*`

Откройте вкладку Discover в Kibana и введите в строку поиска выражение
```
kubernetes.labels.component:post OR kubernetes.labels.component:comment OR
kubernetes.labels.component:ui
```
и видим логи наших компонентов =)

Откройте любой из рез-тов поиска - в нем видно множество инфы о k8s

1. Особенность работы fluentd в k8s состоит в том, что его задача помимо сбора самих логов приложений, сервисов и хостов, также распознать дополнительные метаданные (как правило это дополнительные поля с лейблами)
2. Откуда и какие логи собирает fluentd - видно в его `fluentd-configmap.yaml` и в `fluentd-ds.yaml`
3. Общая схема работы fluentd представлена на след. слайде

### Задание со \*: Helm Chart EFK

Создайте Helm-чарт для установки стека EFK и поместите в
директорию charts

TODO: сделать.. как-нибудь потом, может бьыть - есть же уже готовые, например https://github.com/helm/charts/tree/master/stable/elastic-stack
