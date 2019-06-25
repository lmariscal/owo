# Written by Leonardo Mariscal <leo@ldmd.mx>, 2019

import strutils, random

proc lastReplace(s, sub, by: string): string =
  let li = s.rsplit(sub, 1)
  li.join(by)

proc toOwO*(s: string): string =
  let smileys = [";;w;;", "^w^", ">w<", "UwU", "(・`ω´・)", "(´・ω・`)"]

  result = s
  result = result.replace('L', 'W').replace('l', 'w')
  result = result.replace('W', 'W').replace('r', 'w')

  result = result.lastReplace(".", ". " & smileys.sample)
  result = result.lastReplace("!", "! " & smileys.sample)
  result = result.lastReplace("?", "? oWo")

  for v in ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U']:
    if result.contains("n" & v):
      result = result.replace("n" & v, "ny" & v)
    if result.contains("N" & v):
      result = result.replace("N" & v, "Ny" & v)
