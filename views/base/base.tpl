<doctype html>
<html>
	<head>
		<link rel="stylesheet" href="/static/scss/style.css">
		<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
		<script src="https://code.jquery.com/jquery-2.1.4.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
		<title> west | for all your word counting needs </title>
	</head>
	<body>
		<div class="site-wrapper">
				<div class="masthead clearfix">
					<div class="inner">
						<h3 class="masthead-brand">west</h3>
						<nav>
							<ul class="nav masthead-nav">

								% if logged_in:
								<li><a class="inactive">{{session['user_data']['email']}}</a></li>
								% else:
								<li><a href="/auth/google">sign in</a></li>
								% end

								% if path == '/':
								<li class="active">
								% else:
								<li>
								% end
								<a href="/">home</a></li>
								% if logged_in:
								% if path == '/most-searched':
								<li class="active">
								% else:
								<li>
								% end
								<a href="/most-searched">most searched</a></li>
								<li><a href="/logout">sign out</a></li>
								% end

							</ul>
						</nav>
					</div>
				</div>
		    <div class="cover-container">
		      <div class="inner cover">
						{{!base}}
					</div>
				</div>
		</div>
	</body>
</html>
