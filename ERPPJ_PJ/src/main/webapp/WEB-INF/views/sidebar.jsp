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
                                        <img src="/erp/resources/assets/images/users/avatar-1.jpg" class="img-fluid rounded-circle" alt="" /> </div>
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
                                        <img src="/erp/resources/assets/images/users/avatar-4.jpg" class="img-fluid rounded-circle" alt="" /> </div>
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
                            <img src="/erp/resources/assets/images/users/avatar-1.jpg" alt="user-image" class="rounded-circle">
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
                    <a href="index" class="logo text-center">
                        <span class="logo-lg">
                            <img src="/erp/resources/assets/images/logo-light.png" alt="" height="20">
                            <!-- <span class="logo-lg-text-light">UBold</span> -->
                        </span>
                        <span class="logo-sm">
                            <!-- <span class="logo-sm-text-dark">U</span> -->
                            <img src="/erp/resources/assets/images/logo-sm.png" alt="" height="24">
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
                                <a href="index">
                                    <i class="fe-airplay"></i>
                                    <span class="badge badge-success badge-pill float-right">1</span>
                                    <span> Dashboard </span>
                                </a>
                            </li>
                           
                           	<li> 
	                          <a href="javascript: void(0);">
	                             <i class="mdi mdi-fiile-document"></i><span> 경영지원 </span>
	                          </a>
	                          <ul class="nav-second-level" aria-expanded="false">  	
	                          	<li><a href="#">기획서 조회</a></li>
	                          	<li><a href="#">기획서 관리</a></li>
	                          	<li><a href="#">기획서 등록</a></li> 	
	                          </ul>
							</li>
                           
                           
                           	<li> 
	                          <a href="javascript: void(0);">
	                             <i class="mdi mdi-account"></i> 
	                             <span> 인사 </span>
	                          </a>
	                          <ul class="nav-second-level" aria-expanded="false">
	                          	<li><a href="javascript: void(0);" aria-expanded="false">인사정보</a>
	                          		<span class="menu-arrow"></span>
	                          		<ul>
	                          			<li><a href="HR_InputHR">인사정보등록</a></li>
										<li><a href="HR_EmployeeInformation">인사정보현황</a></li>
										<li><a href="HR_GreetingPunishment">인사고과/상벌현황</a></li>
										<li><a href="HR_EmployeeSalary">책정임금 현황</a></li>
										<li><a href="HR_Yearsofservice">근속년수현황</a></li>
	                          		</ul>
	                          	</li>
	
	                          	<li><a href="javascript: void(0);" aria-expanded="false">인사발령
	                          		<span class="menu-arrow"></span></a>
	                          		<ul>
	                          			<li><a href="HR_Greeting">인사발령등록</a></li>
										<li><a href="HR_appointment_notice">인사발령공고</a></li>
										<li><a href="HR_appointment_report">인사발령리포트</a></li>
	                          		</ul>	
	                          	</li>
	                          	
	                          	<li><a href="javascript: void(0);" aria-expanded="false">인사/급여관리</a>
	                          		<span class="menu-arrow"></span>
	                          		<ul>
	                          			<li><a href="HR_work_record">근태경과입력</a></li>
					                	<li><a href="HR_coming_soon">상용직급여 입력 및 계산</a></li>
					                	<li><a href="coming_soon">!급여대장</a></li>
					                	<li><a href="coming_soon">!급여명세</a></li>
					                	<li><a href="coming_soon">!급/상여 이체현황</a></li>
					                	<li><a href="coming_soon">!월별 급/상여지급현황</a></li>
					                	<li><a href="coming_soon">!사원별 급/상여지급현황</a></li>
					                	<li><a href="coming_soon">!급/상여 집계현황</a></li>
					                	<li><a href="coming_soon">!항목별 급/상여 지급현황</a></li>
					                	<li><a href="coming_soon">!급여통계현황</a></li>
					                	<li><a href="coming_soon">!급/상여 증감현황</a></li>
					                	<li><a href="coming_soon">!연갑금여현황</a></li>
					                	<li><a href="coming_soon">!수당별 연간급여현황</a></li>
	                          		</ul>
	                          	</li>
	                          	
	                          	<li><a href="javascript: void(0);" aria-expanded="false">!사회보험관리</a>
	                          		<span class="menu-arrow"></span>
	                          		<ul>
	                          			<li><a href="coming_soon">!사회보험취득관리</a></li>
										<li><a href="coming_soon">!사회보험상실관리</a></li>
										<li><a href="coming_soon">!자격취득신고서</a></li>
										<li><a href="coming_soon">!자격상실신고서</a></li>
										<li><a href="coming_soon">!고용보험이직확인서</a></li>
	                          		</ul>
	                          	</li>
	                          	
	                          	<li><a href="javascript: void(0);" aria-expanded="false">!연말정산관리</a>
	                          		<span class="menu-arrow"></span>
	                          		<ul>
	                          			<li><a href="coming_soon">!연말정산자료입력</a></li>
										<li><a href="coming_soon">!연말정산현황</a></li>
										<li><a href="coming_soon">!근로소득원천징수부</a></li>
										<li><a href="coming_soon">!근로소득원청징수영수증</a></li>
	                          		</ul>
	                          	</li>
	                          	
	                          	<li><a href="javascript: void(0);" aria-expanded="false">!퇴직정산관리</a>
	                          		<span class="menu-arrow"></span>
	                          		<ul>
	                          			<li><a href="coming_soon">!퇴직기준선정</a></li>
										<li><a href="coming_soon">!퇴직금산정</a></li>
										<li><a href="coming_soon">!퇴직소득원청징수영수증</a></li>
										<li><a href="coming_soon">!퇴직금추계액</a></li>
	                          		</ul>
	                          	</li>
	                          	
	                          	<li><a href="javascript: void(0);" aria-expanded="false">!세무관리</a>
	                          		<span class="menu-arrow"></span>
	                          		<ul>
	                          			<li><a href="coming_soon">!원천징수이행상황신고서</a></li>
										<li><a href="coming_soon">!지방소득세특별징수명세/납부서</a></li>
	                          		</ul>
	                          	</li>
	                          	
	                          	<li><a href="javascript: void(0);" aria-expanded="false">!전표관리</a>
	                          		<span class="menu-arrow"></span>
	                          		<ul>
	                          			<li><a href="coming_soon">!계정과목설정</a></li>
										<li><a href="coming_soon">!소득자별계정유형설정</a></li>
										<li><a href="coming_soon">!전표집계 및 생성</a></li>
	                          		</ul>
	                          	</li>
	                          	
	                          	<li><a href="javascript: void(0);" aria-expanded="false">!일용직관리</a>
	                          		<span class="menu-arrow"></span>
	                          		<ul>
	                          			<li><a href="coming_soon">!일용직사원등록</a></li>
										<li><a href="coming_soon">!일용직급여지급일자등록</a></li>
										<li><a href="coming_soon">!일용직급여입력 및 계산</a></li>
	                          		</ul>
	                          	</li>
	                          </ul>
	                          
	                          
	                          <!-- ★ 내가 해야 하는 영업 ★ -->
	                        <li> 
	                          <a href="javascript: void(0);">
	                             <i class="mdi mdi-car-back"></i>
	                             <span> 영업 </span>
	                          </a>
	                          <ul class="nav-second-level" aria-expanded="false">  	
	                          	<li><a href="javascript: void(0);" aria-expanded="false">영업관리</a>
	                          		<span class="menu-arrow"></span>
	                          		<ul>
	                          			<li><a href="ST_sale_plan">판매계획 관리</a></li>
										<li><a href="ST_estimate">견적 관리</a></li>
										<li><a href="ST_tables-datatable">거래 명세서 발행</a></li>
										<li><a href="ST_tax-statements">세금 계산서 발행</a></li>
	                          		</ul>
	                          	</li>
	                          	
	                          	<li><a href="javascript: void(0);" aria-expanded="false">영업현황</a>
	                          		<span class="menu-arrow"></span>
	                          		<ul>
	                          			<li><a href="ST_sale_plan_state">판매계획 현황</a></li>
										<li><a href="ST_contrast_pp">판매계획 대비 출고 현황</a></li>
										<li><a href="ST_tables-responsive">견적 현황</a></li>
										<li><a href="ST_contrast_pPro">견적 대비 생산 현황</a></li>
										<li><a href="ST_delay_state">출고 지연 현황</a></li>
										<li><a href="ST_release">출고 관리</a></li>
										<li><a href="ST_refund">반품 관리</a></li>
										<li><a href="ST_tex_invoice_list">세금계산서 발행 대장</a></li>
										<li><a href="coming_soon">!수금 현황</a></li>																									
										<li><a href="coming_soon">!받을 어음 현황</a></li>
										<li><a href="coming_soon">!미수 채권 집계</a></li>
										<li><a href="coming_soon">!미수 채권 상세 현황</a></li>	
	                          		</ul>
	                          	</li>
	                          	
	                          	<li><a href="javascript: void(0);" aria-expanded="false">영업분석</a>
	                          		<span class="menu-arrow"></span>
	                          		<ul>
	                          				<li><a href="coming_soon">!출고 지연 집계</a></li>
						                    <li><a href="coming_soon">!출고 실적 집계표(월별)</a></li>
						                    <li><a href="coming_soon">!매출 현황</a></li>
						                    <li><a href="coming_soon">!매출 집계표</a></li>
						                    <li><a href="coming_soon">!매출 순위표</a></li>
											<li><a href="coming_soon">!추정 매출원가</a></li>
	                          		</ul>
	                          	</li>
	                          </ul>
							</li>	
	                         
							<li> 
	                          <a href="javascript: void(0);">
	                             <i class="mdi mdi-coin"></i>
	                             <span> 재무 </span>
	                          </a>
	                          <ul class="nav-second-level" aria-expanded="false">  	
	                          	<li><a href="javascript: void(0);" aria-expanded="false">전표/장부</a>
	                          		<span class="menu-arrow"></span>
	                          		<ul>
	                          			<li><a href="insertChit">전표입력</a></li> 
					                    <li><a href="FT_Chit_Manager">전표승인해제</a></li>
					                    <li><a href="journal">분개장</a></li>
					                    <li><a href="ledger">거래처원장</a></li>
					                    <li><a href="FT_DTB">주요계정증감현황(일월계표)</a></li>
					                    <li><a href="coming_soon">!계정별 변동추이 분석</a></li>
                          			</ul>
	                          	</li>
	                          	
	                          	<li><a href="javascript: void(0);" aria-expanded="false">결산/제무재표</a>
	                          		<span class="menu-arrow"></span>
	                          		<ul>
	                          				<li><a href="insertTotal">결산자료입력</a></li>
						                    <li><a href="FT_BS">재무상태표</a></li>
						                    <li><a href="FT_IS">손익계산서</a></li>
						                    <li><a href="FT_p_cost">원가보고서</a></li>
	                          		</ul>
	                          	</li>
	                          	
	                          	<li><a href="javascript: void(0);" aria-expanded="false">자금</a>
	                          		<span class="menu-arrow"></span>
	                          		<ul>
	                          				<li><a href="FT_funds_state">자금현황</a></li>
                    						<li><a href="FT_sa_state">주요예적금 현황</a></li>
	                          		</ul>
	                          	</li>
	                          	
	                          	<li><a href="javascript: void(0);" aria-expanded="false">예산</a>
	                          		<span class="menu-arrow"></span>
	                          		<ul>
	                          			<li><a href="#">일자별자금계획입력</a></li>
					                    <li><a href="#">예산신청입력</a></li>
					                    <li><a href="#">예산조정입력</a></li>
					                    <li><a href="#">예산계획현황</a></li>
	                          		</ul>
	                          	</li>
	                          	
	                          	<li><a href="javascript: void(0);" aria-expanded="false">고정자산</a>
	                          		<span class="menu-arrow"></span>
	                          		<ul>
	                          			<li><a href="#">고정자산관리</a></li>
                    					<li><a href="#">감가상각누계액 현황</a></li>
	                          		</ul>
	                          	</li>
	                          	
	                          	<li><a href="javascript: void(0);" aria-expanded="false">부가가치세</a>
	                          		<span class="menu-arrow"></span>
	                          		<ul>
	                          			<li><a href="#">부가세금서</a></li>
                    					<li><a href="#">세금계산서 합계표</a></li>
	                          		</ul>
	                          	</li>
	                          	
	                          	<li><a href="javascript: void(0);" aria-expanded="false">금융관리</a>
	                          		<span class="menu-arrow"></span>
	                          		<ul>
	                          			<li><a href="#">계좌번호 관리</a></li>
                    					<li><a href="#">카드번호 관리</a></li>
	                          		</ul>
	                          	</li>
	                          	 	
	                          </ul>
							</li>
							
							<li> 
	                          <a href="javascript: void(0);">
	                             <i class="mdi mdi-server"></i>
	                             <span> 전산팀 </span>
	                          </a>
	                          <ul class="nav-second-level" aria-expanded="false">  	
	                          	<li><a href="javascript: void(0);" aria-expanded="false">설비관리</a>
	                          		<span class="menu-arrow"></span>
	                          		<ul>
	                          			<li><a href="#">전산 설비 등록</a></li>
					                    <li><a href="#">전산 설비 관리</a></li>
					                    <li><a href="#">전산 설비 목록</a></li>
	                          		</ul>
	                          	</li>
	                          	
	                          	<li><a href="javascript: void(0);" aria-expanded="false">설비 유지비</a>
	                          		<span class="menu-arrow"></span>
	                          		<ul>
	                          			<li><a href="#">수리 일지 등록</a></li>
                    					<li><a href="#">수리 현황</a></li>
	                          		</ul>
	                          	</li>
	                          	
	                          	<li><a href="javascript: void(0);" aria-expanded="false">예산관리</a>
	                          		<span class="menu-arrow"></span>
	                          		<ul>
	                          			<li><a href="#">예산 현황</a></li>
                    					<li><a href="#">추가 예산 신청</a></li>
	                          		</ul>
	                          	</li>
	                          	
	                          	<li><a href="javascript: void(0);" aria-expanded="false">A/S관리</a>
	                          		<span class="menu-arrow"></span>
	                          		<ul>
	                          			<li><a href="#">A/S 요청 현황</a></li>
                    					<li><a href="#">A/S 요청 관리 </a></li>
	                          		</ul>
	                          	</li>
	                          </ul>
							</li>
							
							<li> 
	                          <a href="javascript: void(0);">
	                             <i class="mdi mdi-factory"></i>
	                             <span> 제조 </span>
	                          </a>
	                          <ul class="nav-second-level" aria-expanded="false">  	
	                          	<li><a href="javascript: void(0);" aria-expanded="false">생산관리</a>
	                          		<span class="menu-arrow"></span>
	                          		<ul>
	                          			<li><a href="#">생산계획등록</a></li>
					                    <li><a href="#">생산계획관리</a></li>
										<li><a href="#">작업지시등록</a></li>
					                    <li><a href="#">작업지시확정</a></li>
					                    <li><a href="#">생산자재출고</a></li>
	                          		</ul>
	                          	</li>
	                          	
	                          	<li><a href="javascript: void(0);" aria-expanded="false">재공관리</a>
	                          		<span class="menu-arrow"></span>
	                          		<ul>
	                          			<li><a href="#">기초재공등록</a></li>
                    					<li><a href="#">재공품 입고/출고 관리</a></li>
	                          		</ul>
	                          	</li>
	                          	
	                          	<li><a href="javascript: void(0);" aria-expanded="false">생산/재공 현황</a>
	                          		<span class="menu-arrow"></span>
	                          		<ul>
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
	                          		<ul>
	                          			<li><a href="#">자재등록</a></li>
					                    <li><a href="#">자재관리</a></li>
										<li><a href="#">자재사용현황(작업별)</a></li>
										<li><a href="#">자재사용현황(자재별)</a></li>
										<li><a href="#">자재사용현황(제품별)</a></li>
	                          		</ul>
	                          	</li>
	                          </ul>
							</li>
							
                            <!-- <li>
                                <a href="javascript: void(0);">
                                    <i class="fe-briefcase"></i>
                                    <span> UI Kit </span>
                                    <span class="menu-arrow"></span>
                                </a>
                                <ul class="nav-second-level" aria-expanded="false">
                                    <li><a href="ui-typography">Typography</a></li>
                                    <li><a href="ui-cards">Cards</a></li>
                                    <li><a href="ui-buttons">Buttons</a></li>
                                    <li><a href="ui-modals">Modals</a></li>
                                    <li><a href="ui-checkbox-radio">Checkboxs-Radios</a></li>
                                    <li><a href="ui-tabs">Tabs</a></li>
                                    <li><a href="ui-progressbars">Progress Bars</a></li>
                                    <li><a href="ui-notifications">Notification</a></li>
                                    <li><a href="ui-carousel">Carousel</a>
                                    <li><a href="ui-video">Embed Video</a>
                                    <li><a href="ui-tooltips-popovers">Tooltips & Popovers</a></li>
                                    <li><a href="ui-images">Images</a></li>
                                    <li><a href="ui-bootstrap">Bootstrap UI</a></li>
                                </ul>
                            </li>

                            <li>
                                <a href="javascript: void(0);">
                                    <i class="fe-box"></i>
                                    <span> Icons </span>
                                    <span class="menu-arrow"></span>
                                </a>
                                <ul class="nav-second-level" aria-expanded="false">
                                    <li><a href="icons-colored">Colored Icons</a></li>
                                    <li><a href="icons-materialdesign">Material Design</a></li>
                                    <li><a href="icons-dripicons">Dripicons</a></li>
                                    <li><a href="icons-fontawesome">Font awesome</a></li>
                                    <li><a href="icons-feather">Feather Icons</a></li>
                                </ul>
                            </li>

                            <li>
                                <a href="javascript: void(0);">
                                    <i class="fe-pie-chart"></i>
                                    <span> Graphs </span>
                                    <span class="menu-arrow"></span>
                                </a>
                                <ul class="nav-second-level" aria-expanded="false">
                                    <li><a href="charts-flot">Flot Chart</a></li>
                                    <li><a href="charts-morris">Morris Chart</a></li>
                                    <li><a href="charts-google">Google Chart</a></li>
                                    <li><a href="charts-chartist">Chartist Charts</a></li>
                                    <li><a href="charts-chartjs">Chartjs Chart</a></li>
                                    <li><a href="charts-c3">C3 Chart</a></li>
                                    <li><a href="charts-sparkline">Sparkline Chart</a></li>
                                    <li><a href="charts-knob">Jquery Knob</a></li>
                                </ul>
                            </li>

                            <li>
                                <a href="javascript: void(0);">
                                    <i class="fe-disc"></i>
                                    <span class="badge badge-primary badge-pill float-right">9</span>
                                    <span> Forms </span>
                                </a>
                                <ul class="nav-second-level" aria-expanded="false">
                                    <li><a href="form-elements">Form Elements</a></li>
                                    <li><a href="form-advanced">Form Advanced</a></li>
                                    <li><a href="form-validation">Form Validation</a></li>
                                    <li><a href="form-pickers">Form Pickers</a></li>
                                    <li><a href="form-wizard">Form Wizard</a></li>
                                    <li><a href="form-mask">Form Masks</a></li>
                                    <li><a href="form-summernote">Summernote</a></li>
                                    <li><a href="form-quilljs">Quilljs Editor</a></li>
                                    <li><a href="form-uploads">File Upload</a></li>
                                </ul>
                            </li>
                
                            <li>
                                <a href="javascript: void(0);">
                                    <i class="fe-grid"></i>
                                    <span> Tables </span>
                                    <span class="menu-arrow"></span>
                                </a>
                                <ul class="nav-second-level" aria-expanded="false">
                                    <li><a href="tables-basic">Basic Tables</a></li>
                                    <li><a href="tables-layouts">Tables Layouts</a></li>
                                    <li><a href="tables-datatable">Data Tables</a></li>
                                    <li><a href="tables-responsive">Responsive Table</a></li>
                                    <li><a href="tables-tablesaw">Tablesaw Table</a></li>
                                    <li><a href="tables-editable">Editable Table</a></li>
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
                                    <li><a href="admin-grid">Grid</a></li>
                                    <li><a href="admin-sweet-alert">Sweet Alert</a></li>
                                    <li><a href="admin-widgets">Widgets</a></li>
                                    <li><a href="admin-nestable">Nestable List</a></li>
                                    <li><a href="admin-rangeslider">Range Slider</a></li>
                                    <li><a href="admin-ratings">Ratings</a></li>
                                </ul>
                            </li>

                            <li>
                                <a href="calendar">
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
                                    <li><a href="maps-google">Google Maps</a></li>
                                    <li><a href="maps-vector">Vector Maps</a></li>
                                    <li><a href="maps-mapael">Mapael Maps</a></li>
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
                                        <a href="layouts-dark-sidebar">Dark Sidebar</a>
                                    </li>
                                    <li>
                                        <a href="layouts-small-sidebar">Small Sidebar</a>
                                    </li>
                                    <li>
                                        <a href="layouts-sidebar-collapsed">Sidebar Collapsed</a>
                                    </li>
                                    <li>
                                        <a href="layouts-boxed">Boxed Layout</a>
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
                                    <li><a href="pages-starter">Starter Page</a></li>
                                    <li><a href="pages-login">Login</a></li>
                                    <li><a href="pages-register">Register</a></li>
                                    <li><a href="pages-logout">Logout</a></li>
                                    <li><a href="pages-recoverpw">Recover Password</a></li>
                                    <li><a href="pages-lock-screen">Lock Screen</a></li>
                                    <li><a href="pages-confirm-mail">Confirm Mail</a></li>
                                    <li><a href="pages-404">Error 404</a></li>
                                    <li><a href="pages-404-alt">Error 404-alt</a></li>
                                    <li><a href="pages-500">Error 500</a></li>
                                </ul>
                            </li>

                            <li>
                                <a href="javascript: void(0);">
                                    <i class="fe-folder-plus"></i>
                                    <span> Extra Pages </span>
                                    <span class="menu-arrow"></span>
                                </a>
                                <ul class="nav-second-level" aria-expanded="false">
                                    <li><a href="extras-about">About Us</a></li>
                                    <li><a href="extras-contact">Contact</a></li>
                                    <li><a href="extras-members">Members</a></li>
                                    <li><a href="extras-timeline">Timeline</a></li>
                                    <li><a href="extras-invoice">Invoice</a></li>
                                    <li><a href="extras-maintenance">Maintenance</a></li>
                                    <li><a href="extras-coming-soon">Coming Soon</a></li>
                                    <li><a href="extras-faq">FAQ</a></li>
                                    <li><a href="extras-pricing">Pricing</a></li>
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
                        </ul> -->

                    </div>
                    <!-- End Sidebar -->

                    <div class="clearfix"></div>

                </div>
                <!-- Sidebar -left -->

            </div>
            <!-- Left Sidebar End -->