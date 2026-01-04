# Calculadora Web – Docker, Docker Compose & Kubernetes

Este proyecto es una **aplicación web estática (HTML + NGINX)** containerizada y desplegada utilizando distintas herramientas de orquestación y automatización.
El objetivo principal del repositorio es **demostrar conocimientos prácticos de DevOps**, cubriendo el flujo completo desde el código hasta el despliegue en Kubernetes.

---

## Tecnologías utilizadas

- Docker  
- Docker Compose  
- GitHub Actions (CI/CD)  
- Docker Hub  
- Kubernetes  
- Minikube  
- NGINX  
- HTML / CSS / JavaScript  
- Vagrant (VM local)

## Imagen "Calculadora"  

La aplicación es una calculadora creada en HTML.  
Es una calculadora simple: se ingresan dos valores, se elige la operación deseada (suma, resta, multiplicación o división), se hace clic en el botón **“Calcular”** y se obtiene el resultado de la cuenta.

En la siguiente imagen se muestra un ejemplo donde se suman los valores **25** y **50**.

![Calculadora](https://github.com/PabloMinio/desafio14/assets/81270459/853c4ecd-f1b4-4fdf-bbd4-8ced39dc8fe1)

## Instalar y ejecutar imagen con Docker

1) Buildeamos la imagen
```
docker build -t calculadora .
```
2) Ejecutamos la imagen
```
docker run -dp 80:80 calculadora
```
3) Verificamos la imagen
```
docker ps
```

## Instalar y ejecutar imagen con Docker Compose

Esta opción utiliza una imagen publicada en Docker Hub, construida automáticamente mediante GitHub Actions.
```
docker compose up -d
```

## Desplegar con Kubernetes

El despliegue en Kubernetes está pensado para un entorno local, ejecutándose sobre Minikube dentro de una VM.

1) Iniciamos Minikube
```
minikube start
```
2) Aplicamos los Manifests
```
kubectl apply -f k8s/
```
3) Exponemos el servicio
```
kubectl port-forward --address 0.0.0.0 service/calculadora-service 8080:80
```

## Funcionamiento de la imagen  
En nuestro navegador
```
localhost:8080
```
