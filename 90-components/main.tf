module "component" {
    for_each = var.components
    source = "git::https://github.com/Sreekanthp001/terraform-aws-roboshop01.git?ref=main"
    component = each.key
    rule_priority = each.value.rule_priority
}