import facebook
import os

##Anynomized 

def outputanonym(graph, profile, friends, friend_list):
# Friendslist

	f = open('dataset/Freunde.txt', 'w')
	counter=0
	for k in friend_list:
		counter = counter+1
		f.write('%s' % str(counter))
		f.write('\n')


	#Mutualfriends and .csv-file for Gephi import

	g = open('dataset/gephi.csv', 'w')
	g.write('Source;Target\n')

	for i in range(len(friend_list)):

		testfriend = str(friend_list[i])
		f = open('dataset/%s.txt' %str(i), 'w')
		newprof = graph.get_object(testfriend)
		mutualfriends = graph.get_connections(testfriend, "mutualfriends")
		mutualfriends_list = [friend['id'] for friend in mutualfriends['data']]
		for k in range(len(mutualfriends_list)):
			for l in range(len(friend_list)):
				if (mutualfriends_list[k]==friend_list[l]):
					f.write('%s\n' %str(l))	
					g.write('%s;' %str(k))
					g.write('%s\n' %str(l))




## Not Anynomized

def outputnotanonym(graph, profile, friends, friend_list):

	f = open('dataset/Freunde.txt', 'w')
	for k in friend_list:
		f.write('%s' % str(k))
		f.write(';%s' % str(counter))
		f.write('\n')


	#Mutualfriends and .csv-file for Gephi import

	g = open('dataset/gephi.csv', 'w')
	g.write('Source;Target\n')

	for i in range(len(friend_list)):

		testfriend = str(friend_list[i])
		f = open('dataset/%s.txt' % testfriend, 'w')
		newprof = graph.get_object(testfriend)
		mutualfriends = graph.get_connections(testfriend, "mutualfriends")
		mutualfriends_list = [friend['id'] for friend in mutualfriends['data']]
		print "id:", testfriend, "\n"
		for j in mutualfriends_list:
			g.write('%s;' %str(i))			#Gephi
			g.wirte('%s\n' %str(j))			#Gephi
			f.write('%s' % str(j))
			f.write('\n')


token = raw_input('Enter your Access Token: ')

anonym = input('Do you want to anonymize your Data? Yes (1) or No (0)? ')

token = 'CAACEdEose0cBAALC8vZAccVh4eUnXZCy6oMhhL98I2cE8CFEkQEO1r83brNxSh2dQYTrZCMmDfTJtPpeMASmYnVW1FaT7OEG4t7vqmUKAj8K09Nir3vsrlPDmRlz9B3ZCeoGQ0bAM2k8csLoQkz7lpd9bgY4hlFZBxIvmDCZCQEv4YHBVbnxsv1U9bPEClyj22drm90fx3aAZDZD'

graph = facebook.GraphAPI(token)
profile = graph.get_object("me")
friends = graph.get_connections("me", "friends")

friend_list = [friend['id'] for friend in friends['data']]

os.mkdir('dataset')


if(anonym==1):
	outputanonym(graph, profile, friends, friend_list)
else:
	outputnotanonym(graph, profile, friends, friend_list)

