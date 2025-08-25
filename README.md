# Story Website Deployment (Apache2 on VM)

Este projeto demonstra como automatizar o deploy do website em um servidor Apache2 rodando em uma máquina virtual para fins de **teste e aprendizado**.

---

## 📌 Requisitos

- Máquina Virtual com Ubuntu/Debian-based OS  
- Acesso root ou `sudo`  
- Apache2 instalado (o script fará isso automaticamente)  
- Conexão com a internet (para download do template)  

---

## 🚀 Script de Deploy

O script Bash realiza os seguintes passos:

1. Atualiza e faz upgrade dos pacotes do servidor.  
2. Instala **Apache2** e **unzip**.  
3. Cria um diretório temporário para download.  
4. Baixa o template **Story HTML5UP** (`story.zip`).  
5. Extrai os arquivos para `/var/www/html/`.  
6. Remove os arquivos temporários.  
7. Ajusta permissões e dono dos arquivos para o Apache.  

---

## 🛠️ Como usar

1. Copie o script para sua VM, por exemplo:  
   ```bash
   nano script.sh
   chmod +x script.sh

2. Execute o script como root (ou com sudo):
```
./script.sh
```

3. Após a execução, abra no navegador:
``` 
http://<ip-da-sua-vm>/
```

**Notas**

Este ambiente é apenas para testes e aprendizado.

Não utilize em produção sem antes aplicar as devidas medidas de segurança.

Sempre remova arquivos desnecessários (como story.zip) após o deploy.

📜 Créditos

Template: HTML5UP - Story

Licença: Creative Commons Attribution 3.0

Projeto parte do curso Linux da [DIO](https://web.dio.me/home) 
, ministrado por [Denilson Bonatti](https://www.linkedin.com/in/denilson-bonatti-54a14529/)
