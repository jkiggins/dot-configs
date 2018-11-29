#! /usr/bin/python3
import xml.etree.ElementTree as ET
from collections import OrderedDict as ODict
from subprocess import Popen, PIPE


def passAddEntry(entry, path):
    proc = Popen(['pass', 'add', '--multiline', path], stdin=PIPE, stdout=PIPE)
    proc.communicate(entry.encode('utf8'))
    proc.wait()


def xmlEntry(entry, path):
    dEntry = ODict({'Password':'', 'Title':'', 'UserName':'', 'URL': '', 'Notes': ''})
    sEntry = ''

    for string in entry.findall('String'):
        key = string.find('Key').text
        val = string.find('Value').text

        if key in dEntry:
            dEntry[key] = val

    path += "/{}".format(dEntry['Title'])
    del dEntry['Title']

    print(path)
    print("="*len(path))
    
    for key, val in dEntry.items():
        if(val is not None):
            if(key.lower() == 'password'):
                sEntry += "{}\n".format(val)
            elif(key.lower() == 'username'):
                sEntry += "user: {}\n\n".format(val)
            elif():
                sEntry += "{}\n".format(val)
            else:
                sEntry += "{}: {}\n".format(key.lower(), val)
    print(sEntry)
    passAddEntry(sEntry, path)


def xmlGroup(group, path):
    for entry in group.findall('Entry'):
        xmlEntry(entry, path)

    for nGroup in group.findall('Group'):
        xmlGroup(nGroup, path + '/' + nGroup.find('Name').text)


def main(sFile):
  tree = ET.parse(sFile)
  root = tree.getroot()
  kproot = root.find('Root')

  for group in kproot.findall('Group'):
      xmlGroup(group, 'word')


if __name__ == '__main__':
    main('keepass.xml')
