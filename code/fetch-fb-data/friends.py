import facebook
import os

token = 'CAACEdEose0cBAERgrzh7fZAdnvg8RgzGI86WKupTo9CWGHmEihSseqFl70km1Prp835ngZALuzS4zgUVl5yYzFjzF6xtGZBwaK10ZB4f7tlC5BzZAzFhleCu35QuJnxzTv009wjTHZCCB2i4YPLZATmVzTab8GCcZBt8cqhTqqRdh6DWqZCk3Um1ECXYZC9ZCKBURzBWUOVufvSJwZDZD'

graph = facebook.GraphAPI(token)
profile = graph.get_object("me")
friends = graph.get_connections("me", "friends")

friend_list = [friend['id'] for friend in friends['data']]

os.mkdir('dataset')


f = open('dataset/Freunde.txt', 'w')
for k in friend_list:
	f.write('%s' % str(k))
	f.write('\n')


for i in range(len(friend_list)):

	testfriend = str(friend_list[i])
	f = open('dataset/%s.txt' % testfriend, 'w')
	newprof = graph.get_object(testfriend)
	mutualfriends = graph.get_connections(testfriend, "mutualfriends")
	mutualfriends_list = [friend['id'] for friend in mutualfriends['data']]
	print "id:", testfriend, "\n"
	for j in mutualfriends_list:
		f.write('%s' % str(j))
		f.write('\n')


