import redis

redis_host = "localhost"
redis_port = 6379
redis_password = ""

def hello_redis():
	try:
		#create the connection
		r = redis.StrictRedis(host=redis_host, port=redis_port, 
		password=redis_password, db=0, decode_responses=True)
		
		#post a key-value message
		r.set("msg:hello", "Hello REDIS!!")
	
		#get the key-value message
		msg = r.get("msg:hello")
		print(msg)
		#simple session data
		r.set("session_id:1234", "... json file 1 ...")
		r.set("session_id:2345", "... json file 2 ...")
		r.set("session_id:3456", "... json file 3 ...")
		msg = r.get("session_id:2345")
		print(msg)

		#mset
		r.mset({"id": "G00000123", "fname": "Susan", "lname": "Smith", "gpa": "4.0"})
		msg = r.get("fname")
		print(msg)

		#lists
		r.lpush("active_users2", "smithj", "brownt", "espinosae")
	
		#r.lpush("active_users2", "smithj brownt espinosae")
		r.rpush("active_users2", "zekem")
		msg = r.lrange("active_users2", 0, -1)
		print(msg)

		#hmset
		r.hmset("tweet:3948173705", {'user_id': 'robert_brown_iv', 'content': "Four score and seven..."})
		msg = r.hgetall("tweet:3948173705")
		print(msg)

		#hset
		r.hset("user1234","profile1","jonathan's account")
		r.hset("user1234","avatar1","shark image")
		r.hset("user1234","profile2","wife's account")
		r.hset("user1234","avatar2","owl image")
		r.hset("user1234","profile3","kid's account")
		r.hset("user1234","avatar3","penguin image")
		msg = r.hget("user1234", "profile1")
		msg2 = r.hget("user1234", "avatar1")
		print(msg + " - " + msg2)
	except Exception as e:
		print(e)
if __name__ == '__main__':
	hello_redis()
