
<c:url value="/admin/logout" var="logoutUrl" />
<form id="logout" action="${logoutUrl}" method="post">
	<input type="hidden" name="${_csrf.parameterName}"
		value="${_csrf.token}" />
</form>
<!-- Top Bar Start -->
<div class="topbar">
	<!-- LOGO -->
	<div class="topbar-left">
		<div class="text-center">
			<a href="${pageContext.request.contextPath}/admin/" class="logo">
				<!-- <i class="md md-terrain"></i> --> <span>Admin Page</span>
			</a>
		</div>
	</div>
	<!-- Button mobile view to collapse sidebar menu -->
	<div class="navbar navbar-default" role="navigation">
		<div class="container">
			<div class="">
				<div class="pull-left">
					<span class="clearfix"></span>
				</div>
				<form class="navbar-form pull-left" role="search">
					<div class="form-group">
						<input type="text" class="form-control search-bar"
							placeholder="Type here for search..." id="txtMessage">
						<button id="btnSearch" class="btn btn-primary">Search</button>
					</div>
					<button type="submit" class="btn btn-search">
						<i class="fa fa-search"></i>
					</button>
				</form>

				<ul class="nav navbar-nav navbar-right pull-right">
					<li class="dropdown hidden-xs"><a href="#" data-target="#"
						id="btnlistorder" class="dropdown-toggle waves-effect waves-light"
						data-toggle="dropdown" aria-expanded="true"> <i
							class="md md-notifications"></i> <span
							class="badge badge-xs badge-danger" id="totalorder">0</span>
					</a>
						<ul class="dropdown-menu dropdown-menu-lg">
							<li class="text-center notifi-title">Customer Ordered</li>
							<li class="list-group" id="listorder">

								<a href="javascript:void(0);" class="list-group-item"> <small>See
										all notifications</small>
							</a>
							</li>
						</ul></li>
					<li class="hidden-xs"><a href="#" id="btn-fullscreen"
						class="waves-effect waves-light"><i class="md md-crop-free"></i></a>
					</li>
					<li class="hidden-xs">
						<!-- <a href="#" class="right-bar-toggle waves-effect waves-light"><i class="fa fa-shopping-cart"></i></a> -->

						<a href="#" data-target="#" id="btnCart"
						class="dropdown-toggle waves-effect waves-light"
						data-toggle="dropdown" aria-expanded="true"> <i
							class="fa fa-shopping-cart"></i> <span
							class="badge badge-xs badge-danger" id="totalproduce">0</span>
					</a>

					</li>
					<li class="dropdown"><a href=""
						class="dropdown-toggle profile" data-toggle="dropdown"
						aria-expanded="true"><img
							src="${pageContext.request.contextPath}/resources/images/img/Coke.jpg"
							alt="user-img" class="img-circle"> </a>
						<ul class="dropdown-menu">
							<!-- <li><a href="javascript:void(0)"><i
									class="md md-face-unlock"></i> Profile</a></li>
							<li><a href="#" data-target="#"  id="btn_request_stock"><i
									class="md md-settings"></i>Request Stock</a></li> -->
							<!-- <li><a href="javascript:void(0)"><i class="md md-lock"></i> Lock screen</a></li> -->
							<c:if test="${pageContext.request.userPrincipal.name != null}">
								<li><a
									href="javascript:document.getElementById('logout').submit()"><i
										class="md md-settings-power"></i> Logout</a></li>
							</c:if>
						</ul></li>
				</ul>
			</div>
			<!--/.nav-collapse -->
		</div>
	</div>
</div>
<!-- Top Bar End -->