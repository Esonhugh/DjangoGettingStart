# Django GetStart Project

According to the official documents, i following it and create this project at 2021-07-16 and finish to the homework.

# Deploy

``` zsh
git clone https://github.com/Esonhugh/DjangoGettingStart.git
pip3 install -r requirement.txt
python3 manage.py runserver
```


Alternative if you got docker to deploy you can easily do as follow

``` zsh
git clone https://github.com/Esonhugh/DjangoGettingStart.git
docker build -t DjangoBeginner .
docker run -p 8080:8080 DjangoBeginner
```
And you can access the Django server with web browser at http://127.0.0.1:8080/ 

also you can map the port to other port with docker command.

# Happy for use.
