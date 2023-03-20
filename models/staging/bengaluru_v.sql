select
    'Bengaluru' as city,
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

from {{ source("raw", "bengaluru") }}
where visibility <= 5
order by date_time desc
