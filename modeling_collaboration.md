# Data Science Modeling Collaboration

Guidelines for effective collaboration when multiple data scientists are collaborating to develop a single model.

## Common anti-pattern: Copy-and-pasting code between notebooks

Some data science teams will end up developing models collaboratively by maintaing separate branches or repos where they 
copy-and-paste bits of shared code from their collaborators. Ideas that work are then suggested to be copy-and-pasted back to 
the other collaborators. There are a number of problems with this strategy:
* Similar code ends up being repeated in many different places. Changing this code becomes a maintenance and coordination nightmare.
* It is difficult to discover what useful capabilities your collaborators have implemented
* It is difficult to write scripts that automatically search through the space of available capabilities to find the best 
modeling choices and hyperparameters because the capabilities are all implemented in separate codebases
* Is is difficult to establish a principaled approach to discovering the best modeling decisions because experiments are 
run by different collaborators working independently. Either the experiments are left to be inconsistent, or the team needs 
to manually coordinate on experiment appraoches.
* Collaborators spend too much time merging changes into their independent development branches
* The research process is difficult to reproduce (e.g. by another team) because the modeling decisions are not well tracked
* etc.

To avoid these problems, we would like a solution for collaborating on model development that uses some best practices from 
software engineering, but still allows the researchers to be nimble and try out their ideas quickly.

## Better Collaboration

Here's a suggested strategy that avoids many of the above-listed problems:

* Collectively develop a single feature-rich code base. 
* Develop new capabilities on feature branches that are merged into a stable master branch when complete
* Implement new capabilities so that they can easily be turned on/off with a single parameter, and if enabled can be 
controlled with configuration options
* Create, for example, a configuration file so that you can run an experiment for a given set of capabilities enabled with certain
configuration options set. Essentially, all modeling choices (preprocessing steps, algorithm choices, ANN architectures, 
hyperparameter choices, etc.) are made by adjusting the configuration file.
* Create a script that can generate configurations and optimize the modeling choices by Grid Search, 
Random Search, Bayesian Optimization or other optimization approach

Using this approach:
* All capabilities are merged into a single code base that's easy to expand and maintain
* Collaborators can see what capabilities are available in the code base by looking at the code and merge history
* It is easy to develop a principaled search through modeling decisions to achieve the best generalization performance
* Research can be reproduced by running the final modeling optimization script

