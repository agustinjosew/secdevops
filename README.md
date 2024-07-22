# Vulnerable Web Application

Este repositorio contiene una aplicación web vulnerable diseñada para demostrar y aprender sobre diversas vulnerabilidades de seguridad comunes en aplicaciones web.

## My focus zone

Me gustó este tema musical para trabajar estos conceptos [YouTube](https://youtu.be/XkVC62yzxlg?si=r8sc-R2SGcnx6IW5).

## Vulnerabilidades Específicas

### Cross-Site Scripting ([XSS](https://owasp.org/www-community/attacks/xss/))

- **Reflected XSS:** Los endpoints `/reflected_xss`, `/reflected_xss_2`, y `/reflected_xss_3` muestran cómo los datos no sanitizados se pueden reflejar en las respuestas.
- **Stored XSS:** El endpoint `/stored_xss` almacena datos proporcionados por el usuario en una variable global y los refleja sin sanitizar.
- **General XSS:** El endpoint `/general` tiene la protección XSS deshabilitada.

### Cross-Site Request Forgery ([CSRF](https://owasp.org/www-community/attacks/csrf))

- **Endpoint `/csrf`:** Demuestra cómo un atacante puede cambiar el número de cuenta de un usuario autenticado sin protección CSRF adecuada.
- **Endpoint protegido:** Hay un endpoint protegido por CSRF para comparación.

### Insecure Direct Object References ([IDOR](https://cheatsheetseries.owasp.org/cheatsheets/Insecure_Direct_Object_Reference_Prevention_Cheat_Sheet.html))

- **Endpoint `/private_pages/:id/document.html`:** Permite acceso directo a documentos basados en IDs que no están adecuadamente protegidos.

### Remote Code Execution ([RCE](https://socradar.io/top-10-rce-vulnerabilities-exploited-in-2023/))

- **Endpoint `/rce`:** Está diseñado para demostrar vulnerabilidades de ejecución remota de código.

### [Fuzzing](https://owasp.org/www-community/Fuzzing)

- **Endpoint `/fuzzing/:fuzz`:** Demuestra cómo ciertas entradas pueden provocar comportamientos inesperados, incluyendo la simulación de escritura de una clave privada en la base de datos.

### Autenticación

- **Endpoint `/auth_bypass`:** Muestra una vulnerabilidad donde la autenticación puede ser evadida.

## Cómo Desplegar la Aplicación en Vercel

### Prerrequisitos

- Tener una cuenta en [Vercel](https://vercel.com/).
- Tener Vercel CLI instalado. Podéss instalarlo usando npm:
  ```bash
  npm install -g vercel