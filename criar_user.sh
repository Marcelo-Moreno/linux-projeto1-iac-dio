  GNU nano 7.2                                                                                                     criar_user.sh *                                                                                                            
#!/bin/bash

echo "Criando usuários do sistema..."

useradd guest10 -c "Usuário estranho" -s /bin/bash -m -p Senha123
passwd guest10 -e


useradd guest11 -c "Usuário estranho" -s /bin/bash -m -p Senha123
passwd guest11 -e


useradd guest11 -c "Usuário estranho" -s /bin/bash -m -p Senha123
passwd guest10 -e

echo "Finalizado"
