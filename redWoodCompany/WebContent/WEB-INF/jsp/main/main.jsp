<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%  
	String cp = request.getContextPath();
%>

<!DOCTYPE html>
<html lang="en">

<jsp:include page="../common/commonHEAD.jsp" flush="false" />
<jsp:include page="../common/script.jsp" flush="false" />

<body>

	<jsp:include page="../common/navigation.jsp" flush="false" />

    <!-- Header Carousel -->
    <header id="myCarousel" class="carousel slide">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
            <li data-target="#myCarousel" data-slide-to="3"></li>
            <li data-target="#myCarousel" data-slide-to="4"></li>
        </ol>

        <!-- Wrapper for slides -->
        <div class="carousel-inner">
            <div class="item active">
                <div class="fill" style="background-image:url('<%=cp%>/img/slider/slider01.jpg');"></div>
                <div class="carousel-caption">
                    <h2>Caption 1</h2>
                </div>
            </div>
            <div class="item">
                <div class="fill" style="background-image:url('<%=cp%>/img/slider/slider02.jpg');"></div>
                <div class="carousel-caption">
                    <h2>Caption 2</h2>
                </div>
            </div>
            <div class="item">
                <div class="fill" style="background-image:url('<%=cp%>/img/slider/slider03.jpg');"></div>
                <div class="carousel-caption">
                    <h2>Caption 3</h2>
                </div>
            </div>
            <div class="item">
                <div class="fill" style="background-image:url('<%=cp%>/img/slider/slider04.jpg');"></div>
                <div class="carousel-caption">
                    <h2>Caption 4</h2>
                </div>
            </div>
            <div class="item">
                <div class="fill" style="background-image:url('<%=cp%>/img/slider/slider05.jpg');"></div>
                <div class="carousel-caption">
                    <h2>Caption 5</h2>
                </div>
            </div>
        </div>

        <!-- Controls -->
        <a class="left carousel-control" href="#myCarousel" data-slide="prev">
            <span class="icon-prev"></span>
        </a>
        <a class="right carousel-control" href="#myCarousel" data-slide="next">
            <span class="icon-next"></span>
        </a>
    </header>

    <!-- Page Content -->
    <div class="container">

        <!-- Marketing Icons Section -->
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">
                    We Work
                </h1>
            </div>
            <div class="col-md-4 col-sm-6">
                <div class="">
                    <div class="" align="center">
                        <img class="img-responsive img-portfolio img-hover" src="<%=cp%>/img/work.jpg" width="350px;" alt="">
                    </div>
                </div>
            </div>
            <div class="col-md-4 col-sm-6">
                <div class="">
                    <div class="" align="center">
                        <img class="img-responsive img-portfolio img-hover" src="<%=cp%>/img/main_01.jpg" width="350px;" alt="">
                    </div>
                    <p align="center"><strong>사전 CG작업</strong></p>
                </div>
            </div>
            <div class="col-md-4 col-sm-6">
                <div class="">
                    <div class="" align="center">
                        <img class="img-responsive img-portfolio img-hover" src="<%=cp%>/img/main_02.jpg" width="350px;" alt="">
                    </div>
                    <p align="center"><strong>실제 시공사진</strong></p>
                </div>
            </div>
        </div>
        <!-- /.row -->

        <!-- Portfolio Section -->
        <div class="row">
            <div class="col-lg-12">
                <h2 class="page-header">Portfolio</h2>
            </div>
            <c:forEach var="data" items="${potolio_list}">
	            <div class="col-md-4 col-sm-6">
	                <img class="img-responsive img-portfolio img-hover" src="/upload/img/main/${data.img_Name}" alt="">
	            </div>
            </c:forEach>
        </div>
        <!-- /.row -->

        <!-- Features Section -->
        <div class="row">
            <div class="col-lg-12">
                <h2 class="page-header">건축 시뮬레이션</h2>
            </div>
            <div class="col-md-6">
                <ul>
                	<li><strong>2D 설계도면을 3D동영상으로 제작해드립니다.</strong></li>
                    <li><strong>도면없이  컨셉제시용 제작도 가능</strong></li>
                    <li><strong>다세대빌라 , 아파트,  자연휴양림, 호텔, 리조트 제작가능</strong></li>
                    <br>
                    <br>
                </ul>
                <p>건축 3D 시뮬레이션은 설계의 문제유무판단과 사업성 검토, 적합한 외장재 선택에 도움이 되고 건축물의 완성도를 높입니다. 기존의 참고이미지, 도면, 조감도만으론 이미지 구현에 한계가 있습니다. 여러분의 상상 속 이미지를 영상으로 제작하여 건축 설계의 질을 높일 수 있습니다.</p>
            </div>
            <div class="col-md-6">
                <video poster="http://placehold.it/640x360" controls="controls" autoplay="autoplay" style="max-width: 100%;">
				    <source src="<%=cp%>/video/main02.mp4" type="video/mp4" />
				</video>
            </div>
        </div>
        <!-- /.row -->

        <hr>        
    
    	<jsp:include page="../common/footer.jsp" flush="false" />

    </div>
    <!-- /.container -->
    
    <!-- Script to Activate the Carousel -->
    <script>
    $('.carousel').carousel({
        interval: 5000 //changes the speed
    })
    </script>

</body>

</html>
