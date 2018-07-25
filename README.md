# Todo-List-JBoss-Application-Server
The project is a Personal - Todo list web application made using JSP and servlets and deployed on JBoss application server (10.x)

## Getting Started

### Prerequisites

Following are the softwares use in this project along with their respective version 
(**Strictly use the versions mentioned below to run the project successfully**)

1. MySQl Server version: **5.7.18 MySQL Community Server (GPL)**
2. Java Version : **javac 1.8.0_131**
3. Wildfly **10.x**
4. JDBC connector **mysql-connector-java-5.1.29-bin.jar**
5. Eclipse IDE : **Luna and above (my version: Eclipse Oxygen.3a Release (4.7.3a))**
6. JBoss Tools **4.5.3.Final**

### Installing the project

Following steps need to be followed to smoothly run the project.
**(EXCEPT STEP 5 ALL OTHER STEPS ARE SAME FOR ALL THE THREE OS, Windows, MacOS, Ubuntu)**
**
1**. Download Eclipse IDE for Java EE developers (version EE Oxygen)
	i: Java SE, run time is 1.8.0_131 or simply java version "1.8.0_131" or any 
	other 1.8.x version

**
2**. Go to market place in the help menu of the Eclipse IDE and download JBoss Tools 
	4.5.3.Final and select all modules for installation.

**
3**. Add a new JBoss (wildfly 10.x) server by right clicking, going to new->server->JBoss 
	Community->Wildfly 10.x. 

**
4**. Press next twice and when JBoss runtime page opens, download and install runtime. 
	After downloading and installing it press finish.

**
5**. Open the Wildfly 10.x folder 

	i. in command-propmt for windows user, go to "bin" folder and run add-user.bat file 
		a. you will be asked which kind of user, press a for management user
		
		b. enter a suitable username, say "xyz123"
		
		c. enter a suitable password, say "Password@1"
		
		d. press enter to leave next field blank
		
		e. Enter yes for the remaining two fields
		
		f. You would have successfully created a management user.
		
		g. This will be used later on.

	ii. in terminal for ubuntu / macOS user, go to the "bin" and run add-user.sh file 
		using the snippet: sh add-user.sh
		Follow all the steps a-g given above

**
6**. Open the Wildfly 10.x folder, wherever it has been downloaded on your computer, and 

	i. Go standalone->configuration and open standalone.xml in a text editor.
	
	ii. Search for <drivers> tag
	
	iii. between "<drivers> </drivers>" add the following snippet above 
		"<driver name="h2">..</driver>"
		            <driver name="mysql" module="com.mysql">
                        <driver-class>com.mysql.jdbc.Driver</driver-class>
                    </driver>

        (THIS STEP IS VERY IMPORTANT FOR RUNNING THE PROJECT)

**
7**. Open the Wildfly 10.x folder again, wherever it has been downloaded on your computer, and 

	i. Go to modules->system->layers->base->com
	
	ii. Add mysql folder here
	
	iii. Go to mysql folder and add a main folder
	
	iv. Go to main folder add module.xml file and mysql-connector-java-5.1.29-bin.jar,
	 	which can found in the contents of the CD

		(NOTE: NO OTHER MYSQL CONNECTOR CAN BE USED SO ENSURE THAT THE ONE WHICH 
			COMES WITH THE CD HAS BEEN ADDED TO THE main FOLDER)

**
8**. Open mysql in console (terminal) or MySQL Workbench and 

	i. Execute createDB.sql file, to create the required Database
	
	ii. Execute create table.sql file, to create necessary tables, and triggers.
	
	iii. Ensure that it is running in localhost:3306

**
9**. Go to localhost:9990, wildfly management console and enter your username and password 
	as you had entered in step 5b and 5c respectively.

	i. go to Configuration->Datasources->Non-XA 
	
	ii Click Add and select MySQL Datasource and press next
	
	iii. Name "Project" and JNDI Name "java:/Project" (WITHOUT QUOTES)
	
	iv. Click on detected driver ,select mysql and press next. (This "mysql" is 
		the driver we created in step 6-7. If you are unable to find it then 
		redo steps 6-7)

	v. Connection URL "jdbc:mysql://localhost:3306/project" (WITHOUT QUOTES, 
		project HERE IS THE DATABASE NAME CREATED IN STEP 8i)

	vi. "Username" is the name of any one of the MySQL with all priviledges like 
		the "root", and "Password" is the coreesponding "password". 
	
	vii. For testing purposes Username = "root", Password="your_password". (WITHOUT 
		QUOTES, REPLACE "your_password" WITH ACTUAL PASSWORD) 
	
	viii. After filling these details press next and then finish.
	
	ix. Test your datasource by clicking on "test connection", 
		a. if it shows JDBC connection successfully created, then you can move on to 
		next step
		
		b. else repeat this step, problems can be in step 6-7, or  wrong database 
		name, user name ,password or MySQL server is offline.


**10**. Go to Eclipse IDE and import a new project from WAR file, this .war file can be 
	found in the contents of the CD.


**11**. Then, right click on UserTodoList, select run as-> run on server->Wildfly 10.x 
	and click on Finish.


**12**. The application starts up, you can try it out on eclipse browser or copy and paste 
	the url on any other browser of your choice.
	
	(NOTE: TO OBSERVE SAVE PASSOWRD FEATURE ON MY WEBSITE DO NOT ALLOW YOUR LOCAL 
	BROWSER TO SAVE THE PASSWORD AS THIS FEATURE THEN GETS OVERIDDEN)


**13**. After website demo, stop the server.

## Contributor

[**Rohan Wadhawan**](https://github.com/rohan598)

## Contact me
For any queries regarding the project contact me at **rohanwadhawan7@gmail.com**

