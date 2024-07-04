.data
base: .double 5.85
altura: .double 13.47
res: .double 0
dos: .double 2

.code
l.d F0, base($0)
l.d F1, altura($0)
l.d F3, dos($0) 
mul.d F4,F1,F0
div.d F4,F4,F3
s.d F4, res($0)
halt
