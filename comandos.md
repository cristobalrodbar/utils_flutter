#Comandos útiles

## android
- keytool -list -keystore my-signing-key.keystore
  - ver información de una keystore

## angular
- ng new “nombre de nueva webapp”
  - crear nueva app

- ng serve -o
  - iniciar el servidor

- ng g c components/“nombre del componente a crear” 
  - crear un nuevo componente, agregar -is para no crear el css de ese archivo, --skipTests=true -is para no crear archivo .spec.ts ni el css
- ng build --prod
  - compila la app para uso en producción 
- http
  - Navegar a carpeta /dist y ejecutar http-server -o para hacer pruebas en pre producción

## firebase cloud functions
- firebase deploy --only functions
  - compilar y lanzar funciones del proyecto
- firebase deploy --only functions:addMessage,functions:makeUppercase
  - compilar y lanzar algunas funciones del proyecto

## flutter
- flutter create --org com.yourdomain appname
  - crear app nueva con paquete personalizado

- flutter clean
  - limpiar crap de librerías obsoletas/remove all generated/built artifacts
- flutter pub get/flutter packages get 
  - obtener librerías faltantes
- flutter build apk --release
  - generar apk de release
- flutter build appbundle
  - generar appbundle
- flutter logs
  - mostrar logs
- flutter build apk --split-per-abi
  - generar apk para distintas arquitecturas
- flutter run --release
  - builds a release version of the app and starts it directly, then shows the console UI to manipulate the running instance.
- flutter run --release -v
  - generar apk de release verbose mode con logs
- flutter run
  - builds a debug version of the app and starts it in "hot reload" mode, then shows the console UI to manipulate the running instance.
- flutter run --no-hot
  - builds a debug version of the app and starts it directly, then shows the console UI to manipulate the running instance.
- flutter run --profile
  - builds a profile version of the app and starts it directly, then shows the console UI to manipulate the running instance.

## git
- git branch -a
- git remote update origin --prune
  - actualizar ramas
- git pull
- git checkout
- git checkout -b "nueva rama"
- git s
  - es para ver los cambios en el proyecto, es un alias de git status -s
- git add .
  - guardar cambios
- git commit -m “mensaje descriptivo de los cambios realizados”
  - se hace un comentario acerca de los cambios en el proyecto
- git checkout -- .
  - regresar a última versión guardada, por si borré algo por error
- git log
  - muestra el historial del proyecto
- git commit --amend --no-edit
  - cuando la cago y no meto un archivo, meterlo en el último commit. 
- git stash
  - guardar cambios solo locales antes de bajar cambios de remoto
- git stash pop
  - utilizar los cambios guardados al bajar cambios de remoto
