<!--bagian footer-->
	<footer>
		<div class="container text-center">
			<a href="index.php">HOME </a>|
			<a href="kontak.php">CONTACT </a>|
			<a href="tentang-kuningan.php">INFO DISPORAPAR </a><br>
 			Copyright &copy;2023 - <?= $d->nama ?>
 		</div>
	</footer>
	<script type="text/javascript">
		var mobilemenu = document.getElementById("mobilemenu")
		function showMobileMenu(){
			mobilemenu.style.display ="block"
		}
		function hideMobileMenu(){
			mobilemenu.style.display ="none"
		}
	</script>
</body>
</html>