$(document).ready(
	function() { 

		$("#username").focus(
			function(){
				if($(this).val()==this.defaultValue){
					$(this).val("");
				}
			}
		)

		.blur(
			function(){
				if($(this).val()==""){
					$(this).val(this.defaultValue);
				}
			}
		);

		$("#password1").focus(
			function(){
				$("#password1").hide();
				$("#password2").show().focus();
			}
		)

		$("#password2").blur(
			function(){
				if($(this).val()==""){
					$("#password2").hide();
					$("#password1").show();
				}
			}
		);


		$("#send").click(
			function(){
				$(".box_1 input").trigger("blur");
				var error_num = $(".error").length;
				if(error_num){
					return false;
				}
				//alert("登陆成功！");
			}
		);

		$("#reset").click(
			function(){
				$("#username").val("");
				$("#password2").val("");
			}
		);

	}
); 



