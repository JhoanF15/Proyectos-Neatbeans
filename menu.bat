@ECHO OFF

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
ECHO [8] SALIR"

ECHO.

SET /P OPCION="INGRESAR OPCION: "

IF "1"=="%OPCION%" ( 
   CLS
   ECHO [1] CREAR UN CONTROL DE VERSION
   ECHO -------------------------------
   git init
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
   PAUSE
   GOTO INICIO
)

IF "3"=="%OPCION%" ( 
   CLS
   ECHO [3] REALIZAR PRIMER COMMIT
   ECHO --------------------------
   git add .
   git commit -m "SNAPSHOT 1"
   PAUSE
   GOTO INICIO
)

IF "4"=="%OPCION%" ( 
   CLS
   ECHO [4] REALIZAR EL COMMIT SOBRE EL ULTIMO
   ECHO --------------------------------------
   git add .
   git commit --amend -m "SNAPSHOT 1"   
   PAUSE
   GOTO INICIO
)

IF "5"=="%OPCION%" ( 
   CLS
   ECHO [5] CONFIGURAR REPOSITORIO REMOTO
   ECHO ---------------------------------
   git remote add origin https://github.com/JhoanF15/PRACTICAR_GIT.git
   PAUSE
   GOTO INICIO
)

IF "6"=="%OPCION%" ( 
   CLS
   ECHO [6] CAMBIAR NOMBRE DE LA RAMA PRINCIPAL DE MASTER A MAIN
   ECHO --------------------------------------------------------
   git branch -M main 
   PAUSE
   GOTO INICIO
)

IF "7"=="%OPCION%" ( 
   CLS
   ECHO [7] SUBIR EL REPOSITORIO LOCAL AL REMOTO
   ECHO ----------------------------------------
   git push -u -f origin main
   PAUSE
   GOTO INICIO
)

IF "8"=="%OPCION%" ( 
   CLS
   ECHO GRACIAS POR SU VISITA
   PAUSE
   EXIT
)

GOTO INICIO
