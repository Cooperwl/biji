<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<html>
<head>
    <base href="<%=basePath%>">
    <meta charset="utf-8">
    <title>首页</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all"/>
    <%--<link href="css/bootstrap-responsive.css" rel="stylesheet" type="text/css" media="all"/>--%>
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <%--<link href="css/manage.css" rel="stylesheet" type="text/css" media="all"/>--%>
    <%--<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700|Montserrat:300,400,600,700" type="text/css" rel="stylesheet">--%>
    <link type="text/css" rel="stylesheet" media="screen" href="css/style.css">
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>

    <!--//theme-style-->

</head>
<body>

<nav class="tab-bar main-header">
    <section class="middle tab-bar-section show-for-large-up">
        <div class="left">
            <h1><a class="logo" href="/">笔记饭</a></h1>
        </div>

        <div class="right show-for-large-up">
            <c:choose>
                <c:when test="${userInfo == null}">
                    <a class="button" href="/signup">注册</a>
                    <span class="button" data-reveal-id="login_dialog">登陆</span>
                </c:when>
                <c:otherwise>
                    <a data-toggle="dropdown" class="dropdown-toggle" href="#" aria-expanded="false">
                        <span class="hidden-xs">administrator</span>
                    </a>
                    <ul class="dropdown-menu pull-right">
                        <li><a class="menuItem" data-id="userInfo" href="#"><i class="fa fa-user"></i>个人信息</a></li>
                        <li><a href="#"><i class="fa fa-trash-o"></i>我的消息</a></li>
                        <li><a href="#"><i class="fa fa-trash-o"></i>我上传的</a></li>
                        <li><a href="#"><i class="ace-icon fa fa-power-off"></i>我购买的</a></li>
                        <li class="divider"></li>
                        <li><a href="#"><i class="ace-icon fa fa-power-off"></i>退出</a></li>
                    </ul>
                </c:otherwise>
            </c:choose>

        </div>
    </section>

</nav>
<!--//header-->

<main class="main-section" id="content">
    <div class="ui-corner-all" id="notify_message"></div>

    <div class="new-style">
        <div style="background-image:url('img/note.png')" id="marketplace_banner" >
            <div class="row margin-top">
                <div class="medium-4 columns">
                    <h2 class="base-8 no-margin" id="user-count">530,211 份笔记</h2>
                </div>
                <div class="medium-4 columns">
                    <h2 class="base-8 no-margin" id="material-count">200,290 人使用</h2>
                </div>
                <div class="medium-4 columns">
                    <h2 class="base-8 no-margin" id="course-count">1,243,233 次讨论</h2>
                </div>
            </div>

            <div class="row med-padding-top text-center hide-for-small">
                <form method="get" id="index-search-form" action="/" accept-charset="UTF-8">
                    <div class="column small-8 small-offset-0 medium-7 medium-offset-2 columns">
                        <input type="text" placeholder="查找我需要的笔记" name="searchterms" id="searchterms">
                    </div>

                    <div class="column small-4 medium-1 end columns collapse-left">
                        <button class="button-1 primary-1-background">Search</button>
                    </div>
                </form>
            </div>
        </div>

        <div class="panel row margin-top">
            <div class="medium-6 columns">
                <div class="row padding-top">
                    <div class="small-12 columns">
                        <h1 class="base-8">为什么我要共享笔记</h1>
                    </div>
                </div>
                <div class="row med-padding-top">
                    <div class="small-11 columns end">
                        <h4 class="base-8">获得更扎实的大学，考研知识，取得更好成绩</h4>
                    </div>
                </div>
                <div class="row med-padding-top">
                    <div class="small-11 columns end">
                        <h4 class="base-8">与更多大学生展开讨论，交流</h4>
                    </div>
                </div>
                <div class="row med-padding-top">
                    <div class="small-11 columns end">
                        <h4 class="base-8">自学能力不是自己一个人学习</h4>
                    </div>
                </div>
                <div class="row med-padding-top">
                    <div class="small-11 columns end">
                        <h4 class="base-8">是主动去更好的学</h4>
                    </div>
                </div>
            </div>
            <div class="medium-5 medium-offset-1 columns hide-for-small">
                <img src="img/note.png" alt="Find-notes">
            </div>
        </div>

        <div class="panel row margin-top">
            <div class="medium-6 columns">
                <div class="row padding-top">
                    <div class="small-12 columns end">
                        <h1 class="base-8">为什么我要上传笔记</h1>
                    </div>
                </div>
                <div class="row med-padding-top">
                    <div class="small-11 columns end">
                        <h4 class="base-8">多年的的笔记不用丢掉送人，可以上传赚钱钱</h4>
                    </div>
                </div>
                <div class="row med-padding-top">
                    <div class="small-11 columns end">
                        <h4 class="base-8">梳理自己的知识</h4>
                    </div>
                </div>
                <div class="row med-padding-top">
                    <div class="small-11 columns end">
                        <h4 class="base-8">你的笔记比你想象的更有意义</h4>
                    </div>
                </div>
                <div class="row med-padding-top">
                    <div class="small-11 columns end">
                        <h4 class="base-8">你的笔记比你想象的更有意义</h4>
                    </div>
                </div>
            </div>
            <div class="medium-5 medium-offset-1 columns hide-for-small">
                <img src="img/note.png" alt="Find-notes">
            </div>
        </div>

        <div class="panel row margin-top">
            <div class="columns">
                <div class="row padding-top">
                    <div class="columns end">
                        <img class="medium-1" src="img/note.png" alt="Find-notes">
                        <span>以前上课用的笔记各种人借，到最后都找不到了，现在有地方放，还能赚了几百</span>
                    </div>
                </div>
                <div class="row padding-top">
                    <div class="columns end">
                        <img class="medium-1" src="img/note.png" alt="Find-notes">
                        <span>以前考试前各种求人借笔记，现在都在这里能找到了，不懂得地方还能问，学的扎实多了</span>
                    </div>
                </div>
                <div class="row padding-top">
                    <div class="columns end">
                        <img class="medium-1" src="img/note.png" alt="Find-notes">
                        <span>作为考研党，笔记有多重要，我就不说，大家都懂</span>
                    </div>
                </div>
                <div class="row padding-top">
                    <div class="columns end">
                        <img class="medium-1" src="img/note.png" alt="Find-notes">
                        <span>以前上课用的笔记各种人借，到最后都找不到了，现在有地方放，还能赚了几百</span>
                    </div>
                </div>
                <div class="row padding-top">
                    <div class="columns end">
                        <img class="medium-1" src="img/note.png" alt="Find-notes">
                        <span>以前考试前各种求人借笔记，现在都在这里能找到了，不懂得地方还能问，学的扎实多了</span>
                    </div>
                </div>
            </div>
        </div>

    </div>

    <div id="fb-root"></div>
</main>

</body>
</html>