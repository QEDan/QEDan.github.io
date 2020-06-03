# Guide to Running Your Own Web Services

## Why run your own web services?

There are many reasons why you should run your own web services. For example:
* To learn skills and create something you are proud of
* Reduce your reliance and regain your freedom from big tech companies
* Be in control of your own computing tasks with free software
* Avoid trusting 3rd parties with privacy-sensitive data
* To make more private, less intrusive options available to your close friends or broader community

Recall the four freedoms you should expect to enjoy as a software user:
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

This guide is intended to provide a general overview and some pointers to tools you will need and options to consider. It is not a step-by-step guide. You will have to read the documentation and learn how all the pieces work together. Otherwise, you are likely to run into problems that you'll be unable to solve yourself. That said, you don't need to be a computer expert to be successful. You can learn as you go, as long as you are willing to do some reading and spend some time debugging when there are problems.

## Finding a webserver

The first step is finding a computer to run your software. These options are listed from having the most control, to having the least control (but the most convenience):
* Purchase a computer and connect it to the internet using your ISP
* Purchase a computer and host it in a colocation center
* Rent access to a bare metal server in a datacenter
* Rent access to a virtual machine in a datacenter
* Use virtual machines from one of the large cloud providers (alphabetical order)
    * Amazon Web Services
    * Google Cloud
    * Microsoft Azure
    
Is running your own webservice on Google Cloud just as bad as using Google's webservices (e.g. gmail, calendar, contacts, drive, etc.)? Maybe. But you'll enjoy more favourable terms and conditions as a cloud customer to control your data. You'll also have the ability to encrypt your data and control the keys so that Google doesn't have access to your unencrypted data. Even if your data is not encrypted, they are not able to wire up your cloud instance data to their surveillance infrastructure as easily. Using a large cloud provider can make the project much more accessible, and it can be done in a way the protects your privacy. But, you would be supporting and relying on the big tech companies. So, consider how it fits into your goals.

## Choosing Services

There are many free software web services that you can run yourself. Here are a few popular ones that you should consider.

### File Syncing and Sharing

Nextcloud provides a broad range of cloud features and even more features are available as plugins. 

Provides:
* File syncing and sharing similar to Google Drive, Dropbox, iCloud, etc.
* Calendar (via plugin)
* Contacts (via plugin)

### RSS Feed Reading

TTRSS

### Music Streaming

AirSonic

### Videoconferencing

Jitsi

### Collaborative Documents

Etherpad / Ethercalc / CryptPad

### Text/log sharing

PrivateBin

### Chat / Messaging

XMPP / Matrix / Converse js

### File sharing

Lufi

### Web Search

SearX

### Polls and Meeting scheduling

Framadate

### Social Networks

Mastodon / Diaspora

## Installing and Configuring Services with Docker

Each of the services you choose to run will have its own documentation for how to configure it. One approach is to install and configure each of them on your webserver. Unfortunately, if there is a problem with your webserver down the road, or if you want to migrate to a different host, you will have to repeat this process, which can be difficult and frustrating.

There is a tool called Docker which can make it much easier to manage the potentially complicated configuration process and make it more portable.

Docker compose

LetsEncrypt

## Connect to services from your personal devices

### Web browser

### Free software android apps

F-Droid

