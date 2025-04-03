FROM python:3.10-slim
RUN pip install mlflow[auth]  
WORKDIR /mlflow
COPY entrypoint.sh .
RUN chmod +x entrypoint.sh
EXPOSE 5000
COPY basic_auth.ini .
CMD ["./entrypoint.sh"]
