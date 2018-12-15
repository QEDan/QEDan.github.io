# Agile For Research Work

[Agile](https://en.wikipedia.org/wiki/Agile_software_development) refers to a philosophy for developing software projects. 
Why would we consider using it for research/R&D projects where the immediate goal is not necessarily to produce working 
software for customers?


1. The various research communities have not produced specific frameworks that are as mature or useful as the most popular 
agile frameworks for project management. If and when they do, these frameworks should be adopted by researchers. 
For now, the software community has arguably refined the best project management frameworks for research.

2. Software developers use a large number of research-based tasks to get their jobs done, because they must create new 
knowledge to solve difficult problems. The software developer community already knows about project managing research projects. 
Their frameworks solve many of the problems regularly encountered in other types of research.

3. Researchers in other fields create a lot of software because research best practices emphasize using reproducible processes 
that can be unambiguously communicated between research groups. The best tool for this is software. Modern researchers in most 
fields are software developers to varying extents (yes, spreadsheets count as software).

## Mapping Software Concepts to Research Concepts

 Research and software development are different disciplines with different goals. So, it is not a perfect fit to put 
 research work into an agile software development framework. But, it is clearer if we make some mappings between concepts:
* features -> knowledge: Software developers deliver value by producing new features in their software. Researchers deliver 
value by producing new knowledge in their field (possibly expressed as software).
* working software -> usable knowledge: Agile software practices emphasize working software. The risk is that they 
do a large amount of development, but fail to put the various pieces together in a way that makes them useful to others. 
So, each task must be delivered in a usable state before it is considered finished. Agile research should similarly 
emphasize making the knowledge produced as easy to discover and use as possible, not spread across notebooks, emails, 
disparate repo branches, and personal hard drives. Deliverables in research may take the form of short reports, 
plots/dashboards, prototypes, or (as with software developers) working research software that can be easily 
distributed to and run by other research teams.
* users, customers -> other researchers, decision makers: Software developers create features for the benefit of 
their customers. Researchers create knowledge for themselves, other researchers, prototype developers, 
decision makers, etc. It is important to keep in mind who you want to benefit from your hard work and think of 
them as customers of your research efforts.
* product owner -> principal investigator: Who has the vision and knowledge of the team's broad objectives, 
competitive pressures, and business/funding context to best understand the priorities of the work to be done?

## User Stories

Ideally, task descriptions provide enough information for:
* Product owners/principal investigator to understand how the work contributes to the evolution of the project 
and how to prioritize tasks relative to one another
* All team members to share a common understanding of what the outcome of the task is, and what it means for the 
task to be finished
* Team members to be able to collectively estimate how much total effort is required to deliver the task
* Any qualified team member to pick up the task and have enough information to achieve the intended outcome
* Project managers to understand what each person is working on, and what the state of the project will be at 
the end of each sprint.

In software development, they encourage the following pattern because it provides an easy way to keep all of these 
goals in mind while being very succinct:
* "as a <who benefits from this work?> I want to <what do they want to be able to do?> so that I can 
<why do they want to be able to do it?>"

Most of the time, a researcher starts by wanting to create new knowledge for herself or her research group. 
Most software user stories start with "as a user...", but in research, most "user stories" will start with 
"as a researcher..." (or more specifically "as a data scientist...", "as a bioinformatician...", etc.). 

Most of the time, a researcher is working towards knowing something they didn't know before. Most software user 
stories discuss a user wanting to use a feature in software, but in research most user stories will be about 
wanting to know something. So, many user stories in research work will begin "as a researcher, I want to know 
how/why/when/what/etc.".

The last piece of the pattern is about stating the objectives. Why is this research valuable? What's the 
point in investing expensive resources in this task?

* As a biologist, I want to know if playing music for plants will help them to grow so that I can develop new 
methods to improve crop yields and feed the world.
* As a volcanologist, I want to know if a baking soda and vinegar chemical reaction can accurately represent any 
aspects of volcanic eruption processes so that I can create inexpensive analogue systems to study in the laboratory.
* As a geneticist, I want to know if the X-gene mutation causes humans to develop fantastic super powers so that 
I can eliminate the threat to humanity if I find a cure for the mutation.
* As a data scientist, I want to know what neural network architecture will give me infinitesimally better 
results on this benchmark task that's already been horribly overfit by the research community so that I can get 
published and get a high paying job in industry. (always be honest about your objectives ;)

Like in software development, the task descriptions communicate the who, what, and why, but they do not 
specify the how. The team members who work on the task should be trusted to figure out the how themselves, 
possibly by asking for advice from other team members.

## Deliverables, Quality Control, and the Definition of Done

If it's worthwhile for the team to take on work, then it's worthwhile for that work to have a clear deliverable, 
some form of quality control process (such as review by a peer on the team), and a clear distinction between done 
and not done that's understood by all team members. Researchers want to move fast and this incentives taking short 
cuts (same problem with software developers). But, since research builds on everything that came before, errors can 
propagate through the process unnoticed for a long time before they are eventually discovered (same problem with 
software developers). It pays dividends to check each task's deliverables for quality and completeness before building 
new research on previous results (hence, why peer review exists). The team should decide how much effort its worth 
putting into different types of deliverables and quality control checks depending on the risks of mistakes and the 
rewards of moving quickly. But, if it feels like a task is too unimportant to be worth the preparation of any 
deliverable or go through any quality control process, that might be an indication that the task was never worth 
doing in the first place. 

In the agile philosophy, the deliverables emphasize putting the team's outputs into a useful state for the 
customers before starting new tasks. In research, this might mean that every task ends with a short report with a 
few relevant figures and a conclusion about what was learned by performing the task. These small reports, useful bits 
of code, etc. should be collected in a place where teammates or other "customers" will be able to easily look for 
them and find them. If any software was produced during the work (including small 'one-off' scripts for plotting or 
analysis), this software should be delivered into the team's repository so that it's easy for others to reuse, 
expand, or distribute in the future. Knowledge that's verbally communicated to the team at a meeting or sitting 
in a notebook where no one will look probably should not be considered "useful" yet, so that task would not yet 
be considered finished.

## Resources

1. [SCORE: Adapting Scrum to Managing a Research Group](http://www.cs.umd.edu/~mwh/papers/score.pdf) - Hicks, Foster @ UMaryland
2. [Agile Academic Research](https://www.infoq.com/articles/agile-academic-research)
3. [Agile Scientific Research](http://www.scrum-breakfast.com/2014/04/agile-scientific-research.html)
4. [Agile Kanban for Research Work](https://kanbantool.com/blog/agile-kanban-for-research-work)
