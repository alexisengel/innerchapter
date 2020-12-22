# Inner Chapter 
This readme will focus on the back-end of the project.  To learn more about the front-end, click [here](https://github.com/alexisengel/icjournel).

## Database and Website
While the front-end Wechat program gathers user data, there needs to be a space for Inner Chapter to create, organize, and analyze the data received.  I used Ruby on Rails and SQL in order to create a website and database that stores all of this information.  

<img src="https://github.com/alexisengel/innerchapter/blob/master/websitePics/home_page.png" alt="drawing" width="600"/>

## SQL Database Model and Breakdown
This is the overview of the model of the database.

<img src="https://github.com/alexisengel/innerchapter/blob/master/websitePics/database_model.png" alt="drawing" width="600"/>

## Tasks for Compensation
The main purpose of Inner Chapter's mini program is to accumulate data for marketing research purposes. For example, say brand X wants Inner Chapter to give them insight on product Y. Inner Chapter then will send users tasks with prompts for submissions of blog posts, pictures, etc. to be used for their research. This is how the data is organized on the website:

### Brands
The top level of the data organization is brand. Inner Chapter is hired by a specific company/ brand to do a marketing research project. So there are multiple brands and each brand has multiple projects.

<p float="left">
  <img src="https://github.com/alexisengel/innerchapter/blob/master/websitePics/brands1.png" alt="drawing" width="450"/>
  <img src="https://github.com/alexisengel/innerchapter/blob/master/websitePics/brands2.png" alt="drawing" width="450"/>
</p>

### Projects
Projects are the next level of data organization. A project belongs to a brand and a project has multiple tasks to be completed by the user. A project also has segments, which will be explained later.

<p float="left">
  <img src="https://github.com/alexisengel/innerchapter/blob/master/websitePics/projects2.png" alt="drawing" width="450"/>
  <img src="https://github.com/alexisengel/innerchapter/blob/master/websitePics/projects3.png" alt="drawing" width="450"/>
</p>

<img src="https://github.com/alexisengel/innerchapter/blob/master/websitePics/projects1.png" alt="drawing" width="500"/>

### Tasks
A task belongs to a project. These tasks are sent to users according to the tags assigned to the task. When a user sends in a task submission, the task then is assigned to a user (and a user to a task) for organizational purposes.

<p float="left">
  <img src="https://github.com/alexisengel/innerchapter/blob/master/websitePics/tasks3.png" alt="drawing" width="450"/>
  <img src="https://github.com/alexisengel/innerchapter/blob/master/websitePics/tasks4.png" alt="drawing" width="450"/>
</p>

<p float="left">
  <img src="https://github.com/alexisengel/innerchapter/blob/master/websitePics/tasks1.png" alt="drawing" width="450"/>
  <img src="https://github.com/alexisengel/innerchapter/blob/master/websitePics/tasks2.png" alt="drawing" width="450"/>
</p>

### Datasets
A dataset belongs to a user and a task. A new dataset is created each time a user completes a task. The content of the dataset is a blog post, picture, or video. 

<p float="left">
  <img src="https://github.com/alexisengel/innerchapter/blob/master/websitePics/datasets1.png" alt="drawing" width="600"/>
  <img src="https://github.com/alexisengel/innerchapter/blob/master/websitePics/datasets2.png" alt="drawing" width="300"/>
</p>

## Segments
A large part of marketing research is defining adequate and efficient segments of the population to conduct the research on. For example, if the product is basketball shoes, non-active people above 70 shouldn't be in the research pool (usually).  It is important to identify a person's demographic so the tasks they receive are applicable to their lives. This is done through surveys where users are given tags depending on their answers. This is organized in the following way:  

### Surveys
Users also fill out surveys. The purpose of these surveys are to attach tags to users. A survey belongs to a project.

<img src="https://github.com/alexisengel/innerchapter/blob/master/websitePics/surveys.png" alt="drawing" width="500"/>

### Questions and Answers
A survey has multiple questions. Each question has multiple answers, and each answer belongs to a tag. A user will choose and answer and then will be assigned that specific tag.

<p float="left">
  <img src="https://github.com/alexisengel/innerchapter/blob/master/websitePics/questions1.png" alt="drawing" width="450"/>
  <img src="https://github.com/alexisengel/innerchapter/blob/master/websitePics/questions2.png" alt="drawing" width="450"/>
</p>

<img src="https://github.com/alexisengel/innerchapter/blob/master/websitePics/answers.png" alt="drawing" width="500"/>

### Tags
Each tag belongs to an answer, and each tag has and belongs to users.  Tags also belong to segments.

<p float="left">
  <img src="https://github.com/alexisengel/innerchapter/blob/master/websitePics/tags1.png" alt="drawing" width="450"/>
  <img src="https://github.com/alexisengel/innerchapter/blob/master/websitePics/tags2.png" alt="drawing" width="450"/>
</p>

### Segments
Segments belong to a projects and each segment has many tags and users. When a new segment is created, it is given multiple tags. Then, all of the users that have all of the tags given are attached to the segment.

<p float="left">
  <img src="https://github.com/alexisengel/innerchapter/blob/master/websitePics/segments1.png" alt="drawing" width="450"/>
  <img src="https://github.com/alexisengel/innerchapter/blob/master/websitePics/segments2.png" alt="drawing" width="450"/>
</p>

### Users
Users are created when a person logs into the mini program for the first time. The majority of the columns are created by the authentification systems I added. Other columns are received from Wechat's own authentification. Everything else is generated from the user's responses to surveys and completion of tasks. Below are screenshots of the users' attributes but the authentification information is left out.

<p float="left">
  <img src="https://github.com/alexisengel/innerchapter/blob/master/websitePics/users1.png" alt="drawing" width="300"/>
  <img src="https://github.com/alexisengel/innerchapter/blob/master/websitePics/users2.png" alt="drawing" width="300"/>
  <img src="https://github.com/alexisengel/innerchapter/blob/master/websitePics/users3.png" alt="drawing" width="300"/>
</p>

## Conclusion
This website is hosted through Heroku and is accessed via http requests by the ICJournal Wechat Mini Program. From this site, the mini program is able to populate the user's tasks, surveys, and user information. Completion of surveys adds tags and segments to users on the site and completion of tasks creates the datasets with their contents. For a more detailed look at the Wechat Mini Program I also created, check out this link: [IC Journal](https://github.com/alexisengel/icjournel)
