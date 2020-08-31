# Lecture 02

## MVVM

Model-View-ViewModel:
* a code-organizing architectural design paradigm
* works with the concept of reactive user interfaces
* required for SwiftUI

Model:
* UI independent
* encapsulates data and logic

View:
* reflects the model
* stateless
* declarative
* reactive (automatically updates with changes to the Model)

Data flows from the Model to the View (read-only).

ViewModel:
* binds View to Model
* interprets the View for the Model
* processes intent

The most common data flow is from the Model to View. The ViewModel notices changes in the Model. The ViewModel might interpret some data before publishing that something has changed. The View automatically observes any publications, pulls data and rebuilds.

In the other direction (View to Model), the View calls an intent function in the ViewModel. The ViewModel then modifies the Model accordingly. If the Model changes, then the aforementioned data flow occurs and the View updates again.

## Swift Type System

### `struct` and `class`

`struct` and `class` both have:
* stored variables
* computed variables
* constants
* functions
* initializers (similar to constructors)

`struct` is value type, meaning it is copied (on write) when passed or assigned. `class` is reference type, meaning it is passed around via pointers. Many data types such as arrays, integers and booleans are `struct`.

`struct` is used for functional programming, while `class` is used for object-oriented programming.

`struct` has a free `init` function that initializes all of its variables. `class` has a free `init` function that initializes no variables.

Mutability for `struct` must be explicitly stated, while `class` is always mutable (potentially dangerous).

Typically, `struct` should be your go-to data structure. `class` should only be used in specific circumstances (ex. the ViewModel in MVVM)

### Generics

Sometimes, we may want to manipulate data structures where we do not care about the type.

An `Array` is an example of a generic. It contains a bunch of things and it doesn't care about what type they are. In order for this to work, an `Array` must store generics.

```swift
struct Array<Element> {
  ...
  func append(_ element: Element) { ... }
}
```

In this example, `Element` is not any known `struct` or `class`, it's simply a placeholder for a type.

The formal name for these generics are **Type Parameters**.

### Functions

You can declare a variable to be of type function.

```swift
var operation: (Double) -> Double
```

In this example, the variable `operation` is of type "function that takes a `Double` and returns a `Double`".

