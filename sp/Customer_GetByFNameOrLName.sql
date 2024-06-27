DELIMITER //

DROP PROCEDURE IF EXISTS `Customer_GetByFNameOrLName` //
CREATE PROCEDURE `Customer_GetByFNameOrLName`
( in searchTerm               	CHAR    (50)    
	
)
BEGIN

   select cust.fName
	  , cust.lName
	  , comp.companyName
from customerinfo cust
	inner join companyInfo comp on comp.companyID = cust.companyID
where cust.fName like CONCAT('%', searchTerm, '%') OR
		cust.lName like CONCAT('%', searchTerm, '%');
		
END //

DELIMITER ;