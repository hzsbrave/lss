$(window).load(function(){
	 var val;
	  $.ajax({
	    url:"http://localhost:4414/lss/class/getClasses.action",
	    //data:{state:1},
	    type:"post",
	    async:false,
	    dataType:"json",
	    success:function(data){
	      val = eval(data);
	    }
	  });
	
(function($) {

  $.fn.pickList = function(options) {

    var opts = $.extend({}, $.fn.pickList.defaults, options);

    this.fill = function() {
      var option = '';

      $.each(opts.data, function(key, val) {
        option += '<option id=' + val.id + '>' + val.text + '</option>';
      });
      this.find('#pickData').append(option);
    };
    this.controll = function() {
      var pickThis = this;

      $("#pAdd").on('click', function() {
        var p = pickThis.find("#pickData option:selected");
        p.clone().appendTo("#pickListResult");
        p.remove();
      });

      $("#pAddAll").on('click', function() {
        var p = pickThis.find("#pickData option");
        p.clone().appendTo("#pickListResult");
        p.remove();
      });

      $("#pRemove").on('click', function() {
        var p = pickThis.find("#pickListResult option:selected");
        p.clone().appendTo("#pickData");
        p.remove();
      });

      $("#pRemoveAll").on('click', function() {
        var p = pickThis.find("#pickListResult option");
        p.clone().appendTo("#pickData");
        p.remove();
      });
    };
    this.getValues = function() {
      var objResult = [];
      this.find("#pickListResult option").each(function() {
        objResult.push({
          id: this.id,
          text: this.text
        });
      });
      return objResult;
    };
    this.init = function() {
      var pickListHtml =
        "<div class='row'>" +
        "  <div class='col-sm-5'>" +
        "    <select class='form-control pickListSelect' id='pickData' multiple></select>" +
        " </div>" +
        " <div class='col-sm-2 pickListButtons'>" +
        "   <button id='pAdd' class='btn btn-primary btn-sm'>" + opts.add + "</button>" +
        "      <button id='pAddAll' class='btn btn-primary btn-sm'>" + opts.addAll + "</button>" +
        "   <button id='pRemove' class='btn btn-primary btn-sm'>" + opts.remove + "</button>" +
        "   <button id='pRemoveAll' class='btn btn-primary btn-sm'>" + opts.removeAll + "</button>" +
        " </div>" +
        " <div class='col-sm-5'>" +
        "    <select class='form-control pickListSelect' id='pickListResult' multiple></select>" +
        " </div>" +
        "</div>";

      this.append(pickListHtml);

      this.fill();
      this.controll();
    };

    this.init();
    return this;
  };

  $.fn.pickList.defaults = {
    add: '添加',
    addAll: '全部添加',
    remove: '移除',
    removeAll: '全部移除'
  };


}(jQuery));

/*
var val = {
  1: {
    id: 1,
    text: '网络1班'
  },
  2: {
    id: 2,
    text: '网络2班'
  },
  3: {
    id: 3,
    text: '软件1班'
  },
  4: {
    id: 4,
    text: '软件2班'
  }
};
*/
var pick = $("#pickList").pickList({
  data: val
});

$("#getSelected").click(function() {
  console.log(pick.getValues());
});

});