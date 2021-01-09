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
    use "exec" {
      command = ["docker", "run", "-d" , "-p" , "80:80", "{{.Input.DockerImageFull}}"]
    }
	}
}
