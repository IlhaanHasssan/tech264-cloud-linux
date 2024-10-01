# Scripting

(use shift + ctrl + P to create 'Table of Contents')
- [Scripting](#scripting)
  - [Scripting vs Programming](#scripting-vs-programming)
    - [Similarities🤞:](#similarities)
    - [Differences✌️:](#differences️)
      - [Complexity](#complexity)
      - [Purpose/Intent](#purposeintent)
      - [Execution](#execution)
      - [Development Cycle](#development-cycle)
      - [Learning Curve](#learning-curve)
  - [Running Python Scripts in the CLI:](#running-python-scripts-in-the-cli)
      - [What is sys.argv?](#what-is-sysargv)
      - [How Does It Work?](#how-does-it-work)
      - [What Happens:](#what-happens)
      - [Summary](#summary)

## Scripting vs Programming
### Similarities🤞:
   - Both involve writing code to solve problems and can share similar syntax and concepts across languages.
   - Both can be used in various contexts, such as web development, data processing, and system automation.
   - Many languages blur the lines between scripting and programming, allowing for both simple and complex applications.
   - 
### Differences✌️:

- Scripting is a type of programming so they often overlap, though they differ in meaning and application.
  
  #### Complexity
    - Scripting: Generally involves simpler logic and is often focused on specific tasks. Scripts can be short and straightforward.
    - Programming: Typically requires more intricate logic, data structures, and algorithms. It often involves handling larger codebases and architecture.
  #### Purpose/Intent
    - Scripting: Primarily used for automating tasks, manipulating files, config management and controlling applications. Often aims for quick solutions.
    - Programming: Designed for creating larger, more complex software applications or systems that may involve multiple components and user interfaces.
  #### Execution
    - Scripting: Usually interpreted, meaning code is executed line by line at runtime, which can allow for rapid testing and debugging.
    - Programming: Often compiled into machine code before execution, leading to optimized performance but potentially longer development times.
  #### Development Cycle
    - Scripting: Often involves shorter development cycles. Scripts can be written and tested quickly, allowing for rapid iteration.
    - Programming: Usually involves longer development cycles, including phases like planning, design, implementation, testing, and deployment. More extensive testing and debugging may be required.

  #### Learning Curve
    - Scripting: Tends to have a gentler learning curve, making it accessible for beginners. Many scripting languages are designed to be user-friendly and intuitive.
    - Programming: Can have a steeper learning curve due to the need to understand more complex concepts, algorithms, and data structures.

## Running Python Scripts in the CLI:


#### What is sys.argv?
```sys``` Module: This is a built-in module in Python that provides access to some variables used or maintained by the Python interpreter. To use it, you need to import it with import sys.

```argv```: This stands for "argument vector." It is a list that contains the command-line arguments passed to the script.

#### How Does It Work?
When You Run a Script:

 - When you execute a Python script from the command line, you can pass additional information (arguments) along with the script name.

#### What Happens:

The sys.argv list will contain the script name and the arguments you provided.

In the example above:

sys.argv[0] will be 'my_script.py' (the name of your script).

sys.argv[1] will be 'arg1' (the first argument).

sys.argv[2] will be 'arg2' (the second argument).
  

```python 
import sys 
# you have to import the sys module to pass arguments to your script
# index shows which argument will be printed
# Check for arguments
if len(sys.argv) > 1:
    print("You gave me an argument")
    print("Print argument with index 0:", sys.argv[0]) 
    print("Print argument with index 1:", sys.argv[1])
else:
    print("You gave me no argument")
    print("Print argument with index 0:", sys.argv[0])
```
To run a python script in the command line:
```python   
python <file_name> arg1 arg2
```

#### Summary
 - sys.argv is a list that contains the name of the script and any arguments you pass to it.
- Indexing: sys.argv[0] is always the script name, and subsequent indices contain the arguments.
- This allows your script to take input from the command line, making it more flexible and interactive!




[def]: #complexity