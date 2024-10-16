
# Amigos App

A simple Node.js web application that serves content using Express and EJS.

## Prerequisites
- **Docker** (for containerization)
- **Kubernetes** (for orchestration and scaling)

---

## Running the App with Docker

1. **Build the Docker Image**:
   ```bash
   docker build -t amigos-app .
   ```

2. **Run the Docker Container**:
   ```bash
   docker run -p 4000:3000 amigos-app
   ```
   This command maps the container's port 3000 to the host's port 4000.

3. **Access the App**:  
   Open a browser and go to `http://localhost:4000`.

---

## Running the App with Kubernetes

1. **Create the Deployment**:
   Define the deployment in a `deployment.yaml` file, which creates 3 replicas of the app.

2. **Create the Service**:
   Use a `service.yaml` to define a LoadBalancer service that exposes the app to external traffic.

3. **Deploy to Kubernetes**:
   ```bash
   kubectl apply -f deployment.yaml
   kubectl apply -f service.yaml
   ```

4. **Check Deployment Status**:
   Ensure all pods are running:
   ```bash
   kubectl get pods
   ```

5. **Access the App**:
   Once the service is up, access the app via the external IP or NodePort.

---

## Docker Overview
Docker is a platform that packages applications into containers, ensuring consistency across environments.

### Key Commands:
- `docker build`: Builds the image.
- `docker run`: Runs the container.
  
## Kubernetes Overview
Kubernetes is a platform for automating the deployment, scaling, and management of containerized applications.

### Key Concepts:
- **Pods**: The smallest deployable unit in Kubernetes, running containers.
- **Deployment**: Ensures a specified number of replicas are running.
- **Service**: Exposes pods to network traffic, handling load balancing.

---

## License
Made By : Depi Team
