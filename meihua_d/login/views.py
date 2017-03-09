#coding=utf-8
from django.shortcuts import render,render_to_response
from django.http import HttpResponseRedirect
from django.template import RequestContext
from login.models import User
from django import forms


#定义表单模型
class UserForm(forms.Form):
    username = forms.CharField(label='用户名：',max_length=100)
    password = forms.CharField(label='密码：',widget=forms.PasswordInput())

#登录
def login(request):
    if request.method == 'POST':
        uf = UserForm(request.POST)
        if uf.is_valid():
            #获取表单用户密码
            username = uf.cleaned_data['username']
            password = uf.cleaned_data['password']
            #获取的表单数据与数据库进行比较
            user = User.objects.filter(username__exact = username,password__exact = password)
            if user:
                #比较成功，跳转index
                response = HttpResponseRedirect('/login/success.html')
                #将username写入浏览器cookie,失效时间为3600
                response.set_cookie('username',username,3600)
                return response
            else:
                return HttpResponseRedirect('/login/')
    else:
        uf = UserForm()
    return render_to_response('login/login.html',{'uf':uf})

#登出
def logout(request):
    response = HttpResponse('logout !!')
    #清理cookie里保存username
    response.delete_cookie('username')
    return response
