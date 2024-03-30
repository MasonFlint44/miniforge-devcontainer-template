# Miniforge Devcontainer Template

This template is designed to streamline the setup of a Python development environment using Miniforge on Debian Bookworm. It's equipped with a collection of tools and extensions specifically chosen to enhance the Python development workflow, from code writing to testing and deployment.

## Features Overview

| Feature                 | Description                                                                                           |
|-------------------------|-------------------------------------------------------------------------------------------------------|
| **Operating System**    | Debian Bookworm, providing a stable foundation for development.                   |
| **Package Management**  | Miniforge, providing Conda and Mamba for efficient package and environment management.       |
| **Programming Language**| Python, ready for development right out of the box.                          |
| **Version Control**     | Git and Git LFS integrated for robust version control, including large file handling.          |
| **Containerization**    | Supports Docker-in-Docker and Docker-outside-of-Docker.              |
| **GitHub CLI**          | Facilitates interaction with GitHub repositories and services directly from the command line.         |
| **VSCode Extensions**   | A curated list of VSCode extensions installed, including essentials for Python development.           |
| **Testing Framework**   | Pytest configured to run tests from the `tests` directory, utilizing VSCode's test runner for ease of testing.      |
| **Environment Setup**   | Development and application dependencies are managed in separate files but merged in the development environment automatically by the `build-environment` task.    |

## Getting Started

1. **Clone and Open**: Clone this repository and open it in VSCode. The project will prompt to reopen in a devcontainer.
1. **Dev Environment Initialization**: The `build-environment` task runs automatically, preparing your development environment by integrating both development and application dependencies.
1. **Rename the Project Directory**: Rename the `/project` directory to match the name of your new project to get started.

## Managing Dependencies

- **Development Dependencies**: Defined in `environment.dev.yml`.
- **Application Dependencies**: Defined in `environment.yml`. A frozen set of these dependencies is created and stored in `environment.lock.yml` for reproducible deployments.
- **Automatic Merging**: The `build-environment` task merges your development and application dependencies when setting up your development environment. For managing dependencies, rely on this task rather than manually using Conda commands.

## Running Tests

Tests are run using VSCode's integrated test runner:

1. Navigate to the testing sidebar in VSCode.
1. You'll see your tests listed there. Test can be run directly from the UI.

## Running the Application

VSCode's `launch.json` is configured to debug the currently open Python file, allowing you to run and debug any part of your project easily.

> Note: You may need to tweak `launch.json` for specific project requirements, such as adding arguments or setting environment variables.

### Quick Start

- Open `project/main.py` or any Python file you intend to run.
- Use `F5` or the green play button in the "Run and Debug" sidebar to start debugging.

## Deployment

Deploy your application using the dependencies detailed in `environment.lock.yml` to guarantee that your deployment mirrors the tested state of your application.

## Contributing

We welcome contributions to improve the `miniforge-devcontainer-template`. Please follow the standard fork and pull request workflow. Make sure to add tests for new features and update the documentation as necessary.

## License

This project is licensed under the [MIT License](LICENSE.md).
