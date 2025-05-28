FROM nginx
RUN apt update && apt install net-tools iputils-ping nano vim ssh python3 -y 
COPY monsite/ /usr/share/nginx/html/
