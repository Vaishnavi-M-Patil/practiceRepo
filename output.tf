output "aws_instance_public_IP" {
    value = aws_instance.ec2Instance.public_ip
}

output "aws_s3_bucket_name" {
    value = aws_s3_bucket.buckets3.bucket
}