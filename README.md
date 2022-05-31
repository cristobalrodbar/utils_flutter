# flutter

canal flutter sdk:
```
 flutter channel
```

actualizar flutter sdk:
```
flutter upgrade
```

actualizar plugins:
```
flutter pub upgrade --major-versions
```

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

instalar versión específica:
```
flutter version "versión"
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
