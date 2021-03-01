Rationale:

Compared to the "initial" case, I would reduce the backend data "digestion" (processing) for 20% by the Application servers (decreased by 1 i.e. from 5 to 4) and) their Load Balancers (decreased by 1 i.e. from 3 down to 2), 
as well as frontend cached data "ingestion" via CloudFront by the end-users (decreased by half, from 10 TB per month, to 5 TB per month) which would halve the monthly CloudFront costs.

Compared to the "initial" case, I would also degrade the DB from Aurora MySQL to MySQL (same category though, r3.xlarge), which would be the main "cost saver",
as well as reduce the number NAT Gateways - from 3 down to 2.

Halving the frontend cached data "ingestion" via CloudFront would be done via bigger compression / smaller sizing of the media content (images and videos) served to the end-users (i.e. a bit lower quality of media served).
Degrading the DB class + reducing the backend data "digestion" for 20% by the Application servers would mean a bit less variety (or less advanced) social-media app functionalities  which come from the processing / multi-dimensioning of the "raw user data".
This again can be almost unnoticeable for the end-users, similar to the degraded media quality.


NB: I assume around 1000 more USDs (on the top of the costs from the "Reduced_Cost_Estimate.csv" file) on a monthly basis for CloudFront costs, for around 10 TB/month "data transfer out" via HTTPS and "Average Object Size" of 100 KB, based on the (old) calculator (https://calculator.s3.amazonaws.com/index.html)