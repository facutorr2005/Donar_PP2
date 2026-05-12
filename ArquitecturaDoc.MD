Arquitectura del Proyecto Donar+
Descripción General

Donar+ es una aplicación web desarrollada bajo arquitectura MVC (Modelo - Vista - Controlador), orientada a la gestión de donantes de sangre, hemocentros y solicitudes de donación.

La arquitectura fue diseñada para separar responsabilidades y facilitar:

mantenimiento del sistema
escalabilidad
organización del código
reutilización de componentes
trabajo en equipo
Estructura General del Proyecto
DonarApp/

├── Config/
├── Controllers/
├── Core/
├── Models/
├── Public/
├── Views/
└── .htaccess
CONFIG
Config/database.php

Contiene la configuración de conexión a la base de datos mediante PDO.

Responsabilidades:

conexión a MySQL/MariaDB
manejo de errores de conexión
centralización de credenciales
CONTROLLERS

Los controladores gestionan la lógica del sistema y actúan como intermediarios entre las vistas y los modelos.

AuthController.php

Controlador encargado del módulo de autenticación.

Responsabilidades:

inicio de sesión
cierre de sesión
registro de usuarios
recuperación de contraseña
validación de sesiones
control de acceso

Este controlador no representa una tabla de la base de datos, sino una funcionalidad del sistema.

UsuariosController.php

Controlador encargado de la gestión de usuarios y donantes.

Responsabilidades:

listar usuarios
editar usuarios
visualizar perfiles
administrar datos de donantes

Trabaja principalmente con:

UsuarioModel
SolicitudesController.php

Controlador encargado de las solicitudes de donación.

Responsabilidades:

crear solicitudes
editar solicitudes
eliminar solicitudes
visualizar solicitudes activas

Trabaja principalmente con:

SolicitudModel
HemocentrosController.php

Controlador encargado de la gestión de hemocentros.

Responsabilidades:

registrar hemocentros
editar información
listar hemocentros
administrar estado de hemocentros

Trabaja principalmente con:

HemocentroModel
DashboardController.php

Controlador encargado del panel principal del sistema.

Responsabilidades:

mostrar estadísticas
cargar paneles según el rol del usuario
mostrar información general del sistema
MODELS

Los modelos representan las entidades de la base de datos y contienen la lógica de acceso a datos.

UsuarioModel.php

Representa la tabla:

usuarios

Responsabilidades:

registrar usuarios
buscar usuarios
actualizar información
validar emails
obtener donantes compatibles
SolicitudModel.php

Representa la tabla:

solicitudes

Responsabilidades:

crear solicitudes
actualizar solicitudes
listar solicitudes
gestionar urgencias
HemocentroModel.php

Representa la tabla:

hemocentros

Responsabilidades:

registrar hemocentros
editar información
obtener hemocentros activos
TipoSangreModel.php

Representa la tabla:

tipo_sangre

Responsabilidades:

obtener tipos sanguíneos
listar compatibilidades
FactorRhModel.php

Representa la tabla:

factor_rh

Responsabilidades:

obtener factores RH
gestionar compatibilidades RH
RecuperacionContrasenaModel.php

Representa la tabla:

recuperacion_contrasena

Responsabilidades:

generar códigos de recuperación
validar códigos
controlar expiraciones
manejar intentos de recuperación
VIEWS

Las vistas representan la interfaz gráfica del sistema.

Responsabilidades:

mostrar información al usuario
formularios
interacción visual
paneles del sistema
Auth/

Contiene vistas relacionadas con autenticación:

login.php
registro.php
Dashboard/

Contiene el panel principal del sistema.

Solicitudes/

Contiene vistas relacionadas con solicitudes de donación:

crear.php
editar.php
index.php
Usuarios/

Contiene vistas relacionadas con usuarios y donantes.

CORE
router.php

Encargado de gestionar las rutas del sistema.

Responsabilidades:

interpretar URLs
redireccionar controladores
cargar acciones correspondientes
PUBLIC

Contiene archivos públicos accesibles desde el navegador.

Css/

Archivos de estilos visuales.

Js/

Archivos JavaScript del sistema.

index.php

Punto de entrada principal de la aplicación.

FLUJO MVC DEL SISTEMA
Usuario
↓
Vista (Formulario)
↓
Controlador
↓
Modelo
↓
Base de Datos

Retorno:

Base de Datos
↓
Modelo
↓
Controlador
↓
Vista
↓
Usuario
TECNOLOGÍAS UTILIZADAS
PHP
MySQL / MariaDB
PDO
HTML5
CSS3
JavaScript
Arquitectura MVC
OBJETIVO DEL PROYECTO

Desarrollar una plataforma que permita conectar donantes voluntarios con hemocentros y centros de salud, optimizando la búsqueda de donantes compatibles y mejorando la respuesta ante situaciones de urgencia.