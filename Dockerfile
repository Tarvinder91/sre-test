FROM centos
RUN yum update -y \
    && yum install python36 -y \
    && pip3 install flask
ENV MY_NAME Tarvinder
COPY app.py .
EXPOSE 80
CMD ["python3", "app.py" ]