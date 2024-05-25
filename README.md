# Todolist 2 Layer FE 
[![pipeline status](https://gitlab.com/eledevo/todolist-2-layer-fe/badges/develop/pipeline.svg)](https://gitlab.com/eledevo/todolist-2-layer-fe/-/commits/develop)

### Cách kết nối

- Chạy trên port `6020` của server Eledevo
  - Connect in local: `192.168.1.5:6020`
  - Connect from internet: `<Public IP or Domain>:6020`

### Node

- Node version `18.18.0`

### Package manager

- `Yarn`

### For DevOps

```bash
cd /var/lib/jenkins/workspace/

cd /Todolist 2 Layer FE/dist

docker run --name todolist-2-layer-fe-container -d -p 6020:80 -v "$(pwd):/usr/share/nginx/html" todolist-2-layer-fe:1.0.0
```
