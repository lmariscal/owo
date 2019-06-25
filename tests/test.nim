# Written by Leonardo Mariscal <leo@ldmd.mx>, 2019

import unittest, strutils
import owo

test "Twanswates":
  check "What do you mean?".toOwO() == "What do you mean? oWo"
  check "Translates".toOwO() == "Twanswates"
  let natawity = "No, that is not my natality!".toOwO()
  check natawity.startsWith("Nyo, that is nyot my nyatawity!")
