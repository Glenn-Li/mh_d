# This Python file uses the following encoding: utf-8

from __future__ import unicode_literals

from django.db import models

# Create your models here.

class Category(models.Model):
    """docstring for Category."""
    name = models.CharField('名称', max_length=16)

    def __unicode__(self):
        return self.name

class Tag(models.Model):
    """docstring for Tag."""
    name = models.CharField('名称', max_length=16)

    def __unicode__(self):
        return self.name

class Blog(models.Model):
    """docstring for Blog."""
    title = models.CharField('标题', max_length=32)
    author = models.CharField('作者', max_length=16)
    content = models.TextField('正文')
    created = models.DateTimeField('发布时间', auto_now_add=True)

    category = models.ForeignKey('Category', verbose_name='分类')
    tags = models.ManyToManyField('Tag', verbose_name='标签')

    def __unicode__(self):
        return self.title

class Comment(models.Model):
    """docstring for Comment."""

    blog = models.ForeignKey(Blog, verbose_name='博客')

    name = models.CharField('称呼', max_length=16)
    email = models.EmailField('邮箱')
    content = models.CharField('内容', max_length=140)

    created = models.DateTimeField('发布时间', auto_now_add=True)

    def __unicode__(self):
        return self.content
