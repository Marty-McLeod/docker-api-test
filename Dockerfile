FROM python:3.12.9

WORKDIR /code

EXPOSE 8000

COPY ./requirements.txt /code/requirements.txt

RUN pip install --no-cache-dir -r /code/requirements.txt

COPY ./DockerAPITest /code/DockerAPITest

CMD ["uvicorn", "DockerAPITest.main:app", "--host", "0.0.0.0", "--port", "8000"]

# run as:
# > docker run <--name some_container> --publish 8000:8000 <my_image>
#
#
#
#
