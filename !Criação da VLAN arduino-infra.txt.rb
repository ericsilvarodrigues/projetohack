!Criação da VLAN padrão
		vlan 40
			
		!Nome da VLAN padrão
			name svig04

		vlan 41
			name isaac
		vlan 42
			name eric
		vlan 43
			name vinicius
		vlan 46
			name wifi
			exit


nterface fastEthernet 0/2
			
			!Configurando a Interface de Acesso a VLAN
			description Interface de Acesso da VLAN 41 do isaac 
			
			!Configurando o Modo de Acesso da Interface
			switchport mode access
			
			!Configurando o Acesso a VLAN
			switchport access vlan 41
			
			exit
!Configurando a Interface de Acesso a VLAN do Segundo Usuário
		interface fastEthernet 0/3
			description Interface de Acesso da VLAN 42 do eric
			switchport mode access
			switchport access vlan 42
			exit

!Configurando a Interface de Acesso a VLAN do Terceiro Usuário
		interface fastEthernet 0/4
			description Interface de Acesso da VLAN 43 do vinicius
			switchport mode access
			switchport access vlan 43
			exit

!Configurando a Interface de Acesso a VLAN da Rede Sem-Fio (Wi-Fi/Wireless)
		interface fastEthernet 0/6
			description Interface de Acesso da VLAN 46 Wireless
			switchport mode access
			switchport access vlan 46
			exit
description Interface de Trunk com o Router 2911 do Grupo-04

Interface              IP-Address      OK? Method Status                Protocol
Vlan1                  unassigned      YES unset  up                    down
FastEthernet0/1        unassigned      YES unset  down                  down
FastEthernet0/2        unassigned      YES unset  down                  down
FastEthernet0/3        unassigned      YES unset  down                  down
FastEthernet0/4        unassigned      YES unset  down                  down
FastEthernet0/5        unassigned      YES unset  down                  down
FastEthernet0/6        unassigned      YES unset  down                  down
FastEthernet0/7        unassigned      YES unset  administratively down down
FastEthernet0/8        unassigned      YES unset  administratively down down
FastEthernet0/9        unassigned      YES unset  administratively down down
FastEthernet0/10       unassigned      YES unset  administratively down down
FastEthernet0/11       unassigned      YES unset  administratively down down
FastEthernet0/12       unassigned      YES unset  administratively down down
FastEthernet0/13       unassigned      YES unset  administratively down down
FastEthernet0/14       unassigned      YES unset  administratively down down
FastEthernet0/15       unassigned      YES unset  administratively down down
FastEthernet0/16       unassigned      YES unset  administratively down down
FastEthernet0/17       unassigned      YES unset  administratively down down
FastEthernet0/18       unassigned      YES unset  administratively down down
FastEthernet0/19       unassigned      YES unset  administratively down down
FastEthernet0/20       unassigned      YES unset  administratively down down
FastEthernet0/21       unassigned      YES unset  administratively down down
FastEthernet0/22       unassigned      YES unset  administratively down down
FastEthernet0/23       unassigned      YES unset  administratively down down
FastEthernet0/24       unassigned      YES unset  down                  down
GigabitEthernet0/1     unassigned      YES unset  down                  down
GigabitEthernet0/2     unassigned      YES unset  down                  down



VLAN Name                             Status    Ports
---- -------------------------------- --------- -------------------------------
1    default                          active    Fa0/1, Fa0/5, Fa0/7, Fa0/8
                                                Fa0/9, Fa0/10, Fa0/11, Fa0/12
                                                Fa0/13, Fa0/14, Fa0/15, Fa0/16
                                                Fa0/17, Fa0/18, Fa0/19, Fa0/20
                                                Fa0/21, Fa0/22, Fa0/23, Fa0/24
                                                Gi0/1, Gi0/2
40   svig04                           active
41   isaac                            active    Fa0/2
42   eric                             active    Fa0/3
43   vinicius                         active    Fa0/4
46   wifi                             active    Fa0/6
1002 fddi-default                     act/unsup
1003 token-ring-default               act/unsup
1004 fddinet-default                  act/unsup
1005 trnet-default                    act/unsup



