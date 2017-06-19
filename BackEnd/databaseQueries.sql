CREATE TABLE category(

 catid IDENTITY,
 catname VARCHAR(100),
 catdesc VARCHAR(255),
 image_url VARCHAR(50),
 is_active BOOLEAN,

 CONSTRAINT pk_category_id PRIMARY KEY(catid)
);

CREATE TABLE product (
	id IDENTITY,
	code VARCHAR(20),
	name VARCHAR(50),
	brand VARCHAR(50),
        pimg VARChAR(50),
	description VARCHAR(255),
	unit_price DECIMAL(10,2),
	quantity INT,
	is_active BOOLEAN,
	category_id INT,
	supplier_id INT,
	purchases INT DEFAULT 0,
	views INT DEFAULT 0,
	CONSTRAINT pk_product_id PRIMARY KEY (id),
 	CONSTRAINT fk_product_category_id FOREIGN KEY (category_id) REFERENCES category (id),
	CONSTRAINT fk_product_supplier_id FOREIGN KEY (supplier_id) REFERENCES user_detail(id),	
);

CREATE TABLE category (
	
	id IDENTITY,
	name VARCHAR(50),
	description VARCHAR(255),
	image_url VARCHAR(50),
	is_active BOOLEAN,
	
	CONSTRAINT pk_category_id PRIMARY KEY (id) 

);


CREATE TABLE cart_line (
	
	    id IDENTITY,
        cartid number(100),	
        buying_price number(100),
        prod_id number(100),
        total number(60),
        quantity number(50),
	    is_available BOOLEAN,
	
	CONSTRAINT pk_cart_line_id PRIMARY KEY (id) ,
    FOREIGN KEY (cartid) REFERENCES cart(id)
);

CREATE TABLE order_item (
	
		id IDENTITY,
	     order_id number(100),	
	     buying_price number(100),
	     prod_id number(100),
	     total number(60),
	     sub_total number(60),
	     quantity number(50),
	
	
	CONSTRAINT pk_order_item_id PRIMARY KEY (id) ,
    FOREIGN KEY (order_id) REFERENCES cart(id)
);



CREATE TABLE orders (
	 id IDENTITY,
         user_id number(100),	
         shipping_id number(100),
         order_total number(100),
         order_items number(100),   
	CONSTRAINT pk_orders_id PRIMARY KEY (id) ,
        FOREIGN KEY (user_id) REFERENCES user_detail(id),
        FOREIGN KEY (shipping_id) REFERENCES address(id)
);