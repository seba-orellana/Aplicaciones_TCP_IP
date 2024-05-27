# Apps con Streamlit
Streamlit es un marco de desarrollo de código abierto que permite crear aplicaciones web interactivas utilizando solo Python. Es especialmente popular en el campo de la ciencia de datos y el aprendizaje automático debido a su facilidad de uso y su capacidad para crear aplicaciones web rápidamente sin tener que escribir código HTML, CSS o JavaScript.

Streamlit proporciona una amplia variedad de widgets interactivos que los usuarios pueden usar para crear interfaces de usuario intuitivas y atractivas. Estos widgets incluyen controles deslizantes, botones, cuadros de texto y más, que permiten a los usuarios interactuar con los datos y ajustar los parámetros de la aplicación en tiempo real.

Una de las características más destacadas de Streamlit es su capacidad para actualizar automáticamente la interfaz de usuario en función de los cambios en el código subyacente. Esto significa que los desarrolladores pueden hacer cambios en su código y ver los resultados instantáneamente en la aplicación web sin tener que recargar la página.

Por otro lado, se integra perfectamente con bibliotecas populares de visualización de datos en Python, como Matplotlib, Plotly y Altair. Esto permite a los usuarios crear gráficos y visualizaciones de datos de alta calidad y mostrarlos en sus aplicaciones web con solo unas pocas líneas de código.

Una vez que se ha creado una aplicación en Streamlit, desplegarla en línea es fácil

Este repositorio demuestra cómo utilizar Streamlit para implementar algunas apps.

## Instalación
Streamlit es una framework de código abierto en el marco de la aplicación es muy fácil de comenzar.

Instalar Streamlit localmente
```shell
pip install streamlit
streamlit hello #Validar instalación
```

Streamlit requiere Python 3.8+.

Es muy recomendable usar un entorno virtual para su proyecto porque instalar o actualizar un paquete de Python puede causar efectos no intencionales en otro paquete. venv es la opción estándar.

Procediendo con el entorno venv, se debe crear un nuevo directorio para empezar.
```shell
mkdir my_app_name
cd my_app_name
```
Reemplazar my_app_name con el nombre de tu proyecto. Cambiar al nuevo directorio.

Luego, se debe configuar el entorno virtual.
```shell
python3 -m venv .venv
source .venv/bin/activate
```

Después, se procede a instalar Reflex, el cual esta disponible como un paquete pip.
```shell
pip install streamlit
```

## Proyecto
Para inicializar un proyecto debes crear un archivo `archivo.py` y modificarlo según el programa que desees crear. Aquí es donde escribirás la lógica de tu app.

Para correr esa aplicación, se debe ejecutar:
```shell
streamlit run archivo.py
```
Tan pronto como ejecute el script como se muestra arriba, un servidor Streamlit local gire y su aplicación se abrirá en una nueva pestaña en su navegador web predeterminado. La aplicación es su lienzo, donde dibujará cuadros, texto, widgets, tablas y más.

## Ejemplo
En el directorio del repositorio de GitHub donde se encuentra este Readme.md hay tres archivos correspondientes a programas distintos: `app.py`, `pc.py`y `uber_pickups.py`. Si te copias los archivos e instalas las librerias y paquetes necesarios para correr tal aplicación mediante el archivo `requirements.txt` que se encuentra allí también, podrás ejecutar cualquiera de las apps dentro de tu entorno virtual o de tu host local.

```shell
pip install -r requirements.txt
```

Una vez que tienes instalado lo necesario, para ejecutar el programa debes hacer:
```shell
streamlit run nombre_de_la_app.py
```
La aplicación ya debería correr en la dirección IP de tu localhost y el puerto 8501. Puedes acceder desde otro dispositivo mediante la dirección IP correspondiente y el puerto 8501.

## Dockerfile
Este readme proporciona el enlace a un repositorio de DockerHUb donde se encuentra un archivo de Dockerfile. El Dockerfile es un archivo de texto que contiene una serie de instrucciones que Docker utiliza para construir una imagen de contenedor.

¿Por qué usar contenedores?
Los contenedores ofrecen varias ventajas significativas para el desarrollo y la implementación de aplicaciones:

