$(document).ready(
		function() { 

			contents = document.getElementsByTagName("p")[0].innerHTML;

		$('.Left_Bar_title').click(
			function(){
				//滑动效果
				$(this).parent().find('p').slideToggle();
				$(this).parent().siblings('li').find('p').slideUp();
				//箭头方向改变
				$(this).parent().toggleClass('click')
				 		.siblings('li').removeClass('click');
			}
		);
	
		$('.menu>li').hover(
			function(){
				$(this).addClass('hover')
			},

			function(){
				$(this).removeClass('hover')
			}
		);



		$('p').hover(
			function(){
				$(this).addClass('hover')
			},

			function(){
				$(this).removeClass('hover')
			}
		);

		$('p').click(function(){
			parent.frames[1].document.test12_10.elements[0].value=this.getAttribute('name');
			parent.frames[1].document.test12_10.elements[1].value=this.innerHTML;
		});

	}
); 
