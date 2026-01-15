# # 🎓 **Sistema de Intranet Educativa** 🎓

¡Bienvenido al Sistema de Intranet Educativa! 🚀
Esta plataforma multiplataforma (web y móvil) permite gestionar noticias, eventos y perfiles de usuarios en una institución educativa, integrando control de acceso por roles, publicación de contenido y visualización de información académica 📚.
Está diseñada para instituciones educativas que necesitan una gestión centralizada de su comunidad académica 🔥
``
---

## 📜 **Descripción General**

Sistema de Intranet Educativa es una aplicación multiplataforma desarrollada con React Native/Expo y backend PHP, orientada a la administración integral de una comunidad educativa.
Permite gestionar noticias y eventos, administrar usuarios según roles (administradores, docentes, alumnos), visualizar información académica y mantener comunicación institucional eficiente 📊.

---

## ✨ **Características Principales**

1.Autenticación y control de roles (Administrador, Docente, Alumno)

2.Gestión de noticias y eventos institucionales

3.Publicación de contenido multimedia (imágenes)

4.Visualización de datos personales y académicos

5.Sistema de sesiones con tokens seguros

6.Interfaz responsiva (web, tablet, móvil)

7.Solicitud de cuentas para nuevos usuarios

---

## 🛠️ **Requisitos del Sistema**

1.Antes de comenzar, asegúrate de contar con lo siguiente:
2.XAMPP 7.4 o superior
3.PHP 7.4+
4.MySQL / MariaDB
5.Node.js 14+ y npm
6.Expo CLI
👉 https://expo.dev/

---

# 📥 **Instalación**

## 📂 **Preparar el Proyecto**

1.Verifica que el proyecto esté en la carpeta de XAMPP:
C:\xampp\htdocs\Proyecto_Trabajo\Trabajo

2.Asegúrate de tener la estructura correcta:
- Backend/ (archivos PHP)
- Frontend/ (aplicación React Native)

## ▶️ **Iniciar Servicios**

Desde el Panel de Control de XAMPP, inicia:

1.Apache

2.MySQL

3.Instalar Dependencias del Frontend

4.Abre PowerShell o CMD, navega al proyecto y ejecuta:

    4.1cd C:\xampp\htdocs\Proyecto_Trabajo\Trabajo
    4.2npm install
Esto instalará las dependencias necesarias como React Navigation, AsyncStorage, Expo Image Picker y librerías adicionales ⚙️.

## 🚀 **Iniciar la Aplicación**

Para ejecutar la aplicación:

1.Para Web:
    npm start
    Luego presiona 'w' para abrir en navegador web

2.Para Android:
    npm start
    Luego presiona 'a' para abrir en emulador Android

3.Para iOS (solo macOS):
    npm start
    Luego presiona 'i' para abrir en simulador iOS

---

## 🗄️ **Configuración de Base de Datos**

1.Ubica el archivo SQL de la base de datos (si existe):

    1.1 intranet.sql
  
2.Accede a phpMyAdmin:

    2.1 http://localhost/phpmyadmin
  
3.Crea una nueva base de datos:

    3.1 Nombre: intranet

4.Importa la base de datos:

    4.1 Selecciona la base de datos intranet
  
5.Ve a la pestaña Importar

    5.1 Selecciona el archivo intranet.sql
  
Ejecuta la importación

###  🔁 ***Alternativamente, puedes importar desde consola:**
mysql -u root -p intranet < intranet.sql
📌 El archivo intranet.sql contiene la estructura completa con las tablas: personal_administrativo, docentes, alumnos, noticias, eventos, sesiones, matriculas, carreras y los datos iniciales necesarios para el correcto funcionamiento del sistema.

### 📋 **Estructura de Tablas Principales**

- **personal_administrativo**: Datos de administradores
- **docentes**: Datos de docentes (incluye especialidad)
- **alumnos**: Datos de alumnos
- **noticias**: Noticias publicadas
- **eventos**: Eventos institucionales
- **sesiones**: Tokens de sesión activos
- **matriculas**: Información de matrículas de alumnos
- **carreras**: Carreras académicas disponibles

---

