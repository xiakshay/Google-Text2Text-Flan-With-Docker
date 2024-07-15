# use the python 3.9
FROM python:3.9

# set the working directory
WORKDIR /code

# copy files to /code 
COPY ./requirements.txt /code/requirements.txt

# install requirements.txt 
RUN pup install --no-cache-dir --upgrade -r /code/requirements.txt

#set up a new user named user
RUN useradd user
# switch user
USER user

# set home to users home dir
ENV HOME=/home/user \ 
    PATH=/home/user/.local/bin:$PATH 

# set the working dir to user's home dir
WORKDIR $HOME/app

# copy dir contents into container
COPY --chown=user . $HOME/app

#start fastapi on port 7860
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "7860"]