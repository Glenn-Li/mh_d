# -*- coding: utf-8 -*-

from django import forms

class CommentForm(forms.Form):
    """docstring for CommentForm."""

    name = forms.CharField(label='称呼', max_length=16, error_messages={
        'required': '请填写你的称呼',
        'max_length': '称呼太长'
    })

    email = forms.EmailField(label='邮箱', error_messages={
        'required': '请填写你的邮箱',
        'invalid': '邮箱格式不正确'
    })

    content = forms.CharField(label='评论内容', error_messages={
        'required': '请填写你的评论内容',
        'max_length': '评论内容太长'
    })
