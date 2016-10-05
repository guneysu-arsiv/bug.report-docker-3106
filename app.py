#!/usr/bin/env python2
# coding: utf-8

from __future__ import print_function
import sys
import logging

def main():
  print('this must go to the stdout', file=sys.stdout)
  print('this must go to the stderr', file=sys.stderr)

def logtest():
  logging.error('this is an error')
  logging.warning('this is warning')

if __name__ == '__main__':
    main()
    logtest()
