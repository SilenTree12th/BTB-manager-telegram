FROM python:3.12-rc-slim

WORKDIR ./

COPY requirements.txt ./

RUN pip install --no-cache-dir -r requirements.txt

COPY binance-trade-bot/requirements.txt ./

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD [ "python", "-m", "btb_manager_telegram", "-p", "./binance-trade-bot/"]
