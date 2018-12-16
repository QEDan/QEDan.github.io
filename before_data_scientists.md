# Before You Hire Data Scientists

Your organization wants to start doing data science (or machine learning, deep learning, advanced analytics, artificial intelligence, etc.). Many organizations start by hiring a data scientist, or a team of data scientists with the intention of letting the data scientist(s) figure out the details. But this results in frustrated data scientists and poor outcomes for the data science projects. A good overview of the phenomenon is outlined in the article [Why so many Data Scientists are Leaving Their Jobs](https://towardsdatascience.com/why-so-many-data-scientists-are-leaving-their-jobs-a1f0329d7ea4), and the references cited by the article.

Full disclosure: This is from my perspective as a data scientist. I'm not an organizational leader.

## Things to Understand
### What is Data Science?
The term data science is often stretched to encompas many different types of work that involve data. Cutting through the hype, data science describes a type of work that is enabled by increasing availability (and falling prices) of computing hardware and the surprising revelations that 1) a huge number of business problems can be addressed by fitting curves to data and 2) more and better data can improve the solutions almost without limit. Traditionally, many of the problems that are solved by data science today were solved by a series of siloed teams passing pieces of solutions from an R&D team, to a prototyping team, to a software development team, to an operations team. Over the past 20 years, advancements have allowed small data science teams using agile and devops philosophies to research and deploy solutions at a small fraction of the time and cost of traditional approaches. Additionally, the range of problems that can be solved has increased, and often the quality of the solutions has also increased. I think this is the core of why there's so much hype around data science, big data, machine learning, artifical intelligence, etc.

The term data science is used to describe many different types of work. But, for the contents of this article, my focus is on organizations that are trying to leverage new ways of working that were impossible 20 years ago, rather than organizations trying to rebrand traditional approaches as "data science".

### Data Science is not (just) Software Development. It requires much more from the organization's side than traditional software.
It is (often) reasonable to equip a software developer with a laptop and some guidance from the product team and have her start building solutions from scratch on day one. In contrast, data science depends on having enough suitable data and in most cases, the data scientist will depend on the organization having already figured out a way to collect, store, and provide access to this data. The data can't be any data, but there has to be enough of it and it has to be suitable to the problem. The storage and access can't just be any storage and access, but it must be infrastructure that will allow the data scientist to remain focused on the problem at hand without being distracted by getting access, troubleshooting unrelated problems, etc.

Data Science projects follow a different lifecycle than software products.

### Data Science is higher-risk, higher-reward than traditional software

There are considerable risks with data science. It's very hard to know what kind of performance you will achieve at the end of the project before you invest in collecting data. But, you have to make that investment to find out. It involves much more research compared to most software development.

The rewards are considerably greater. It's very hard to create monopolies around software innovation. In general, it's difficult to prevent other companies from learning how your software works and copying it for a fraction of the original development costs. Data Science projects have an economic moat provided by the proprietary data set you need to train your models.



### The most successful data science products are the outcome of years of advanced planning

Because it depends on collecting data, organizations need to plan what data to collect and how to collect it well before data scientists can start modeling the data and turning it into products. Data science projects also benefit from efficiencies with other data science projects. The outputs of one project can be the inputs of another to increase the capabilities of the latter. So, part of planning out data science at an organization involves planning out these interdependencies and synergies between different projects.

Google, for example, is clearly very strategic in acquiring valuable data sets for its projects in ways that show considerable advanced planning. They invested huge resources in driving cars down every road. The cars are called "Street View", but they serve many more purposes than just making the "Street View" feature of Google Maps possible. They also provide Google with data that can be used to map wi-fi hotspots to better track android users, as well as providing images to use with recaptcha and that data helps with their self-driving car research. The infrastructure and tools they use for their data science projects become products on their cloud platform and/or open source tools. Everything fits together in interesting ways because they plan it that way.

The alternative to planning is to have data scientists working on disparate projects based on whatever data happens to be lying around. It is difficult to achieve good results without a good analytics strategy.

### Data Science projects require coordination across the entire organization

Along with the planning that's required, organizations need to understand that data science can't be successful with a siloed data science team. 

Getting appropriate data requires that data scientists have input and transparency into how the data is collected. This means there should be relationships between data science and whatever powers determine data collection at the organization (application developers, front-end developers, product teams, data engineers, etc.). 

Data science products can't be designed by top-down directives from product managers. Rather, product managers and data science teams need to be activly engaged in the development of products to understand the compromises between what customers want and what can be practically achieved with the resources available. This compromise happens with any kind of product, but the resource and data dependencies are especially important for data science, so the relationship needs to involve a lot more back and forth.

Project managers, product managers, and other stakeholders in the organization need to be willing to return to earlier stages of the project lifecycle on the advice of the data scientists. It is common to discover problems with the data or with the objectives of the project during the course of research. In those cases, it makes sense to take a step backwards and reevaluate the best path forward. This is frustrating, but it's a natural part of the elevated amount of risk in data science projects. 

### Data Science projects have difficult politics
The above items add up to a very difficult scenario for traditional corporate politics to handle:
* Projects involve tight coordination between many different aspects of the organization (application developers, frontend developers, product teams, data engineers, sales, etc.)
* Projects require committing to a vision, possibly over several years, before there is a working solution
* There can be considerable risk around how successful the project will be, including the risk that the final solution is unsuitable for the problem it's supposed to solve and can't be used.


## Things to Do
### Planning and Strategy

Your organization should do preparatory planning to identify what problems you want your data science team to address, as well as what resources they will need to address it. This planning should have the following objectives:
* Identify 
