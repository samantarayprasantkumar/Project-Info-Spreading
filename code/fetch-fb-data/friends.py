import facebook
import os
import datetime
import dateutil.parser
import pytz

utc=pytz.UTC

a = datetime.datetime.now()
a = utc.localize(a)

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

	for i in range(1,len(friend_list)):

		tfriend = str(friend_list[i-1])

		f = open('dataset/%s.txt' %str(i), 'w')

		profile = graph.get_object(tfriend)
		statuses = graph.get_connections(tfriend, "statuses", fields="updated_time", limit="100")

		status_list = [status['updated_time'] for status in statuses['data']]

		n=len(status_list)

		if(n!=0):

			t = dateutil.parser.parse(status_list[n-1])
			d=a-t

			f.write('%s' %str(n/float(d.days)))
			f.write('\n')

		else:
			f.write('0')
			f.write('\n')

		mutualfriends = graph.get_connections(tfriend, "mutualfriends")
		mutualfriends_list = [friend['id'] for friend in mutualfriends['data']]
		for k in range(1,len(mutualfriends_list)+1):
			for l in range(1,len(friend_list)+1):
				if (mutualfriends_list[k-1]==friend_list[l-1]):
					f.write('%s\n' %str(l))	
					g.write('%s;' %str(i))
					g.write('%s\n' %str(l))




## Not Anynomized

def outputnotanonym(graph, profile, friends, friend_list):

	f = open('dataset/Freunde.txt', 'w')
	for k in friend_list:
		f.write('%s' % str(k))
		f.write('\n')


	#Mutualfriends and .csv-file for Gephi import

	g = open('dataset/gephi.csv', 'w')
	g.write('Source;Target\n')

	for i in range(len(friend_list)):

		testfriend = str(friend_list[i])
		tfriend = str(friend_list[i-1])


		f = open('dataset/%s.txt' % testfriend, 'w')



		profile = graph.get_object(tfriend)
		statuses = graph.get_connections(tfriend, "statuses", fields="updated_time", limit="100")

		status_list = [status['updated_time'] for status in statuses['data']]

		n=len(status_list)

		if(n!=0):

			t = dateutil.parser.parse(status_list[n-1])
			d=a-t

			f.write('%s' %str(n/float(d.days)))
			f.write('\n')

		else:
			f.write('0')
			f.write('\n')


		newprof = graph.get_object(testfriend)
		mutualfriends = graph.get_connections(testfriend, "mutualfriends")
		mutualfriends_list = [friend['id'] for friend in mutualfriends['data']]
		for j in mutualfriends_list:
			g.write('%s;' %str(i))			#Gephi
			g.write('%s\n' %str(j))			#Gephi
			f.write('%s' %str(j))
			f.write('\n')


token = raw_input('Enter your Access Token: ')

anonym = input('Do you want to anonymize your Data? Yes (1) or No (0)? ')


graph = facebook.GraphAPI(token)
profile = graph.get_object("me")
friends = graph.get_connections("me", "friends")

friend_list = [friend['id'] for friend in friends['data']]

os.mkdir('dataset')


if(anonym==1):
	outputanonym(graph, profile, friends, friend_list)
else:
	outputnotanonym(graph, profile, friends, friend_list)

