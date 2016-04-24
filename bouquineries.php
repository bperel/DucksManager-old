<!DOCTYPE html>
<html>
	<head>
		<meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
		<style type="text/css">
			html { height: 100% }
			body { height: 100%; margin: 0; padding: 0; }
			#map_canvas { height: 100% }
            .template { display: none; }
		</style>
        <script src="https://maps.googleapis.com/maps/api/js?v=3.exp"></script>
		<script type="text/javascript" src="prototype-1.7.2.js"></script>
		<script type="text/javascript" src="js/bouquineries.js"></script>
	</head>
	<body onload="initialize()">
		<div id="map_canvas" style="width:100%; height:100%"></div>
        <div class="template infoWindow">
            <div id="siteNotice">
            </div>
            <h1 id="firstHeading" class="firstHeading Nom"></h1>
            <div id="bodyContent">
                <p class="Commentaire"></p>
                <p>Adresse : </p>
                <p class="Adresse"></p><br />
                <p class="Signature"></p>
            </div>
        </div>
	</body>
</html>