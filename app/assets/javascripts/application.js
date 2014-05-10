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
//= require jquery.ui.all
//= require jquery_ujs
//= require jquery.turbolinks
//= require turbolinks
//= require_tree .

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
//adding the products search submit function to have ajax on submit instead of searching in real-time
  $("#products_search").submit(function() {
    $.get(this.action, $(this).serialize(), null, "script");
    return false;
  });
});

