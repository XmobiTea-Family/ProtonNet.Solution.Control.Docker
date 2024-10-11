
# ProtonNet Server

![GitHub release](https://img.shields.io/github/release/XmobiTea-Family/ProtonNetSolution.svg)
![License](https://img.shields.io/github/license/XmobiTea-Family/ProtonNetSolution)
[![GitHub star chart](https://img.shields.io/github/stars/XmobiTea-Family/ProtonNetSolution?style=social)](https://star-history.com/#XmobiTea-Family/ProtonNetSolution)

# ProtonNet Control Docker

## I. Introduction
`ProtonNet Control Docker` is the Dockerized version of [ProtonNet Control](https://github.com/XmobiTea-Family/ProtonNet.Solution.Control), making it easier and more convenient to manage and deploy `ProtonNet Server` services in a containerized environment. By using Docker, you can run `ProtonNet Control` on any operating system that supports Docker without worrying about complex configurations and environment setups.

With Docker, you can quickly create and manage ProtonNet Server instances, as well as scale or shrink your system effortlessly.

## II. Benefits of Using ProtonNet Control Docker

- **Fast Deployment**: No complicated installations, just use Docker and deploy instantly.
- **Easy Scaling**: Scaling your `ProtonNet Server` services is simple and quick with Docker.
- **Integration with Container Management Systems**: ProtonNet Control Docker can easily integrate with systems like Kubernetes or Docker Swarm to manage and deploy applications in a microservices architecture.
- **Cross-Platform Compatibility**: Runs on all platforms that support Docker, such as Windows, Linux, and macOS.

## III. How to Use

### Step 1: Pull the Docker Image

To get started, pull the `ProtonNet Control` image from Docker Hub by running the following command:

```bash
docker pull xmobitea/protonnetcontrol
```

### Step 2: Run the Docker Container

Once downloaded, you can run the container using the following command:

```bash
docker run -d --name protonnetcontrol -v /path/to/your/config:/app/config xmobitea/protonnetcontrol
```

- `-v /path/to/your/config:/app/config`: Mount your configuration directory into the container so that ProtonNet Control can use it.
- `-d`: Run the container in detached mode, meaning it will run in the background.

### Step 3: Configure and Manage ProtonNet Services

You can easily manage your ProtonNet services by using the Docker container of `ProtonNet Control`. Add configurations to the config directory and use the control commands inside the container.

### Step 4: Stop and Remove the Container

If you want to stop or remove the container, use the following commands:

- To stop the container:
    ```bash
    docker stop protonnetcontrol
    ```
- To remove the container:
    ```bash
    docker rm protonnetcontrol
    ```

## IV. Docker Compose Example

You can also integrate `ProtonNet Control` with Docker Compose for easier service management. Below is an example of a Docker Compose configuration:

```yaml
version: '3'
services:
  protonnetcontrol:
    image: xmobitea/protonnetcontrol
    container_name: protonnetcontrol
    volumes:
      - ./config:/app/config
    ports:
      - "8080:8080"
    networks:
      - protonnet-network

networks:
  protonnet-network:
    driver: bridge
```

With this configuration, you can run all services related to ProtonNet in a synchronized manner.

## V. Support

If you encounter issues or have any questions, feel free to share them on [ProtonNet Discussions](https://discussions.protonnetserver.com) to get help from the community, or contact directly via email at changx.develop@gmail.com.

**Enjoy your development with ProtonNet Docker!**
