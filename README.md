# Hamburg dbt workshop

Welcome to your new dbt project! This repo is specific to the workshop `Hamburg dbt Workshop` rund and hosted by [dbt Labs](https://workshops.us1.dbt.com/workshop) 

### Running this projects

#### Step-by-step explanation
To get up and running with this project:

1. Clone this repository.
2. Change into the hamburg-dbt-project directory from the command line:
    ```sh
    cd hamburg-dbt-project
    ```
3. Install dbt in a virtual environment.
4. Ensure your [profile](https://docs.getdbt.com/docs/local/profiles.yml?version=2.0) is setup correctly from the command line:
    ```sh
    dbt --version
    dbt debug
    ```
5. Ensure you have the required source data available in your platform
    - [stripe](s3://dbt-tutorial-public/stripe_payments.csv)
    - [jaffle_shop](https://github.com/dbt-labs/jaffle_shop_duckdb/tree/duckdb/seeds)
6. Run the model, and test the output of the models using the [dbt build](https://docs.getdbt.com/reference/commands/build?version=2.0) command
    ```sh
    dbt build
    ```
7. Follow the workshop instructions to implement the content from `./example/`


### Resources:

- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [chat](http://slack.getdbt.com/) on Slack for live discussions and support
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices

### Maintenance

This project is provided as-is, without SLAs
