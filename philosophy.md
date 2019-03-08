# Statement of Data Science Philosophy

Within some professions, especially teaching, it is normal to write one's reflections on the 
goals of their work and how they go about achieving them. 

Data science has become very broadly defined. When you meet a data scientist, it isn't clear what they do 
or how they go about solving problems. Different organizations have different job descriptions and 
standards of professional practice for data scientists. 
So, I think it is a useful exercise to reflect on my personal philosophy and be able to communicate it with colleagues, 
mentors, mentees, and employers.

## Purpose of data science

The purpose of data science is to improve decision making using data by applying best practices from science, statistics, 
decision theory, software engineering, business, and related disciplines. 
The improvement may be in the quality of the outcomes of the 
decisions, in removing a burden on humans to make decisions, 
or it may be in the speed or ability to scale of the decision making process. This approach can have many benefits
to an organization, to society, or in technology. It can help leaders of organizations make more effective decisions
to benefit their customers and their employees. Or, it can be used to automate the many decisions involved in complex 
activities like driving a car or managing your personal finances.

## Data Science Values

I believe that the most difficult aspect of data science is in managing the [many ways that a data scientist 
can be fooled unintentionally](https://github.com/amandabee/workshops/wiki/Round-Up:-Ethics-and-Skepticism). 
When that happens, the wrong decisions can be made and 
that has real-world consequences. Data can be very hard to interpret correctly and it requires 
great care to [avoid fooling onesself](http://calteches.library.caltech.edu/51/2/CargoCult.htm) in the face of many
sources of uncertainty.

Therefore, when I deliver work, I value the following things:
* **My work is [reproducible](https://en.wikipedia.org/wiki/Reproducibility#Reproducible_research) and transparent**. Deliverables (e.g. figures, experimental results, trained machine learning models,
etc.) are delivered along with the software required to reproduce them from the provided inputs. This ensures that any aspect of 
the work can be investigated, reused, or expanded upon. Future research and software will build on what's created today and 
that's easiest when the research is expressed as working software.
* **I can demonstrate that my work is correct**. I provide automated tests of software that I create. I demonstrate that 
systems that I build behave as expected on model problems and benchmarks. I prove my theoretical results, or at least 
document my intuitions.
* **I demonstrate that my work will generalize to the real world**. Most decisions made using data are not concerned with 
what the past looked like, but rather with what future data will look like. Knowing that a certain company has performed well 
in the stock market does not by itself help you make investing decisions today. It is important to discover insights and 
patterns that will generalize to real world applications. I evaluate my work using unseen data 
that's as close as possible to the real world data the model will be used with. 
* **I make life easy for those who maintain or extend my work**. I show my work and clearly document things so they are 
easy to follow. Software is designed with future maintenance and extension in mind. 
Technical debt is used strategically, not as a matter of routine.
* **I create a community with those that I work with** where everyone helps to elevate the skills, knowledge, practices, and processes
of the entire group.
* **I have scientific integrity**. I will be open and honestly report on the factors that may invalidate or limit the results of my work.
