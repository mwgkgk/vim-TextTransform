" Test a transform command with an error in the algorithm. 

call TextTransform#MakeCommand('', 'TransformIt', 'BadTransform', { 'isProcessEntireText': 1 })


call InsertExampleMultilineText('all lines')
normal! gg$
2,4TransformIt
normal! i#


call vimtest#SaveOut()
call vimtest#Quit()
