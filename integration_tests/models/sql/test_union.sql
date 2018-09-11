
with unioned as (

    select * from {{ dbt_utils.union_tables([
        ref('data_union_table_1'),
        ref('data_union_table_2')]
    ) }}

)

select
    id,
    name,
    favorite_color

from unioned
