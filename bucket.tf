resource "aws_s3_bucket" "buckets3" {
    bucket = "bucketforb92025"
    region = "us-east-2"
    tags = {
        name = "terraBucket"
        env = "development"
    }
}