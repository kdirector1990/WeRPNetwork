<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

 <!-- Topbar Start -->
            <div class="navbar-custom">
                <ul class="list-unstyled topnav-menu float-right mb-0">

                    <li class="d-none d-sm-block">
                        <form class="app-search">
                            <div class="app-search-box">
                                <div class="input-group">
                                    <input type="text" class="form-control" placeholder="Search...">
                                    <div class="input-group-append">
                                        <button class="btn" type="submit">
                                            <i class="fe-search"></i>
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </li>
        
                    <li class="dropdown notification-list">
                        <a class="nav-link dropdown-toggle  waves-effect waves-light" data-toggle="dropdown" href="#" role="button" aria-haspopup="false" aria-expanded="false">
                            <i class="fe-bell noti-icon"></i>
                            <span class="badge badge-danger rounded-circle noti-icon-badge">9</span>
                        </a>
                        <div class="dropdown-menu dropdown-menu-right dropdown-lg">

                            <!-- item-->
                            <div class="dropdown-item noti-title">
                                <h5 class="m-0">
                                    <span class="float-right">
                                        <a href="" class="text-dark">
                                            <small>Clear All</small>
                                        </a>
                                    </span>Notification
                                </h5>
                            </div>

                            <div class="slimscroll noti-scroll">

                                <!-- item-->
                                <a href="javascript:void(0);" class="dropdown-item notify-item">
                                    <div class="notify-icon bg-primary">
                                        <i class="mdi mdi-settings-outline"></i>
                                    </div>
                                    <p class="notify-details">New settings
                                        <small class="text-muted">There are new settings available</small>
                                    </p>
                                </a>

                                <!-- item-->
                                <a href="javascript:void(0);" class="dropdown-item notify-item active">
                                    <div class="notify-icon">
                                        <img src="assets/images/users/avatar-1.jpg" class="img-fluid rounded-circle" alt="" /> </div>
                                    <p class="notify-details">Cristina Pride</p>
                                    <p class="text-muted mb-0 user-msg">
                                        <small>Hi, How are you? What about our next meeting</small>
                                    </p>
                                </a>

                    
                                <!-- item-->
                                <a href="javascript:void(0);" class="dropdown-item notify-item">
                                    <div class="notify-icon bg-warning">
                                        <i class="mdi mdi-bell-outline"></i>
                                    </div>
                                    <p class="notify-details">Updates
                                        <small class="text-muted">There are 2 new updates available</small>
                                    </p>
                                </a>

                                <!-- item-->
                                <a href="javascript:void(0);" class="dropdown-item notify-item">
                                    <div class="notify-icon">
                                        <img src="assets/images/users/avatar-4.jpg" class="img-fluid rounded-circle" alt="" /> </div>
                                    <p class="notify-details">Karen Robinson</p>
                                    <p class="text-muted mb-0 user-msg">
                                        <small>Wow ! this admin looks good and awesome design</small>
                                    </p>
                                </a>

                                <!-- item-->
                                <a href="javascript:void(0);" class="dropdown-item notify-item">
                                    <div class="notify-icon bg-danger">
                                        <i class="mdi mdi-account-plus"></i>
                                    </div>
                                    <p class="notify-details">New user
                                        <small class="text-muted">You have 10 unread messages</small>
                                    </p>
                                </a>

                                <!-- item-->
                                <a href="javascript:void(0);" class="dropdown-item notify-item">
                                    <div class="notify-icon bg-info">
                                        <i class="mdi mdi-comment-account-outline"></i>
                                    </div>
                                    <p class="notify-details">Caleb Flakelar commented on Admin
                                        <small class="text-muted">4 days ago</small>
                                    </p>
                                </a>

                                <!-- item-->
                                <a href="javascript:void(0);" class="dropdown-item notify-item">
                                    <div class="notify-icon bg-secondary">
                                        <i class="mdi mdi-heart"></i>
                                    </div>
                                    <p class="notify-details">Carlos Crouch liked
                                        <b>Admin</b>
                                        <small class="text-muted">13 days ago</small>
                                    </p>
                                </a>
                            </div>

                            <!-- All-->
                            <a href="javascript:void(0);" class="dropdown-item text-center text-primary notify-item notify-all">
                                View all
                                <i class="fi-arrow-right"></i>
                            </a>

                        </div>
                    </li>

                    <li class="dropdown notification-list">
                        <a class="nav-link dropdown-toggle nav-user mr-0 waves-effect waves-light" data-toggle="dropdown" href="#" role="button" aria-haspopup="false" aria-expanded="false">
                            <img src="assets/images/users/avatar-1.jpg" alt="user-image" class="rounded-circle">
                        </a>
                        <div class="dropdown-menu dropdown-menu-right profile-dropdown ">
                            <!-- item-->
                            <div class="dropdown-header noti-title">
                                <h6 class="text-overflow m-0">Welcome !</h6>
                            </div>

                            <!-- item-->
                            <a href="javascript:void(0);" class="dropdown-item notify-item">
                                <i class="fe-user"></i>
                                <span>Profile</span>
                            </a>

                            <!-- item-->
                            <a href="javascript:void(0);" class="dropdown-item notify-item">
                                <i class="fe-settings"></i>
                                <span>Settings</span>
                            </a>

                            <!-- item-->
                            <a href="javascript:void(0);" class="dropdown-item notify-item">
                                <i class="fe-lock"></i>
                                <span>Lock Screen</span>
                            </a>

                            <div class="dropdown-divider"></div>

                            <!-- item-->
                            <a href="javascript:void(0);" class="dropdown-item notify-item">
                                <i class="fe-log-out"></i>
                                <span>Logout</span>
                            </a>

                        </div>
                    </li>

                    <li class="dropdown notification-list">
                        <a href="javascript:void(0);" class="nav-link right-bar-toggle waves-effect waves-light">
                            <i class="fe-settings noti-icon"></i>
                        </a>
                    </li>


                </ul>

                <!-- LOGO -->
                <div class="logo-box">
                    <a href="index.html" class="logo text-center">
                        <span class="logo-lg">
                            <img src="assets/images/logo-light.png" alt="" height="20">
                            <!-- <span class="logo-lg-text-light">UBold</span> -->
                        </span>
                        <span class="logo-sm">
                            <!-- <span class="logo-sm-text-dark">U</span> -->
                            <img src="assets/images/logo-sm.png" alt="" height="24">
                        </span>
                    </a>
                </div>

                <ul class="list-unstyled topnav-menu topnav-menu-left m-0">
                    <li>
                        <button class="button-menu-mobile waves-effect waves-light">
                            <i class="fe-menu"></i>
                        </button>
                    </li>
        
                    <li class="dropdown d-none d-lg-block ">
                        <div class="lang-option">
                            <select class="selectpicker form-control" title="" data-width="110px">
                                <option> English </option>
                                <option> French </option>
                                <option> Germany </option>
                                <option> Spanish</option>
                            </select>
                        </div>
            
                    </li>

                </ul>
            </div>
            <!-- end Topbar -->


