#!/bin/bash

# Configuraciones iniciales
BASE_DIR=~/repogit/UTN-FRA_SO_Examenes/202406/ansible
ROLE_DIR="$BASE_DIR/roles/2do_parcial"
TEMPLATE_DIR="$ROLE_DIR/templates"
TASKS_DIR="$ROLE_DIR/tasks"
TASKS_FILE="$TASKS_DIR/main.yml"
PLAYBOOK_FILE="$BASE_DIR/playbook.yml"
INVENTORY_DIR="$BASE_DIR/inventory"
INVENTORY_FILE="$INVENTORY_DIR/hosts"

# Validar que Ansible esté instalado
if ! command -v ansible-playbook &> /dev/null; then
    echo "Error: Ansible no está instalado. Por favor, instálalo antes de continuar."
    exit 1
fi

# Crear estructura de directorios necesarios
mkdir -p "$TEMPLATE_DIR" "$TASKS_DIR" "$INVENTORY_DIR"

# Crear archivo de plantilla datos_alumno.txt.j2
cat <<EOL > "$TEMPLATE_DIR/datos_alumno.txt.j2"
Nombre: {{ nombre }}
Apellido: {{ apellido }}
Division: {{ division }}
EOL
echo "Archivo $TEMPLATE_DIR/datos_alumno.txt.j2 creado."

# Crear archivo de plantilla datos_equipo.txt.j2
cat <<EOL > "$TEMPLATE_DIR/datos_equipo.txt.j2"
IP: {{ ip }}
Distribución: {{ distro }}
Cantidad de Cores: {{ cores }}
EOL
echo "Archivo $TEMPLATE_DIR/datos_equipo.txt.j2 creado."

# Crear archivo de tareas main.yml
cat <<EOL > "$TASKS_FILE"
- name: Crear directorios necesarios
  file:
    path: "/tmp/2do_parcial/{{ item }}"
    state: directory
    mode: '0755'
  loop:
    - alumno
    - equipo

- name: Crear archivo de datos del alumno
  template:
    src: datos_alumno.txt.j2
    dest: /tmp/2do_parcial/alumno/datos_alumno.txt
  vars:
    nombre: "Mateo Nicolas"
    apellido: "Garcia"
    division: "115"

- name: Crear archivo de datos del equipo
  template:
    src: datos_equipo.txt.j2
    dest: /tmp/2do_parcial/equipo/datos_equipo.txt
  vars:
    ip: "172.17.0.1"
    distro: "Ubuntu"
    cores: "1"

- name: Configurar sudoers para el grupo 2PSupervisores
  copy:
    content: '%2PSupervisores ALL=(ALL) NOPASSWD: ALL'
    dest: /etc/sudoers.d/2psupervisores
    validate: 'visudo -cf %s'
EOL
echo "Archivo $TASKS_FILE creado."

# Crear archivo de inventario
cat <<EOL > "$INVENTORY_FILE"
[local]
localhost ansible_connection=local
EOL
echo "Archivo $INVENTORY_FILE creado."

# Crear archivo playbook.yml
cat <<EOL > "$PLAYBOOK_FILE"
---
- name: Ejecutar el role 2do_parcial
  hosts: all
  become: yes
  roles:
    - 2do_parcial
EOL
echo "Archivo $PLAYBOOK_FILE creado."

# Verificar existencia de archivos críticos
if [ ! -f "$TASKS_FILE" ] || [ ! -f "$PLAYBOOK_FILE" ]; then
    echo "Error: No se pudieron crear los archivos necesarios."
    exit 1
fi

# Ejecutar el playbook de Ansible
cd "$BASE_DIR"
ansible-playbook -i "$INVENTORY_FILE" playbook.yml

