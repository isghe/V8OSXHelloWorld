V8PATH=../v8
V8LIBRARY_PATH=$(V8PATH)/out/native/
hello_world: hello_world.cc Makefile
	g++ -I$(V8PATH) hello_world.cc -o hello_world -std=c++11 -lstdc++.6 -L $(V8LIBRARY_PATH) -lv8_base -lv8_libbase -lv8_snapshot -lv8_libplatform -licuuc -licui18n -licudata -pthread
