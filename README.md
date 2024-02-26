AWS Keys: Secrets created for AWS access keys and secret keys, as encrypted secrets. These secrets can be defined at the repository level and accessed within GitHub workflows.

Local: Initially, I installed the Spring Boot application locally and tested it. During this phase, I encountered challenges such as dependency, version issues configuration issues.

Local Container: I created a Dockerfile with the same code, built the image, and ran it locally, and it worked perfectly fine. During this phase, I faced issues like parameter configuration issues and fixed them to run the container locally.

EKS Cluster: I utilized a Terraform script to create an EKS cluster. While I used public modules here for creating the cluster, in an enterprise setting, we typically create our own reusable modules to build infrastructure. I provide best practices for creating Terraform workflows, including modules, backend, variables, and tfvars. Additionally, I utilized the ECR registry to push Docker images.

GitHub Action: Leveraging GitHub Action workflows for CI/CD purposes, the stages include building the Spring Boot code, generating the JAR file, creating a Docker image based on the JAR file and instructions provided in the Dockerfile, installing the required AWS CLI package, authenticating to AWS ECR, pushing the Docker image to Elastic Container Registry (ECR), and updating the AWS EKS cluster configuration and deploying the Kubernetes application.

Unit Test: Typically, we set up a trigger in the GitHub repository containing our test codes. These tests run automatically whenever there is a new commit to the remote repository. Additionally, we can configure alerts to be sent to Microsoft Teams/Slack, a setup I implemented in my recent project.
