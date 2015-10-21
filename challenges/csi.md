# Crime Scene Investigation

A group of five school children is caught in a crime. One of them has stolen something from some kid they all dislike. The headmistress has to find out who did it. She questions the children, and this is what they say:

* Matthew: Carl didn't do it, and neither did I.
* Peter: It was Matthew or it was Jack.
* Jack: Matthew and Peter are both lying.
* Arnold: Matthew or Peter is speaking the truth, but not both.
* Carl: What Arnold says is not true.

Their class teacher now comes in. She says: three of these boys always tell the truth, and two always lie. You can assume that what the class teacher says is true. Use Haskell to write a function that computes who was the thief, and a function that computes which boys made honest declarations. Here are some definitions to get you started.

> data Boy = Matthew | Peter | Jack | Arnold | Carl
>            deriving (Eq,Show)
>
> boys = [Matthew, Peter, Jack, Arnold, Carl]

You should first define a function

```
says :: Boy -> Boy -> Bool
```

for encoding what the boys say about each other.


Next, define

```
accusers :: Boy -> [Boy]
```

giving the list of accusers of each boy.

Finally, define

```
guilty, honest :: [Boy]
```

to give the list of guilty boys, plus the list of boys who made honest (true) statements.

If the puzzle is well-designed, then guilty should give a singleton list.
