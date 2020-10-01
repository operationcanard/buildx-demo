variable HOME {}
group default {
  targets = [
    "caching",
    "concurrency",
    "concurrency_multiarch",
    "mounting",
    "secrets",
  ]
}

target caching {
  context = "./caching"
  tags = ["caching:latest"]
}

target concurrency {
  context = "./concurrency_multiarch"
  tags = ["concurrency:latest"]
}

target concurrency_multiarch {
  context = "./concurrency_multiarch"
  platforms = ["linux/amd64", "linux/arm64"]
  tags = ["concurrency_multiarch:latest"]
}


target mounting {
  context = "./mounting"
  tags = ["mounting:latest"]
}


target secrets {
  context = "./secrets"
  tags = ["secrets:latest"]
  secret = ["id=id_rsa,src=${HOME}/.ssh/id_rsa"]
}




