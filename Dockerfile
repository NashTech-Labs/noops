FROM python3
 
 
WORKDIR /app
 
COPY requirements.txt requirements.txt
 
RUN pip3 install -r requirements.txt
 
COPY . .
 
EXPOSE 80
 
CMD ["python3", "app.py"]
