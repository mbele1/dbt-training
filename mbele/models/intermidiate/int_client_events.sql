select c.client_id,c.base_entity_id,c.birth_date
from {{ref('stg_client')}} c 
left join {{ref('stg_events')}} e on c.base_entity_id=e.base_entity_id