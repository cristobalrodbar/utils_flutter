# Comandos misc. útiles

## firebase cloud functions

compilar y lanzar funciones del proyecto:
```
firebase deploy --only functions
```
compilar y lanzar algunas funciones del proyecto:
```
firebase deploy --only functions:addMessage,functions:makeUppercase
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
