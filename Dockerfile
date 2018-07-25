FROM python:2.7.15-alpine3.8

WORKDIR /opt/

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY modbus2mqtt.py ./

ENTRYPOINT ["python",  "/opt/modbus2mqtt.py"]