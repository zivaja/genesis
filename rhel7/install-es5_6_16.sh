cat /etc/redhat-release;echo "===================================================";cat /etc/os-release;echo "===================================================";hostname;echo "===================================================";yum repolist all;echo "===================================================";ip a;echo "===================================================";yum install docker && systemctl enable docker.service && systemctl start docker.service && docker run -d -p 9200:9200  -p 9300:9300 -e "http.host=0.0.0.0" -e "transport.host=127.0.0.1" -e "node.name=tot-chatbot01" --restart unless-stopped --name elasticsearch docker.elastic.co/elasticsearch/elasticsearch:5.6.16 && docker stats -a






