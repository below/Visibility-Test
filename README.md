# Visibility-Test

I have created this project to illustrate a visibility question I encountered in a project. To make things as simple as possible for me, I set up this project similar to the one I am working on.
This may or may not be the smallest possible way to illustrate this issue — but it works.

## The Disappearing Type
In the Objective-C „SampleFramework“, a type `Foo` is declared and implemented.
In my Swift project’s `AppDelegate`, I `import SampleFramework` and I can instantiate a variable of that type:
```Swift
let foo : Foo = Foo()
```
The `AppDelegate` also contains a function which accepts a block as an argument: 
```Swift
func giveMeFoo (completionHandler : @escaping ( _ foo : Foo ) -> Void)
```

If I call this function and provide an anoymous block, I get a `Foo` object back, and I can access its properties. However, if I provide an explicit type annotation anywhere, the compiler will fail with an error.

This sounds odd to me: Obviously, the compiler has knowledge about the `Foo` type at this point. Why is the explicit use of the type not possible?

## Update: ObjC does not matter

The same behaviour can be seen for a Swift Framework, the class is `Bar`