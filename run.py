import sys
import os
import re

def get_nb_url():
    host_url = os.environ['DOCKER_HOST']
    m = re.search('([0-9.]+)', host_url)
    ip_address = m.group(0)
    notebook_url = 'http://' + ip_address + ':8888/'
    return notebook_url

def print_url(notebook_url):
    print '*****'
    print '*****'
    print "***** Visit " + notebook_url
    print '*****'
    print '*****'

def print_help():
    print 'Usage:'
    print 'run.py (browser|start)'

def docker_run():
    os.system('docker run '\
      '--publish=8888:8888 '\
      '--rm --tty --interactive '\
      '--volume=`pwd`/notebooks:/notebooks '\
      'gcr.io/tensorflow/tensorflow')

def open_browser(notebook_url):
    os.system('open ' + notebook_url)

def main():
    url = get_nb_url()
    if len(sys.argv) == 2:
        arg = sys.argv[1]
        if arg == 'browser':
            open_browser(url)
            return
        elif arg == 'start':
            docker_run()
            open_browser(url)
            return
    print_help()


main()
