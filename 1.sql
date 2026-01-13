SELECT 
    n.icode,
    n.name,
    COUNT(o.icode) as usage_count,
    MAX(o.rxdate) as last_order_date
FROM 
    nondrugitems n
LEFT JOIN 
    opitemrec o ON n.icode = o.icode
GROUP BY 
    n.icode, n.name
ORDER BY 
    usage_count DESC;
