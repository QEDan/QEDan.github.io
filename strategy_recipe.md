# A Recipe For Data Science Strategy

This is a recipe for developing a data science strategy for an organization. A Data Science Strategy is a framework that will help the organization understand what data science projects and data sources are the most valuable to the organization, and how to prioritize them to build toward their vision over time.

The recipe will help us answer the following questions:
* What is the vision of data science for our organization? What are we working towards?
* How can we build up toward our vision in terms of solvable data problems and specific data products?
* What are the dependencies (e.g. data sources or simpler data models) of the data products we want to build?
* How can we resolve those dependencies step-by-step?
* What are the highest priority things to work on right now to take steps toward realizing the vision?

Answering these questions allows data scientists to develop useful data products that start out simple and can be improved and made more complex over time until the long-term vision is achieved.

The data science strategy is not concerned with implementation details. At the strategy level, we are not interested in what technologies we will use for data warehousing, data pipelines, serving models, etc. We are not concerned with what types of modelling approaches will be tried, what hardware will be used for training, or what software frameworks will be used to ensure reproducibility. Those are all important things to figure out, but the strategic questions above should be figured out first, and then implementation strategies can be developed to support the overall strategy.

This recipe is meant to be extremely flexible, so it's discussed in abstract terms. To make things more concrete, we will imagine applying this strategy to a hypothetical company, called AcmeMealCo, whose mission is to make preparing meals easier for their customers. 

The type of business to use as an example became extremely obvious after I used the word 'recipe' for the title.

## Terminology
I use very broad terminology because this recipe can be applied to very broad situations. 

* Data Science - The discipline within the organization that makes data products
* Data products - Any artifact that uses one or more data sources as an input and aims to make that data more usable toward a specific area of decision making. A data product may aim to automate a decision, or it may aim to assist a human decision maker. Examples include graphs, calculated values, dashboards, analytic models, statistical models, machine learning models, artificial intelligence systems, etc.
* Decision - A situation where there are multiple possibilities that a decider must choose from. The decider may be a user or customer of the organizations products, an employee or leader within the organization, or a piece of automated software.


## 1. Clarify the goals and scope
What is the business trying to accomplish and how can data science help? What is the vision? In what area are you planning to innovate using data science? Who will benefit and how? 
What can your organization realistically achieve assuming a best case scenario?

It is also important to be explicit about the scope and the types of problems that your organization does not want to solve. This will help to add focus to the strategy and prevent later scope-creep that will take resources away from achieving the vision.

### Example

AcmeMealCo wants to make preparing meals easier for their customers. The long-term vision is that there will be a fully automated system to prepare and serve meals that will delight and nourish the customer. The system knows the customer's calendar, food preferences, and dietary needs, and provides a highly personalized experience.

This is the long-term vision for the company, but it is a long way off. Right now, AcmeMealCo is a small start-up company that is just starting to build out its products. AcmeMealCo plans to release a series of data products (as features in their products) that will assist customers in their own meal preparation and gradually improve the amount of automation over time. In the very near-term, even a simple meal-planning phone app would be very valuable to their customers.

One thing that is out-of-scope for AcmeMealCo is acquiring groceries for the customer. They will eventually include tools for preparing a grocery list and offering third-party integrations with grocery delivery services. But, incorporating anything that happens outside of the customer's home adds too much complexity. We will assume that the customer has a well-stocked kitchen and pantry.

AcmeMealCo will also assume that the entire household can be treated like a single individual in terms of preferences, dietary needs. Everyone in the house eats the same food, at the same time, and we only need to scale up the amounts depending on the number of people. 


## 2. Identify all of the decisions
Identify every type of decision that has to be made within the scope you identified in step 1. Everything that could possibly be helped by any type of data product. They may be decisions that a user has to make, which could be helped by, or automated by some kind of data product.

It may help to proceed through the workflow of a user, or of a colleague within the business to understand all the little decisions that go into completing the workflow.

### Example

AcmeMealCo arranges some sessions with their customers where they shadow them as they prepare meals to see all the decisions that they have to make to create a meal. The customers must decide:
* What kind of food they want to eat
* Which recipe to use
* Where to find suitable bowls, knives, mixers, and other implements
* Where to find each ingredient 
* How to properly prepare each ingredient
	* Washing
	* Peeling
	* Chopping
	* Measuring
* etc., etc., etc.

## 3. Organize the decisions

Try to cluster the decisions according to things that are supporting similar goals of the decider, and which may be supported by similar analytic models. We want to make a list of capabilities that we will need to develop.

### Example

