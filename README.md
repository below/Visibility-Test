# Visibility-Test

I have created this project to illustrate a visibility question I encountered in a project. To make things as simple as possible for me, I set up this project similar to the one I am working on.
This may or may not be the smallest possible way to illustrate this issue — but it works.

## The Disappearing Type
In the Objective-C „SampleFramework“, a type `Foo` is declared and implemented.
In my Swift project’s `AppDelegate`, I ``import SampleFramework`` and I can instantiate a variable of that type:
```Swift
`let foo : Foo = Foo()
```
`
