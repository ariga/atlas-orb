test "migrate" "expected_success" {
  migrate {
    to = "20240427054520"
  }
  exec {
    sql = "select * from t1"
    output = ""
  }
}

test "migrate" "expected_failure" {
  migrate {
    to = "20240427054520"
  }
  exec {
    sql = "select * from t1"
    output = "0"
  }
}