
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
![skilltest3-5-terra-apply](https://github.com/user-attachments/assets/d0abae22-972f-4234-8ea1-f5e29835a7a5)

![skilltest3-5-terra-appl3 creation](https://github.com/user-attachments/assets/ef543927-9701-405a-be08-d137d342524a)



### 2. EC2 Instance Running  
<img width="1541" height="189" alt="Screenshot 2025-11-21 153435" src="https://github.com/user-attachments/assets/901426f1-d1c0-4801-9969-f4119b9ee20a" />


### 3. Nginx Page Output  
<img width="586" height="126" alt="Screenshot 2025-11-21 153801" src="https://github.com/user-attachments/assets/d940add4-c893-40f4-a36e-3950d5e20a34" />

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
![skilltest3-4_terra-Plan](https://github.com/user-attachments/assets/7788c036-c8f4-44f0-8423-f9331a083556)


```

### 2️ Review the Plan
```
terraform plan
![skilltest3-4_terra-Plan](https://github.com/user-attachments/assets/f6ccde78-0926-4ac3-960b-2c97855e464a)

![skilltest3-4_terra-Plan-4](https://github.com/user-attachments/assets/b93889fc-7728-4332-9f66-bc6766635a0c)

```



### 3️ Apply Configuration
```
terraform apply
![skilltest3-5-terra-apply](https://github.com/user-attachments/assets/0063d915-adcd-4ee1-b2b0-49decb3958af)
![skilltest3-5-terra-appl3 creation](https://github.com/user-attachments/assets/f082fde0-75d2-4aec-9090-b0fe28750462)


```


### 4 checking server & SG on Web
```
Secuirty group
![skilltest3-SG](https://github.com/user-attachments/assets/785deb5b-ad4b-490f-9ffd-e7ad591652dc)

```


```
Server
![skilltest3-instance](https://github.com/user-attachments/assets/6bb9eee3-912e-4b2a-99d0-c8d1239b9dcc)

```


```

### 5 Get Public IP
```
terraform output public_ip
```
<img width="1113" height="387" alt="Screenshot 2025-11-21 155207" src="https://github.com/user-attachments/assets/1fe8f0a6-90cb-4790-9875-de51944d8f0b" />

### 5️ Access Nginx
Open in browser:
![skilltest3-public IP](https://github.com/user-attachments/assets/cdd28072-e243-4fc5-bce8-93bbff2fcb22)

```


```

---

##  Destroy Resources

```
terraform destroy
```
![skilltest3-destroy](https://github.com/user-attachments/assets/a22bf345-3924-473b-9e29-a5f811294336)
![skilltest3-destroy-2](https://github.com/user-attachments/assets/4981b3d4-c310-4653-9239-1fb71fd9c781)

---


