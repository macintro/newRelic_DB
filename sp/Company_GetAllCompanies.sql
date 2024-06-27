DELIMITER //

DROP PROCEDURE IF EXISTS `Company_GetAllCompanies` //
CREATE PROCEDURE `Company_GetAllCompanies`()
BEGIN

   select
	  comp.companyName
from companyinfo comp
	
		
END //

DELIMITER ;