AcmeMealCo identifies several categories where data products could support a customer with their meal preparation. They make a list of capabilities they may wish to develop in the future:
* How to decide what to make
* How to identify and find items around the kitchen
* How to manipulate specific objects within the space of the kitchen
* How to prepare ingredients for use in recipes
* How to cook the prepared and collected ingredients using different cooking methods
* etc.

## 4. Identify Needed Data sources

What data sources will (probably) be needed to create data products that will help with each capability listed in step 3?

It is okay if you don't know how to obtain all of the data sources. If they are potentially interesting, it is useful to include them. If you do have ideas about how to obtain the data, write those down. 

Some ways that organizations obtain data are:
* Through user interactions or telemetry as the product is used
	* Data network effects / Flywheel / Feedback loop
		* more users -> more data -> better data products -> better product -> more users -> more data -> etc.
* Purchasing data from data brokers or other organizations
* Downloading public data sets such as from government organizations or academic groups
* Manual data labelling
	* In-house by asking employees to label data
	* Crowd sourcing through websites like Amazon Mechanical Turk or Crowdflower
* User-in-the-loop
	* Ask users to input their decisions for data products that can't be built yet or that benefit from richer data sets
* Create a useful side-product to collect data
	* For example, Clarifai's Forevery app collects photos and manual tagging corrections for training computer vision models
* Collaborations (or acquisitions) with organizations that already have the data you need



### Example

Starting with the 'How to decide what to make' category, the data scientists at AcmeMealCo brainstorm what data sources are needed to help make decisions in that category:
* List of meals the customer has had with their rating for each meal
* List of meals and ratings for many other customers (e.g. for collaborative filtering recommender)
* List of ingredients available in the kitchen
* List of cooking tools available in the kitchen
* Calendar data (e.g. to understand how much time there is to prepare the meal, and how much time their is to eat the meal)
* etc. 

The data scientists repeat this process for all of the categories they identified in Step 3.

## 5. Build a Dependency graph
We want to be able to easily visualize which data sources are needed to build which data products. In some cases, a data product would benefit from using the outputs of a previous data product (e.g. 'cascading' two machine learning models). This possibility can be captured as an edge on the dependency graph. It might be helpful to use different types of edges to capture 'hard' dependencies (i.e. data that you must have), versus 'soft' dependencies (i.e. data that is not strictly necessary but that would improve the data product).

In this step, we assume that there is some kind of future data product to solve every type of decision that we identified in step 2, even if we can't imagine how it works yet.

The dependency graph includes
* All analytics covering the entire field, everything that you might want to build
* All data sources that the analytics could depend on, whether they are already obtained, could be obtained, or may not be possible to obtain
* Edges indicate dependencies. An analytic could depend on other analytics or datasets. Normally datasets will not depend on analytics, but this could be the case in some rare instances

### Example

Using graphviz software and a dot file, the data scientists at AcmeMealCo are able to make a visualization of the dependencies between all of the data products and data sources that they identified in the previous steps. Some data sources are needed for quite a few data products, while other data sources are only needed for a single data product. Some of the data products depend on other data products, such as a weekly meal planner data product that would benefit from the output of an individual meal recommender data product.

Some of the data products on the graph are incredibly abstract and far-off. In particular, everything culminates in an ultimate data product called "fully automated meal preparation and serving robot". It's okay that we don't know how to build that yet. The dependency graph helps us to understand the simpler data products that will go into the more complex ones. When it comes time for the data scientists to tackle the more complex data products, time can be taken to break down the very abstract form into something they can build. It is better to keep things that you don't know how to do more abstract for now.

## 6. Prioritize Analytic Models and Data Sources

For each data source, we need to understand:
* How hard is it to get data suitable to support the dependent analytics?
	* How hard is it to get data that is clean enough?
	* How hard is it to get data that is accurate enough?
	* How hard is it to get data that has the correct granularity?
* How much value is added to the business if the data is obtained?
	* Does it enable high-value data products to be created?
	* Does it enable many different data products to be created?

For each data product we need to understand:
* How feasible is it to implement, assuming the dependent data and data products are available?
	* Is it a commodity that can be purchased from third-parties?
	* Is it a simple application of open-source libraries with public data sources?
	* Have other companies or academics created something similar? If not, how much basic research is expected before a clear path to building the data product will be discovered?
* How much value is added to the business if the data product is created?
	* Can the data product be monetized on its own as a separate product or premium feature?
	* Does it add considerable added value to an existing product?
	* Is it 'table stakes' for your product to compete in the market?
	* Is it mostly an enabling technology that will be used to create more valuable data products in the future?

