Change name of the class ApplicationUser to User. User F2 to rename.
This refactors all files which references this class. 
Change name of the class ApplicationDbContext to DataContext. User F2 to rename.
Delete "IdentityModels" class files. 
	Deleting this file will mean if you uninstall this package, you won't have access to these classes. 
	Therefore maybe not include this file in the project?