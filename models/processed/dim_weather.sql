with
    bengaluru as (select * from {{ ref("bengaluru_v") }}),
    bombay as (select * from {{ ref("bombay_v") }}),
    delhi as (select * from {{ ref("delhi_v") }}),
    hyderabad as (select * from {{ ref("hyderabad_v") }}),
    jaipur as (select * from {{ ref("jaipur_v") }}),
    kanpur as (select * from {{ ref("kanpur_v") }}),
    nagpur as (select * from {{ ref("nagpur_v") }}),
    pune as (select * from {{ ref("pune_v") }}),

    final as (
        select *
        from bengaluru
        union all
        select *
        from bombay
        union all
        select *
        from delhi
        union all
        select *
        from hyderabad
        union all
        select *
        from jaipur
        union all
        select *
        from kanpur
        union all
        select *
        from nagpur
        union all
        select *
        from pune
    )

select distinct *
from final
order by visibility asc, date_time desc, city asc
