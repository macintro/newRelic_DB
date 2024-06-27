create table companyInfo
		(  companyID                        VARCHAR (40) DEFAULT (uuid())   NOT NULL  PRIMARY KEY
		,  companyName						VARCHAR (32)	NULL
		,  contactEmail						VARCHAR (40)	NULL
		,  addressID    	        	   	VARCHAR (40)    NULL 
		,  created_dtm              		DATETIME                  DEFAULT CURRENT_TIMESTAMP
		,  index(created_dtm,companyID,companyName)
		);