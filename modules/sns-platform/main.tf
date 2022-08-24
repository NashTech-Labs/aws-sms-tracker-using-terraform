resource "aws_sns_platform_application" "apns_application" {
 name                = var.ios_name
 platform            = "APNS"
 platform_credential = var.sns_platform_apns_private_key
 platform_principal  = var.sns_platform_apns_certificate_key
}

resource "aws_sns_platform_application" "gcm_application" {
 name                = var.android_name
 platform            = "GCM"
 platform_credential = var.sns_platform_gcm_key
}
