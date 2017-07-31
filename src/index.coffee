cutHead = (str, delimeter)-> 
  unless str
    return [undefined, undefined]
  index = str.indexOf delimeter 
  if index > 0
    head = str.substr(0, index) 
    others = str.substr(index + 1)
    others = undefined if others.length is 0 
    return [head, others]
  return [str, undefined]


module.exports = cutHead