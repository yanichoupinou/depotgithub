FROM nginx
RUN apt update && apt install net-tools iputils nano vim ssh python3 -y 
