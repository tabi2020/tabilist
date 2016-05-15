
({
  init:function(){
    $(function(){
      var $spSearch = $('#spSearch');
      var $hClose = $('#hClose');
      var $hSearchPref = $('#hSearchPref');
      $spSearch.click(function(){
        if($hSearchPref.hasClass('show')){
          $hSearchPref.removeClass('show');
        } else{
          $hSearchPref.addClass('show');
        }
      });
      $hClose.click(function(){
        if($hSearchPref.hasClass('show')){
          $hSearchPref.removeClass('show');
        } else{
          $hSearchPref.addClass('show');
        }
      });
    });
  }
}).init();