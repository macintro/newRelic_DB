DELIMITER //

DROP PROCEDURE IF EXISTS `Company_GetCompanyByName` //

CREATE PROCEDURE `Company_GetCompanyByName`
( 
    IN searchTerm VARCHAR(255) -- Adjust the length as per your needs
)
BEGIN
    -- Declare and initialize variables
    DECLARE counter INT DEFAULT 0;
    SET @row_number = 0; -- Initialize MySQL session variable for row number

    -- Select data with incremented row number
    SELECT 
        comp.companyName,
        (@row_number := @row_number + 1) AS id
    FROM 
        companyinfo comp
    WHERE 
        comp.companyName LIKE CONCAT('%', searchTerm, '%');

END //

DELIMITER ;