<!-- ========== Left Sidebar Start ========== -->
            <div class="left-side-menu">

                <div class="slimscroll-menu">

                    <!--- Sidemenu -->
                    <div id="sidebar-menu">

                        <ul class="metismenu" id="side-menu">

                            <li class="menu-title">Navigation</li>

                            <li>
                                <a href="index.html">
                                    <i class="fe-airplay"></i>
                                    <span class="badge badge-success badge-pill float-right">1</span>
                                    <span> Dashboard </span>
                                </a>
                            </li>
                           
                           	<li> 
	                          <a href="javascript: void(0);">
	                             <i class="mdi mdi-fiile-document"></i>경영지원
	                          </a>
	                          <ul class="nav-second-level" aria-expanded="false">  	
	                          	<li><a href="#">기획서 조회</a></li>
	                          	<li><a href="#">기획서 관리</a></li>
	                          	<li><a href="#">기획서 등록</a></li> 	
	                          </ul>
							</li>
                           
                           
                           	<li> 
	                          <a href="javascript: void(0);">
	                             <i class="mdi mdi-account"></i> 인사
	                          </a>
	                          <ul class="nav-second-level" aria-expanded="false">
	                          	<li><a href="javascript: void(0);" aria-expanded="false">인사정보</a>
	                          		<span class="menu-arrow"></span>
	                          		<ul class="nav-third-level nav" aria-expanded="false">
	                          			<li><a href="#">인사정보등록</a></li>
										<li><a href="#">인사정보현황</a></li>
										<li><a href="#">인사고과/상벌현황</a></li>
										<li><a href="#">책정임금 현황</a></li>
										<li><a href="#">근속년수현황</a></li>
	                          		</ul>
	                          	</li>
	
	                          	<li><a href="javascript: void(0);" aria-expanded="false">인사발령</a>
	                          		<span class="menu-arrow"></span>
	                          		<ul class="nav-third-level nav" aria-expanded="false">
	                          			<li><a href="#">인사발령등록</a></li>
										<li><a href="#">인사발령공고</a></li>
										<li><a href="#">인사발령리포트</a></li>
	                          		</ul>	
	                          	</li>
	                          	
	                          	<li><a href="javascript: void(0);" aria-expanded="false">인사/급여관리</a>
	                          		<span class="menu-arrow"></span>
	                          		<ul class="nav-third-level nav" aria-expanded="false">
	                          			<li><a href="#">근태경과입력</a></li>
					                	<li><a href="#">상용직급여 입력 및 계산</a></li>
					                	<li><a href="#">급여대장</a></li>
					                	<li><a href="#">급여명세</a></li>
					                	<li><a href="#">급/상여 이체현황</a></li>
					                	<li><a href="#">월별 급/상여지급현황</a></li>
					                	<li><a href="#">사원별 급/상여지급현황</a></li>
					                	<li><a href="#">급/상여 집계현황</a></li>
					                	<li><a href="#">항목별 급/상여 지급현황</a></li>
					                	<li><a href="#">급여통계현황</a></li>
					                	<li><a href="#">급/상여 증감현황</a></li>
					                	<li><a href="#">연갑금여현황</a></li>
					                	<li><a href="#">수당별 연간급여현황</a></li>
	                          		</ul>
	                          	</li>
	                          	
	                          	<li><a href="javascript: void(0);" aria-expanded="false">사회보험관리</a>
	                          		<span class="menu-arrow"></span>
	                          		<ul class="nav-third-level nav" aria-expanded="false">
	                          			<li><a href="#">사회보험취득관리</a></li>
										<li><a href="#">사회보험상실관리</a></li>
										<li><a href="#">자격취득신고서</a></li>
										<li><a href="#">자격상실신고서</a></li>
										<li><a href="#">고용보험이직확인서</a></li>
	                          		</ul>
	                          	</li>
	                          	
	                          	<li><a href="javascript: void(0);" aria-expanded="false">연말정산관리</a>
	                          		<span class="menu-arrow"></span>
	                          		<ul class="nav-third-level nav" aria-expanded="false">
	                          			<li><a href="#">연말정산자료입력</a></li>
										<li><a href="#">연말정산현황</a></li>
										<li><a href="#">근로소득원천징수부</a></li>
										<li><a href="#">근로소득원청징수영수증</a></li>
	                          		</ul>
	                          	</li>
	                          	
	                          	<li><a href="javascript: void(0);" aria-expanded="false">퇴직정산관리</a>
	                          		<span class="menu-arrow"></span>
	                          		<ul class="nav-third-level nav" aria-expanded="false">
	                          			<li><a href="#">퇴직기준선정</a></li>
										<li><a href="#">퇴직금산정</a></li>
										<li><a href="#">퇴직소득원청징수영수증</a></li>
										<li><a href="#">퇴직금추계액</a></li>
	                          		</ul>
	                          	</li>
	                          	
	                          	<li><a href="javascript: void(0);" aria-expanded="false">세무관리</a>
	                          		<span class="menu-arrow"></span>
	                          		<ul class="nav-third-level nav" aria-expanded="false">
	                          			<li><a href="#">원천징수이행상황신고서</a></li>
										<li><a href="#">지방소득세특별징수명세/납부서</a></li>
	                          		</ul>
	                          	</li>
	                          	
	                          	<li><a href="javascript: void(0);" aria-expanded="false">전표관리</a>
	                          		<span class="menu-arrow"></span>
	                          		<ul class="nav-third-level nav" aria-expanded="false">
	                          			<li><a href="#">계정과목설정</a></li>
										<li><a href="#">소득자별계정유형설정</a></li>
										<li><a href="#">전표집계 및 생성</a></li>
	                          		</ul>
	                          	</li>
	                          	
	                          	<li><a href="javascript: void(0);" aria-expanded="false">일용직관리</a>
	                          		<span class="menu-arrow"></span>
	                          		<ul class="nav-third-level nav" aria-expanded="false">
	                          			<li><a href="#">일용직사원등록</a></li>
										<li><a href="#">일용직급여지급일자등록</a></li>
										<li><a href="#">일용직급여입력 및 계산</a></li>
	                          		</ul>
	                          	</li>
	                          </ul>	
	                        <li> 
	                        
	                          <a href="javascript: void(0);">
	                             <i class="mdi mdi-car-back"></i>영업
	                          </a>
	                          <ul class="nav-second-level" aria-expanded="false">  	
	                          	<li><a href="javascript: void(0);" aria-expanded="false">영업관리</a>
	                          		<span class="menu-arrow"></span>
	                          		<ul class="nav-third-level nav" aria-expanded="false">
	                          			<li><a href="#">판매계획 관리</a></li>
										<li><a href="#">견적 관리</a></li>
										<li><a href="#">거래 명세서 발행</a></li>
										<li><a href="#">세금 계산서 발행</a></li>
	                          		</ul>
	                          	</li>
	                          	
	                          	<li><a href="javascript: void(0);" aria-expanded="false">영업현황</a>
	                          		<span class="menu-arrow"></span>
	                          		<ul class="nav-third-level nav" aria-expanded="false">
	                          			<li><a href="#">판매계획 현황</a></li>
										<li><a href="#">판매계획 대비 출고 현황</a></li>
										<li><a href="#">견적 현황</a></li>
										<li><a href="#">견적 대비 생산 현황</a></li>
										<li><a href="#">출고 지연 현황</a></li>
										<li><a href="#">출고 관리</a></li>
										<li><a href="#">반품 관리</a></li>
										<li><a href="#">세금계산서 발행 대장</a></li>
										<li><a href="#">수금 현황</a></li>																									
										<li><a href="#">받을 어음 현황</a></li>
										<li><a href="#">미수 채권 집계</a></li>
										<li><a href="#">미수 채권 상세 현황</a></li>	
	                          		</ul>
	                          	</li>
	                          	
	                          	<li><a href="javascript: void(0);" aria-expanded="false">영업분석</a>
	                          		<span class="menu-arrow"></span>
	                          		<ul class="nav-third-level nav" aria-expanded="false">
	                          				<li><a href="#">출고 지연 집계</a></li>
						                    <li><a href="#">출고 실적 집계표(월별)</a></li>
						                    <li><a href="#">매출 현황</a></li>
						                    <li><a href="#">매출 집계표</a></li>
						                    <li><a href="#">매출 순위표</a></li>
											<li><a href="#">추정 매출원가</a></li>
	                          		</ul>
	                          	</li>
	                          </ul>
							</li>	
	                         
							<li> 
	                          <a href="javascript: void(0);">
	                             <i class="mdi mdi-coin"></i>재무
	                          </a>
	                          <ul class="nav-second-level" aria-expanded="false">  	
	                          	<li><a href="javascript: void(0);" aria-expanded="false">전표/장부</a>
	                          		<span class="menu-arrow"></span>
	                          		<ul class="nav-third-level nav" aria-expanded="false">
	                          			<li><a href="#">전표입력</a></li>
					                    <li><a href="#">전표관리</a></li>
					                    <li><a href="#">전표승인해제</a></li>
					                    <li><a href="#">분개장</a></li>
					                    <li><a href="#">거래처원장</a></li>
					                    <li><a href="#">주요계정증감현황</a></li>
					                    <li><a href="#">계정별 변동추이 분석</a></li>
                          			</ul>
	                          	</li>
	                          	
	                          	<li><a href="javascript: void(0);" aria-expanded="false">결산/제무재표</a>
	                          		<span class="menu-arrow"></span>
	                          		<ul class="nav-third-level nav" aria-expanded="false">
	                          				<li><a href="#">결산자료입력</a></li>
						                    <li><a href="#">재무상태표</a></li>
						                    <li><a href="#">손익계산서</a></li>
						                    <li><a href="#">원가보고서</a></li>
	                          		</ul>
	                          	</li>
	                          	
	                          	<li><a href="javascript: void(0);" aria-expanded="false">자금</a>
	                          		<span class="menu-arrow"></span>
	                          		<ul class="nav-third-level nav" aria-expanded="false">
	                          				<li><a href="#">자금현황</a></li>
                    						<li><a href="#">주요예적금 현황</a></li>
	                          		</ul>
	                          	</li>
	                          	
	                          	<li><a href="javascript: void(0);" aria-expanded="false">예산</a>
	                          		<span class="menu-arrow"></span>
	                          		<ul class="nav-third-level nav" aria-expanded="false">
	                          			<li><a href="#">일자별자금계획입력</a></li>
					                    <li><a href="#">예산신청입력</a></li>
					                    <li><a href="#">예산조정입력</a></li>
					                    <li><a href="#">예산계획현황</a></li>
	                          		</ul>
	                          	</li>
	                          	
	                          	<li><a href="javascript: void(0);" aria-expanded="false">고정자산</a>
	                          		<span class="menu-arrow"></span>
	                          		<ul class="nav-third-level nav" aria-expanded="false">
	                          			<li><a href="#">고정자산관리</a></li>
                    					<li><a href="#">감가상각누계액 현황</a></li>
	                          		</ul>
	                          	</li>
	                          	
	                          	<li><a href="javascript: void(0);" aria-expanded="false">부가가치세</a>
	                          		<span class="menu-arrow"></span>
	                          		<ul class="nav-third-level nav" aria-expanded="false">
	                          			<li><a href="#">부가세금서</a></li>
                    					<li><a href="#">세금계산서 합계표</a></li>
	                          		</ul>
	                          	</li>
	                          	
	                          	<li><a href="javascript: void(0);" aria-expanded="false">금융관리</a>
	                          		<span class="menu-arrow"></span>
	                          		<ul class="nav-third-level nav" aria-expanded="false">
	                          			<li><a href="#">계좌번호 관리</a></li>
                    					<li><a href="#">카드번호 관리</a></li>
	                          		</ul>
	                          	</li>
	                          	 	
	                          </ul>
							</li>
							
							<li> 
	                          <a href="javascript: void(0);">
	                             <i class="mdi mdi-server"></i>전산팀
	                          </a>
	                          <ul class="nav-second-level" aria-expanded="false">  	
	                          	<li><a href="javascript: void(0);" aria-expanded="false">설비관리</a>
	                          		<span class="menu-arrow"></span>
	                          		<ul class="nav-third-level nav" aria-expanded="false">
	                          			<li><a href="#">전산 설비 등록</a></li>
					                    <li><a href="#">전산 설비 관리</a></li>
					                    <li><a href="#">전산 설비 목록</a></li>
	                          		</ul>
	                          	</li>
	                          	
	                          	<li><a href="javascript: void(0);" aria-expanded="false">설비 유지비</a>
	                          		<span class="menu-arrow"></span>
	                          		<ul class="nav-third-level nav" aria-expanded="false">
	                          			<li><a href="#">수리 일지 등록</a></li>
                    					<li><a href="#">수리 현황</a></li>
	                          		</ul>
	                          	</li>
	                          	
	                          	<li><a href="javascript: void(0);" aria-expanded="false">예산관리</a>
	                          		<span class="menu-arrow"></span>
	                          		<ul class="nav-third-level nav" aria-expanded="false">
	                          			<li><a href="#">예산 현황</a></li>
                    					<li><a href="#">추가 예산 신청</a></li>
	                          		</ul>
	                          	</li>
	                          	
	                          	<li><a href="javascript: void(0);" aria-expanded="false">A/S관리</a>
	                          		<span class="menu-arrow"></span>
	                          		<ul class="nav-third-level nav" aria-expanded="false">
	                          			<li><a href="#">A/S 요청 현황</a></li>
                    					<li><a href="#">A/S 요청 관리 </a></li>
	                          		</ul>
	                          	</li>
	                          </ul>
							</li>
							
							<li> 
	                          <a href="javascript: void(0);">
	                             <i class="mdi mdi-factory"></i>제조
	                          </a>
	                          <ul class="nav-second-level" aria-expanded="false">  	
	                          	<li><a href="javascript: void(0);" aria-expanded="false">생산관리</a>
	                          		<span class="menu-arrow"></span>
	                          		<ul class="nav-third-level nav" aria-expanded="false">
	                          			<li><a href="#">생산계획등록</a></li>
					                    <li><a href="#">생산계획관리</a></li>
										<li><a href="#">작업지시등록</a></li>
					                    <li><a href="#">작업지시확정</a></li>
					                    <li><a href="#">생산자재출고</a></li>
	                          		</ul>
	                          	</li>
	                          	
	                          	<li><a href="javascript: void(0);" aria-expanded="false">재공관리</a>
	                          		<span class="menu-arrow"></span>
	                          		<ul class="nav-third-level nav" aria-expanded="false">
	                          			<li><a href="#">기초재공등록</a></li>
                    					<li><a href="#">재공품 입고/출고 관리</a></li>
	                          		</ul>
	                          	</li>
	                          	
	                          	<li><a href="javascript: void(0);" aria-expanded="false">생산/재공 현황</a>
	                          		<span class="menu-arrow"></span>
	                          		<ul class="nav-third-level nav" aria-expanded="false">
	                          			<li><a href="#">작업지시 현황</a></li>
					                    <li><a href="#">계획대비 생산 현황</a></li>
										<li><a href="#">자재청구대비 사용현황</a></li>
					                    <li><a href="#">실적현황</a></li>
					                    <li><a href="#">생산일보</a></li>
					                    <li><a href="#">생산월보</a></li>
					                    <li><a href="#">현재공품현황</a></li>
	                          		</ul>
	                          	</li>
	                          	
	                          	<li><a href="javascript: void(0);" aria-expanded="false">자재관리</a>
	                          		<span class="menu-arrow"></span>
	                          		<ul class="nav-third-level nav" aria-expanded="false">
	                          			<li><a href="#">자재등록</a></li>
					                    <li><a href="#">자재관리</a></li>
										<li><a href="#">자재사용현황(작업별)</a></li>
										<li><a href="#">자재사용현황(자재별)</a></li>
										<li><a href="#">자재사용현황(제품별)</a></li>
	                          		</ul>
	                          	</li>
	                          </ul>
							</li>
							

                            <li>
                                <a href="javascript: void(0);">
                                    <i class="fe-briefcase"></i>
                                    <span> UI Kit </span>
                                    <span class="menu-arrow"></span>
                                </a>
                                <ul class="nav-second-level" aria-expanded="false">
                                    <li><a href="ui-typography.html">Typography</a></li>
                                    <li><a href="ui-cards.html">Cards</a></li>
                                    <li><a href="ui-buttons.html">Buttons</a></li>
                                    <li><a href="ui-modals.html">Modals</a></li>
                                    <li><a href="ui-checkbox-radio.html">Checkboxs-Radios</a></li>
                                    <li><a href="ui-tabs.html">Tabs</a></li>
                                    <li><a href="ui-progressbars.html">Progress Bars</a></li>
                                    <li><a href="ui-notifications.html">Notification</a></li>
                                    <li><a href="ui-carousel.html">Carousel</a>
                                    <li><a href="ui-video.html">Embed Video</a>
                                    <li><a href="ui-tooltips-popovers.html">Tooltips & Popovers</a></li>
                                    <li><a href="ui-images.html">Images</a></li>
                                    <li><a href="ui-bootstrap.html">Bootstrap UI</a></li>
                                </ul>
                            </li>

                            <li>
                                <a href="javascript: void(0);">
                                    <i class="fe-box"></i>
                                    <span> Icons </span>
                                    <span class="menu-arrow"></span>
                                </a>
                                <ul class="nav-second-level" aria-expanded="false">
                                    <li><a href="icons-colored.html">Colored Icons</a></li>
                                    <li><a href="icons-materialdesign.html">Material Design</a></li>
                                    <li><a href="icons-dripicons.html">Dripicons</a></li>
                                    <li><a href="icons-fontawesome.html">Font awesome</a></li>
                                    <li><a href="icons-feather.html">Feather Icons</a></li>
                                </ul>
                            </li>

                            <li>
                                <a href="javascript: void(0);">
                                    <i class="fe-pie-chart"></i>
                                    <span> Graphs </span>
                                    <span class="menu-arrow"></span>
                                </a>
                                <ul class="nav-second-level" aria-expanded="false">
                                    <li><a href="charts-flot.html">Flot Chart</a></li>
                                    <li><a href="charts-morris.html">Morris Chart</a></li>
                                    <li><a href="charts-google.html">Google Chart</a></li>
                                    <li><a href="charts-chartist.html">Chartist Charts</a></li>
                                    <li><a href="charts-chartjs.html">Chartjs Chart</a></li>
                                    <li><a href="charts-c3.html">C3 Chart</a></li>
                                    <li><a href="charts-sparkline.html">Sparkline Chart</a></li>
                                    <li><a href="charts-knob.html">Jquery Knob</a></li>
                                </ul>
                            </li>

                            <li>
                                <a href="javascript: void(0);">
                                    <i class="fe-disc"></i>
                                    <span class="badge badge-primary badge-pill float-right">9</span>
                                    <span> Forms </span>
                                </a>
                                <ul class="nav-second-level" aria-expanded="false">
                                    <li><a href="form-elements.html">Form Elements</a></li>
                                    <li><a href="form-advanced.html">Form Advanced</a></li>
                                    <li><a href="form-validation.html">Form Validation</a></li>
                                    <li><a href="form-pickers.html">Form Pickers</a></li>
                                    <li><a href="form-wizard.html">Form Wizard</a></li>
                                    <li><a href="form-mask.html">Form Masks</a></li>
                                    <li><a href="form-summernote.html">Summernote</a></li>
                                    <li><a href="form-quilljs.html">Quilljs Editor</a></li>
                                    <li><a href="form-uploads.html">File Upload</a></li>
                                </ul>
                            </li>
                
                            <li>
                                <a href="javascript: void(0);">
                                    <i class="fe-grid"></i>
                                    <span> Tables </span>
                                    <span class="menu-arrow"></span>
                                </a>
                                <ul class="nav-second-level" aria-expanded="false">
                                    <li><a href="tables-basic.html">Basic Tables</a></li>
                                    <li><a href="tables-layouts.html">Tables Layouts</a></li>
                                    <li><a href="tables-datatable.html">Data Tables</a></li>
                                    <li><a href="tables-responsive.html">Responsive Table</a></li>
                                    <li><a href="tables-tablesaw.html">Tablesaw Table</a></li>
                                    <li><a href="tables-editable.html">Editable Table</a></li>
                                </ul>
                            </li>

                            <li class="menu-title mt-2">More</li>

                            <li>
                                <a href="javascript: void(0);">
                                    <i class="fe-target"></i>
                                    <span> Admin UI </span>
                                    <span class="menu-arrow"></span>
                                </a>
                                <ul class="nav-second-level" aria-expanded="false">
                                    <li><a href="admin-grid.html">Grid</a></li>
                                    <li><a href="admin-sweet-alert.html">Sweet Alert</a></li>
                                    <li><a href="admin-widgets.html">Widgets</a></li>
                                    <li><a href="admin-nestable.html">Nestable List</a></li>
                                    <li><a href="admin-rangeslider.html">Range Slider</a></li>
                                    <li><a href="admin-ratings.html">Ratings</a></li>
                                </ul>
                            </li>

                            <li>
                                <a href="calendar.html">
                                    <i class="fe-calendar"></i>
                                    <span> Calendar </span>
                                </a>
                            </li>

                            <li>
                                <a href="javascript: void(0);">
                                    <i class="fe-map"></i>
                                    <span> Maps </span>
                                    <span class="menu-arrow"></span>
                                </a>
                                <ul class="nav-second-level" aria-expanded="false">
                                    <li><a href="maps-google.html">Google Maps</a></li>
                                    <li><a href="maps-vector.html">Vector Maps</a></li>
                                    <li><a href="maps-mapael.html">Mapael Maps</a></li>
                                </ul>
                            </li>

                            <li>
                                <a href="javascript: void(0);">
                                    <i class="fe-layout"></i>
                                    <span> Layouts </span>
                                    <span class="badge badge-purple badge-pill float-right">New</span>
                                </a>
                                <ul class="nav-second-level" aria-expanded="false">
                                    <li>
                                        <a href="layouts-dark-sidebar.html">Dark Sidebar</a>
                                    </li>
                                    <li>
                                        <a href="layouts-small-sidebar.html">Small Sidebar</a>
                                    </li>
                                    <li>
                                        <a href="layouts-sidebar-collapsed.html">Sidebar Collapsed</a>
                                    </li>
                                    <li>
                                        <a href="layouts-boxed.html">Boxed Layout</a>
                                    </li>
                                </ul>
                            </li>
                
                            <li>
                                <a href="javascript: void(0);">
                                    <i class="fe-book-open"></i>
                                    <span> Pages </span>
                                    <span class="menu-arrow"></span>
                                </a>
                                <ul class="nav-second-level" aria-expanded="false">
                                    <li><a href="pages-starter.html">Starter Page</a></li>
                                    <li><a href="pages-login.html">Login</a></li>
                                    <li><a href="pages-register.html">Register</a></li>
                                    <li><a href="pages-logout.html">Logout</a></li>
                                    <li><a href="pages-recoverpw.html">Recover Password</a></li>
                                    <li><a href="pages-lock-screen.html">Lock Screen</a></li>
                                    <li><a href="pages-confirm-mail.html">Confirm Mail</a></li>
                                    <li><a href="pages-404.html">Error 404</a></li>
                                    <li><a href="pages-404-alt.html">Error 404-alt</a></li>
                                    <li><a href="pages-500.html">Error 500</a></li>
                                </ul>
                            </li>

                            <li>
                                <a href="javascript: void(0);">
                                    <i class="fe-folder-plus"></i>
                                    <span> Extra Pages </span>
                                    <span class="menu-arrow"></span>
                                </a>
                                <ul class="nav-second-level" aria-expanded="false">
                                    <li><a href="extras-about.html">About Us</a></li>
                                    <li><a href="extras-contact.html">Contact</a></li>
                                    <li><a href="extras-members.html">Members</a></li>
                                    <li><a href="extras-timeline.html">Timeline</a></li>
                                    <li><a href="extras-invoice.html">Invoice</a></li>
                                    <li><a href="extras-maintenance.html">Maintenance</a></li>
                                    <li><a href="extras-coming-soon.html">Coming Soon</a></li>
                                    <li><a href="extras-faq.html">FAQ</a></li>
                                    <li><a href="extras-pricing.html">Pricing</a></li>
                                </ul>
                            </li>

                            <li>
                                <a href="javascript: void(0);">
                                    <i class="fe-plus-square"></i>
                                    <span> Multi Level </span>
                                    <span class="menu-arrow"></span>
                                </a>
                                <ul class="nav-second-level nav" aria-expanded="false">
                                    <li>
                                        <a href="javascript: void(0);">Level 1.1</a>
                                    </li>
                                    <li>
                                        <a href="javascript: void(0);" aria-expanded="false">Level 1.2
                                            <span class="menu-arrow"></span>
                                        </a>
                                        <ul class="nav-third-level nav" aria-expanded="false">
                                            <li>
                                                <a href="javascript: void(0);">Level 2.1</a>
                                            </li>
                                            <li>
                                                <a href="javascript: void(0);">Level 2.2</a>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                        </ul>

                    </div>
                    <!-- End Sidebar -->

                    <div class="clearfix"></div>

                </div>
                <!-- Sidebar -left -->

            </div>
            <!-- Left Sidebar End -->
