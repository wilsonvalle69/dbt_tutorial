Welcome to your new dbt project!

### Using the starter project

Try running the following commands:
- dbt run
- dbt run --profiles-dir .\\.dbt
- dbt test
- dbt compile
- dbt debug
- dbt debug --config-dir
- dbt -debug --profiles-dir .\\.dbt

Execute just one or multiple module 
```
$ dbt run --models employee
$ dbt run --models employee department
```

To clean created tables (materialized views)
```
$ dbt run --refresh-all
```

Run connected models
```
$ dbt run --models +department_employee
```

Run upstream models
```
$ dbt run --models department+
```

### Generate Documentation

```
$ dbt docs generate
```

Publish the docs
```
$dbt docs serve
```

Adding data
Add csv file to data folder and then execute 
```
$ dbt seed
```

### Resources:
- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [chat](http://slack.getdbt.com/) on Slack for live discussions and support
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices
