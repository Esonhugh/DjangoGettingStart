# views.py
# home redirect to /polls/

from django.shortcuts import redirect

def redirect_home(request):
    response = redirect('/polls/')
    return response

def HOME(request):
    response = redirect("")
    return response