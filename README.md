# helloworld!<>

helloworld!<> is a cross-platform mobile app created with Flutter, Dart, Node.js and PostgresQL. 
It provides a platform to connect all language learners and tutors all around the world.

[Visit the prototyping page on Figma here.](https://www.figma.com/file/1frbSEL5SntI8UFomeSfOj/helloworld?node-id=0%3A1)

## Table of Contents

* [Motivation](#motivation)
* [User Stories](#user-stories)
* [Technologies](#technologies)
* [Set-up](#setup)
* [Features](#features)
    * [Create an Account](#create-an-account)
    * [Hire a Mentor](#hire-a-mentor)
    * [View Learners' Profile](#view-learner-profile)
    * [View Mentors' Profile](#view-mentor-profile)
    * [Connect Offline](#connect-offline)
    * [Connect Online](#connect-online)
    * [View Past & Present Requests](#requests)
* [Timeline](#timeline)
* [User Guide](#user-guide)
* [Developers](#developers)

<a name="motivation"></a>
# Motivation

The idea behind "HelloWorld!<>" came about when one of our members tried 
picking up Spanish online but struggled to do so due to the lack of interaction 
with people who use this language. 

Undoubtedly, language, being a vital tool of communication among people, 
can only be mastered through real life interactions with actual people. 
The lack of platforms providing such a solution thus inspired us to come up 
with this phone application that serves to match and connect individuals 
with similar language goals both online and offline. 

With this application, we hope to build a positive peer-to-peer learning 
environment where language learners can stay engaged and motivated in their 
learning journey, accelerating their learning progress.

<a name="user-stories"></a>
# User Stories

<li>As a student who wants to pick up a new language, I want to find another learner of the same language/dialect to practice conversing in that language/dialect.</li>
<li>As a student who has questions and problems with a new language, I want to find a mentor to converse with and guide me as soon as possible, to accelerate my learning.</li>
<li>As a student seeking for another learner/partner to practice speaking the new language, I need to have a view of the other party’s schedule in order to arrange a mutually convenient timing.</li> 
<li>As students who want to converse with other students or mentors wish to help students at inconvenient timings, I want to be able to communicate on an online messaging built-in feature.</li>
<li>As an administrator who wants to prevent abuse of the system, I want to be able to identify abusers, warn them and ban them if they continue to cause problems.</li>

<a name="technologies"></a>
# Technologies

Our team decided to use Flutter mainly due to its cross-platform compatibility 
for both iOS and Android, as well as its great tooling and high performance. 
We also aim to leave our options open for web development by capitalizing on
Flutter's web compatibility. 

Naturally, we use Dart, which is the language Flutter is based in, to handle
the business logic and orchestrate the backend component.

We chose not to use Firebase as we value scalability and customizability.
Despite being a convenient solution, we want our app to remain flexible and
migration-friendly. So we decided to go with PostgresQL for user information
MongoDB to store messages and conversations at scale. 

<a name="setup"></a>
# Set-up

1. Download [Flutter SDK](https://flutter.dev/docs/get-started/install) from the
   official website.

2. Clone into this repository.
```
$ git clone https://github.com/aaronsms/HelloWorld.git
```

3. Fetch dependencies specified in the pubspec.yaml file. 
```
$ flutter pub get
```

4. Clone into the server repository to test on your local machine.
```
$ git clone https://github.com/aaronsms/HelloWorldServer.git
$ cd HelloWorldServer
$ docker-compose up
```

5. You're good to go!

<a name="features"></a>
# Features

<a name="create-an-account"></a>
## Create an Account

Sign-up as a learner in 2 steps or a mentor in 3 steps, hassle-free!

<p>
<img src="./prototype/login.jpg" width="250">
<img src="./prototype/sign-up.jpg" width="250">
<img src="./prototype/sign up page - learner.jpg" width="250">
</p>

<a name="hire-a-mentor"></a>
## Hire a Mentor

Book a mentor from our qualified pool of mentors to suit your learning
needs at your preferred timing and location. 

<p>
<img src="./prototype/mentor-preview.jpg" width="250">
<img src="./prototype/homepage - mentor.jpg" width="250">
</p>

<a name="view-learner-profile"></a>
## View Learner's Profile

Check out other language learners' profile and learning goals.

<p>
<img src="./prototype/homepage.jpg" width="250">
<img src="./prototype/profile - learner (2).jpg" width="250">
</p>

<a name="view-mentor-profile"></a>
## View Mentors' Profile

Look through mentors' profiles and their respective qualifications 
and ratings. 

<p>
<img src="./prototype/profile - mentor (2).jpg" width="250">
<img src="./prototype/profile - mentor (3).jpg" width="250">
</p>

<a name="connect-offline"></a>
## Connect Offline

Arrange a meeting with another language learner at the convenience 
of both of you and practice speaking in a safe and conducive environment. 

<p>
<img src="./prototype/booking-preview.jpg" width="250">
<img src="./prototype/booking-calendar.jpg" width="250">
<img src="./prototype/booking-request.jpg" width="250">
</p>

<a name="connect-online"></a>
## Connect Online

Find someone with similar learning goals to practice speaking with online, even when you're unable to meet-up.

<p>
<img src="./prototype/messenger-preview.jpg" width="250">
<img src="./prototype/messenger.jpg" width="250">
<img src="./prototype/messenger - learner.jpg" width="250">
</p>

<a name="requests"></a>
## View Past & Present Requests

View the history of all requests received from and sent to others, and accept/reject pending requests.

<p>
<img src="./prototype/requests (1).jpg" width="250">
<img src="./prototype/requests (2).jpg" width="250">
<img src="./prototype/requests (3).jpg" width="250">
</p>

<a name="timeline"></a>
## Timeline
<p>
<b>Features to be completed by Milestone 2:</b>
<li>Login</li>
<li>Sign In</li>
<li>Homepage</li>
<li>Request System</li>
<li>Student/Mentor Profiles</li>
</p>
<p>
<b>Features to be completed by Milestone 3:</b>
<li>Scheduling System</li>
<li>Messenger</li>
<li>Sign Out</li>
</p>
<i>Note: The booking system is made up of two parts, namely the request and scheduling systems.</i> 

<a name="user-guide"></a>
## User Guide
<p>
<img src="./prototype/helloworld__! flowchart.png">
</p>

<a name="developers"></a>
## Developers

This application is created by Amanda Ang and Aaron Saw, for NUS School of Computing's Orbital 2020. 

