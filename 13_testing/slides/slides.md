![GeneralAssemb.ly](https://github.com/generalassembly/ga-ruby-on-rails-for-devs/raw/master/images/ga.png "GeneralAssemb.ly")

#BEWD - Testing

### Bernard Kravitz

---


##Agenda

* Testing, what is it? 
* Code along, do it (Ritly)! 
* Lab, you do it (Ritly)! 
  

---

## Testing

* Code that tests the behavior of other code. 
* You actually saw this way back with our earlier ruby work. 
* Looks like this: 

```
answer = 2 + 2
assert_equal 4, answer
```

---
## What are the basic benefits? 

* More explicit way to know that your work is complete. 
* Acts as documentation for how you intend your own code to work. 
* When you later refactor and change your work, it's a fast measure to know your code still works. Called "regression testing"

---

## The clean work bench

* Tests help you to think more methodically, step by step. 
* It forces you to be more indicative and intentional with your code. It must, by definition, be testable from the outside. 
* It helps you break the problem down. You actually start to think better. 


---
## Unit Tests

* For models and controllers (and sometimes views). 
* Tests individual 'units' or components of the app in isolation of eachother. 

---
## Integration Tests

* Sometimes called 'feature tests' or 'request tests'
* Tests how parts interact with eachother
* Would test an entire interaction, the whole MVC 'stack'.
* An example might be the whole sign in flow, from login form, to success message. 

---
## Testing Models
* You want to run each test in the EXACT same environment everytime. 
* This means you have a whole database dedicated to testing. The database gets wiped clean after EVERY SINGLE TEST. 
* You don't want data left over from one test effecting another. 

---
## Rspec
* Very much unit testing, but it thinks about the tests as "specifications" for features in the app. 
* There is a whole DSL (or language) around rspec, which make tests read more like specs, and less like 'code.'
* Write your tests declaritavely. Such that you `expect` things to happen. 
---

<img id ='icon' src="../../assets/ICL_icons/Code_along_icon_md.png">
##Ritly Tests

---

## Do tests feel like chores? 

---

<img id ='icon' src="../../assets/ICL_icons/Exercise_icon_md.png">
##You do it! With Ritly!

---

## Lab Scaffold

* Install the gem
* Run the generate task
* Generate your model specs
* Write your tasks, rinse and repeat. 

---


<div id="resources">
## Resources


###Tips, Tricks & Advanced Reading
* [rSpec](http://rspec.info)
* [rSpec Rails]f(https://github.com/rspec/rspec-rails)
* [Feature specs](https://www.relishapp.com/rspec/rspec-rails/v/3-0/docs/feature-specs/feature-spec)
* [Better Specs--Great resource on style](http://betterspecs.org)
* [TDD](http://www.agiledata.org/essays/tdd.html)
* The glory of Continuous Integration: [CI](http://martinfowler.com/articles/continuousIntegration.html)

