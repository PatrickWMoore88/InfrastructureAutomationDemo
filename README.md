🚀 Infrastructure Automation Demo (Terraform + AWS)
This project provisions a modular AWS infrastructure using Terraform. It includes a VPC, EC2 instance, and S3 bucket—designed to demonstrate infrastructure-as-code (IaC) best practices and serve as a starting point for client or team deployments.

📦 Features
- ✅ Modular Terraform structure with reusable components
- 🌐 VPC with public subnet and EC2 instance
- 🗃️ S3 bucket with secure ACL configuration
- 🔐 SSH key integration for EC2 access
- 📤 Output variables for easy integration
- 🐳 Dockerized for portability and demo-readiness

🧰 Prerequisites
- Terraform v1.3+
- AWS CLI configured with credentials
- Existing AWS key pair for EC2 access
- Docker (optional, for containerized execution)

📁 Project Structure
infra-demo/
├── main.tf
├── variables.tf
├── outputs.tf
├── provider.tf
├── modules/
│   ├── vpc/
│   ├── ec2/
│   └── s3/
├── Dockerfile
├── README.md



⚙️ Usage
1. Customize Variables
Edit variables.tf or create a terraform.tfvars file:
aws_region   = "us-east-1"
instance_type = "t2.micro"
key_name      = "your-key-pair-name"
bucket_name   = "your-unique-s3-bucket-name"


2. Initialize & Apply
terraform init
terraform validate
terraform plan
terraform apply


3. View Outputs
terraform output



🐳 Dockerized Execution
Build the Image
docker build -t infra-demo .


Run the Container
docker run -it infra-demo



🧠 Modules Overview
VPC Module
- Creates a VPC and public subnet
- Outputs vpc_id and public_subnet_id
EC2 Module
- Provisions an Ubuntu EC2 instance
- Requires key_name, subnet_id, and instance_type
- Outputs public_ip
S3 Module
- Creates a private S3 bucket
- Uses aws_s3_bucket_acl for secure access
- Outputs bucket_name

🧪 Validation
Run this to confirm everything is wired correctly:
terraform validate



📘 Author
Patrick W. Moore
Senior DevOps Engineer & Systems Enablement Specialist
San Marcos, TX | Open to freelance, federal/state, and retail roles
