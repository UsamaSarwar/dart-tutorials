## Authnetication System
_System Requirements..._

Database Credentials:
- Username: admin
- Password: admin

### Condition 1
- Username: admin
- Password: 12345

Required Output:
```bash
Wrong Password!
```

### Condition 2
- Username: usama
- Password: admin

Required Output:
```bash
User does not exist!
```

### Condition 3
- Username: usama
- Password: 12345

Required Output:
```bash
User does not exist!
```

### Condition 4
- Username: admin
- Password: admin

Required Output:
```bash
Login Successful!
```