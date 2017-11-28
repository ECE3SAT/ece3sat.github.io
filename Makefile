
all: run_server

run_server:
	hugo server -D

run_server_extern:
	hugo server --bind 0.0.0.0 -D

