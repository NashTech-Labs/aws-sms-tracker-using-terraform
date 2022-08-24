module "sns-platform-test-notifications" {
 source = "./modules/sns-platform"
 ios_name = var.sns_platform_ios_name
 android_name = var.sns_platform_android_name
 sns_platform_apns_certificate_key = var.SNS_PLATFORM_UKG_PRO_APNS_CERTIFICATE
 sns_platform_apns_private_key = var.SNS_PLATFORM_UKG_PRO_APNS_PRIVATE_KEY
 sns_platform_gcm_key = var.SNS_PLATFORM_UKG_PRO_GCM_SERVER_KEY
}
