select count(*) as total_rows,
count (distinct complaint_number) as unique_complaints,
count (*) - count(distinct complaint_number) as duplicate_rows,
cast ((count(*) - count(distinct complaint_number)) * 100.0
/ count(*) as decimal (4,2)) as duplicate_percentage
from dbo.insurance_complaints