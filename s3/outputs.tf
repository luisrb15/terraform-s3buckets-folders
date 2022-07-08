output "s3_bucket_name_data" {
  value = aws_s3_bucket.data_bucket.id
}

output "s3_bucket_name_saved_queries" {
  value = aws_s3_bucket.saved_queries_bucket.id
}

output "s3_bucket_region" {
    value = aws_s3_bucket.data_bucket.region
}

output "name_data_folder" {
    value = aws_s3_bucket_object.data_folder.key
}
  
output "name_saved_queries_folder" {
    value = aws_s3_bucket_object.saved_queries_folder.key
}
  

