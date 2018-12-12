-module(controller).
-compile(export_all).

-record(pids, {pid1,pid2}). 

kontroler(OwnPid,OtherPid,Item) ->
	gen_fsm:send_event(OwnPid, {controller_delete_own, Item}),
	gen_fsm:send_event(OtherPid, {controller_delete_others, Item}).



	
