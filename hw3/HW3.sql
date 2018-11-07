select lastName, firstName from employees where not country = 'USA' order by firstName,lastName; -- need the time bit

select ProductID, ProductName, UnitsInStock, UnitPrice from products where UnitsInStock <= ReorderLevel; --incorrect # of rows


