	function logoutcheck(){
			if(confirm("정말로 로그아웃 하시겠습니까?") == true){
				document.form.submit();
				window.location='/mymember/logout';
			}
		}