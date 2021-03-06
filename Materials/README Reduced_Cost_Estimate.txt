Rationale:

NB: I assume around 390 USDs on a monthly basis for CloudFront costs (manually included in the estimation .csv file), for around 4 TB/month "data transfer out" via HTTPS and "Average Object Size" of 100 KB, based on the (old) calculator (https://calculator.s3.amazonaws.com/index.html)
This means I would reduce the frontend cached data "ingestion" via CloudFront by the end-users (decreased by 60% - from 10 TB per month down to 4 TB per month) which would halve the monthly CloudFront costs.
Compared to the "initial" case, this halving of the frontend CloudFront-cached data "ingestion" would be compensated via bigger compression / smaller sizing of the media content (images and videos) served to the end-users (i.e. a bit lower quality of media served).

I would also degrade the DB from Aurora MySQL to MySQL (same category though, db.r3.large), which would be the main "cost saver".
This would mean less performance and scalability on the DB backend.
Degrading the DB type would mean a bit less variety of (or less advanced) social-media real-time functionalities (which come from the "massaging" / multi-dimensioning of the original user data).
As of the DB scalability, this degrading should not be a big issue because the main part of the ingested data will be ending in S3 buckets like media files.
Additionaly, the smaller DB performance can be compensated by smarter use of the storage on the servers and some other mechanisms, like data optimization and compression-at-rest.

Compared to the "initial" case, I would halve (bring down to 50%) both the read and write "baseline" and "peak" rates of DynamoDB.
This shouldn't reflect too much on the overall user-sessions performance as it can be partly compensated by moving one part of that load to the Elasticache.

Finally I would reduce the number of the frontend webservers by 25% (from 4 down to 3).
This would decrease by 25% their redundancy, but wouldn't reflect too much on the overall performance as it can be partly compensated by the Elasticache and smarter Load Balancing.

Summarized - except for the "downgrading" of the RDS DB type, all other cost-optimizations are from the resources-redundancy nature. 
Considering the overall design with many different components, as well as their types / classes in this architecture, the social media application shouldn't suffer a lot from this lowered redundancy.
