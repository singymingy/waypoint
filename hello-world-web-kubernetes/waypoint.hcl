project = "hello-web"
app "web-app" {
  build {
    use "docker" {}
    registry {
        use "docker" {
            image =  "singymingy86/hello-apache"
            tag = "0.1"
        }
    }
  } 
  deploy {
    use "kubernetes" {
      probe_path = "/"
      service_port = 80
    }
	}
  release {
    use "kubernetes" {}
  }
}