Note that it can be difficult to disentangle the business value of a data product and the data source(s) that it depends on. Similarly, it can be difficult to disentangle the implementation feasibility of a data product and the difficulty of obtaining a suitable data source used to develop it. For now, try your best to think of these separately. In reality, everything is interconnected and interdependent. Don't get too tangled up in details. We are making a simplified model to guide our thinking. 

It may help to give feasibility and value measures a numerical value, such as a Likert scale rating. This way, we can make sorted lists or visualizations that will help us to understand the relative priorities. We can also use numerical values as a key to add colour to our dependency graph so it is easier to visualize the strategic priority of different nodes in the graph.

### Example

After going through their prioritization exercise, the data scientists at AcmeMealCo identify that getting meal ratings from their customers is of very high business value and is something they can easily collect in an early version of their meal-planning phone app. So, they decide that that is the highest priority dataset to collect first.

Because of the prioritization exercise, they realize that choosing meals that will delight the customer is a key technology that will enable everything else. They don't have the data that they need for a proper recommendation system yet, but they decide that a good approach is to build rules-based tool where the user can input a selection of ingredients and then choose from a selection of recipes. This tool will be valued by the customer immediately, but it can also grow into a more sophisticated recommender over time. As a bonus, it will help collect data about what ingredients the customer has in their kitchen, as well as what their food preferences are.

## 7. Ethics and Privacy

Sometimes the ethical implications of building technology are not clear from the outset. But, it is best to start thinking about what can go wrong as early in the process as possible. This will set the tone for ethical thinking from your team throughout all phases of research and development.

For each data source, ask yourself what the privacy implications are. Can the data be used to identify specific individuals? Does the data reveal things about people that they may want to keep private? What kind of consent should be obtained when collecting the data? What could the consequences be to individuals if your company experienced a data breach after collecting all of this information?

For each data product, ask yourself who the data product could hurt. Are the decisions that the data product is making or helping with impactful someone's life? What happens to that person if the decision is incorrect? What steps should be taken to ensure that decision making is fair across different racial groups, or genders, for example?

### Example

The data scientists at AcmeMealCo decide that they will need to collect data that is privacy sensitive. In addition to the customer's billing information, they may also need to store and use the customer's home address to inter-operate with third-party grocery delivery services. Additionally, customers would not want their exact eating habits or the content and layout of their kitchen getting released or sold to advertisers or data brokers.

There are also ethical considerations when recommending meals. Preparing a meal that contains an allergen could lead to serious medical consequences. Also, it would be offensive to some users if meal recommendations were strongly influenced by racial stereotypes rather than the customers' actual preferences.

## 8. Communicate and Iterate

It is not good enough to just understand the data science strategy yourself. The most important step is to communicate it. 

Data science often requires buy-in from the entire organization. Sometimes, considerable change is needed from the organization to enable a new data science strategy. You will have to work with other leaders throughout the organization to build cross-organizational support for the data science strategy.

The product team needs to design products that will make use of the data products, and that will collect data that high-priority, future data products depend on. The engineering team needs to understand how the data is going to be used so that they can create good data models, data storage, and data pipelines to support the data scientists. The data scientists who work on specific data products or capabilities need to understand how their work fits into the bigger picture, and what future capabilities will depend on the work they are doing today. The company leaders need to help orchestrate all of the cooperation required from these different groups within their organization and advocate for its importance.

Start by making a data science strategy document. Keep it short and focus only on the most important points. Link-out to more detailed information or use appendices to avoid distracting from having a concise document that can be understood quickly. Put the data science strategy document where it can be easily found by everyone in the organization.

Ask the senior leaders and other stakeholders in the company for feedback. When everyone is happy with the document, ask the senior leaders to give the document an official status within the organization.

Next, give a talk to as broad an audience as possible to explain the data science strategy to everyone. Make it clear to each group in attendance how to use the Data Science Strategy document to help guide their decisions within their own domain. 

Every time you advocate for data science outside the data science team, it's an opportunity to remind your colleagues about the company's official data science strategy and how their work can support that strategy. If you have conflict with colleagues over which projects should be prioritized, try to steer to conversation toward the strategy document and whether they agree or disagree with the assumptions made in developing it. Whatever the resolution to the conflict ends up being, working through the conflict should help to strengthen and reinforce the strategy.

Constantly improve and update the Data Science Strategy Document as things develop within the organization. Notify your colleagues of any major changes or shifts in strategy.

## Conclusion

Going through the data strategy recipe has not only helped AcmeMealCo break down their vision into a series of data products and data sources. It has also helped them prioritize so they know what data sources to collect first and what data products to build first. They also have a clear picture of how the work they are doing today fits into big picture of their vision.
