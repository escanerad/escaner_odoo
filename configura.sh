# WKHTMLTOPDF


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

cd 
sudo ./stack/ctlscript.sh restart odoo_gevent
sudo ./stack/ctlscript.sh restart odoo_background_worker

