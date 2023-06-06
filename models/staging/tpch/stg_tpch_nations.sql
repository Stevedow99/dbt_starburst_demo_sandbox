with source as (

    select * from {{ source('tpch', 'nation') }}

),

renamed as (

    select
    
        nationkey as natiokey,
        name as name,
        regionkey as regiokey,
        comment as comment

    from source

)

select * from renamed