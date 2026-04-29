# Donar+ 🩸
### Red de Donación de Sangre y Médula - Rosario

Este proyecto es una plataforma web de gestión logística y social diseñada para centralizar y optimizar la red de donación de sangre en la ciudad de Rosario. El sistema conecta en tiempo real la necesidad de los hospitales con la disponibilidad de donantes voluntarios aptos.

---

## 🚀 Contexto del Proyecto
Desarrollado como proyecto final para la materia Practicas Profesionalizantes 2 de la **Técnicatura en Análisis de Sistemas Funcionales**. El objetivo principal es resolver la fragmentación en la comunicación de urgencias médicas y profesionalizar el seguimiento de los donantes.

## 🛠️ Stack Tecnológico
* **Lenguaje:** PHP (Arquitectura MVC pura)
* **Base de Datos:** MySQL (Gestionada con SQLyog y PHPMyAdmin)
* **Frontend:** HTML5, CSS3, JavaScript

---

## 👥 Actores y Funcionalidades Principales

### 1. Donante
* **Registro y Perfil:** Creación de cuenta y gestión de datos personales.
* **Triaje de Salud:** Cuestionario de pre-aptitud para validar condiciones básicas.
* **Alertas:** Visualización de pedidos de urgencia.

### 2. Hemo-Admin (Administrador de Hospital)
* **Gestión de Urgencias:** Creación, edición y cierre de peticiones de sangre por grupo y factor.
* **Reportes:** Generación de estadísticas sobre donaciones recibidas y solicitudes completadas.

### 3. Super Admin
* **Gestión de Centros:** Alta y baja de Centros de Hemoterapia (Hospitales).
* **Control de Personal:** Creación y gestión de cuentas para Hemo-Admins.

---

## 📈 Requisitos No Funcionales (RNF)
* **Seguridad:** Encriptación de contraseñas y protección de datos sensibles bajo normativas de privacidad.
* **Performance:** Filtros SQL de matching optimizados para responder en menos de 1 segundo.
* **Disponibilidad:** Objetivo de uptime del 99.9% dada la naturaleza crítica de las urgencias.
* **Escalabilidad:** Arquitectura preparada para expandirse a otras regiones.

---

## 🗄️ Base de Datos
El esquema de la base de datos está normalizado para garantizar la integridad de la información. El script de creación se encuentra en la carpeta `/database`.

**Tablas principales:**
* `usuarios`: Almacena donantes y administradores.
* `centros_hemoterapia`: Datos de los hospitales integrados.
* `Administradores`: Datos del administrador.
* `peticiones`: Registro de solicitudes de sangre.

---

## 📂 Estructura del Repositorio
* `/src`: Código fuente bajo el patrón MVC (Models, Views, Controllers).
* `/docs`: Documentación técnica, casos de uso y manuales.
* `/public`: Recursos estáticos (imágenes, CSS, JS).

---

## 👥 Equipo de Desarrollo
* Alvarez Manuel Elian
* Alarcon Dario
* Brid Federico
* Franco Evelyn
* Lapresa Ivan
* Rodriguez Victor
* Torres Facundo
* Singh Nidia (Profesora)

---
*Este proyecto se encuentra bajo desarrollo activo como parte de la formación académica en Análisis de Sistemas.*