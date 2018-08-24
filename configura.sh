# DEPENDENCIES ODOO
    #WKHTMLTOPDF
    #Instalar dependencies prèvies
    sudo apt-get install wkhtmltopdf
    #Descarregar versió funcional
    cd /opt/escaner
    sudo wget https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.4/wkhtmltox-0.12.4_linux-generic-amd64.tar.xz
    sudo tar -xvf wkhtmltox-0.12.4_linux-generic-amd64.tar.xz
    sudo cp ./wkhtmltox/bin/wkhtmltoimage /usr/bin/
    sudo cp ./wkhtmltox/bin/wkhtmltopdf /usr/bin/

# ADDONS
cd /opt
sudo mkdir escaner
cd escaner
sudo mkdir addons
sudo mkdir temp_addons

    #001 CONTRACTES
    cd /opt/escaner/temp_addons
    sudo git clone https://github.com/OCA/contract -b 11.0 contract
    sudo cp -R contract/contract ../addons/contract
    sudo cp -R contract/contract_payment_mode ../addons/contract_payment_mode
        #DEPENDENCIA MODULS BANK-PAYMENT
        sudo git clone https://github.com/OCA/bank-payment -b 11.0 bank-payment
        sudo cp -R bank-payment/account_payment_partner ../addons/account_payment_partner
        sudo cp -R bank-payment/account_payment_mode ../addons/account_payment_mode













    #099 ODOO 11 DEBRANDING
    sudo git clone https://github.com/hilarak/odoo_community_addons -b 11.0 hilarak_odoo_community_addons
    sudo cp -R hilarak_odoo_community_addons/odoo-debrand-11 ../addons/odoo-debrand-11


#REINICIAR SERVEIS DEL SERVIDOR
sudo /opt/bitnami/ctlscript.sh restart 


