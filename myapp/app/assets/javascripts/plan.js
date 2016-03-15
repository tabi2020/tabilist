
({
  init:function(){
    $(function(){
      var $mapDetail = $('#mapDetail');
      var $map = $('#map');
      var $left = $('#left');

      $mapDetail.click(function(){
        $map.addClass('BigImage');
      });
    });
  }
}).init();