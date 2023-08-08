USE AdventureWorks2019;
GO

SELECT 
    [PersonType],
    -- [Title],
    [FirstName],
    -- [LastName],

    -- LEAD(FirstName) OVER (ORDER BY PersonType, FirstName) AS NextPersonsNameNoPartition,
    LEAD(FirstName) OVER (PARTITION BY PersonType ORDER BY PersonType, FirstName) AS NextPersonsName,
    -- LAG(FirstName) OVER (ORDER BY PersonType, FirstName) AS LastPersonsNameNoPartition,
    LAG(FirstName) OVER (PARTITION BY PersonType ORDER BY PersonType, FirstName) AS LastPersonsName,
    NTILE(27) OVER (PARTITION BY PersonType ORDER BY PersonType, FirstName) AS PersonNTile,
    DENSE_RANK() OVER (PARTITION BY PersonType ORDER BY PersonType, FirstName) AS PersonDenseRank,
    RANK() OVER (PARTITION BY PersonType ORDER BY PersonType, FirstName) AS PersonRank,
    ROW_NUMBER() OVER (PARTITION BY PersonType ORDER BY PersonType, FirstName) AS PersonRow
FROM Person.Person
    ORDER BY PersonType, FirstName