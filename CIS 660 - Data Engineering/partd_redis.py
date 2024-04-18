import redis

redis_host = "localhost"
redis_port = 6379
redis_password = ""

def redis_python():
    try:
        #create the connection
        r = redis.StrictRedis(host=redis_host, port=redis_port,password=redis_password, db=0, decode_responses=True)
        
        elements = []
        keys = []
        with open("./CRUD.txt", "r") as file:
            data = file.readlines()
            for d1 in data:
                d2 = d1.replace("\n", "")
                elements.append(d2.split(" "))
            # print(elements)
        
        for e in elements:
            if e[1] == "add":
                r.sadd(e[0], e[2])
                keys.append(e[0])
            elif e[1] == "delete":
                r.srem(e[0], e[2])
                keys.remove(e[0])
        
        unique_keys = set(keys)
        for key in unique_keys:
            print(f"{key}'s watchlist contains {r.smembers(key)}")
    except Exception as e:
        print(e)


if __name__ == "__main__":
    redis_python()