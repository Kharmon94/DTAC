// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require jquery
//= require materialize
//= require materialize-sprockets
//= require turbolinks
//= require_tree .


 $(document).on('turbolinks:load', function(){

	 $(document).ready(function() {
	    var elems = document.querySelectorAll('.sidenav');
	    var instances = M.Sidenav.init(elems, options);
	    var options = {}

	    
	  });

	 AOS.init();

	 

	 // slider

	var slider = document.getElementById("myRange");
	var output = document.getElementById("demo");
	var slider_two = document.getElementById("myRange2");
	var output_two = document.getElementById("demo2");	
	var slider_three = document.getElementById("myRange3");
	var output_three = document.getElementById("demo3");	
	output.innerHTML = slider.value; 
	output_two.innerHTML = slider.value;
	output_three.innerHTML = slider.value;
	
	slider.oninput = function() {
	  output.innerHTML = this.value;
	}

	slider_two.oninput = function() {
	  output_two.innerHTML = this.value;
	}


	slider_three.oninput = function() {
	  output_three.innerHTML = this.value;
	}

 });