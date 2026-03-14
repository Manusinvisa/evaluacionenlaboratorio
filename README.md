# 🎬 CineApp Cusco - Evaluación de Laboratorio

App de películas desarrollada en Flutter con arquitectura Riverpod.

## 🛠 Bugs Corregidos
1. **Inmutabilidad:** Se aplicó `const` en el modelo `Movie`.
2. **Lógica HTTP:** Se ajustó la condición de error en `MovieService`.
3. **Arquitectura:** Se sincronizó el nombre del archivo con `part '...'` para Riverpod.
4. **Reactividad:** Se cambió `ref.read` por `ref.watch` para actualizar la UI en tiempo real.
5. **Diseño Responsivo:** Implementación de `LayoutBuilder` intercambiando `GridView` y `ListView` según el ancho de pantalla.

## 🚀 Tecnologías
- **Flutter** (Framework)
- **Riverpod** (Gestión de estado)
- **Riverpod Generator** (Generación de código)