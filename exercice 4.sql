SELECT firstName FROM Entry
JOIN AddressBook ON Entry.addressBookId = AddressBook.id
WHERE AddressBook.name = "Pharetra Ut Limited";