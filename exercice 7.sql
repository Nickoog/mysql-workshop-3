SELECT COUNT(subtype)
FROM Phone
JOIN Entry ON Phone.entryId = Entry.Id
WHERE birthday < 1950-11-01 and birthday > 1960-11-01;