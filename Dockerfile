FROM "nginx"
LABEL email="ganesh@gmail.com"
run adduser ganesh
user ganesh
workdir /home/ganesh
