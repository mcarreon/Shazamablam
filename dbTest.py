#!/usr/bin/env python
# coding: utf-8

# In[1]:


import psycopg2
import configparser


# In[2]:


config = configparser.ConfigParser()
config.read('./database.ini')
configHost = config.get('postgresql', 'host')
configPort = config.get('postgresql', 'port')
configDatabase = config.get('postgresql', 'database')
configUser = config.get('postgresql', 'user')
configPassword = config.get('postgresql', 'password')


# In[3]:


connection = psycopg2.connect(
    host=configHost,
    port=configPort,
    database=configDatabase,
    user=configUser,
    password=configPassword
)


# In[4]:


print(connection.closed)


# In[5]:


connection.close()


# In[6]:


print(connection.closed)


# In[ ]:




