FROM python 
RUN pip install Flask
COPY hello_world.py .
ENV FLASK_APP=hello_world.py
EXPOSE 8080
#CMD ["python", "-u", "hello_world.py" ]
CMD ["flask", "run", "--host=0.0.0.0", "--port=8080"]
