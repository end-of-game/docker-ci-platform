DTR_HOST="192.168.50.11"
sudo mkdir -p /etc/docker/certs.d/${DTR_HOST}
openssl s_client -host ${DTR_HOST} -port 443 </dev/null 2>/dev/null | openssl x509 -CAform PEM | sudo tee /etc/docker/certs.d/${DTR_HOST}/ca.crt
