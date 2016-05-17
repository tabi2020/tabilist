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