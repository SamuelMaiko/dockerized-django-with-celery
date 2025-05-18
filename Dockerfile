FROM python:3.13  
 
RUN mkdir /app
 
WORKDIR /app
 
ENV PYTHONDONTWRITEBYTECODE=1

ENV PYTHONUNBUFFERED=1 
 
RUN pip install --upgrade pip 

# copy requirements.txt into the container
COPY requirements.txt /app/
 
RUN pip install --no-cache-dir -r requirements.txt
 
# Copy the Django project to the container
COPY . /app/
 
EXPOSE 8000
 
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]