# A performance management discussion tool

The idea is to provide a tool to allow people to constantly discuss
what's going on with someone's performance.

So in organizations where this matters the conversation can be had
across the year rather than in one go at the end.


## Data structure

* person
  * current score
    * performance - integer
    * behaviour - integer
    * history of changes
      * chat 
        * person name
        * date
* manager
  * can see the person
  * managers of managers can see the persons
  

## Experience for the managed

You might start the year as rating 6 with an http link to some objectives.

Your manager and you have a link to the page where the rating is
discussed and ping into it weekly. The webapp is setup to give you
notifications when you have not logged in for 3 days, except on
weekends (see note 1).

When you login you notice that your manager has bumped your
behaviour rating up and added a chat comment:

```
good job on the comms this week - blog posts are hitting the target.
```

You wonder how you can improve your performance score and chat this:

```
I am struggling to deliver more though. I just don't understand 
how I can do it when it's not me doing the work.
```

Your manager happens to be online so replies pretty quickly:

```
I think you need to get into the detail of what they do. 
Pair with them. Go and sit with them for 1 morning a week 
to start with.
```

You need to go home and your dog is ill and you forget all about
this. But when you get a notification 2 days later you see the
chat. You consider setting up a meeting to sit with 1 of your folks to
find out what they're doing.

One month later, you've sat with 4 members of your team and seen first
hand the slow processes that they are using to get their work
done. After the second time you start to call the team together to
make changes and those changes are now having an impact after two
further weeks.

You login and chat to your manager:

```
We have started to manage the backlog better. We now have a weekly
prioritization meeting to decide what the next item of work will be. 
I think this is having an impact!
```

But she replies 1 day later:

```
Yes! It is! My boss is yelling at me that you're not getting 
enough of his stuff done! Remember our objective is to go and 
deliver on the other project and your project needs to increase 
in stability to make that happen!
```

She has bumped your performance down a point!

Whoops! you didn't do the right thing. But at least you failed fast.

Now you sit with your team focussing on incidents. Another 2 weeks and
you've found a lot of processes they're doing around double checking
fixes for stability that don't really matter when you're in a
hurry. You also notice that their comms around incidents are bad.

2 weeks later you have one person every day who is asking for
work. You go to the other project and ask how you can help.

Next time you login to perfwatch you have a nice surprise. Your
performance has gone up 2 points. That's getting the point you lost
back and advancing another!

```
Great impact. This is what we needed. I'm seeing the comments for 
your team too!
```

### Notes on the experience

(1) this is achieved through a service worker

## Experience for the manager

High level:

* graph the changes to the score on a stave, hover over a score change
  to bring up the chat of what was happening



## Example data

```
name: nic ferrier
id: 7001
manager-id: 6001
performance: 3
behaviour: 2

name: peter towns
id: 6001
manager-id: 0
performance: 5
behaviour: 5

name: rohit nayyar
id: 7022
manager-id: 7001
performance: 2
behaviour: 2

name: yogesh bhavani
id: 8049
manager-id: 7022
performance: 3
behaviour: 2
```

Peter can see Nic, Rohit and Yogesh's rating. 

Peter can alter Nic's rating.

Nic can see Rohit and Yogesh's rating.

Nic can alter Rohit's rating.

Rohit can see Yogesh's rating.

Rohit can alter Yogesh's rating.
