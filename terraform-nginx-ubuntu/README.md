
# Terraform Nginx Ubuntu Deployment

This project deploys an **Ubuntu EC2 instance** with **Nginx** installed using **Terraform**.

---
##  Requirements

- AWS CLI configured  
- Terraform installed  
- IAM User with EC2 permissions  

---

##  Screenshots

### 1. Terraform Apply Output  
![tarraform-apply1](https://github.com/user-attachments/assets/7359e489-0785-4ad2-8c56-5b7a38b00296)
![tarraform-apply2](https://github.com/user-attachments/assets/8747052f-9a8c-4b28-97ed-d3093d090951)
![tarraform-apply3](https://github.com/user-attachments/assets/3d00a281-61ee-4d85-bc68-0586b02237f6)
![tarraform-apply4](https://github.com/user-attachments/assets/728c8281-a04b-4ea3-ab8c-4094a1561b3f)

### 2. EC2 Instance Running  
![tarraform-server](https://github.com/user-attachments/assets/93dd01c2-4fac-49cc-beb0-ca3b5b4fc041)

### 3. Nginx Page Output  
![tarraform-web-server](https://github.com/user-attachments/assets/758b5951-61a0-41f0-869e-4538c2c6639c)

---

##  Project Structure

```
terraform-nginx-ubuntu/
├── main.tf
├── variables.tf
├── outputs.tf
├── README.md


---

##  How to Use

### 1️ Initialize Terraform
```
terraform init
![tarraform-inti](https://github.com/user-attachments/assets/772e983c-7b0b-4c92-a0cd-c9128b319c8b)

```

### 2️ Review the Plan
```
terraform plan
![tarraform-plan1](https://github.com/user-attachments/assets/d6b0a01e-8aeb-4fee-8b63-56e506d77c50)
![tarraform-plan2](https://github.com/user-attachments/assets/a3bddea7-8c78-45ff-b19a-ca78befe19ff)
![tarraform-plan3](https://github.com/user-attachments/assets/86d66686-0843-4d63-b31a-36d8a093ae12)
![tarraform-plan4](https://github.com/user-attachments/assets/01f33eac-54e8-4832-b025-0f3b55a07ab5)

```

### 3️ Apply Configuration
```
terraform apply
![tarraform-apply1](https://github.com/user-attachments/assets/a498b06b-86bd-40ef-8783-6dbec5dc9701)
![tarraform-apply2](https://github.com/user-attachments/assets/030a5001-9c96-4374-b28f-2b7e902aba6b)
![tarraform-apply3](https://github.com/user-attachments/assets/29a012e5-6241-46f7-a6ab-97f17b745168)
![tarraform-apply4](https://github.com/user-attachments/assets/28221e4d-0e6c-4eca-90c4-5808492e40f6)

```


### 4 checking server & SG on Web
```
Secuirty group
![tarraform-SG](https://github.com/user-attachments/assets/750df907-20d9-4d99-99c9-e9459ed5f688)

```


```
Server
![tarraform-server](https://github.com/user-attachments/assets/848987f0-8260-4d3d-9da2-5467507074de)


```


```

### 5 Get Public IP
```
terraform output public_ip
```
<img width="1113" height="387" alt="Screenshot 2025-11-21 155207" src="https://github.com/user-attachments/assets/1fe8f0a6-90cb-4790-9875-de51944d8f0b" />

### 5️ Access Nginx
Open in browser:
![tarraform-web-server](https://github.com/user-attachments/assets/05724963-773c-43f7-b2c4-96da7edb65b2)


```


```

---

##  Destroy Resources

```
terraform destroy
```
![tarraform-destroy1](https://github.com/user-attachments/assets/788edf72-c835-4939-9b97-3775982393b3)
![tarraform-destroy2](https://github.com/user-attachments/assets/8a7c992d-8fab-4263-bf37-7b399a2033a8)
![tarraform-destroy3](https://github.com/user-attachments/assets/9b8f8a9e-e288-46f4-8d36-ea7440cde2c6)


---


