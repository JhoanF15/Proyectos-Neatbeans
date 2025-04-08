@ECHO OFF
SETLOCAL ENABLEDELAYEDEXPANSION

:INICIO
CLS
ECHO MENU
ECHO ----
ECHO [1] CREAR UN CONTROL DE VERSION 
ECHO [2] CONFIGURAR USUARIO: NOMBRE-EMAIL-PASSWORD
ECHO [3] REALIZAR PRIMER COMMIT
ECHO [4] REALIZAR EL COMMIT SOBRE EL ULTIMO
ECHO [5] CONFIGURAR REPOSITORIO REMOTO
ECHO [6] CAMBIAR NOMBRE DE LA RAMA PRINCIPAL DE MASTER A MAIN
ECHO [7] SUBIR EL REPOSITORIO LOCAL AL REMOTO
ECHO [8] CAMBIAR DE REPOSITORIO REMOTO
ECHO [9] SALIR"

ECHO.

SET /P OPCION="INGRESAR OPCION: "

IF "1"=="%OPCION%" ( 
    CLS
    ECHO [1] CREAR UN CONTROL DE VERSION
    ECHO -------------------------------
    git init
    IF ERRORLEVEL 1 (
        ECHO Error al inicializar el repositorio.
    ) ELSE (
        ECHO Repositorio inicializado correctamente.
    )
    PAUSE
    GOTO INICIO
)

IF "2"=="%OPCION%" ( 
    CLS
    ECHO [2] CONFIGURAR USUARIO: NOMBRE-EMAIL-PASSWORD
    ECHO ---------------------------------------------
    git config user.name JhoanF15
    git config user.email jhoancarlos240804@gmail.com
    git config user.password SkinnyFlakk15
    ECHO Usuario configurado correctamente.
    PAUSE
    GOTO INICIO
)

IF "3"=="%OPCION%" ( 
    CLS
    ECHO [3] REALIZAR PRIMER COMMIT
    ECHO --------------------------
    git add .
    git commit -m "SNAPSHOT 1"
    IF ERRORLEVEL 1 (
        ECHO Error al realizar el commit.
    ) ELSE (
        ECHO Commit realizado correctamente.
    )
    PAUSE
    GOTO INICIO
)

IF "4"=="%OPCION%" ( 
    CLS
    ECHO [4] REALIZAR EL COMMIT SOBRE EL ULTIMO
    ECHO --------------------------------------
    git add .
    git commit --amend -m "SNAPSHOT 1"     
    IF ERRORLEVEL 1 (
        ECHO Error al modificar el commit.
    ) ELSE (
        ECHO Commit modificado correctamente.
    )
    PAUSE
    GOTO INICIO
)

IF "5"=="%OPCION%" ( 
    CLS
    ECHO [5] CONFIGURAR REPOSITORIO REMOTO
    ECHO ---------------------------------
    git remote add origin https://github.com/JhoanF15/PRACTICAR_GIT.git
    IF ERRORLEVEL 1 (
        ECHO Error al configurar el repositorio remoto.
    ) ELSE (
        ECHO Repositorio remoto configurado correctamente.
    )
    PAUSE
    GOTO INICIO
)

IF "6"=="%OPCION%" ( 
    CLS
    ECHO [6] CAMBIAR NOMBRE DE LA RAMA PRINCIPAL DE MASTER A MAIN
    ECHO --------------------------------------------------------
    git branch -M main 
    IF ERRORLEVEL 1 (
        ECHO Error al cambiar el nombre de la rama.
    ) ELSE (
        ECHO Rama principal renombrada a main.
    )
    PAUSE
    GOTO INICIO
)

IF "7"=="%OPCION%" ( 
    CLS
    ECHO [7] SUBIR EL REPOSITORIO LOCAL AL REMOTO
    ECHO ----------------------------------------
    SET /P CONFIRMACION="¿Estás seguro de que deseas forzar el envío de los cambios? (S/N): "
    IF /I "!CONFIRMACION!"=="S" (
        git push -u -f origin main
        IF ERRORLEVEL 1 (
            ECHO Error al enviar los cambios al repositorio remoto.
        ) ELSE (
            ECHO Cambios enviados correctamente al repositorio remoto.
        )
    ) ELSE (
        ECHO Envío de cambios cancelado.
    )
    PAUSE
    GOTO INICIO
)

IF "8"=="%OPCION%" ( 
    CLS
    ECHO  [8] Cambiar de REPOSITORIO REMOTO
    ECHO ----------------------------------------
    SET /P REPOSITORIO= " INGRESE NUEVO REPOSITORIO? "
    git remote set-url origin "!REPOSITORIO!"
    IF ERRORLEVEL 1 (
        ECHO Error al cambiar el repositorio remoto.
    ) ELSE (
        ECHO Repositorio remoto cambiado correctamente.
    )
    PAUSE
    GOTO INICIO
)

IF "9"=="%OPCION%" ( 
    CLS
    ECHO GRACIAS POR SU VISITA
    PAUSE
    EXIT
)

GOTO INICIO