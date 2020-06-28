https://kivy.org/doc/stable/api-kivy.app.html


he App class is the base for creating Kivy applications. 
Think of it as your main entry point into the Kivy run loop. 
In most cases, you subclass this class and make your own app. 
You create an instance of your specific app class and then, 
when you are ready to start the application’s life cycle, 
you call your instance’s App.run() method.

APP类是kivy制作应用程序的基础.它可以作为kivy循环运行的主要入口.
在大多数情况下,你在app类下建立子类来制作自己的应用.
你制作有特性的app的实例,然后当你准备好app运行周期时,
你利用App.run()方法来运行.

instance -- 实例
specific app class -- 特定的app类?
method -- 方法


Method using build() override
To initialize your app with a widget tree, 
override the build() method in your app class and 
return the widget tree you constructed.

利用 build()方法来覆盖?
想要初始化你的app物件树,需要用build()方法来覆盖你的app类
然后返回你所建的物件树(的详细).

initiali -- 初始化
overri -- 覆盖
constructed -- 建造(过去式)

下面是例子:
利用了build()和return来建立自己的物件树.

import kivy
kivy.require('1.0.7')

from kivy.app import App
from kivy.uix.button import Button


class TestApp(App):

    def build(self):
        # return a Button() as a root widget  返回 Button()作为一个根物件
        return Button(text='hello world')


if __name__ == '__main__':
    TestApp().run()
    
    
    
    
Method using kv file¶
You can also use the Kivy Language for creating applications. 
The .kv can contain rules and root widget definitions at the same time. 
Here is the same example as the Button one in a kv file.

用kv文件的方式
你可以使用kv语言来创建程序
kv格式的文件可以同时控制规则和根物件的定义.

test.kv文件的内容:
Button: 
    text:"hello from test.kv"
    


main.py的内容:

'''
Application built from a  .kv file
==================================

This shows how to implicitly use a .kv file for your application. You
should see a full screen button labelled "Hello from test.kv".

After Kivy instantiates a subclass of App, it implicitly searches for a .kv
file. The file test.kv is selected because the name of the subclass of App is
TestApp, which implies that kivy should try to load "test.kv". That file
contains a root Widget.
'''
(这里展示了如何使用kv文件,你应该可以看到一个全屏按钮写着hello from test.kv
当kivy实例化一个子类App,他会在后台搜索kv格式的文件.kv文件会根据子类名字来搜索,
意思就是TestApp会搜索名为Test.kv的根物件文件.

implicitly -- 暗地里, 后台?自动搜索?
instantiates -- 实例化(第三人称格式)
implies -- imply,意味着
contains -- 控制

)
import kivy
kivy.require('1.0.7')

from kivy.app import App


class TestApp(App):
    pass


if __name__ == '__main__':
    TestApp().run()



Application configuration
应用程序配置



