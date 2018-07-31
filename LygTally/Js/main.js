$(function(){ 
  /******************************************
   * toggle切换
   */
  
  $('.j_toggle').click(function(){ 
    var _this = $(this),
        _target = _this.attr('data-target');
    
    if(_this.hasClass('toggle-active')){ 
      _this.removeClass('toggle-active');
      $(_target).removeClass('toggle-open');
    }else{ 
      _this.addClass('toggle-active');
      $(_target).addClass('toggle-open');
    }
    
    _this.siblings().removeClass('toggle-active');
    $(_this.siblings().attr('data-target')).removeClass('toggle-open');
  });
  
  /******************************************
   * 移动端导航手风琴效果
   */
  
  function dropNav(p_root)
	{
		var _o_this=this;
		_o_this.root = $(document.getElementById(p_root));
    _o_this.speed = 400;
		//图标扩展
		_o_this.tree_icon = '';
		_o_this.tree_icon_open = '';
		//获取节点下所有li标签
		var _$_node = _o_this.root.find('li');
		//初始化加载
		this.initialize=function()
		{
			//对存在子节点li插入图标
			$.each(_$_node,function(i,n){
				var $_li = $(n);
				if($_li.children('ul').size() > 0)
				{
					$_li.prepend('<span class="tree-icon">'+_o_this.tree_icon+'</span>').children('a').addClass('drop-title');	
				}
			});
			//展开被激活的节点及父节点
			var $_activep=_$_node.find('.current').parents('ul');
			$_activep.show()
				.siblings('.tree-icon').addClass('tree-icon-open').html(_o_this.tree_icon_open);
			//绑定展开或收起tree事件
			_o_this.root.find('.drop-title').click(function(){ 
        $(this).prev().trigger('click');
      });
      _o_this.root.find('.tree-icon').click(function()
			{
				var $_ul=$(this).siblings('ul');
				if($_ul.is(':hidden'))
				{
					$(this).addClass('tree-icon-open').html(_o_this.tree_icon_open)
            .next().addClass('active');
					$_ul.slideDown(_o_this.speed);
				}
				else
				{
					$(this).removeClass('tree-icon-open').html(_o_this.tree_icon)
            .next().removeClass('active');;
					$_ul.slideUp(_o_this.speed);
				}
        return false;
			});
		}
			
	}
	var o_leftnav = new dropNav('j_accordion');
	o_leftnav.tree_icon = '<i class="glyphicon glyphicon-plus"></i>';
	o_leftnav.tree_icon_open = '<i class="glyphicon glyphicon-minus"></i>';
  o_leftnav.speed = 200;
	o_leftnav.initialize();
  
  /******************************************
   * 导航下拉
   */
  var navmincnt = $('#dk-js-navdropdown'),
      navmincnttab = navmincnt.find('ul'),
      navmain = $('#j_navdropdown li'),
      navmaintimer,navmaincnttimer;
      
  if(navmain.filter('.active').size() > 0 ) navmincnt.data('active',navmain.filter('.active').index());
  
  navmain.first().mouseenter(function(){ 
    navmincntHidde();
  });
  
  navmain.not(':first').bind({ 
    mouseenter:function(){ 
      clearTimeout(navmaintimer);
      clearTimeout(navmaincnttimer);
      var $this = $(this);
      $this.addClass('active').siblings().removeClass('active');
      if(navmincnt.is(':hidden')){ 
        navmincnt.stop().slideDown(300);
      }
      navmincnttab.eq($this.index() -1).show().siblings().hide();
    },
    mouseleave:function(){ 
      navmaincnttimer = setTimeout(function(){ 
        navmincntHidde();
      },500);
    }
  });
  navmincnt.bind({ 
    mouseenter:function(){ 
      clearTimeout(navmaintimer);
      clearTimeout(navmaincnttimer);
    },
    mouseleave:function(){ 
      navmaincnttimer = setTimeout(function(){ 
        navmincntHidde();
      },500);
    }
  });
  
  function navmincntHidde(){ 
    var _data = navmincnt.data('active');
    if(typeof(_data) != 'undefined'){ 
      navmain.eq(parseInt(_data)).addClass('active').siblings().removeClass('active');
    }else{ 
      navmain.removeClass('active');
    }
    navmincnt.slideUp(300);
  }
  
  /******************************************
   * 弹出框
   */
   
  $('[data-toggle="popover"]').popover({ 
    html:true
  });
   
  /******************************************
   * 瀑布流
   */
  var masonry = $('.j_masonry')
  masonry.each(function(index, element) {
    var _this = $(element),
        _colWthid = _this.data('gutter');
    if(typeof(_colWthid) == 'undefined') _colWthid = 60;
    
    _this.imagesLoaded( function(){
      _this.masonry({
        itemSelector : '.item',
        gutterWidth:parseInt(_colWthid), //每两列之间的间隙像素
        isAnimated: true
      });
    });  
  });
	
  var resize = true,masonry_item = masonry.find('.item');
  $(window).resize(function(e) {
    $('.j_masonry').masonry();
  });
  /******************************************
   * 集团架构
   */
  var o_groupnav = new dropNav('j_squeezebox');
  o_groupnav.tree_icon = '<i class="glyphicon glyphicon-plus"></i>';
  o_groupnav.tree_icon_open = '<i class="glyphicon glyphicon-minus"></i>';
  o_groupnav.speed = 200;
  o_groupnav.initialize();


  $(".dk-history .j_masonry .item").each(function(){
    if($(this).css("left") == "0px"){
      $(this).addClass("dk-item-left");
    }
    else{
      $(this).addClass("dk-item-right");
    }
  })
 
 /******************************************
  * 其他
  */
  $('.j_even').each(function(index, element) {
    var _child = $(element).data('child');
    if(!_child) _child = 'li'; 
    $(element).children(_child+':odd').addClass('dk-even');
  });
  
});