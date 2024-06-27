create table customerInfo
		(  customerID                       VARCHAR (40) DEFAULT (uuid())   NOT NULL  PRIMARY KEY
		,  fName							VARCHAR (50)	NULL
		,  lName							VARCHAR (50)	NULL
		,  email							VARCHAR (40)	NULL
		,  companyID    	        	   	VARCHAR (40)    NULL 
		,  addressID						VARCHAR (40)    NULL 
		,  created_dtm              		DATETIME                  DEFAULT CURRENT_TIMESTAMP
		,  index(created_dtm,customerID,fName, lName, companyID)
		);