{{ config(
    pre_hook="insert into raw.shop.run_logs (model,action,timestamp) values('customers','start',current_timestamp())",
    post_hook="insert into raw.shop.run_logs (model,action,timestamp) values('customers','end',current_timestamp())"
) }}

select * from {{ ref('stg_customers')}}