<h1 style="text-align: center">JupyterHub</h1>
<a href="https://jupyter.org/hub"> <img src="https://jupyter.org/assets/homepage/hublogo.svg" width="50%" style="display: block; margin-left: auto; margin-right: auto;" alt="JupyterHub"></a>

<h2>Установка</h2>
<h3>1) Клонируем текущий репозиторий</h2>
```shell
git clone https://github.com/NasaVasa/JupyterHub.git
```
<h3>2) Переходим в созданную папку</h2>
```shell
cd JupyterHub
```
<h3>3) Создаём образ, хранилище и контейнер</h2>
```shell
docker-compose up
```
<h3>4) Комментарии к установке</h2>
<ul>
<li>Jupyter Hub будет развёрнут на 80 порту</li>
<li>Данные папки "/home" постоянно хранятся</li>
<li>Логин и пароль к доступу admin-admin</li>
<li>при запуске контейнера/сборке образа Jupyter Hub загружается Jupyter Notebook из заданной директории, объявленной в docker-compose.yml</li>
<li>Необходимо использовать docker-compose версии 3.9</li>

</ul>