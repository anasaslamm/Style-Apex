-- It will make cards with different images and select diferent data in a single sql query
--You need to adjust the Attribute to make it work

SELECT 
    1 AS SL,
    'https://controlio.net/i/svg/brand-figure.svg' AS ICON,
    'TOTAL EMPLOYEES' AS TITLE,
    COUNT(*) AS TOTAL,
   APEX_PAGE.GET_URL(p_page => 17) AS URL
FROM EMPLOYEE 

UNION

SELECT 
    2 AS SL,
    'https://seeklogo.com/images/D/department-of-education-logo-110877A37C-seeklogo.com.png' AS ICON,
    'TOTAL DEPARTMENTS' AS TITLE,
    COUNT(*) AS TOTAL,
    APEX_PAGE.GET_URL(p_page => 10) AS URL
FROM DEPARTMENT;

