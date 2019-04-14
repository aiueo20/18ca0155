def foo(label,**kwargs):
    print(label)
    print(kwargs)

foo("TEST1",red="apple",lue="sky",yellow="submarine")
foo(label="TEST2",red="apple",blue="sky",yellow="submarine")
foo(red="apple",blue="sky",yellow="submarine",label="TEST3")
foo(red="apple",blue="sky",label="TEST4",yellow="submarine")