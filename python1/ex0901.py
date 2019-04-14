python_course = {'Alice','Bob','Mallory','Victor','Eve'}

java_course = {'Trent','John','Smith','Bob','Victor','Allen'}

print('PythonまたはJavaのセミナーに参加した人は')
print(python_course | java_course)

print('PythonとJavaのセミナーの両方に参加した人は')
print(python_course & java_course)

print('Pythonのセミナーのみに参加した人は')
print(python_course - java_course)