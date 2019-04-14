import collections.abc as abc

x = True
print(isinstance(x,abc.Sequence))
print(isinstance(x,abc.MutableSequence))
print(isinstance(x,abc.Mapping))
print(isinstance(x,abc.MutableMapping))
print(isinstance(x,abc.Set))
print(isinstance(x,abc.MutableSet))

x = 'Hello'
print(isinstance(x,abc.Sequence))
print(isinstance(x,abc.MutableSequence))
print(isinstance(x,abc.Mapping))
print(isinstance(x,abc.MutableMapping))
print(isinstance(x,abc.Set))
print(isinstance(x,abc.MutableSet))

x = 100
print(isinstance(x,abc.Sequence))
print(isinstance(x,abc.MutableSequence))
print(isinstance(x,abc.Mapping))
print(isinstance(x,abc.MutableMapping))
print(isinstance(x,abc.Set))
print(isinstance(x,abc.MutableSet))

x = 13.0
print(isinstance(x,abc.Sequence))
print(isinstance(x,abc.MutableSequence))
print(isinstance(x,abc.Mapping))
print(isinstance(x,abc.MutableMapping))
print(isinstance(x,abc.Set))
print(isinstance(x,abc.MutableSet))

x = 'a','b','c'
print(isinstance(x,abc.Sequence))
print(isinstance(x,abc.MutableSequence))
print(isinstance(x,abc.Mapping))
print(isinstance(x,abc.MutableMapping))
print(isinstance(x,abc.Set))
print(isinstance(x,abc.MutableSet))

x = {1,2,3,4,5}
print(isinstance(x,abc.Sequence))
print(isinstance(x,abc.MutableSequence))
print(isinstance(x,abc.Mapping))
print(isinstance(x,abc.MutableMapping))
print(isinstance(x,abc.Set))
print(isinstance(x,abc.MutableSet))