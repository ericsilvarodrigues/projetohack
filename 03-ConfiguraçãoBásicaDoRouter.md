Configurações do router

1-acessar modo enable
2-configurar data/hora 
clock set 
3- aceesar terminal
	configure terminal
4-configurar nome do switch
hostname rt-g0

5-Habilitar o serviço de Criptografia de Senhas do tipo Password Tipo-7
service password-encryption

5-Comprimento mínimo da criação das senhas do Tipo-5 ou Tipo-7
security passwords min-length 8

6-Verificar tentativas de conexão simultâneas, fazer o bloqueio de um
!período determinado do login
login block-for 120 attempts 4 within 60

7-Desativar a resolução de nomes de domínio
no ip domain-lookup

8-Configuração do Banner da mensagem do dia
banner motd #AVISO: acesso autorizado somente a funcionarios da ARDUINO-INFRA#

9-Habilitar a senha do tipo secret Tipo-5 para o modo enable privilegiado
enable secret 123@senac

10-Criação dos usuários, senhas do Tipo-5 e privilégios diferenciados
username ??nomealuno?? privilege 15 secret 123@senac
username ??nomealuno?? privilege 15 secret 123@senac

11-Configuração do nome de domínio, obrigatório para a configuração do SSH
ip domain-name senac.br

12-Criação da chave de criptografia e habilitação do serviço de SSH
crypto key generate rsa general-keys modulus 1024

13-Habilitando a versão 2 do serviço do SSH
ip ssh version 2

14-Habilitar o tempo de inatividade para novas conexões do SSH
ip ssh time-out 60

15-Habilitar o número máximo de tentativas de conexão do SSH
ip ssh authentication-retries 2

16-Acessando a linha console
line console 0

17-Habilitando senha do tipo Password  Tipo-7
password 123@senac

18-Forçando fazer login com usuário e senha local
login local

19-Sincronizando os logs na tela
logging synchronous

20-Habilitando o tempo de inatividade do console
exec-timeout 5 30
!Saindo da linha console
exit

21-Acessando as linhas virtuais
line vty 0 4

!Habilitando senha do tipo Password  Tipo-7
password 123@senac

!Forçando fazer login com usuário e senha local
login local 

!Sincronizando os logs na tela
logging synchronous

!Habilitando o tempo de inatividade do terminal
exec-timeout 5 30

!Configuração do tipo de protocolo de transporte de entrada
transport input ssh

!Saindo de todos os níveis
end.

!Salvando as configurações
copy running-config startup-config

22-Visualizando as configurações
show running-config
