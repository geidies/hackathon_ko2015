#!/usr/bin/env python

import lxml.html
import sys

url = sys.argv[1]

htmltree = lxml.html.parse(url)

p_tags = htmltree.xpath('//p')
p_content = [p.text_content() for p in p_tags]

print " ".join(p_content)
