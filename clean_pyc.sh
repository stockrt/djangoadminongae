#!/bin/bash

find . -type f -regex '.*pyc$' | xargs rm -f
