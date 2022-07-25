### Создание тестового приложения
#### Подготовка тестового приложения, эмулирующего основное приложение разрабатываемое вашей компанией
* Создайте отдельный git репозиторий с простым nginx конфигом, который будет отдавать статические данные.
* Подготовьте Dockerfile для создания образа приложения.

#### Ожидаемые результаты:
* Git репозиторий с тестовым приложением и Dockerfile.
* Регистр с собранным docker image. В качестве регистра может быть DockerHub или Yandex Container Registry, созданный также с помощью terraform.

#### Команды:
docker build . -t nginx
<br>docker run -d -p 80:80 nginx
<br>docker tag nginx cr.yandex/crprd3vckuutp1esmnn0/nginx:1.0.0
<br>docker push cr.yandex/crprd3vckuutp1esmnn0/nginx:1.0.0
