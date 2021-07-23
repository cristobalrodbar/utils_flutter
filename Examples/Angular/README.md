# angular

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