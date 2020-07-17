```
docker build -t r567tw/hahow .
docker build  -t r567tw/hahow --build-arg name="jimmy fang" .
docker run -p 8080:80 -d r567tw/hahow
```