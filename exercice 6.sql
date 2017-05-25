SELECT content FROM Phone
JOIN Entry ON Entry.id = Phone.entryId
WHERE lastName = "Jenkins" AND firstName = "Charlotte";
