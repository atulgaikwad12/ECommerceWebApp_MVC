$(function()
		{
	switch(menu){
	case 'Home Page':
		$('#home').addClass('active');
		break;
	case 'About Us':
		$('#about').addClass('active');
		break;
	case 'Menu Items':
		$('#allproducts').addClass('active');
		break;
	case 'Our Services':
		$('#allproducts').addClass('active');
		break;
	case 'Categories Page':
		$('#allproducts').addClass('active');
		break;
	case 'Booking Page':
		$('#book').addClass('active');
		break;
	case 'Contact Us':
		$('#contact').addClass('active');
		break;
	default:
		$('#home').addClass('active');
		break;
	
	}
		});


//code for jquery datable
///create data table

var $table = $('#productListTable');

//execute only where this table exists

if($table.length){
	//console.log('Inside the table');
	var jsonUrl = '';
	if(window.categoryId == ''){
		jsonUrl = window.contextRoot + '/json/data/all/products';
	}
	else{
		jsonUrl = window.contextRoot + '/json/data/category/'+window.categoryId+'/products';
	}
	
	$table.DataTable({
		lengthMenu : [[3,5,10,-1],['3 records','5 records','10 records','ALL']],
		pageLength: 5,
	ajax: {
		url: jsonUrl,
		dataSrc: ''
	},
	columns: [
	          
	          {
	        	  data: 'pimg_url',
	        	  mRender: function(data,type,row){
	        		  return '<img src="'+window.contextRoot+'/resources/images/'+data+'" width="100px" height="100px"/>';
	        	  }
	          },
	          {
	        	  data: 'name'  
	          },
	          {
	        	  data: 'brand'  
	          },
	          {
	        	  data: 'unitprice',
	        	  mRender: function(data,type,row){
	        		  return '&#8377; ' + data
	        	  }
	          },
	          {
	        	  data: 'quantity'  
	          },
	          {
	        	  data: 'purchases'  
	          },
	          {
	        	  data: 'views'  
	          },
	          {
	        	  data: 'id',
	        	  mRender: function(data,type,row){
	        		 var str = '';
	        		 str += '<a href="'+window.contextRoot+'/show/'+data+'/product" class="btn btn-primary"><span class="glyphicon glyphicon-eye-open"></span></a> &#160;';
	        		 str += '<a href="'+window.contextRoot+'/cart/add/'+data+'/product" class="btn btn-success"><span class="glyphicon glyphicon-shopping-cart"></span></a>';
	        		 return str; 
	        	  }
	          },
	          ]
		
	});
}
	
