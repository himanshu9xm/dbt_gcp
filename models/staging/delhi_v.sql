select
    'Delhi' as city,
    date_time,
    maxtempc,
    mintempc,
    sunrise,
    sunset,
    humidity,
    tempc,
    visibility,
    winddirdegree,
    windspeedkmph

from {{ source("raw", "delhi") }}
where visibility <= 5
order by date_time desc
