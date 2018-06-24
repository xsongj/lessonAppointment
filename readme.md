﻿# 基于SSM的UESTC抢课系统


### 1.UESTC私人抢课系统已实现的功能
（1）实现进入选课列表，然后点击详情页可以进行选课预约和查看已选课程，在查看之前未登录的用户需要先进行登录操作.
（2）在详情页面上可以进行课程模糊搜索，例如搜索“数”，可以查询到所有带这个字的课程，如果查询空条件，输出的是整个课程列表

### 2.UESTC的缺点及将要改进的
#### （1）用户登录问题，首先是用户只能登录，无法注册，用户信息写死在数据库，如果要增加新用户只能在数据库中进行添加，操作十分不友好。另外一个是用户登录的过程出现在点击详情页的时候，这样对抢课十分不友好，如果在登录详情页的时候就将用户登录，这样用户之后的任意操作都比较方便。
#### （2）关于抢课的地方的问题，首先需要在详情按钮旁加入抢课按钮，这样用户在抢课的时候就更方便，如果先进入详情页面然后再抢课，这样操作比较麻烦，不适合这种用户操作频繁的情况。
#### （3）课程列表的分页问题，课程列表必须分页，当课程信息太多的时候，如果全部查询出来给用户的话效率太低，用户对于这么多的信息也不是立即就要，所以需要分页功能来展示课程，用户和效率来说都是比较好的。
#### （4）搜索功能，可以增加拼音查询功能，这样用户直接可以根据汉字的首拼进行课程查询，这样十分方便
#### （5）高并发的性能问题，抢课系统是一个高并发的项目，需要对数据库和java代码进行相关调整来提高系统的并发性能。
#### （6）测试工具的应用，需要使用测试工具对并发性能进行相关的测试，体现出系统的并发性能。




