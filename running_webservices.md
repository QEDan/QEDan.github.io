# Guide to Running Your Own Web Services

## What is a web service?
For this article, a web service is any program that you would like to be able to connect to using the world-wide web. Some examples are email servers, file storage, photo galleries, calendar, etc.

## Why run your own web services?

There are many reasons why you should run your own web services. For example:
* To learn skills and create something you are proud of
* Reduce your reliance and regain your freedom from big tech companies
* Be in control of your own computing tasks with free software
* Avoid trusting 3rd parties with privacy-sensitive data
* To make more private, less intrusive options available to your close friends or broader community

Recall the [four freedoms](https://en.wikipedia.org/wiki/The_Free_Software_Definition#The_Four_Essential_Freedoms_of_Free_Software) you should expect to enjoy as a software user:
* Use
    * can be used for any purpose and is free of restrictions such as licence expiry or geographic limitations
* Study
    * can be studied by anyone, without non‐disclosure agreements or similar restrictions
* Share
    * can be shared and copied at virtually no cost
* Improve
    * can be modified by anyone, and these improvements can be shared publicly

## Overview

The basic steps are:
* Find a computer that has a reliable internet connection where you can install software
* Choose the services you'd like to run and install them
* Configure the services by setting up accounts, setting up databases, modifying configuration options, etc.
* Connect to your services from your personal devices
* Migrate your data from your existing services
* Maintain your new services

This guide is intended to give a general overview and some pointers to tools you will need and options to consider. It is not a step-by-step tutorial or comprehensive guide. You will have to read the documentation and learn how all the pieces work together. Otherwise, you are likely to run into problems that you'll be unable to solve yourself. That said, you don't need to be a computer expert to be successful. You can learn as you go, as long as you are willing to do some reading and spend some time debugging when there are problems.

## Finding a web server

The first step is finding a [computer to run your software](https://en.wikipedia.org/wiki/Web_server). These options are listed from having the most control, to having the least control (but the most convenience). Each option will have its own costs, which I wont get into here.:
* Purchase a computer and connect it to the internet using your ISP
* Purchase a computer and host it in a [colocation center](https://en.wikipedia.org/wiki/Colocation_centre)
* Rent access to a [bare metal server](https://en.wikipedia.org/wiki/Bare-metal_server) in a data center (may be called "single-tenancy physical server" or "bare metal server")
* Rent access to a virtual machine in a data center (usually called "Cloud Hosting" or "Virtual servers")
* Use virtual machines from one of the large cloud providers (alphabetical order)
    * [Amazon Web Services](https://aws.amazon.com/)
    * [Google Cloud] (https://cloud.google.com/)
    * [Microsoft Azure] (https://azure.microsoft.com/en-us/?cdn=disable)
    
Depending on what you plan to do with your server, you will want to consider how much bandwidth, disk space, memory, and computing power you'll need. 
    
Is running your own web service on Google Cloud just as bad as using Google's web services (e.g. gmail, calendar, contacts, drive, etc.)? Maybe. But you'll enjoy more favourable terms and conditions as a cloud customer to control your data. You'll also be able to encrypt your data and control the keys so that Google doesn't have access to your unencrypted data. Even if your data is not encrypted, they are not able to wire up your cloud instance data to their surveillance infrastructure as easily. Using a large cloud provider can make the project much more accessible, and it can be done in a way the protects your privacy. But, you would be supporting and relying on the big tech companies. So, consider how it fits into your goals.

## Choosing Services

There are many free software web services that you can run yourself. Here are a few popular ones that you should consider.

### File Syncing and Sharing

Nextcloud provides a broad range of cloud features and even more features are available as plugins. 

Provides:
* File syncing and sharing like Google Drive, Dropbox, iCloud, etc.
* Calendar (via plugin)
* Contacts (via plugin)
* Tasks (via plugin)
* Notes (via plugin)
* Photo galleries
* RSS Reader (via plugin)

### RSS Feed Reading

RSS is great because it allows you to be in control over what you read. You subscribe to feeds that are created by your favourite websites, artists, authors, and other creatives. These feeds are consolidated in your feed reader where you can scan headlines of everything published to all feeds and decide what to read. You are in charge of content curation rather than some algorithm that's trying to earn money from your attention. 

Nextcloud provides an RSS feed reader through its [news plugin](https://apps.nextcloud.com/apps/news).

* [Tiny Tiny RSS](https://tt-rss.org/) (aka TTRSS or TT-RSS) is another excellent choice.


### Music Streaming

Why put up with ads on music streaming sites, or monthly subscription fees? Why put up with restrictive terms of service and DRM? Stream the music you already own by running your own music streaming service.

* [AirSonic](https://airsonic.github.io/)

* [Ampache](http://ampache.org/demo.html)

### Videoconferencing

A global pandemic has made us all very reliant on videoconferencing tools. The most popular tools are proprietary, and we don't want to ask our friends, family, and coworkers to give up their privacy just to chat with us. Instead, consider running your own videoconferencing service!

* [Jitsi](https://jitsi.org/)

### Collaborative Documents

Whether you want to edit your own documents on the cloud or collaborate with colleagues on the same document at the same time, there's tools for you.

* [Etherpad](https://etherpad.org/) - Collaboratively edited documents
* [Ethercalc](https://ethercalc.net/) - Collaboratively edited spreadsheets
* [CryptPad](https://cryptpad.fr/) - Collaboratively edited documents

### Text/log sharing

These are tools for posting text files or log files online so that you can reference them in forum questions.

* [PrivateBin](https://privatebin.info/)

### Chat / Messaging

Keep your messages private with these chat and messaging options.

* [XMPP](https://xmpp.org/)
* [Matrix](https://matrix.org/)
* [Converse js](https://conversejs.org/) - A web client for XMPP

### File sharing

If you want to send a file to someone, sometimes its best to use a link that expires on its own so the file doesn't continue taking up space on the server.

* [Lufi](https://framagit.org/fiat-tux/hat-softwares/lufi)


### Web Search

Run your own web search server to protect your privacy, or to customize how the results are presented.

* [SearX](https://github.com/bauruine/searx/)

### Polls and Meeting scheduling

Sometimes it's useful to collect opinions or schedule events using a poll.

* [Framadate](https://framadate.org/)

### Social Networks

Share information with your friends.

* [Mastodon](https://joinmastodon.org/) - Microblogging (like Twitter)
* [Diaspora](https://diasporafoundation.org/) - Social networking (like Facebook)

## Installing and Configuring Services with Docker

Each of the services you choose to run will have its own documentation for how to configure it. One approach is to install and configure each of them on your web server. Unfortunately, if there is a problem with your web server down the road, or if you want to migrate to a different host, you will have to repeat this process, which can be difficult and frustrating.

There is a tool called [Docker](https://www.docker.com/) which can make it easier to manage the potentially complicated configuration process and make it more portable. With Docker, each program is packaged up along with an operating system and all the libraries required to run the program. These packages are called "Docker containers"

[Docker compose](https://docs.docker.com/compose/) is a tool that makes it easier to have different Docker containers that may interact with eachother. A common Docker Compose configuration for running two services at once, Service A and Service B, may be running the following 5 containers:
* Container for Service A
* Container for Service A's database
* Container for Service B
* Container for Service B's database
* Container for a proxy server, e.g. [nginx](https://en.wikipedia.org/wiki/Nginx)

You will certainly want to run your web service using [HTTPS](https://en.wikipedia.org/wiki/HTTPS) rather than HTTP so that the information sent back and forth is encrypted. HTTPS connections require a security certificate. There is an organization called [LetsEncrypt](https://letsencrypt.org/) that will give you a free certificate. Unfortunately, this adds several tricky configuration steps on top of everything. But, it is worth it to have HTTPS protecting your service!

While all of this configuring of different services can be very challenging with many different sets of documentation to read, the Docker community has made everything considerably easier by releasing many popular web services as Docker images that can be easily configured, usually by editing a single configuration file. Many of these images can be found by searching for them on [Docker Hub](https://hub.docker.com/), a repository of Docker images.

A good example of how to set up Docker Compose is this [TTRSS Docker Compose package](https://git.tt-rss.org/fox/ttrss-docker-compose). This particular Docker Compose includes the following images:
* The TTRSS (RSS reader) application
* A database that TTRSS will use
* An updater script
* A web server that takes care of LetsEncrypt certificate renewals
* A proxy server that makes it easier to run multiple web services at the same time

With a few configuration steps that are well described in the project's README file, you can quickly set up a working TTRSS server using HTTPS. This is a good project to use as a starting point or reference to see how they set it all up, even if you don't intend to use TTRSS.

If there is a specific package for setting up everything you need, such as the example above, you can have a working web service in just a few minutes. Unfortunately, the reality is that to do anything reasonably customized for your own needs, you'll have to spend some time learning Docker, Docker Compose, LetsEncrypt, web servers, as well as each application running in your docker-compose set up. Even if you get things set up correctly at first, no software runs reliably forever. Eventually, you will encounter problems that you'll need to debug. Forums will be helpful, but the more you understand how everything works and fits together the less frustrated you will be.

Finally, do not forget to log in to your services through their web interfaces (see below) and change any default admin passwords! If you forget this step, anyone who finds your service can log in as an administrator.

## Connect to services from your personal devices

Once you have services running somewhere on the web where you can connect to them, you'll have to set up your devices to use your new services.

### Web browser

The easiest way to access your services is through your web browser, e.g. Firefox, by navigating to the URL that your services uses for its web interface. 

### Free software android apps

[F-Droid](https://f-droid.org/) is an app store for Android with a focus on Free Software. It is the first place I go to look for apps that are compatible with my new web services. Usually, searching for the name of the service will produce several results. Generally, you should prefer apps that are popular and actively maintained. Some of the apps on the store may not have been updated in several months or years. The F-Droid store will show you information about how old the latest version is, as well as what sorts of permissions are required and if any aspect of the app doesn't respect your freedom.

## Migrate your data from your existing services

You now have all of your devices communicating with your new web services. But, they don't have your data yet. You'll have to migrate any data from your existing services to the new ones. This process will be different for each web service, so you'll have to search and see if there are any special tools or documented procedures to make the process easier. For example, if you set up TTRSS earlier, you can export your feeds and preferences as an [OPML file](https://en.wikipedia.org/wiki/OPML) from your old RSS reader and import it into TTRSS. Depending on your old and new service, you may not be lucky enough to have a tool for bulk data transfer. Unfortunately, interoperability is not necessarily a priority for many services.

## Maintain your new services

In a perfect world, your services would run correctly forever until you decided to stop them. In the real world, you will have to worry about errors, down-time, data loss, and security issues. This is where running your own services can be particularly challenging for anyone who's not an expert system administrator. In general, the more you are willing to learn, the easier your life will be. Every problem requires its own solution, but here are some general tips:
* Ask questions online
  * Find an active question answering site that's as specific to the technology that's failing as possible
  * Learn how to [ask questions effectively](https://meta.stackexchange.com/help/how-to-ask)
* If other people are using your services in addition to you, make sure they understand your skill level and have realistic expectations about possible down-times, data loss, security issues, etc. Don't make promises to users that you can't deliver on.
* Backup important data
  * Keep 3 copies of anything important, on two different media, with one copy off-site. This is called the 3-2-1 rule.
  * You not only need copies of the data, but you have to know how to restore the data from a copy in case you lose the original. I suggest practicing this before you need to do it in real life. If you can't restore the data from a copy of the database, it is as good as lost anyway.
* Update software regularly to apply security updates
  * Keep the base operating system on your server up-to-date
  * Keep any Docker images or applications on your server up-to-date
  * Keep all client software such as web browsers or mobile apps up-to-date
  
## Conclusion

I have tried to do a quick tour of what is involved in running your own web services. I hope this article encourages you to get started and try it out for yourself. Worrying about uptime, security, certificates, Docker and everything all at once may seem intimidating, but don't let that stop you from getting started with something simple. Installing a web server and getting a 'hello world' page, or even a 404 error on localhost is a first step and a good learning opportunity. Then move on to getting a simple service running that you don't put important data on so you don't have to worry about security and backups at all. Practice the basic skills and read the documentation to slowly work your way up to creating multi-service docker-compose servers with HTTPS that handles all your most important data.
