from django.shortcuts import render

# Create your views here.

from .models import Blog
from django.http import Http404
from .models import Comment
from .forms import CommentForm

def get_blogs(request):
    ctx = {
        'blogs' :Blog.objects.all().order_by('-created')
    }
    return render(request, 'blog/blog-list.html', ctx)

def get_detail(request, blog_id):
    try:
        blog = Blog.objects.get(id=blog_id)
    except Blog.DoseNoExist:
        return Http404

    if request.method == 'GET':
        form = CommentForm()
    else:
        form = CommentForm(request.POST)
        if form.is_valid():
            cleaned_data = form.cleaned_data
            cleaned_data['blog'] = blog
            Comment.objects.create(**cleaned_data)

    ctx = {
        'blog': blog,
        'comments': blog.comment_set.all().order_by('-created'),
        'form': form
    }
    return render(request, 'blog/blog_detail.html', ctx)
