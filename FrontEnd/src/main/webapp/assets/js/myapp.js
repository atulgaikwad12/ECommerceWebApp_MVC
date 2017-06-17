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
	case 'Manage Products':
		$('#manageProducts').addClass('active');
		break;
	default:
		$('#home').addClass('active');
		break;
	
	}
		
//To tackel csrf token
	var token = $('meta[name="_csrf"]').attr('content');
	var header = $('meta[name="_csrf_header"]').attr('content');
	
	if(token.length > 0 && header.length > 0){
		//set tokrn request for ajax
		$(document).ajaxSend(function(e, xhr, options){
			xhr.setRequestHeader(header,token);
		});
		
	}
	
//code for jquery datable
//create data table

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
		lengthMenu : [[3,5,10,-1],['3 ','5 ','10 ','ALL']],
		pageLength: 5,
	ajax: {
		url: jsonUrl,
		dataSrc: ''
	},
	columns: [
	          
	          {
	        	  data: 'code',
	        	  mRender: function(data,type,row){
	        		  return '<img src="'+window.contextRoot+'/resources/images/'+data+'.jpg" width="100px" height="100px"/>';
	        	  }
	          },
	          {
	        	  data: 'name',  
	        		  mRender: function(data,type,row){
	        			  return '<font color="#fd6239"><b>' + data +'</b></font>';
	        		  }
	          },
	          {
	        	  data: 'brand' ,
	        		  mRender: function(data,type,row){
	        			  return '<font color="#fd6239"><b>' + data +'</b></font>';
	        		  }
	          },
	          {
	        	  data: 'unitprice',
	        	  mRender: function(data,type,row){
	        		  return '<font color="#fd6239"><b>&#8377;' + data +'</b></font>';
	        	  }
	          },
	          {
	        	  data: 'quantity',
	        	  mRender: function(data,type,row){
	        		  if(data<1){
	        			  return '<span style="color:red">Out of stock</span>';
	        		  }
        			  return '<font color="#fd6239"><b>' + data +'</b></font>';
        		  }
	          },
	          {
	        	  data: 'purchases' ,
	        	  mRender: function(data,type,row){
        			  return '<font color="#fd6239"><b>' + data +'</b></font>';
        		  }
	          },
	          {
	        	  data: 'views'  ,
	        	  mRender: function(data,type,row){
        			  return '<font color="#fd6239"><b>' + data +'</b></font>';
        		  }
	          },
	          {
	        	  data: 'id',
	        	  mRender: function(data,type,row){
	        		 var str = '';
	        		 str += '<a href="'+window.contextRoot+'/show/'+data+'/product" class="btn btn-primary"><span class="glyphicon glyphicon-eye-open"></span></a> &#160;';
	        		 str += '<a href="'+window.contextRoot+'/cart/add/'+data+'/product" class="btn btn-success"><span class="glyphicon glyphicon-shopping-cart"></span></a>';
	        		 return str; 
	        	  }
	          }
	          ]
		
	});
}

//dismissing alert after 3 seconds

//var $alert = ${'.alert'};
//
//if($alert.length){
//	
//	setTimeout(function(){
//			$alert.fadeOut('slow');
//			}, 3000)
//           }

//Data table for admin
var $adminProductTable = $('#adminProductsTable');

//execute only where this table exists

