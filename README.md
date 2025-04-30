# 🧰 Provisionamento de Servidor Web com Apache

Este projeto tem como objetivo provisionar automaticamente um servidor web utilizando Apache2 e uma aplicação de exemplo disponível no GitHub.

## 🔧 O que o script faz?

O script `provisionamento_web.sh` executa os seguintes passos:

1. Restaura o snapshot da máquina virtual (manual ou via linha de comando).
2. Atualiza os pacotes do sistema.
3. Instala o servidor Apache2.
4. Instala o utilitário `unzip`.
5. Baixa a aplicação web do repositório:
   - [https://github.com/denilsonbonatti/linux-site-dio](https://github.com/denilsonbonatti/linux-site-dio)
6. Descompacta a aplicação no diretório `/tmp`.
7. Copia os arquivos da aplicação para o diretório padrão do Apache: `/var/www/html`.
8. Ajusta as permissões dos arquivos.
9. Reinicia o serviço Apache.

## 💻 Como usar

1. Clone este repositório:
   ```bash
   git clone https://github.com/SEU_USUARIO/NOME_REPO.git
   cd NOME_REPO
