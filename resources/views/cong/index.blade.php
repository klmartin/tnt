<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Booking Congraturation</title>
</head>
<style>
    body{
	width:100%;
	height:100%;
	
}
.contain{
	position:absolute;
	top:0;
	left:0;
	width:100%;
	height:100%;
	background: linear-gradient(90deg,#189086,#2f8198);
background-image: linear-gradient(to bottom right,#02b3e4,#02ccba);	
}

.done{
	width:100px;
	height:100px;
	position:relative;
	left: 0;
	right: 0;
	top:-20px;
	margin:auto;
}
.contain h1{
	font-family: 'Julius Sans One', sans-serif;
	font-size:1.4em;
	color: #02b3e4;
}

.congrats{
	position:relative;
	left:50%;
	top:50%;
	max-width:800px;	transform:translate(-50%,-50%);
	width:80%;
	min-height:300px;
	max-height:900px;
	border:2px solid white;
	border-radius:5px;
	    box-shadow: 12px 15px 20px 0 rgba(46,61,73,.3);
    background-image: linear-gradient(to bottom right,#02b3e4,#02ccba);
	background:#fff;
	text-align:center;
	font-size:2em;
	color: #189086;
}

.text{
	position:relative;
	font-weight:normal;
	left:0;
	right:0;
	margin:auto;
	width:80%;
	max-width:800px;

	font-family: 'Lato', sans-serif;
	font-size:0.6em;

}


.circ{
    opacity: 0;
    stroke-dasharray: 130;
    stroke-dashoffset: 130;
    -webkit-transition: all 1s;
    -moz-transition: all 1s;
    -ms-transition: all 1s;
    -o-transition: all 1s;
    transition: all 1s;
}
.tick{
    stroke-dasharray: 50;
    stroke-dashoffset: 50;
    -webkit-transition: stroke-dashoffset 1s 0.5s ease-out;
    -moz-transition: stroke-dashoffset 1s 0.5s ease-out;
    -ms-transition: stroke-dashoffset 1s 0.5s ease-out;
    -o-transition: stroke-dashoffset 1s 0.5s ease-out;
    transition: stroke-dashoffset 1s 0.5s ease-out;
}
.drawn svg .path{
    opacity: 1;
    stroke-dashoffset: 0;
}

.regards{
	font-size:.7em;
}


@media (max-width:600px){
	.congrats h1{
		font-size:1.2em;
	}
	
	.done{
		top:-10px;
		width:80px;
		height:80px;
	}
	.text{
		font-size:0.5em;
	}
	.regards{
		font-size:0.6em;
	}
}

@media (max-width:500px){
	.congrats h1{
		font-size:1em;
	}
	
	.done{
		top:-10px;
		width:70px;
		height:70px;
	}
	
}

@media (max-width:410px){
	.congrats h1{
		font-size:1em;
	}
	
	.congrats .hide{
		display:none;
	}
	
	.congrats{
		width:100%;
	}
	
	.done{
		top:-10px;
		width:50px;
		height:50px;
	}
	.regards{
		font-size:0.55em;
	}
    .btn{
        width: 10rem;
        height: 3rem;
        background: red;
    }
	
}
</style>
<body>
<div class="contain">
    <a href="{{ url('dashboard')}}" class="btn">Back</a>
	<div class="congrats">
		<h1>Congrat<span class="hide">ulation</span>s !</h1>
		<div class="done">
			<img src="{{ asset('admin/assets/img/icons8-tick-94.png')}}" alt="">
		</div>
		<div class="text">
		<p>You have successfully booked Visit with us. <br>Here are your details  <br>Geosite Name: Sanje Waterfalls
		<br>
		   Date: 11.July.2024<br>
			Time: 11am<br>
			ID: 12324
		</p>
			<p>Eagerly awaiting your visit
			</p>
			</div>
		<p class="regards">Regards, Team Geotourism Tanzania</p>
	</div>
</div>
</body>
<script>

$(window).on("load",function(){
	
	setTimeout(function(){$('.done').addClass("drawn");},500)
	
});
</script>
</html>