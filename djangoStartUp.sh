#!/bin/bash
#essential start up procedure
1. mkdir chap02_23oct #start with fresh directory
2. cd chap02_23oct # change to your new directory
3. pipenv install django==2.1 # install virtual environment
4. pipenv shell
5. django-admin start project hellochap02
6. python manage.py runserver

#chapter 2

7. python manage.py startapp pages
8. cd pages

9. gedit views.py

10. from django.http import HttpResponce


11. gedit urls.py
	from django.urls path
	from .views import homePageView
	urlpatterns = [
		path('', homePageView, name='home')
	[
12. 
13. cd ../hellocha02
14. gedit urls.py
15. 
