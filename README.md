# vala-usdt
User Statically-Defined Tracing, for vala

# usage: 
1. drag-and-drop tracing/ and tracing.vapi into src/  
2. modify meson.build, add ```include_directories('.')``` if haven't  
3. 
``` Tracing.SDT("provider", "name", arg0, arg1, ....); ```  


