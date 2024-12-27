# Terraform Setup and Execution Guide

---

## Steps

### Step 1: Install Terraform

Before running Terraform commands, ensure that Terraform is installed on your machine.

#### For Linux (Debian-based systems like Ubuntu)

1. **Add HashiCorp GPG Key**:
   - Run the following command to add the HashiCorp GPG key to your system:
     ```bash
     wget -O - https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
     ```

2. **Add HashiCorp APT Repository**:
   - Add the HashiCorp APT repository to your system's package manager list:
     ```bash
     echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
     ```

3. **Install Terraform**:
   - Update your package list and install Terraform using `apt`:
     ```bash
     sudo apt update && sudo apt install terraform
     ```

4. **Verify Terraform Installation**:
   - After installation, verify Terraform is installed correctly by running the following command:
     ```bash
     terraform --version
     ```

   If Terraform is installed successfully, it will show the version of Terraform.

#### For macOS and Windows

If you are using macOS or Windows, refer to the official Terraform [installation guide](https://learn.hashicorp.com/tutorials/terraform/install-cli) to install Terraform.

---

### Step 2: Clone the Repository

1. **Clone the Repository**:
   - Open a terminal (or command prompt) and navigate to the directory where you want to clone the repository.
   - Run the following command to clone the repository:
     ```bash
     git clone https://github.com/summu97/App-Deploy-Terraform-Assessment.git
     ```

2. **Navigate to the Terraform Directory**:
   - After the repository is cloned, navigate to the `terraform` directory inside the repository:
     ```bash
     cd App-Deploy-Terraform-Assessment/terraform
     ```

---

### Step 3: Run Terraform Commands

Once inside the `terraform` directory, you can begin running the necessary Terraform commands.

1. **Initialize Terraform**:
   - Before running any Terraform commands, initialize the working directory using the following command:
     ```bash
     terraform init
     ```
   - This command downloads the required provider plugins and sets up the working environment for Terraform.

2. **Review the Terraform Plan**:
   - Run the following command to see what changes Terraform will make to your infrastructure:
     ```bash
     terraform plan
     ```
   - Terraform will show you a detailed output of what it intends to create, modify, or destroy.

3. **Apply the Terraform Configuration**:
   - Once you've reviewed the plan and are satisfied with the changes, apply the configuration to create or update the infrastructure:
     ```bash
     terraform apply
     ```
   - Terraform will prompt for confirmation. Type `yes` to proceed.

4. **Verify the Infrastructure**:
   - After Terraform applies the changes, you can verify that the resources have been created by checking the output from Terraform or by manually inspecting the resources in the respective cloud provider’s console.

5. **Destroy the Infrastructure** (Optional):
   - If you want to remove the infrastructure, you can use the following command:
     ```bash
     terraform destroy
     ```
   - Terraform will prompt for confirmation. Type `yes` to destroy the resources.

---

## Conclusion

By following these steps, you will have successfully installed Terraform, cloned the repository, and run Terraform commands to deploy your infrastructure. You can now use Terraform to manage your infrastructure as code.

---

## Troubleshooting

- **Terraform Command Not Found**: If Terraform is not found after installation, ensure the directory containing the Terraform executable is added to your system's `PATH` environment variable.
- **Git Not Installed**: If the `git` command is not recognized, install Git from [Git Downloads](https://git-scm.com/downloads).