if($adminProductTable.length){
	//console.log('Inside the table');
	var jsonUrl = '';
	 jsonUrl = window.contextRoot + '/json/data/admin/all/products';

	
	 $adminProductTable.DataTable({
			lengthMenu : [[10,30,50,-1],['10 ','30 ','50 ','ALL']],
			pageLength: 10,
		ajax: {
			url: jsonUrl,
			dataSrc: ''
		},
	columns: [
	          
				{
					  data: 'id',  
					  mRender: function(data,type,row){ 
					  return '<font color="#fd6239"><b>' + data +'</b></font>';
				 }
				},
	          {
	        	  data: 'code',
	        	  bSortable: false,
	        	  mRender: function(data,type,row){
	        		  return '<img src="'+window.contextRoot+'/resources/images/'+data+'.jpg" class="adminDataTableImg"/>';
	        	  }
	          },
	          {
	        	  data: 'name',  
	        		  mRender: function(data,type,row){
	        			  return '<font color="#fd6239"><b>' + data +'</b></font>';
	        		  }
	          },
	          {
	        	  data: 'brand' ,
	        		  mRender: function(data,type,row){
	        			  return '<font color="#fd6239"><b>' + data +'</b></font>';
	        		  }
	          },
	          {
	        	  data: 'unitprice',
	        	  mRender: function(data,type,row){
	        		  return '<font color="#fd6239"><b>&#8377;' + data +'</b></font>';
	        	  }
	          },
	          {
	        	  data: 'quantity',
	        	  mRender: function(data,type,row){
	        		  if(data<1){
	        			  return '<span style="color:red">Out of stock</span>';
	        		  }
      			  return '<font color="#fd6239"><b>' + data +'</b></font>';
      		  }
	          },
	          
	          {
	        	  data: 'active',
	        	  bSortable: false,
	        	  mRender: function(data,type,row){
	        		 var str = '';
	        		 str += '<label class="switch">';
	        		 if(data){
	        			 str += '<input type="checkbox" checked="checked" value="'+row.id+'"/>'; 
	        		 }
	        		 else{
	        		 str += '<input type="checkbox"  value="'+row.id+'"/>';	
	        		 }
	        		 str += '	<div class="slider"></div></label>';
	        					
	        		
	        		 return str; 
	        	  }
	          },
	          {
	        	  data: 'id',
	        	  bSortable: false,
	        	  mRender: function(data,type,row){
	        		 var str = '';
	        		 str += '<a href="'+window.contextRoot+'/manage/'+data+'/product" class="btn btn-warning"><span class="glyphicon glyphicon-pencil"></span></a>';
	        		 
	        	 return str; 
	        	  }
	          }
	      
	          ],
	          initComplete: function(){
	        	  var api = this.api();
	        	  api.$('.switch input[type="checkbox"]').on('change',function(){
	        			var checkbox = $(this);
	        			var checked = checkbox.prop('checked');
	        			var dMsg = (checked)? 'You want to activate product?' : 'You want to deactivate product?';
	        			var value= checkbox.prop('value');
	        			
	        			bootbox.confirm({
	        				size : "medium",
	        				title : "Product Activation and Deactivation",
	        				message : dMsg,
	        				callback: function(confirmed){
	        					if(confirmed){
	        						
	        						var activationUrl= window.contextRoot +'/manage/product/' + value+ '/activation';
	        						
	        						$.post(activationUrl, function(data){
	        							bootbox.alert({
		        							size : 'medium',
		        							title : 'Information',
		        							message : data
		        						});	
	        						});
	        						
	        					}
	        					else{
	        						checkbox.prop('checked',!checked);
	        					}
	        				}
	        			});
	        			
	        		});
	          }
		
	});
}
//-------------------------------------------------------------
//validation code for category
var $categoryForm =$('#categoryForm');
if($categoryForm.length){
	
	$categoryForm.validate({
		rules :{
			catname :{
				required:true,
				minlength:2
			},
			
			catdesc :{
				required:true
			}
		},
		messages:{
			catname :{
				required: 'Please Enter name for category',
				minlength:'Category name should not be less than 2 characters'
			},
			
			catdesc :{
				required:'Please write something about category'
			}
			
			
		},
		errorElement:'em',
		errorPlacement: function(error,element){
			//add class of help-block
			error.addClass('help-block');
			//add error element after input element
			error.insertAfter(element);
		}
	});
}

//---------------------------------------------------
//validation code for Login form
var $loginForm =$('#loginForm');
if($loginForm.length){
	
	$loginForm.validate({
		rules :{
			email :{
				required:true,
				email:true
			},
			password :{
				required:true,
			}
			
		},
			
		messages:{
			email :{
				required: 'Please enter your user name',
				email:'enter valid email id'
			},
			
			password :{
				required:'Please enter your password'
			}
			
			
		},
		errorElement:'em',
		errorPlacement: function(error,element){
			//add class of help-block
			error.addClass('help-block');
			//add error element after input element
			error.insertAfter(element);
		}
		
	});
}
//-------------------------------------------------


});
		