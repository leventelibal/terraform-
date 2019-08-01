terraform {
    backend"s3" {
        dynamodv_table = "dev_state_lock"
        bucket = "terraform-april 2019-levent"
        region = "us-east-1"
        key = " dev.tfstate "
    }
}