from django.shortcuts import render
from django.http import HttpRequest, HttpResponseRedirect
from blog.posts import Posts, PostsBuilder, PostsContainer
from blog.database import DBConnect, PGBooksManager


products = [
    {
        'image': 'product-1.jpg',
        'category': 'Мужская одежда',
        'name': 'Толстовка Самец',
        'price': 700,
        'discount': None
    },
    {
        'image': 'product-3.jpg',
        'category': 'Мужская одежда',
        'name': 'Белая мужская рубашка Мачо',
        'price': 800,
        'discount': '50%'
    },
    {
        'image': 'product-2.jpg',
        'category': 'Мужская одежда',
        'name': 'Розовая рубашка-поло Маменькин сыночек',
        'price': 150,
        'discount': None
    },
    {
        'image': 'product-4.jpg',
        'category': 'Мужская одежда',
        'name': 'Свитшот Альфонс',
        'price': 900,
        'discount': '50%'
    },
    {
        'image': 'product-5.jpg',
        'category': 'Мужская одежда',
        'name': 'Футболка Пиздюк',
        'price': 100,
        'discount': None
    },
    {
        'image': 'product-6.jpg',
        'category': 'Мужская одежда',
        'name': 'Спортивные штаны Бродяга',
        'price': 500,
        'discount': None
    },
    {
        'image': 'product-7.jpg',
        'category': 'Мужская одежда',
        'name': 'Шорты Мага побрейся',
        'price': 200,
        'discount': '50%'
    },
    {
        'image': 'product-8.jpg',
        'category': 'Мужская одежда',
        'name': 'Брюки И все женщины твои',
        'price': 560,
        'discount': None
    }
]

def main(request: HttpRequest):
    return render(request, 'posts.html', {'products': products})


# Create your views here.



def redirect(request: HttpRequest):
    return render(request, '404.html')

