# AWS Cloud Fundamentals & Security ☁️

An overview of Cloud Computing models, the Shared Responsibility Model, and core AWS services (IAM, EC2, S3) based on my initial exploration of the AWS ecosystem.

## 1. What is Cloud Computing?
It is the on-demand delivery of IT resources (compute, database, storage) via the internet with **pay-as-you-go** pricing.
- **Scalability:** The ability to scale resources up or down based on demand (Elasticity).
- **Cost:** No need to maintain physical data centers or hardware ("CapEx" vs "OpEx").

---

## 2. Cloud Service Models
Understanding the level of control vs. responsibility.

| Model | Name | Description | Example | Control Level |
| :--- | :--- | :--- | :--- | :--- |
| **IaaS** | Infrastructure as a Service | You manage the OS, networking, and patching. AWS manages the hardware. | **EC2** | High (Admin access) |
| **PaaS** | Platform as a Service | You manage the code/application. AWS manages the OS and runtime. | **Elastic Beanstalk** | Medium |
| **SaaS** | Software as a Service | You just use the software. The provider manages everything. | **Gmail, Dropbox** | Low (User access) |

---

## 3. The Shared Responsibility Model 🛡️
Security is a partnership between the customer and AWS.

### ✅ What AWS Secures (Security "of" the Cloud)
AWS is responsible for protecting the infrastructure that runs all the services.
- Physical security of data centers (CCTV, Guards).
- Hardware (Servers, Networking cables).
- Hypervisor virtualization layer.

### ✅ What YOU Secure (Security "in" the Cloud)
You are responsible for how you use the services.
- **Data protection:** Encryption and access controls.
- **Operating System:** Patching and updates (for EC2).
- **Configuration:** Firewall rules (Security Groups) and IAM permissions.

> **Scenario:** "If data is exposed in an S3 bucket, whose fault is it?"
> **Answer:** It is the **Customer's fault**. AWS guarantees the bucket won't break physically, but the customer controls *who* can see the data (Permissions/Policies).

---

## 4. Core Services Breakdown

### 🖥️ EC2 (Elastic Compute Cloud) - *IaaS*
- **Concept:** Virtual Servers in the cloud.
- **Use Case:** Hosting web servers, running backend applications, or development environments.
- **Security Note:** You are responsible for opening/closing ports (Security Groups) and patching the Linux OS.

### 🗄️ S3 (Simple Storage Service) - *Storage*
- **Concept:** Object storage for files (images, videos, logs, backups).
- **Security Risk:** Misconfigured bucket permissions (e.g., setting a bucket to "Public") is the #1 cause of cloud data breaches.
- **Best Practice:** Block Public Access by default.

### 🔑 IAM (Identity and Access Management) - *Security*
- **Concept:** The "Authentication and Authorization" center of AWS.
- **Components:** Users, Groups, Roles, and Policies.
- **The Risk:** Bad IAM configuration = **Disaster**.
- **Best Practice (Least Privilege):** Never grant `AdministratorAccess` unless absolutely necessary. Give users only the permissions they need to do their specific job.

> *IAM is the first line of defense. If an attacker compromises an admin user, they own your entire infrastructure.*
