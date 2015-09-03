<%@ page pageEncoding="utf-8" contentType="text/html; charset=utf-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>



<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/index.css">
</head>

<body>
<div class="container-fluid">
<!--header-->
<div class="header">
	<div class="header_wrap">
    	<div class="top_bar">
			<a hidefocus="true" href=""><h1 class="logo"></h1></a>  
            <div class="top_menu">
            <a hidefocus="true"  class="home" href=""><img src="image/03.gif" ></a>  
            <a hidefocus="true"  class="search" href=""><img src="image/02.gif"  ></a>  
            <a hidefocus="true"  class="user" href="login.jsp"><img src="image/01.gif" ></a>  
            </div>      
        </div>
        <!--search-->
    </div>
</div>
<!--nav-->
<div class="tab_nav">
		<a hidefocus="true" class="cur" href="">科技新品</a>
        <a hidefocus="true" href="">体验评测</a>
        <a hidefocus="true" href="">科技三分钟</a>
        <a hidefocus="true" href="">试用</a>	
</div>
<!--banner-->
<div class="banner">
     <div class="slider">
             <ul class="viewport">
             <li o="0" index="0" style="left: 1060px;">
             <a target="_blank" href="" hidefocus="true"><img src="">
             </a>
             </li>
             <li o="1" index="1" style="left: 2120px;">
             <a target="_blank" href="" hidefocus="true"><img src=""></a></li>
            <li o="2" index="2" style="left: 0px;">
            <a target="_blank" href="" hidefocus="true"><img src="image/banner.png">
            </a></li></ul>
            <button hidefocus="true" class="btn1"></button>
            <button hidefocus="true" class="btn2"></button>
                <div class="control">
                <span class="" p="0"></span>
                <span class="" p="1"></span>
                <span class="cur" p="2"></span>
                </div>
    </div>
</div>

