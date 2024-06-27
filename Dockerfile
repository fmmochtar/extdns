FROM python:3.10-alpine
ENV PYTHONUNBUFFERED=1

WORKDIR /opt

COPY requirements.txt ./
RUN pip3 install --no-cache -r requirements.txt
# RUN pip3 uninstall setuptools --yes
COPY . ./

CMD ["python", "./server.py"]
