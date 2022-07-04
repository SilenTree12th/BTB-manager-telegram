FROM python:3.10.4-slim-bullseye

WORKDIR ./

COPY requirements.txt ./

RUN pip install --no-cache-dir -r requirements.txt

COPY binance-trade-bot/requirements.txt ./

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD [ "python", "-m", "btb_manager_telegram", "-p", "./binance-trade-bot/"]
