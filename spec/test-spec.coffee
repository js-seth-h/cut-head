cutHead = require '../src'

describe 'cutHead', ()->
  it 'head#others', (done)->
    [head, others] = cutHead 'head#others', '#'  
 
    expect head
      .toEqual 'head'
    expect others
      .toEqual 'others' 
    done()
 
  it 'head', (done)->
    [head, others] = cutHead 'head', '#'  
 
    expect head
      .toEqual 'head'
    expect others
      .toEqual undefined 
    done()  
 
  it 'head#', (done)->
    [head, others] = cutHead 'head#', '#'  
 
    expect head
      .toEqual 'head'
    expect others
      .toEqual undefined 
    done()

 
  it 'null', (done)->
    [head, others] = cutHead null, '#'  
 
    expect head
      .toEqual undefined
    expect others
      .toEqual undefined 
    done() 
 
  it 'undefined', (done)->
    [head, others] = cutHead undefined, '#'  
 
    expect head
      .toEqual undefined
    expect others
      .toEqual undefined 
    done()