##  🌐 **Acceso a la Aplicación**

### **Web:**
1.Abre el sistema desde tu navegador después de iniciar Expo:
http://localhost:8081

### **Móvil:**
1.Escanea el código QR con la app Expo Go (Android/iOS)
2.O conecta a la IP del servidor: http://[IP_SERVIDOR]:8081

### **Configuración de URLs**

El sistema detecta automáticamente la plataforma:
- **Web**: http://localhost/Proyecto_Trabajo/Trabajo/Backend/
- **Móvil**: http://[TU_IP]/Proyecto_Trabajo/Trabajo/Backend/

### ⚙️ **Configuración de IP para Móvil**

**⚠️ IMPORTANTE:** Debes cambiar la IP en los archivos JavaScript del Frontend por la IP correspondiente de tu equipo.

**Archivos a modificar:**
- `Frontend/src/index.js`
- `Frontend/src/administradores.js`
- `Frontend/src/docentes.js`
- `Frontend/src/alumnos.js`

**Pasos para configurar:**

1. **Obtén tu IP local:**
   - Windows: Abre CMD y ejecuta `ipconfig`, busca "Dirección IPv4"
   - Linux/Mac: Ejecuta `ifconfig` o `ip addr`

2. **Busca y reemplaza en los archivos JS:**
   ```javascript
   // Busca esta línea (o similar):
   'http://10.10.102.150/Proyecto_Trabajo/Trabajo/Backend/...'
   
   // Reemplázala por tu IP:
   'http://[TU_IP]/Proyecto_Trabajo/Trabajo/Backend/...'
   ```

3. **Ejemplo de cambio:**
   ```javascript
   // Antes:
   const API_BASE_URL = Platform.OS === 'web' 
       ? 'http://localhost/Proyecto_Trabajo/Trabajo/Backend/iniciosesion.php' 
       : 'http://10.10.102.150/Proyecto_Trabajo/Trabajo/Backend/iniciosesion.php';
   
   // Después (con tu IP, por ejemplo 192.168.1.100):
   const API_BASE_URL = Platform.OS === 'web' 
       ? 'http://localhost/Proyecto_Trabajo/Trabajo/Backend/iniciosesion.php' 
       : 'http://192.168.1.100/Proyecto_Trabajo/Trabajo/Backend/iniciosesion.php';
   ```

**Nota:** Asegúrate de que tu dispositivo móvil y tu computadora estén en la misma red Wi-Fi para que la conexión funcione correctamente.

---

##  👥 **Roles del Sistema**

### 👑 **Administrador**
1.Gestión completa de noticias y eventos

2.Publicación de contenido institucional

3.Visualización de datos personales

4.Acceso a todas las funcionalidades administrativas

### 🧑‍🏫 **Docente**
1.Visualización de noticias y eventos

2.Consulta de datos personales (incluye especialidad)

3.Acceso a portafolio (en desarrollo)

4.Visualización de malla curricular (en desarrollo)

### 👨‍🎓 **Alumno**
1.Visualización de noticias y eventos

2.Consulta de datos personales completos

3.Visualización de información de matrícula

4.Visualización de información de carrera

5.Acceso a portafolio (en desarrollo)

---

##  🔑 **Usuarios de Prueba**

**Nota:** Los usuarios de prueba deben estar creados en la base de datos con sus respectivas contraseñas hasheadas con SHA-512.

###  👑 **Administrador**
    1. Usuario: [admin]
    2. Contraseña: [admin123]

### 🧑‍🏫 **Docente**
    1. Usuario: [docente]
    2. Contraseña: [docente123]

### 👨‍🎓 **Alumno**
    1. Usuario: [alumno]
    2. Contraseña: [alumno123]

**Importante:** Las contraseñas en la base de datos deben estar almacenadas con hash SHA-512 para que el sistema funcione correctamente.

---

##  🗂️ ** Estructura del Proyecto **

