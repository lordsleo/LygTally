/** 
 * 此幻灯片由稻壳xiaopig编写，只实现简单功能，还未完善
 */
!function ($) {
  "use strict";
  /* 公共类定义
   * ===================================*/
  
  // 构造函数
  var slide = function(element, options){ 
    var self = this;
    
    self.$element = $(element);
    self.options = $.extend({}, $.fn.slide.defaults, options);
    self.effects = $.fn.slide.effects;
    self.panne = self.$element.find(self.options.panne);
    self.parent = self.$element.parent();
    
    var navi = '';
    self.panne.each(function(i, n){
      navi += '<a>+++</a>';
    });
    self.$navi = $(navi);

    self.size = self.panne.size();
    self.index = self.options.initialIndex;
    self.nextIndex = function(){ 
      if(self.index < self.size-1){ 
        return self.index + 1;
      }else{ 
        return 0;
      } 
    }
    self.prevIndex = function(){ 
      if(self.index < 1){ 
        return self.size - 1;
      }else{ 
        return self.index - 1;
      } 
    }
    
  }
  
  slide.prototype.onload = function(){ 
    var self = this;
        
    self.initialize();
    
    var timer;
    if(self.options.autoplay){
      var effect = function(){ 
        self.index = self.nextIndex();
        self.effects[self.options.effect].call(self);
        self.$navi.removeClass('active').eq(self.index).addClass('active');
      };
      timer = setInterval(function(){
        effect();
      },self.options.interval);

      self.$navi.bind({
        'mouseover':function(){
          clearInterval(timer);
        },
        'mouseout':function(){
          timer = setInterval(function(){
            effect();
          },self.options.interval);
        }
      });
    }
    
    self.$navi.click(function(){
      self.index = $(this).index();
      self.$navi.removeClass('active').eq(self.index).addClass('active');
      self.effects[self.options.effect].call(self);
    });
    //self.prev = self.$element.parent().find('.prev');
    //self.next = self.$element.parent().find('.next');

  }
  
  slide.prototype.initialize = function(){ //初始化
    var self = this;
    self.panne.hide();
    self.panne.eq(self.index).fadeIn(self.options.effectSetting.inspeed);
    
    
    self.$navi.first().addClass('active');
    self.$element.after($('<div class="slide-navi"></div>').append($('<div class="container"></div>').append(self.$navi)));

  }
  
  // 定义共有方法
  
  
  /* 定义插件
   * ===================================*/
  var old = $.fn.slide;
  $.fn.slide = function (option) {
    return this.each(function () {
      var $this = $(this),
          data = $this.data('slide'),
          options = typeof option == 'object' && option;
      if (!data) $this.data('slide', (data = new slide(this, options)));
      
      //运行
      data.onload();
      
    });
  }
  $.fn.slide.defaults = {
    panne:'.panne',
    effect:'fade',
    effectSetting:{ 
      inspeed:400,
      outspeed:400
    },
    autoplay:true,
    interval:3000,
    initialIndex:0
  }
  $.fn.slide.effects = { 
    'default':function(){ 
      this.panne.eq(this.index).show();
      this.panne.eq(this.prevIndex()).hide();
    },
    'fade':function(){ 
      this.panne.eq(this.index).fadeIn(this.options.effectSetting.inspeed);
      this.panne.eq(this.prevIndex()).fadeOut(this.options.effectSetting.outspeed);
    }
  }
  $.fn.slide.Constructor = slide;
  
  /* 冲突处理
   * ==================================*/
  $.fn.slide.noConflict = function () {
    $.fn.slide = old;
    return this;
  }
  
  /* 插件API
   * ==================================*/

}(window.jQuery);
$(function(){ 
  $('#j_banner').slide({ 
    effectSetting:{ 
      inspeed:1000,
      outspeed:1000
    },
    interval:5000
  });
});