#!/bin/bash

bg_number=$((1 + RANDOM % 10))
feh --bg-scale ~/.i3/bg${bg_number}.jpg
