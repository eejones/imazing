// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery-ui
//= require jquery_ujs
//= require jquery.remotipart
//= require jquery-fileupload
//= require jquery.turbolinks
//= require turbolinks
//= require_tree .

  $(document).ready(function(){
     if($('#product_modality_id option:selected').val()){
// replacing line to hide instead of disable
//        $("#product_modtype_id").attr('disabled','disabled');
          $("#modtypecreate").css('display','block')
     }
     else{
        $("#modtypecreate").css('display','none')            
     }

     $('#modalitycreate').change(function(){
        if($("#product_modality_id option:selected").val()){
          $("#modtypecreate").css('display','block')
        }
        else{
          $("#modtypecreate").css('display','none')
        }
     })
     if($('#product_modtype_id option:selected').val()){
          $("#manufacturercreate").css('display','block')
     }
     else{
        $("#manufacturercreate").css('display','none')            
     }

     $('#modtypecreate').change(function(){
        if($("#product_modtype_id option:selected").val()){
          $("#manufacturercreate").css('display','block')
        }
        else{
          $("#manufacturercreate").css('display','none')
        }
     })
  });

//$(function preview(this) {
//  document.getElementById("product_product_image").src =this.value;
//  return;
//});

$('select[data-dynamic-selectable-url][data-dynamic-selectable-target]').dynamicSelectable();

$(function() {
  $(document).on("click","#products .pagination a, #products th a", function() {
    $.getScript(this.href);
      return false;
  });
//removing the real-time search functionality below for #products_search input and replacing it with the products_search submit function below
//  $('#products_search input').keyup(function () {
//    $.get($('#products_search').attr('action'), 
//    $('#products_search').serialize(), null, 'script');
//    return false;
//  });
  $(document).on("change", "#productfiltersdropdown select", function (e) {
    $.get($('#products_search').attr('action'),
    $('#products_search').serialize(), null, 'script');
    return false;
  });

//  $('#productfiltersdropdown select').change(function () {
//    $.get($('#products_search').attr('action'),
//    $('#products_search').serialize(), null, 'script');
//    return false;
//  });
//  $(document).on("change", "#productfiltersdropdown select", function () {
//    $('#productfiltersdropdown').submit
//  });
//adding the products search submit function to have ajax on submit instead of searching in real-time
  $("#products_search").submit(function() {
    $.get(this.action, $(this).serialize(), null, "script");
    return false;
  });
});