```
Proyecto_Trabajo/
├── Trabajo/
│   ├── Backend/              Backend PHP (API REST)
│   │   ├── config.php        Configuración de BD y funciones
│   │   ├── iniciosesion.php  Autenticación de usuarios
│   │   ├── cerrar.php        Cierre de sesión
│   │   ├── noticias.php      Obtener noticias y eventos
│   │   ├── publicar.php      Publicar noticias/eventos (admin)
│   │   ├── DatosAdmin.php    Datos del administrador
│   │   ├── DatosDocentes.php Datos del docente
│   │   ├── Datosalumnos.php  Datos del alumno
│   │   └── save_image.php    Guardar imágenes
│   │
│   ├── Frontend/              Aplicación React Native/Expo
│   │   ├── src/
│   │   │   ├── index.js      Punto de entrada y login
│   │   │   ├── administradores.js  Panel de administración
│   │   │   ├── docentes.js   Panel de docentes
│   │   │   ├── alumnos.js    Panel de alumnos
│   │   │   ├── solicitarcuenta.js  Solicitud de cuenta
│   │   │   └── assets/       Imágenes y recursos
│   │   ├── public/
│   │   └── package.json      Dependencias del proyecto
│   │
│   ├── app.json              Configuración de Expo
│   └── package.json          Dependencias principales
│
├── documentation.txt         Documentación técnica
└── README_INTRANET.md        Este archivo
```

---

## 🔐 **Seguridad**

- **Autenticación**: Sistema de tokens de sesión con expiración (1 hora)
- **Contraseñas**: Almacenadas con hash SHA-512
- **CORS**: Configurado para permitir peticiones desde frontend
- **Validación**: Validación de sesiones en cada petición al backend
- **Tokens**: Generación segura con bin2hex(random_bytes(32))

---

## 📱 **Funcionalidades por Rol**

### 👑 **Administrador**
- ✅ Ver noticias y eventos
- ✅ Publicar noticias/eventos
- ✅ Ver datos personales
- ✅ Gestión de contenido
- ✅ Cerrar sesión
- ❌ Ver matrícula y carrera
- ❌ Acceso a portafolio
- ❌ Malla curricular

### 🧑‍🏫 **Docente**
- ✅ Ver noticias y eventos
- ✅ Ver datos personales
- ✅ Cerrar sesión
- 🚧 Acceso a portafolio (en desarrollo)
- 🚧 Malla curricular (en desarrollo)
- ❌ Publicar noticias/eventos
- ❌ Ver matrícula y carrera
- ❌ Gestión de contenido

### 👨‍🎓 **Alumno**
- ✅ Ver noticias y eventos
- ✅ Ver datos personales
- ✅ Ver matrícula y carrera
- ✅ Cerrar sesión
- 🚧 Acceso a portafolio (en desarrollo)
- 🚧 Malla curricular (en desarrollo)
- ❌ Publicar noticias/eventos
- ❌ Gestión de contenido

**Leyenda:**
- ✅ Disponible
- ❌ No disponible
- 🚧 En desarrollo

---

## 🚧 **Funcionalidades en Desarrollo**

- Cambiar contraseña
- Malla curricular (visualización completa)
- Plan estratégico institucional
- Portafolio de docentes
- Recuperar contraseña
- Sistema de notificaciones

---

## 📞 **Soporte**

Para solicitar una cuenta o reportar problemas, contacta a:
**intranet@virginiogomez.cl**

---

## 🛠️ **Tecnologías Utilizadas**

- **Frontend**: React Native, Expo, React Navigation
- **Backend**: PHP 7.4+, MySQL/MariaDB
- **Almacenamiento**: AsyncStorage
- **Imágenes**: Expo Image Picker
- **Fechas**: React Native Community DateTimePicker
- **Iconos**: Expo Vector Icons (Ionicons)

---

## 📝 **Notas Importantes**

1. Asegúrate de que Apache y MySQL estén corriendo antes de iniciar la aplicación
2. Las imágenes se guardan en: `Frontend/src/assets/`
3. Los tokens de sesión expiran después de 1 hora de inactividad
4. El sistema detecta automáticamente si está en web o móvil
5. Para desarrollo móvil, asegúrate de que el dispositivo y la computadora estén en la misma red

---

## 📄 **Licencia**

Este proyecto es propiedad de la institución educativa.

---



