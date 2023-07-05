## Variables
Variables can be assigned with the `my` keyword.
The following code shows the proper syntax for doing so:

```
my hello_world = "Hello World!"
```
```
my number = 1337
```
```
my URL = "https://yyyyyyy.info/"
```

There is no need for things such as semicolons,
since KotScript can figure out where the statements
end, on its own.

### Variable types

In KotScript, variables will tend to stick with the datatype of the **first* value.

Variables will not migrate their types on their own, so the following code will not function:

```
my fruit = "Apple" <-- Type is @string

fruit = "Banana"   <-- Ok!
fruit = 0          <-- Error!
```

### Variable scopes
KotScript supports custom variable scopes, which could be useful in some cases.

This can be done by using the `in` and the `blockname` keywords.

The `in` keyword is used to specify the scope/block that a variable could be accessed from:

```
my number in scope_name = 0
```

It is also good to note that if the scope is not specified, the variables will automatically be marked as global.

```
-- Main Block --

my number = 0
number = 1 <-- Ok

-- Another Block --
number = 2 <-- Ok
```

To set the name of the block, the programmer can use the `blockname` keyword mentioned above.

This is used to set the name of the current block to the provided name, so later it can be used along the `in` keyword.

Example below:

```
blockname: main
my color in main = "Black"

{
    blockname: other
    color = "Grey" <-- Error!
}
```