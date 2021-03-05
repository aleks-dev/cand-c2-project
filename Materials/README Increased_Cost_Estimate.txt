Rationale:

NB: For performace purposes, I assume around 3000 USDs (3 times more than the cost from the "Initial_Cost_Estimate.csv" file) on a monthly basis for CloudFront costs.
This means triple the amount  of "data transfer out" than the "initial cost estimate" case - 30 TB/month via HTTPS and "Average Object Size" twice bigger (200 KB) with 100% Edge location traffic distribution in USA.
This will allow the users to upload and download thrice the data amount of media (than the "initial" case) in a much faster way i.e. the perceived performace of the application will noticeably increase.
* This CloudFront calculation was based on the (old) calculator (https://calculator.s3.amazonaws.com/index.html)


For performace and redundancy purposes, I raised the number of Webservers from 4 to 6, changed their EC2 storage type from "General SSD" to "Provisioned IOPS SSD" (compared to the "Initial cost estimates").
This should contribute to the "client facing" performance of the application, at the same time matching the increased Cloudfront throughput at the "edge".
Also I tripled the number of App Load Balancers (to 3) for these Webservers, which should properly cover their total of 6.

As of the Elasticache, I doubled the number of Nodes to 4, and significantly increased their instance type to r4.2xlarge. 
This should make the Webservers much more performant, and significantly relax the overall load on the rest of the app's backend.


Again for performace and redundancy purposes, I doubled the number of App servers from 2 to 4, changed their EC2 storage type from "General SSD" to "Provisioned IOPS SSD".
Also I doubled the number of App Load Balancers (i.e. in total 2) for these App servers, which should properly cover their total of 4.

For redundancy purposes, I doubled the number of NAT Gateways (from 2 in the "initial" case to 4) as well as doubled the amount of data processed per NAT Gateway (from 15 GB/hour to 30).

Compared to the "Initial cost estimates", both for performace and redundancy purposes, I changed the instance type of the same Aurora MySQL RDS DB by factor of "x" (i.e. from db.r3.large to db.r3.xlarge) .
This, in combination with the increased and improved App servers, should solidify and improve the backend processing and multi-dimensioning of the data.


Finally I doubled the data storage of DynamoDB to 50 GB, doubled the Average item size (all attributes) to 200 KB , and also doubled the "Baseline" and "Peak" rates of both the reads and writes (80 with 100 Writes, and 160 with 200 Reads).
This should significantly improve the performance of the User sessions and allow for a much bigger and faster scalability both in the Read and Write session requests.