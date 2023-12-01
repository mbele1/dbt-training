select
  c.birth_date
from {{ ref('stg_client') }} c
where extract(year from AGE(NOW()::DATE, birth_date::DATE))<5