- Portabilidad: Los contenedores encapsulan toda la aplicación y sus dependencias, lo que los hace altamente portátiles. Puedes ejecutar los mismos contenedores en diferentes entornos de desarrollo, pruebas y producción sin preocuparte por las diferencias en la configuración del sistema operativo o las bibliotecas.

- Aislamiento: Los contenedores proporcionan un entorno aislado para ejecutar aplicaciones, lo que significa que cada contenedor tiene su propio sistema de archivos, red y procesos. Esto ayuda a prevenir conflictos entre las aplicaciones y garantiza que una aplicación no afecte negativamente a otras que se ejecuten en el mismo host.

- Escalabilidad: Los contenedores son ligeros y rápidos de iniciar, lo que los hace ideales para escalar aplicaciones según la demanda. Puedes implementar múltiples instancias de un contenedor para manejar cargas de trabajo variables y distribuir la carga de manera eficiente.

- Consistencia: Al utilizar contenedores, puedes garantizar que todas las instancias de una aplicación se ejecuten de la misma manera, independientemente del entorno. Esto facilita la configuración y la administración de aplicaciones, ya que no hay sorpresas inesperadas debido a diferencias en la configuración del sistema.

- Despliegue rápido: Los contenedores permiten empaquetar y distribuir aplicaciones de manera rápida y eficiente. Puedes implementar nuevas versiones de aplicaciones con facilidad y revertir a versiones anteriores en caso de problemas, lo que facilita la entrega continua y la integración continua.

En el caso de que requieras clonar el repositorio y obtener los archivos debes generar la imagen, antes del contenedor, a partir de los archivos que se encuentran en esta carpeta, principalmente el Dockerfile. Para hacerlo, debes ejecutar los siguientes comandos:

```shell
git clone git@github.com:andresbuten2002/Aplicaciones_TCP_IP.git
cd Aplicaciones_TCP_IP/Puntapie/04-Python-web-apps/andresbuten2002/docker_apps_streamlit/
docker built -t "nombre de la imagen" .
```

Con la imagen ya creada, procedes a crear el contenedor. Para ello debes implementar el siguiente comando:
```shell
docker run -it --network host bocha2002/streamlit:1.0
```
Para correr la `app.py`, la cual muestra una barra de progreso que se actualiza dinámicamente para mostrar el progreso de una larga tarea de computación, debes ejecutar el siguiente comando:

```shell
streamlit run app.py
```

La aplicación ya debería correr en la dirección IP de tu localhost y el puerto 8501. Puedes acceder desde otro dispositivo mediante la dirección IP correspondiente y el puerto 8501.

Lo mismo con las otras aplicaciones que estan disponibles en este repositorio. Debes colocar el nombre del archivo `.py` correspondiente.

```shell
streamlit run "archivo.py"
```

La aplicación correspondiente al archivo `pc.py` muestra algo de información de tu máquina en tiempo real(cada vez que recargues la página).

Por otro lado, La aplicación correspondiente al archivo `uber_pickups.py` permite visualizar los datos de recogida de Uber en la ciudad de Nueva York. Puedes seleccionar la hora mediante una barra deslizadora.

La tercer manera de correr la aplicación es accediendo a la imagen ya creada en DockerHub. El repositorio se encuentra en: [bocha2002/streamlit](https://hub.docker.com/repository/docker/bocha2002/streamlit/general). Allí deber implementar el siguiente comando para obtener el archivo de Dockerfile. Recuerda que debes haber iniciado sesión con `docker login` en tu terminal.

```shell
docker pull bocha2002/streamlit:1.0
```

Una vez que ya tienes la imagen descargada solo debes levantar el contenedor. Para ello debes implementar el siguiente comando:
```shell
docker run -it --network host bocha2002/streamlit:1.0
```
De la misma manera que antes, debes elegir que app ejecutar, modificar o crear una nueva. Después, en la dirección de (http://localhost:8501) ya tienes tu app corriendo. Puedes acceder desde otro dispositivo mediante la dirección IP correspondiente y el puerto 8501.

