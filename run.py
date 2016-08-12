

import os
import re

host_url = os.environ['DOCKER_HOST']
m = re.search('([0-9.]+)', host_url)
ip_address = m.group(0)
notebook_url = 'http://' + ip_address + ':8888/'

print '*****'
print '*****'
print "***** Visit " +notebook_url
print '*****'
print '*****'

os.system('docker run '\
  '--publish=8888:8888 '\
  '--rm --tty --interactive '\
  '--volume=`pwd`/notebooks:/notebooks '\
  'gcr.io/tensorflow/tensorflow')

os.system('open ' + notebook_url)