<div class="main_cnt">
<ul>
	<c:forEach items="${allGoods}" var="allGoods">
		<c:if test="${allGoods.goods_ishead=='y'}">
    		<li class="style1"><a hidefocus="true" title="这里是文字" class="aLink imgbox" href="" target="_blank"><img src="${allGoods.pohto_url}">
    </a><div class="h_mask">
        <a hidefocus="true" href="" target="_blank"></a></div>
        <div class="txt">
            <h2>
            <a hidefocus="true" title="" target="_blank" class="aTitle" href="">${allGoods.goods_name}</a>
            </h2>
            <div class="label_box tags">
             <span>${allGoods.label_id}</span>
            <span>${allGoods.zan}</span></br>
            <span>${allGoods.goods_text}</span>
            
            </div>
        </div></li>
    	</c:if>
    	<c:if test="${allGoods.goods_ishead=='n'}">
    		<li class=""><a hidefocus="true" title="这里是文字" class="aLink imgbox" href="" target="_blank"><img src="${allGoods.pohto_url}">
    </a><div class="h_mask">
        <a hidefocus="true" href="" target="_blank"></a></div>
        <div class="txt">
            <h2>
            <a hidefocus="true" title="" target="_blank" class="aTitle" href="">${allGoods.goods_name}</a>
            </h2>
            <div class="label_box tags">
             <span>${allGoods.label_id}</span>
            <span>${allGoods.zan}</span></br>
            <span>${allGoods.goods_text}</span>
            
            </div>
        </div></li>
    	</c:if>
    
        
    
    </c:forEach>
    			
			 <!--<li class="">
				<a hidefocus="true" title="" class="aLink imgbox" href="" target="_blank"><img src="">
                </a>
					<div class="h_mask">
                    <a hidefocus="true" href="" target="_blank"></a>
                    </div>
				<div class="txt">
					<h2>
                    <a hidefocus="true" title="标题" target="_blank" class="aTitle" href="">标题
                    </a>
                    </h2>
					
						<div class="label_box tags">
                        <span>文字</span>
                        <span>文字</span>
                        <span>文字</span></div>
									
				
				</div>
			</li>

			
			
			 <li class="">
				<a hidefocus="true" title="标题" class="aLink imgbox" href="" target="_blank"><img src=""></a>
					<div class="h_mask">
                    <a hidefocus="true" href="" target="_blank"></a></div>
				<div class="txt">
					<h2><a hidefocus="true" title="标题" target="_blank" class="aTitle" href="">标题</a></h2>
					
						<div class="label_box tags">
                        <span>文字</span>
                        <span>文字</span>
                        <span>文字</span></div>
				</div>
			</li>

			
			
			<li class="">
				
				<a hidefocus="true" title="标题" class="aLink imgbox" href="" target="_blank"><img src=""></a>

					
					<div class="h_mask"><a hidefocus="true" href="" target="_blank"></a></div>
				<div class="txt">
					<h2><a hidefocus="true" title="标题" target="_blank" class="aTitle" href="">标题</a></h2>
					
						<div class="label_box tags">
                        <span>文字</span>
                        <span>文字</span>
                        <span>文字</span></div>
									
				
				</div>
			</li>

			
			
			<li class="">
				
				<a hidefocus="true" title="标题" class="aLink imgbox" href="" target="_blank"><img src=""></a>

					
					<div class="h_mask"><a hidefocus="true" href="" target="_blank"></a></div>
				<div class="txt">
					<h2><a hidefocus="true" title="标题" target="_blank" class="aTitle" href="">标题</a></h2>
					
						<div class="label_box tags">
                        <span>文字</span>
                        <span>文字</span>
                        <span>文字</span></div>
									
				
				</div>
			</li>

			
			
			<li class="">
				
				<a hidefocus="true" title="标题" class="aLink imgbox" href="" target="_blank"><img src=""></a>

					
					<div class="h_mask"><a hidefocus="true" href="" target="_blank"></a></div>
				<div class="txt">
					<h2><a hidefocus="true" title="标题" target="_blank" class="aTitle" href="">标题</a></h2>
					
						<div class="label_box tags">
                        <span>文字</span>
                        <span>文字</span>
                        <span>文字</span></div>
									
				
				</div>
			</li>

			
			
			<li class="">
				
				<a hidefocus="true" title="标题" class="aLink imgbox" href="" target="_blank"><img src=""></a>

					
					<div class="h_mask"><a hidefocus="true" href="" target="_blank"></a></div>
				<div class="txt">
					<h2><a hidefocus="true" title="标题" target="_blank" class="aTitle" href="">标题</a></h2>
					
						<div class="label_box tags">
                        <span>文字</span>
                        <span>文字</span>
                        <span>文字</span></div>
									
				
				</div>
			</li>

			
			
			<li class="">
				
				<a hidefocus="true" title="标题" class="aLink imgbox" href="" target="_blank"><img src=""></a>

					
					<div class="h_mask"><a hidefocus="true" href="" target="_blank"></a></div>
				<div class="txt">
					<h2><a hidefocus="true" title="标题" target="_blank" class="aTitle" href="">标题</a></h2>
					
						<div class="label_box tags">
                        <span>文字</span>
                        <span>文字</span>
                        <span>文字</span></div>
									
				
				</div>
			</li>

			
			
			<li class="">
				
				<a hidefocus="true" title="标题" class="aLink imgbox" href="" target="_blank"><img src=""></a>

					
					<div class="h_mask"><a hidefocus="true" href="" target="_blank"></a></div>
				<div class="txt">
					<h2><a hidefocus="true" title="标题" target="_blank" class="aTitle" href="">标题</a></h2>
					
						<div class="label_box tags">
                        <span>文字</span>
                        <span>文字</span>
                        <span>文字</span></div>
									
				
				</div>
			</li>

			
			
			<li class="style1 float_r">
				
				<a hidefocus="true" title="标题" class="aLink imgbox" href="" target="_blank"><img src=""></a>

					
					<div class="h_mask"><a hidefocus="true" href="" target="_blank"></a></div>
				<div class="txt">
					<h2><a hidefocus="true" title="标题" target="_blank" class="aTitle" href="">标题</a></h2>
					
						<div class="label_box tags">
                        <span>文字</span>
                        <span>文字</span>
                        <span>文字</span></div>
									
				
				</div>
			</li>

			
			
			<li class="">
				
				<a hidefocus="true" title="标题" class="aLink imgbox" href="" target="_blank"><img src=""></a>

					
					<div class="h_mask"><a hidefocus="true" href="" target="_blank"></a></div>
				<div class="txt">
					<h2><a hidefocus="true" title="标题" target="_blank" class="aTitle" href="">标题</a></h2>
					
						<div class="label_box tags">
                        <span>文字</span>
                        <span>文字</span></div>
									
				
				</div>
			</li>

			
			
			<li class="">
				
				<a hidefocus="true" title="标题" class="aLink imgbox" href="" target="_blank"><img src=""></a>

					
					<div class="h_mask"><a hidefocus="true" href="" target="_blank"></a></div>
				<div class="txt">
					<h2><a hidefocus="true" title="标题" target="_blank" class="aTitle" href="">标题</a></h2>
					
						<div class="label_box tags">
                        <span>文字</span>
                        <span>文字</span>
                        <span>文字</span></div>
									
				
				</div>
			</li>

			
			
			<li class="">
				
				<a hidefocus="true" title="标题" class="aLink imgbox" href="" target="_blank"><img src=""></a>

					
					<div class="h_mask"><a hidefocus="true" href="" target="_blank"></a></div>
				<div class="txt">
					<h2><a hidefocus="true" title="标题" target="_blank" class="aTitle" href="">标题</a></h2>
					
						<div class="label_box tags">
                        <span>文字</span>
                        <span>文字</span>
                        <span>文字</span></div>
									
				
				</div>
			</li>

			
			
			<li class="">
				
				<a hidefocus="true" title="标题" class="aLink imgbox" href="" target="_blank"><img src=""></a>

					
					<div class="h_mask"><a hidefocus="true" href="" target="_blank"></a></div>
				<div class="txt">
					<h2><a hidefocus="true" title="标题" target="_blank" class="aTitle" href="">标题</a></h2>
					
						<div class="label_box tags">
                        <span>文字</span>
                        <span>文字</span>
                        <span>文字</span></div>
									
				
				</div>
			</li>

			
			
			<li class="">
				
				<a hidefocus="true" title="标题" class="aLink imgbox" href="" target="_blank"><img src=""></a>

					
					<div class="h_mask"><a hidefocus="true" href="" target="_blank"></a></div>
				<div class="txt">
					<h2><a hidefocus="true" title="标题" target="_blank" class="aTitle" href="">标题</a></h2>
					
						<div class="label_box tags">
                        <span>文字</span>
                        <span>文字</span>
                        <span>文字</span></div>
									
				
				</div>
			</li>

			
			
			<li class="">
				
				<a hidefocus="true" title="标题" class="aLink imgbox" href="" target="_blank"><img src=""></a>

					
					<div class="h_mask"><a hidefocus="true" href="" target="_blank"></a></div>
				<div class="txt">
					<h2><a hidefocus="true" title="标题" target="_blank" class="aTitle" href="">标题</a></h2>
					
						<div class="label_box tags">
                        <span>文字</span>
                        <span>文字</span></div>
									
				
				</div>
			</li>

			
			
			<li class="">
				
				<a hidefocus="true" title="标题" class="aLink imgbox" href="" target="_blank"><img src=""></a>

					
					<div class="h_mask"><a hidefocus="true" href="" target="_blank"></a></div>
				<div class="txt">
					<h2><a hidefocus="true" title="标题" target="_blank" class="aTitle" href="">标题</a></h2>
					
						<div class="label_box tags">
                        <span>文字</span>
                        <span>文字</span>
                        <span>文字</span></div>
									
				
				</div>
			</li>

			
			
			<li class="">
				
				<a hidefocus="true" title="标题" class="aLink imgbox" href="" target="_blank"><img src=""></a>

					
					<div class="h_mask"><a hidefocus="true" href="" target="_blank"></a></div>
				<div class="txt">
					<h2><a hidefocus="true" title="标题" target="_blank" class="aTitle" href="">标题</a></h2>
					
						<div class="label_box tags">
                        <span>文字</span>
                        <span>文字</span>
                        <span>文字</span></div>
									
				
				</div>
			</li>

			



			 
		<li class="style1">
				
				<a hidefocus="true" title="标题" class="aLink imgbox" href="" target="_blank"><img src=""></a>

					
					<div class="h_mask"><a hidefocus="true" href="" target="_blank"></a></div>
				<div class="txt">
					<h2><a hidefocus="true" title="标题" target="_blank" class="aTitle" href="">标题</a></h2>
					
						<div class="label_box tags">标题</div>
									
				
				</div>
			</li><li class="">
				
				<a hidefocus="true" title="标题"class="aLink imgbox" href="" target="_blank"><img src=""></a>

					
					<div class="h_mask"><a hidefocus="true" href="" target="_blank"></a></div>
				<div class="txt">
					<h2><a hidefocus="true" title="标题" target="_blank" class="aTitle" href="">标题</a></h2>
					
						<div class="label_box tags">文字</div>
									
				
				</div>
			</li><li class="">
				
				<a hidefocus="true" title="标题" class="aLink imgbox" href="" target="_blank"><img src=""></a>

					
					<div class="h_mask"><a hidefocus="true" href="" target="_blank"></a></div>
				<div class="txt">
					<h2><a hidefocus="true" title="标题" target="_blank" class="aTitle" href="">标题</a></h2>
					
						<div class="label_box tags">文字</div>
									
				
				</div>
			</li>
            	<li class="">
				
				<a hidefocus="true" title="标题" class="aLink imgbox" href="" target="_blank"><img src=""></a>

					
					<div class="h_mask"><a hidefocus="true" href="" target="_blank"></a></div>
				<div class="txt">
					<h2><a hidefocus="true" title="标题" target="_blank" class="aTitle" href="">标题</a></h2>
					
						<div class="label_box tags">文字</div>
									
				
				</div>
			</li>
            	<li class="">
				
				<a hidefocus="true" title="标题" class="aLink imgbox" href="" target="_blank"><img src=""></a>

					
					<div class="h_mask"><a hidefocus="true" href="" target="_blank"></a></div>
				<div class="txt">
					<h2><a hidefocus="true" title="标题" target="_blank" class="aTitle" href="">标题</a></h2>
					
						<div class="label_box tags">文字</div>
									
				
				</div>
			</li><li class="">
				
				<a hidefocus="true" title="标题" class="aLink imgbox" href="" target="_blank"><img src=""></a>

					
					<div class="h_mask"><a hidefocus="true" href="" target="_blank"></a></div>
				<div class="txt">
					<h2><a hidefocus="true" title="标题" target="_blank" class="aTitle" href="">标题</a></h2>
					
						<div class="label_box tags">文字</div>
									
				
				</div>
			</li><li class="">
				
				<a hidefocus="true" title="标题" class="aLink imgbox" href="" target="_blank"><img src=""></a>

					
					<div class="h_mask"><a hidefocus="true" href="" target="_blank"></a></div>
				<div class="txt">
					<h2><a hidefocus="true" title="标题" target="_blank" class="aTitle" href="">标题</a></h2>
					
						<div class="label_box tags">文字</div>
									
				
				</div>
			</li><li class="">
				
				<a hidefocus="true" title="标题" class="aLink imgbox" href="" target="_blank"><img src=""></a>

					
					<div class="h_mask"><a hidefocus="true" href="" target="_blank"></a></div>
				<div class="txt">
					<h2><a hidefocus="true" title="标题" target="_blank" class="aTitle" href="">标题</a></h2>
					
						<div class="label_box tags">文字</div>
									
				
				</div>
			</li><li class="">
				
				<a hidefocus="true" title="标题" class="aLink imgbox" href="" target="_blank"><img src=""></a>

					
					<div class="h_mask"><a hidefocus="true" href="" target="_blank"></a></div>
				<div class="txt">
					<h2><a hidefocus="true" title="标题" target="_blank" class="aTitle" href="">标题</a></h2>
					
						<div class="label_box tags">文字</div>
									
				
				</div>
			</li><li class="style1 float_r">
				
				<a hidefocus="true" title="标题" class="aLink imgbox" href="" target="_blank"><img src=""></a>

					
					<div class="h_mask"><a hidefocus="true" href="" target="_blank"></a></div>
				<div class="txt">
					<h2><a hidefocus="true" title="标题" target="_blank" class="aTitle" href="">标题</a></h2>
					
						<div class="label_box tags">文字</div>
									
				
				</div>
			</li><li class="">
				
				<a hidefocus="true" title="标题" class="aLink imgbox" href="" target="_blank"><img src=""></a>

					
					<div class="h_mask"><a hidefocus="true" href="" target="_blank"></a></div>
				<div class="txt">
					<h2><a hidefocus="true" title="标题" target="_blank" class="aTitle" href="">标题</a></h2>
					
						<div class="label_box tags">文字</div>
									
				
				</div>
			</li><li class="">
				
				<a hidefocus="true" title="标题" class="aLink imgbox" href="" target="_blank"><img src=""></a>

					
					<div class="h_mask"><a hidefocus="true" href="" target="_blank"></a></div>
				<div class="txt">
					<h2><a hidefocus="true" title="标题" target="_blank" class="aTitle" href="">标题</a></h2>
					
						<div class="label_box tags">文字</div>
									
				
				</div>
			</li><li class="">
				
				<a hidefocus="true" title="标题" class="aLink imgbox" href="" target="_blank"><img src=""></a>

					
					<div class="h_mask"><a hidefocus="true" href="" target="_blank"></a></div>
				<div class="txt">
					<h2><a hidefocus="true" title="标题" target="_blank" class="aTitle" href="">标题</a></h2>
					
						<div class="label_box tags">文字</div>
									
				
				</div>
			</li><li class="">
				
				<a hidefocus="true" title="标题" class="aLink imgbox" href="" target="_blank"><img src=""></a>

					
					<div class="h_mask"><a hidefocus="true" href="" target="_blank"></a></div>
				<div class="txt">
					<h2><a hidefocus="true" title="标题" target="_blank" class="aTitle" href="">标题</a></h2>
					
						<div class="label_box tags">文字</div>
									
				
				</div>
			</li><li class="">
				
				<a hidefocus="true" title="标题" class="aLink imgbox" href="" target="_blank"><img src=""></a>

					
					<div class="h_mask"><a hidefocus="true" href="" target="_blank"></a></div>
				<div class="txt">
					<h2><a hidefocus="true" title="标题" target="_blank" class="aTitle" href="">标题</a></h2>
					
						<div class="label_box tags">文字</div>
									
				
				</div>
			</li><li class="">
				
				<a hidefocus="true" title="标题" class="aLink imgbox" href="" target="_blank"><img src=""></a>

					
					<div class="h_mask"><a hidefocus="true" href="" target="_blank"></a></div>
				<div class="txt">
					<h2><a hidefocus="true" title="标题" target="_blank" class="aTitle" href="">标题</a></h2>
					
						<div class="label_box tags">文字</div>
									
				
				</div>
			</li><li class="">
				
				<a hidefocus="true" title="标题" class="aLink imgbox" href="" target="_blank"><img src=""></a>

					
					<div class="h_mask"><a hidefocus="true" href="" target="_blank"></a></div>
				<div class="txt">
					<h2><a hidefocus="true" title="标题" target="_blank" class="aTitle" href="">标题</a></h2>
					
						<div class="label_box tags">文字</div>
									
				
				</div>
			</li><li class="">
				
				<a hidefocus="true" title="标题" class="aLink imgbox" href="" target="_blank"><img src=""></a>

					
					<div class="h_mask"><a hidefocus="true" href="" target="_blank"></a></div>
				<div class="txt">
					<h2><a hidefocus="true" title="标题" target="_blank" class="aTitle" href="">标题</a></h2>
					
						<div class="label_box tags">文字</div>
									
				
				</div>
			</li><li class="style1">
				
				<a hidefocus="true" title="标题" class="aLink imgbox" href="" target="_blank"><img src=""></a>

					
					<div class="h_mask"><a hidefocus="true" href="" target="_blank"></a></div>
				<div class="txt">
					<h2><a hidefocus="true" title="标题" target="_blank" class="aTitle" href="">标题</a></h2>
					
						<div class="label_box tags">文字</div>
									
				
				</div>
			</li><li class="">
				
				<a hidefocus="true" title="标题" class="aLink imgbox" href="" target="_blank"><img src=""></a>

					
					<div class="h_mask"><a hidefocus="true" href="" target="_blank"></a></div>
				<div class="txt">
					<h2><a hidefocus="true" title="标题" target="_blank" class="aTitle" href="">标题</a></h2>
					
						<div class="label_box tags">文字</div>
									
				
				</div>
			</li><li class="">
				
				<a hidefocus="true" title="标题" class="aLink imgbox" href="" target="_blank"><img src=""></a>

					
					<div class="h_mask"><a hidefocus="true" href="" target="_blank"></a></div>
				<div class="txt">
					<h2><a hidefocus="true" title="标题" target="_blank" class="aTitle" href="">标题</a></h2>
					
						<div class="label_box tags">文字</div>
									
				
				</div>
			</li><li class="">
				
				<a hidefocus="true" title="标题" class="aLink imgbox" href="" target="_blank"><img src=""></a>

					
					<div class="h_mask"><a hidefocus="true" href="" target="_blank"></a></div>
				<div class="txt">
					<h2><a hidefocus="true" title="标题" target="_blank" class="aTitle" href="">标题</a></h2>
					
						<div class="label_box tags">文字</div>
									
				
				</div>
			</li><li class="">
				
				<a hidefocus="true" title="标题" class="aLink imgbox" href="" target="_blank"><img src=""></a>

					
					<div class="h_mask"><a hidefocus="true" href="" target="_blank"></a></div>
				<div class="txt">
					<h2><a hidefocus="true" title="标题" target="_blank" class="aTitle" href="">标题</a></h2>
					
						<div class="label_box tags">文字</div>
									
				
				</div>
			</li><li class="">
				
				<a hidefocus="true" title="标题" class="aLink imgbox" href="" target="_blank"><img src=""></a>

					
					<div class="h_mask"><a hidefocus="true" href="" target="_blank"></a></div>
				<div class="txt">
					<h2><a hidefocus="true" title="标题" target="_blank" class="aTitle" href="">标题</a></h2>
					
						<div class="label_box tags">文字</div>
									
				
				</div>
			</li><li class="">
				
				<a hidefocus="true" title="标题" class="aLink imgbox" href="" target="_blank"><img src=""></a>

					
					<div class="h_mask"><a hidefocus="true" href="" target="_blank"></a></div>
				<div class="txt">
					<h2><a hidefocus="true" title="标题" target="_blank" class="aTitle" href="">标题</a></h2>
					
						<div class="label_box tags">文字</div>
									
				
				</div>
			</li><li class="">
				
				<a hidefocus="true" title="标题" class="aLink imgbox" href="" target="_blank"><img src=""></a>

					
					<div class="h_mask"><a hidefocus="true" href="" target="_blank"></a></div>
				<div class="txt">
					<h2><a hidefocus="true" title="标题" target="_blank" class="aTitle" href="">标题</a></h2>
					
						<div class="label_box tags">文字</div>
									
				
				</div>
			</li><li class="">
				
				<a hidefocus="true" title="" class="aLink imgbox" href="" target="_blank"><img src=""></a>

					
					<div class="h_mask"><a hidefocus="true" href="" target="_blank"></a></div>
				<div class="txt">
					<h2><a hidefocus="true" title="标题" target="_blank" class="aTitle" href="">标题</a></h2>
					
						<div class="label_box tags">文字</div>
									
				
				</div>
			</li><li class="style1 float_r">
				
				<a hidefocus="true" title="标题" class="aLink imgbox" href=""><img src=""></a>

					
					<div class="h_mask"><a hidefocus="true" href="" target="_blank"></a></div>
				<div class="txt">
					<h2><a hidefocus="true" title="标题" target="_blank" class="aTitle" href="">标题</a></h2>
					
						<div class="label_box tags">文字</div>
									
				
				</div>
			</li><li class="">
				
				<a hidefocus="true" title="标题" class="aLink imgbox" href="" target="_blank"><img src=""></a>

					
					<div class="h_mask"><a hidefocus="true" href="" target="_blank"></a></div>
				<div class="txt">
					<h2><a hidefocus="true" title="标题" target="_blank" class="aTitle" href="">标题</a></h2>
					
						<div class="label_box tags">文字</div>
									
				
				</div>
			</li><li class="">
				
				<a hidefocus="true" title="标题" class="aLink imgbox" href="" target="_blank"><img src=""></a>

					
					<div class="h_mask"><a hidefocus="true" href="" target="_blank"></a></div>
				<div class="txt">
					<h2><a hidefocus="true" title="标题" target="_blank" class="aTitle" href="">标题</a></h2>
					
						<div class="label_box tags">文字</div>
									
				
				</div>
			</li><li class="">
				
				<a hidefocus="true" title="标题" class="aLink imgbox" href="" target="_blank"><img src=""></a>

					
					<div class="h_mask"><a hidefocus="true" href="" target="_blank"></a></div>
				<div class="txt">
					<h2><a hidefocus="true" title="标题" target="_blank" class="aTitle" href="">标题</a></h2>
					
						<div class="label_box tags">文字</div>
									
				
				</div>
			</li><li class="">
				
				<a hidefocus="true" title="标题" class="aLink imgbox" href="" target="_blank"><img src=""></a>

					
					<div class="h_mask"><a hidefocus="true" href="" target="_blank"></a></div>
				<div class="txt">
					<h2><a hidefocus="true" title="标题" target="_blank" class="aTitle" href="">标题</a></h2>
					
						<div class="label_box tags">文字</div>
									
				
				</div>
			</li><li class="">
				
				<a hidefocus="true" title="标题" class="aLink imgbox" href="" target="_blank"><img src=""></a>

					
					<div class="h_mask"><a hidefocus="true" href="" target="_blank"></a></div>
				<div class="txt">
					<h2><a hidefocus="true" title="标题" target="_blank" class="aTitle" href="">标题</a></h2>
					
						<div class="label_box tags">文字</div>
									
				
				</div>
			</li><li class="">
				
				<a hidefocus="true" title="标题" class="aLink imgbox" href="" target="_blank"><img src=""></a>

					
					<div class="h_mask"><a hidefocus="true" href="" target="_blank"></a></div>
				<div class="txt">
					<h2><a hidefocus="true" title="标题" target="_blank" class="aTitle" href="">标题</a></h2>
					
						<div class="label_box tags">文字</div>
									
				
				</div>
			</li><li class="">
				
				<a hidefocus="true" title="标题" class="aLink imgbox" href="" target="_blank"><img src=""></a>

					
					<div class="h_mask"><a hidefocus="true" href="" target="_blank"></a></div>
				<div class="txt">
					<h2><a hidefocus="true" title="标题" target="_blank" class="aTitle" href="">标题</a></h2>
					
						<div class="label_box tags">文字</div>
									
				
				</div>
			</li>
            <li class="">
				
				<a hidefocus="true" title="标题" class="aLink imgbox" href="" target="_blank"><img src=""></a>

					
					<div class="h_mask"><a hidefocus="true" href="" target="_blank"></a></div>
				<div class="txt">
					<h2><a hidefocus="true" title="标题" target="_blank" class="aTitle" href="">标题</a></h2>
					
						<div class="label_box tags">文字</div>
									
				
				</div>
			</li><li class="style1">
				
				<a hidefocus="true" title="标题" class="aLink imgbox" href="" target="_blank"><img src=""></a>

					
					<div class="h_mask"><a hidefocus="true" href="" target="_blank"></a></div>
				<div class="txt">
					<h2><a hidefocus="true" title="标题" target="_blank" class="aTitle" href="">标题</a></h2>
					
						<div class="label_box tags">文字</div>
									
				
				</div>
			</li><li class="">
				
				<a hidefocus="true" title="标题" class="aLink imgbox" href="" target="_blank"><img src=""></a>

					
					<div class="h_mask"><a hidefocus="true" href="" target="_blank"></a></div>
				<div class="txt">
					<h2><a hidefocus="true" title="标题" target="_blank" class="aTitle" href="">标题</a></h2>
					
						<div class="label_box tags">文字</div>
									
				
				</div>
			</li><li class="">
				
				<a hidefocus="true" title="标题" class="aLink imgbox" href="" target="_blank"><img src=""></a>

					
					<div class="h_mask"><a hidefocus="true" href="" target="_blank"></a></div>
				<div class="txt">
					<h2><a hidefocus="true" title="标题" target="_blank" class="aTitle" href="">标题</a></h2>
					
						<div class="label_box tags">文字</div>
									
				
				</div>
			</li><li class="">
				
				<a hidefocus="true" title="标题" class="aLink imgbox" href="" target="_blank"><img src=""></a>

					
					<div class="h_mask"><a hidefocus="true" href="" target="_blank"></a></div>
				<div class="txt">
					<h2><a hidefocus="true" title="标题" target="_blank" class="aTitle" href="">标题</a></h2>
					
						<div class="label_box tags">文字</div>
									
				
				</div>
			</li><li class="">
				
				<a hidefocus="true" title="标题" class="aLink imgbox" href="" target="_blank"><img src=""></a>

					
					<div class="h_mask"><a hidefocus="true" href="" target="_blank"></a></div>
				<div class="txt">
					<h2><a hidefocus="true" title="" target="_blank" class="aTitle" href="">标题</a></h2>
					
						<div class="label_box tags">文字</div>
									
				
				</div>
			</li><li class="">
				
				<a hidefocus="true" title="标题" class="aLink imgbox" href="" target="_blank"><img src=""></a>

					
					<div class="h_mask"><a hidefocus="true" href="" target="_blank"></a></div>
				<div class="txt">
					<h2><a hidefocus="true" title="标题" target="_blank" class="aTitle" href="">标题</a></h2>
					
						<div class="label_box tags">文字</div>
									
				
				</div>
			</li><li class="">
				
				<a hidefocus="true" title="标题" class="aLink imgbox" href="" target="_blank"><img src=""></a>

					
					<div class="h_mask"><a hidefocus="true" href="" target="_blank"></a></div>
				<div class="txt">
					<h2><a hidefocus="true" title="标题" target="_blank" class="aTitle" href="">标题</a></h2>
					
						<div class="label_box tags">文字</div>
									
				
				</div>
			</li><li class="">
				
				<a hidefocus="true" title="标题" class="aLink imgbox" href="" target="_blank"><img src=""></a>

					
					<div class="h_mask"><a hidefocus="true" href="" target="_blank"></a></div>
				<div class="txt">
					<h2><a hidefocus="true" title="标题" target="_blank" class="aTitle" href="">标题</a></h2>
					
						<div class="label_box tags">文字</div>
									
				
				</div>
			</li><li class="">
				
				<a hidefocus="true" title="标题" class="aLink imgbox" href="" target="_blank"><img src=""></a>

					
					<div class="h_mask"><a hidefocus="true" href="" target="_blank"></a></div>
				<div class="txt">
					<h2><a hidefocus="true" title="文字" target="_blank" class="aTitle" href="">标题</a></h2>
					
						<div class="label_box tags">文字</div>
									
				
				</div>
			</li><li class="style1 float_r">
				
				<a hidefocus="true" title="标题" class="aLink imgbox" href="" target="_blank"><img src=""></a>

					
					<div class="h_mask"><a hidefocus="true" href="" target="_blank"></a></div>
				<div class="txt">
					<h2><a hidefocus="true" title="标题" target="_blank" class="aTitle" href="">标题</a></h2>
					
						<div class="label_box tags">文字</div>
									
				
				</div>
			</li><li class="">
				
				<a hidefocus="true" title="标题" class="aLink imgbox" href="" target="_blank"><img src=""></a>

					
					<div class="h_mask"><a hidefocus="true" href="" target="_blank"></a></div>
				<div class="txt">
					<h2><a hidefocus="true" title="标题" target="_blank" class="aTitle" href="">标题</a></h2>
					
						<div class="label_box tags">文字</div>
									
				
				</div>
			</li><li class="">
				
				<a hidefocus="true" title="标题" class="aLink imgbox" href="" target="_blank"><img src=""></a>

					
					<div class="h_mask"><a hidefocus="true" href="" target="_blank"></a></div>
				<div class="txt">
					<h2><a hidefocus="true" title="标题" target="_blank" class="aTitle" href="">标题</a></h2>
					
						<div class="label_box tags">文字</div>
									
				
				</div>
			</li><li class="">
				
				<a hidefocus="true" title="标题" class="aLink imgbox" href="" target="_blank"><img src=""></a>

					
					<div class="h_mask"><a hidefocus="true" href="" target="_blank"></a></div>
				<div class="txt">
					<h2><a hidefocus="true" title="标题" target="_blank" class="aTitle" href="">标题</a></h2>
					
						<div class="label_box tags">文字</div>
									
				
				</div>
			</li><li class="">
				
				<a hidefocus="true" title="标题" class="aLink imgbox" href="" target="_blank"><img src=""></a>

					
					<div class="h_mask"><a hidefocus="true" href="" target="_blank"></a></div>
				<div class="txt">
					<h2><a hidefocus="true" title="标题" target="_blank" class="aTitle" href="">标题</a></h2>
					
						<div class="label_box tags">文字</div>
									
				
				</div>
			</li><li class="">
				
				<a hidefocus="true" title="标题" class="aLink imgbox" href="" target="_blank"><img src=""></a>

					
					<div class="h_mask"><a hidefocus="true" href="" target="_blank"></a></div>
				<div class="txt">
					<h2><a hidefocus="true" title="标题" target="_blank" class="aTitle" href="">标题</a></h2>
					
						<div class="label_box tags">标题</div>
									
				
				</div>
			</li><li class="">
				
				<a hidefocus="true" title="标题" class="aLink imgbox" href="" target="_blank"><img src=""></a>

					
					<div class="h_mask"><a hidefocus="true" href="" target="_blank"></a></div>
				<div class="txt">
					<h2><a hidefocus="true" title="标题" target="_blank" class="aTitle" href="">标题</a></h2>
					
						<div class="label_box tags">文字</div>
									
				
				</div>
			</li><li class="">
				
				<a hidefocus="true" title="标题" class="aLink imgbox" href="" target="_blank"><img src=""></a>

					
					<div class="h_mask"><a hidefocus="true" href="" target="_blank"></a></div>
				<div class="txt">
					<h2><a hidefocus="true" title="标题" target="_blank" class="aTitle" href="">标题</a></h2>
					
						<div class="label_box tags">文字</div>
									
				
				</div>
			</li><li class="">
				
				<a hidefocus="true" title="标题" class="aLink imgbox" href="" target="_blank"><img src=""></a>

					
					<div class="h_mask"><a hidefocus="true" href="" target="_blank"></a></div>
				<div class="txt">
					<h2><a hidefocus="true" title="标题" target="_blank" class="aTitle" href="http://www.flipped.cn/article-451.html">标题</a></h2>
					
						<div class="label_box tags">文字</div>
									
				
				</div>
			</li>-->
			</ul>
 
            
		<div class="page-bar"><a href="#" class="pre-btn"></a><a href="#" class="">1</a><a href="#" class="">2</a><a href="#" class="">3</a><a href="#" class="active">4</a><a href="#" class="">5</a><a href="#" class="">6</a><a href="#" class="next-btn"></a></div>
		
	</div>
</ul>
</div>




</div>
</body>
</html>
