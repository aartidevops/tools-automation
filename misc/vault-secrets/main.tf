module "create-secrets" {
  for_each = var.secrets
  source   = "./create-secrets"
  kv_path  = each.key
  secrets  = each.value
}




variable "secrets" {
  default = {
    # kubernetes = {
    #   grafana = {
    #     grafana_auth = "admin:prom-operator"
    #   }
    # }
    infra = {
      ssh = {
        admin_username = "Aarti",
        admin_password = "Aarti@431721"
      }
    }
    roboshop-dev = {
      frontend = {
        catalogue_endpoint = "http://catalogue:8080"
        cart_endpoint      = "http://cart-dev.learntechnology.shop:8080"
        user_endpoint      = "http://user-dev.learntechnology.shop:8080"
        payment_endpoint   = "http://payment-dev.learntechnology.shop:8080"
        shipping_endpoint  = "http://shipping-dev.learntechnology.shop:8080"
        CATALOGUE_HOST     = "catalogue"
        CATALOGUE_PORT     = "8080"
        USER_HOST          = "user"
        USER_PORT          = "8080"
        CART_HOST          = "cart"
        CART_PORT          = "8080"
        SHIPPING_HOST      = "shipping"
        SHIPPING_PORT      = "8080"
        PAYMENT_HOST       = "payment"
        PAYMENT_PORT       = "8080"

      }
      catalogue = {
        MONGO       = "true"
        MONGO_URL   = "mongodb://mongodb-dev.learntechnology.shop:27017/catalogue"
        DB_TYPE     = "mongo"
        APP_GIT_URL = "https://github.com/roboshop-devops-project-v3/catalogue"
        DB_HOST     = "mongodb-dev.learntechnology.shop"
        SCHEMA_FILE = "db/master-data.js"
      }
      user = {
        MONGO     = "true"
        REDIS_URL = "redis://redis-dev.learntechnology.shop:6379"
        MONGO_URL = "mongodb://mongodb-dev.learntechnology.shop:27017/users"
      }
      cart = {
        REDIS_HOST     = "redis-dev.learntechnology.shop"
        CATALOGUE_HOST = "catalogue"
        CATALOGUE_PORT = "8080"
      }
      shipping = {
        CART_ENDPOINT = "cart:8080"
        DB_HOST       = "mysql-dev.learntechnology.shop"
        DB_TYPE       = "mysql"
        APP_GIT_URL   = "https://github.com/roboshop-devops-project-v3/shipping"
        DB_HOST       = "mysql-dev.learntechnology.shop"
        DB_USER       = "root"
        DB_PASS       = "RoboShop@1"
      }
      payment = {
        CART_HOST = "cart"
        CART_PORT = "8080"
        USER_HOST = "user"
        USER_PORT = "8080"
        AMQP_HOST = "rabbitmq-dev.learntechnology.shop"
        AMQP_USER = "roboshop"
        AMQP_PASS = "roboshop123"
      }
      mysql = {
        MYSQL_ROOT_PASSWORD = "RoboShop@1"
      }
      rabbitmq = {
        AMQP_USER = "roboshop"
        AMQP_PASS = "roboshop123"
      }
    }
  }
}