FROM mysterydemon/botcluster:wzmlx 

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

RUN bash run.sh

COPY start.sh /usr/src/app/start.sh
RUN chmod +x /usr/src/app/start.sh

CMD ["/usr/src/app/start.sh"]
