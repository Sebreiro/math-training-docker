# math-training-docker #
A docker image of [MathTraining_AspNetCore](https://github.com/Sebreiro/MathTraining_AspNetCore)

Command line options
---

`urls` - URLs the host should listen on. example: `urls=http://*:5010`  
`PostgresConnectionString` - Connection string to PostgreSQL database. example: `PostgresConnectionString=User ID=User;Password=Password;Server=localhost;Port=5432;Database=mathtrainingdb;Integrated Security=true;Pooling=true;`  

Note
---
When math-training container starts, it's copy default configs (if not exists) to `/mathtraining/Config`

Logs located in `/mathtraining/Log`

 docker-compose.yml 
---
```
services:
  mathtraining:
    image: sebreiro/math-training-docker
    container_name: mathtraining
    volumes: 
      - /home/mathtraining/Config:/publish/Config
    environment:
      - "PostgresConnectionString=User ID=User;Password=Password;Server=db;Port=5432;Database=mathtrainingdb;Integrated Security=true;Pooling=true;"
      - "urls=http://*:5010"
    ports:
      - 50010:5010   
```
