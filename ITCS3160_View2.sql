DROP VIEW IF EXISTS `delivery`.`view2`;
CREATE VIEW `delivery`.`view2` AS 
(SELECT delivery.Staff.academic_department, 
COUNT(delivery.Staff.academic_department) AS numStaffPerDepartment
FROM delivery.Staff
GROUP BY delivery.Staff.academic_department
ORDER BY delivery.Staff.academic_department);