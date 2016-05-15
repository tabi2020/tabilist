({
  init:function(){
    var _this=this;
    $(function(){
      _this.showSpot();

    });
  },

  showSpot:function(){
    var $showmore=$('.showmore');
    $showmore.click(function(){
      $(this).addClass('hide');
      $(this).next('div').slideDown("fast");
    });
  }
}).init();


({
  init:function(){
    $(function(){

      var $w = $(window);
      var $nav = $('#spotList');
      var offsetTop = $nav.offset().top;
      var before = $w.scrollTop();
        //ヘッダー固定
      var timerID=null;
      
      $w.on('scroll',function() {
        var after = $w.scrollTop();
        
        if (after > offsetTop + 25){
            floatMenu();
        } else {
          clearMenu();
        }
      });
      function floatMenu() {
      // スクロール位置がメニューのtop座標を超えたら固定にする
        if(!$nav.hasClass('fixedshow')){
          $nav.addClass('fixedshow');
        }
      }
      
      function clearMenu(){
        if($nav.hasClass('fixedshow')){
          $nav.removeClass('fixedshow')
        }
      }
    });
  }
}).init();