Welcome to your new dbt project!

### Using the starter project

Try running the following commands:
- dbt run
- dbt test


### Resources:
- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [chat](https://community.getdbt.com/) on Slack for live discussions and support
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices


### Dagster Orchestration

> pip install -r requirements.txt

Create project

> dagster-dbt project scaffold --project-name dbt_dagster_project --dbt-project-dir=dbtlearn


```
cd dbt_dagster_project
setx DAGSTER_DBT_PARSE_PROJECT_ON_LOAD 1
dagster dev
```