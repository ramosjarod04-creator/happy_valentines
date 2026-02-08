from django.shortcuts import render, redirect

def home(request):
    return render(request, 'love/home.html')

def yes(request):
    return render(request, 'love/yes.html')

def no(request):
    return redirect('home')  # evil but cute 😈

def mica(request):
    return render(request, 'love/mica.html')
