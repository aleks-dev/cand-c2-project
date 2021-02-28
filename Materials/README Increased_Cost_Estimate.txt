Rationale:

NB: For performace purposes, I assume around 2000 more USDs (1000 more than the cost from the "Initial_Cost_Estimate.csv" file) on a monthly basis for CloudFront costs.
This means double the amount  of "data transfer out" than the "initial cost estimate" case - 20 TB/month via HTTPS and "Average Object Size" twice bigger (200 KB) with 100% Edge location traffic distribution in USA.
This will allow the users to upload and download twice the data amount of media (than the "initial" case) in a much faster way i.e. the perceived performace of the application will noticeably increase.
* This CloudFront calculation was based on the (old) calculator (https://calculator.s3.amazonaws.com/index.html)


For performace and redundancy purposes, I raised the number of Webservers from 6 to 10, changed their EC2 storage type from "General SSD" to "Provisioned IOPS SSD" and also increased by factor of 20x the Storage amount on each of these 10 instances - compared to the "Initial cost estimates".
This should contribute to the "client facing" performance of the application, at the same time matching the increased Cloudfront throughput at the "edge".
Also I doubled the number of App Load Balancers (to 6) for these Webservers, which should properly cover their total of 10.

Again for performace and redundancy purposes, I raised the number of App servers from 4 to 6, changed their EC2 storage type from "General SSD" to "Provisioned IOPS SSD"
Also I increased the number of App Load Balancers by 1 (i.e. in total 4) for these App servers, which should properly cover their total of 6.

For redundancy purposes, I doubled the number of NAT Gateways (from 3 in the "initial" case to 6) as well as doubled the amount of data processed per NAT Gateway (from 15 GB/hour to 30).

Finally both for performace and redundancy purposes, I changed the instance type of the same Aurora MySQL RDS DB by factor of 2x (i.e. from db.r3.xlarge to db.r3.2xlarge) and doubled the Nodes (from 2 to 4).
This, in combination with the increased and improved App servers, should solidify and improve the backend processing power of the application "on par" with the strengthened frontend-facing part of this social media app.