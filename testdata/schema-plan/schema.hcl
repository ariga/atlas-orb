variable "comment" {
  type = string
}

table "t1" {
  comment = var.comment
  schema = schema.public
  column "c1" {
    type = int
  }
  column "c2" {
    type = int
  }
}

schema "public" {}