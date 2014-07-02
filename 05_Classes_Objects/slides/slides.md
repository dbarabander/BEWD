<img id="icon" src="https://github.com/generalassembly/ga-ruby-on-rails-for-devs/raw/master/images/ga.png">

#BEWD - Classes and Objects

###Bernard Kravitz

---


##Agenda

*	Creating Classes & Objects
*	Lab Time

---


##From Hashes to Classes
###Hashes pros and cons

What are some pros and cons of using hashes?

---


##Classes & Objects
###Classes to the rescue

*	What is a class?
*	What is an object?
*	Why/when to use them?

---
## Pasta restaurant example

* Different kinds of pasta (spaghetti, linguini, penne, rigatoni...)
* Different sauces (marinara, oil and garlic, vodka) 
---

## The disoranized Kitchen

* Owner comes and takes your order. 
* He takes it to the kitchen and explains ingredients and steps. 
* He waits there while its made. 
* Finally takes it to the table. 

### Problems? 
* No specializaiton of labor. 
* When something changes, EVERYONE has to know about it. 

---

## The Organized Kitchen

* Waiter takes order (worries about his own system of writing it down)
* Gives it to a head chef in the kitchen. 
* Each line-cook has a specialization. They know about their own ingredients. 

###Benefits: 
* Specialization of labor. 
* When something changes, only those who care need to know about it. 
* Information is hidden to the outside world, only those who care need to know. 

---

## Basic OOP Concepts

* Encapsulation
* Single Responsibility 
* Polymorphism 
* Composition vs Inheritance 
* Object (instance) vs Class (blueprint)

---


<img id ='icon' src="../../assets/ICL_icons/Code_along_icon_md.png">
##Creating Objects


---

##Creating Objects
###Recap

*	Adding variables to a class

```
		# Hashes
		story = {}
		story[:title] = "Sand angry with flip-flops"
		story[:title] #=> Returns your value


		# With an object
		class Story
			attr_accessor :title
		end


		story = Story.new
		story.title = "Sand angry with flip-flops"
		story.title #=> Returns your value
```
---


##Creating Objects
###Recap

*	Adding methods to our class

```
		class Story
			attr_accessor :title, :category, :upvotes
			def upvote!
				@upvotes += 1
			end
		end

		story = Story.new
		story.title = "Fruit Flies find fleas facetious"
		story.category = "Turf War"
		story.upvotes = 1

		story.upvote!
		story.upvotes #=> 2
```
---


<img id ='icon' src="../../assets/ICL_icons/Code_along_icon_md.png">
##Apartment

---


##Apartment
###Recap

*	The initialize method is invoked when Apartment.new is called
*	to_s method called automatically on objects interpolated in a string (e.g. with puts)
*	to_s can be overridden:

```
		class My_Class
			def to_s
				"The puts method was called."
			end
		end

		>> my_object = My_Class.new
		>> puts my_object
		The puts method was called.
		=> nil
```

---


##Apartment
###Recap

*	Classes allow us to keep code DRY.
*	In object oriented programs variables have scope (key scopes are local vs @instance).
	*	attr_accessor allows a variable to be accessed outside of a method
*	We can create class methods by using self.method_name.
	*	Class methods (e.g. Apartment.new) can be called on a class (which is an object too!)

---

## Homework

*	Midterm due lesson 8.

---


<img id ='icon' src="../../assets/ICL_icons/Exercise_icon_md.png">
##Lab Time

1.	Apartment Objects
2.	Secret Number Objects

---


<div id="resources">
## RESOURCES: Classes & Objects

###Cheat Sheet

####Classes & Objects

__Create A Class__

```ruby
	class class_name
  		#variables and method for this class.
	end
```

__Creating Objects__

```ruby
	class GA_course
		def initialize (course_name)
			@course_name = course_name
		end

		def announce_course
			puts "GA has a course on #{@course_name}"
		end
	end

	my_course = GA_course.new("BEWD")
	other_course = GA_course.new("UXD")

	my_course.announce_course
	other_course.announce_course
```
>GA has a course on BEWD

>GA has a course on UXD


__Variable Scope__


| Scope |Example| Explanation|
| ------------- |:-------------|:-------------------|
| Local      | @name | Available in the same method|
| Instance   | name | Unique value for each instance of a class available from any method in that class.|
| Class   | @@name  | Same shared value for all instances of a class, available from any method of that class.|
| Global   | $name  | Same shared value for all code running within a single Ruby program.|


###Still Feel Lost?
####Catch Up With These Resources

-	What is Object Oriented Programming [video](http://www.youtube.com/watch?feature=endscreen&v=SS-9y0H3Si8&NR=1)
-	What is Object Oriented Programming [Book Chapter](http://ruby.bastardsbook.com/chapters/oops/)
-	Introduction to Objects [Ruby Monk](http://rubymonk.com/learning/books/1-ruby-primer/chapters/6-objects/lessons/35-introduction-to-objects)
-	Building your Own class [Ruby Monk](http://rubymonk.com/learning/books/1-ruby-primer/chapters/7-classes/lessons/40-building-your-own-class)

