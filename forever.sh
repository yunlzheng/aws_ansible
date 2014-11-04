#!/bin/bash

./node_modules/forever/bin/forever \
$@ \
-al forever.log \
-ao out.log \
-ae err.log \
app.js
