import facebook
import os

token = ''

graph = facebook.GraphAPI(token)
profile = graph.get_object("me")
friends = graph.get_connections("me", "friends")

friend_list = [friend['id'] for friend in friends['data']]

os.mkdir('dataset')


f = open('dataset/Freunde', 'w')
for k in friend_list:
	f.write('%s' % str(k))
	f.write('\n')

counter = 1

for i in range(len(friend_list)):

	print counter
	counter=counter+1

	testfriend = str(friend_list[i])
	f = open('dataset/ %s' % testfriend, 'w')
	newprof = graph.get_object(testfriend)
	mutualfriends = graph.get_connections(testfriend, "mutualfriends")
	mutualfriends_list = [friend['id'] for friend in mutualfriends['data']]
	print "id:", testfriend, "\n"
	for j in mutualfriends_list:
		f.write('%s' % str(j))
		f.write('\n')


