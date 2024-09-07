kubectl expose deployment helloweb -n <dynamic namespace name> --name=<dynamic service name> --type=LoadBalancer --port 8080 --target-port 8080
