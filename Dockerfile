FROM python3
 
WORKDIR /app
 
RUN pip install Flask-Cors
 
COPY . .
 
EXPOSE 5005
 
CMD ["python3", "app.py"]
