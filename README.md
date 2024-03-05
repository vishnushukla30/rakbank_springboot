AWS Keys: IAM attached roles can be used in EC2 instance for accessing AWS resources where no need to provide the keys only I am role with required permission needed, here i am using secrets created for AWS access keys and secret keys, as encrypted secrets. These secrets can be defined at the repository level and accessed within GitHub workflows.

Local: Initially, I installed the Spring Boot application locally and tested it. During this phase, I encountered challenges such as dependency, version issues configuration issues.

Local Container: I created a Dockerfile with the same code, built the image, and ran it locally, and it worked perfectly fine. During this phase, I faced issues like parameter configuration issues and fixed them to run the container locally.

EKS Cluster: I utilized a Terraform script to create an EKS cluster. While I used public modules here for creating the cluster, in an enterprise setting, we typically create our own reusable modules to build infrastructure. I provide best practices for creating Terraform workflows, including modules, backend, variables, and tfvars. Additionally, I utilized the ECR registry to push Docker images.

GitHub Action: Leveraging GitHub Action workflows for CI/CD purposes, the stages include building the Spring Boot code, generating the JAR file, creating a Docker image based on the JAR file and instructions provided in the Dockerfile, installing the required AWS CLI package, authenticating to AWS ECR, pushing the Docker image to Elastic Container Registry (ECR), and updating the AWS EKS cluster configuration and deploying the Kubernetes application.

<img width="1427" alt="image" src="https://github.com/vishnushukla30/rakbank_springboot/assets/25581203/4fb41645-8719-4625-8363-9a719985d80d">




Synk has been implemented for Static application security testing and integrated with Gihub reposiroty, scan code results are available on the Synk dashboard. 

<img width="1426" alt="image" src="https://github.com/vishnushukla30/rakbank_springboot/assets/25581203/2de06a34-fb66-41b0-9a3e-a0d8b2dc51a1">




Challenges: 
Networking Configuration: Setting up networking configurations such as VPC, subnets, and security groups to ensure proper communication between EKS clusters and other AWS services.

EKS Cluster Setup: Configuring an EKS cluster with Terraform, including node groups, IAM roles, and Kubernetes configurations, while ensuring compatibility with the my application.

GitHub Actions Workflow: Designing a GitHub Actions workflow to automate the deployment process, including building the application, creating Docker images, and deploying to EKS. Ensuring proper integration with GitHub repositories and handling secrets securely.

Docker Image Optimization: Optimizing Docker images for the Java application to reduce image size and improve deployment speed. Addressing challenges related to dependencies, layers, and caching strategies.

Infrastructure as Code (IAC): Managing infrastructure as code with Terraform to define and provision AWS resources required for the EKS deployment. Addressing challenges related to resource dependencies, state management, and Terraform best practices as used modules had lot of issues and was getting error but continue to fix those issues.


<img width="1432" alt="image" src="https://github.com/vishnushukla30/rakbank_springboot/assets/25581203/8ef19d68-532b-4b61-be3a-dcdf006d8981">


<img width="805" alt="image" src="https://github.com/vishnushukla30/rakbank_springboot/assets/25581203/287c6999-a201-4959-a922-212a9917ae40">


