# eventU
 A monolithic 3 layer MVC web-based system developed for finding and reserving venues pertaining to conventions and events. As a prototype and an initial iteration of the system, it is capable of finding venues only within the confines of Sri Lanka. The database of the system is also restricted within the domain. The system is developed using Java Servers Pages (JSP), which allows server side rendering of frontend. Google Maps API is embedded and utilized for searching and identifying trending venues.
 
# Functionalities

- *Authentication-*
 - *Registration:* Users can register themselves into the system from the registration page.
 - *Login:* Upon registration, the users can login to the system using their authentication credentials.
- *Venue Finding:* 
 - *Venue Search-* Users can use the search bar to search for specific venues. The homepage utilized the user's location (if approved by the user) to show venues around the user's location. Otherwise prominent venues are shows.
 - *Trending-* A list of currently trending venues are shown to the user as a list. Ratings are used to identify trending venues. 
- *User Account Management-*
 - *View Account:* Users can view their account information.
 - *Update Account:* Users can update their account information.
 - *Delete Account:* USers can remove their account if they wish to.
- *Reservations-*
 - *Create Reservations:* Reservations of specific venue(s) can be lodged from the application directly. This is further approved by the venue management team (not included in the applicatin but considered as future additions).
 - *Update Reservations:* Users can update reservation information from the reservations list.
 - *Withdraw Reservations:* A specific reservations can be withdrawn, given than the withdrawl is done before the specified withdraw deadline. Otherwise, windrawls may lead to penalties or withdrawls cannot be done all (user is fully charged).
 - Venue Ratings: Users can rate their experiences of a specific venues as 5 star rating spectrum. Users can also provide comments.

# How to Run

The JSP application requires a local web-server to run. Being a Java (JSP) application and contained as a single package (both frontend and backend packaged as one), an Apache Tomcat server is required to run the application. A easy way to do is to download Eclipse IDE and run the applcation on Eclipse. The database schema can be loaded from the sql query script.
