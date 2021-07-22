# Comandos útiles

## android
ver información de una keystore:
```
keytool -list -keystore my-signing-key.keystore
```

## angular
crear nueva app:
```
ng new “nombre de nueva webapp”
```

iniciar el servidor:
```
- ng serve -o
```

crear un nuevo componente, agregar -is para no crear el css de ese archivo, --skipTests=true -is para no crear archivo .spec.ts ni el css:

```
ng g c components/“nombre del componente a crear” 
```

compila la app para uso en producción:
```
ng build --prod
```

Navegar a carpeta /dist y ejecutar http-server -o para hacer pruebas en pre producción:
``` 
http
```

## firebase cloud functions
compilar y lanzar funciones del proyecto:
```
firebase deploy --only functions
```
compilar y lanzar algunas funciones del proyecto:
```
firebase deploy --only functions:addMessage,functions:makeUppercase
```

## flutter
crear app nueva con paquete personalizado:
```
flutter create --org com.yourdomain appname
```

limpiar archivos basura de librerías obsoletas/remove all generated/built artifacts:
```
flutter clean
```

obtener librerías faltantes:
```
flutter pub get/flutter packages get
```

generar apk de release:
```
flutter build apk --release
```

generar appbundle:
```
flutter build appbundle
```

mostrar logs:
```
flutter logs
```

generar apk para distintas arquitecturas:
```
flutter build apk --split-per-abi
```

builds a release version of the app and starts it directly, then shows the console UI to manipulate the running instance.:
```
flutter run --release
```

generar apk de release verbose mode con logs:
```
flutter run --release -v
```

builds a debug version of the app and starts it in "hot reload" mode, then shows the console UI to manipulate the running instance:
```
flutter run
```

builds a debug version of the app and starts it directly, then shows the console UI to manipulate the running instance:
```
flutter run --no-hot
```

builds a profile version of the app and starts it directly, then shows the console UI to manipulate the running instance:
```
flutter run --profile
```
clean reinstall of the packages in your system cache

```
flutter pub cache repair
```

## git
ver ramas:
```
git branch -a
```

sincronizar/actualizar ramas:
```
git remote update origin --prune
```

jalar cambios:
```
git pull
```

seleccionar rama:
```
git checkout "rama"
```

crear y seleccionar rama:
```
git checkout -b "nueva rama"
```

es para ver los cambios en el proyecto, es un alias de git status -s:
```
git s
```

guardar cambios:
```
git add .
```

se hace un comentario acerca de los cambios en el proyecto:
```
git commit -m “mensaje descriptivo de los cambios realizados”
```

regresar a última versión guardada, por si borré algo por error:
```
git checkout -- .
```

muestra el historial del proyecto:
```
git log
```

agregar un archivo al último commit:
```
git commit --amend --no-edit
```

guardar cambios locales antes de bajar cambios de remoto:
```
git stash
```

utilizar los cambios guardados al bajar cambios de remoto:
```
git stash pop
```
