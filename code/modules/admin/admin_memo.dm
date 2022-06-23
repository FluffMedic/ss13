#define MEMOFILE "data/memo.sav"	//where the memos are saved
#define ENABLE_MEMOS // this is so stupid

//switch verb so we don't spam up the verb lists with like, 3 verbs for this feature.
/client/proc/admin_memo(task in list("write","show","delete"))
	set name = "Memo"
	set category = "Server"
	#ifndef ENABLE_MEMOS
	return
	#endif
	if(!check_rights(0))	return
	switch(task)
		if("write")		admin_memo_write()
		if("show")		admin_memo_show()
		if("delete")	admin_memo_delete()

//write a message
/client/proc/admin_memo_write()
	var/savefile/F = new(MEMOFILE)
	if(F)
		var/memo = sanitize(tgui_input_text(src,"Type your memo\n(Leaving it blank will delete your current memo):","Write Memo",null, multiline = TRUE), extra = 0)
		switch(memo)
			if(null)
				return
			if("")
				F.dir.Remove(ckey)
				to_chat(src, "<span class='filter_adminlog'><b>Memo removed</b></span>")
				return
		if( findtext(memo,"<script",1,0) )
			return
		to_chat(F[ckey], "<span class='filter_adminlog'>[key] on [time2text(world.realtime,"(DDD) DD MMM hh:mm")]<br>[memo]</span>")
		message_admins("[key] set an admin memo:<br>[memo]")

//show all memos
/client/proc/admin_memo_show()
	#ifndef ENABLE_MEMOS
	return
	#endif
	var/savefile/F = new(MEMOFILE)
	if(F)
		for(var/ckey in F.dir)
			to_chat(src, "<span class='filter_adminlog'><center><span class='motd'><b>Admin Memo</b><i> by [F[ckey]]</i></span></center></span>")

//delete your own or somebody else's memo
/client/proc/admin_memo_delete()
	var/savefile/F = new(MEMOFILE)
	if(F)
		var/ckey
		if(check_rights(R_SERVER,0))	//high ranking admins can delete other admin's memos
			ckey = tgui_input_list(src,"Whose memo shall we remove?","Remove Memo", F.dir)
		else
			ckey = src.ckey
		if(ckey)
			F.dir.Remove(ckey)
			to_chat(src, "<span class='filter_adminlog'><b>Removed Memo created by [ckey].</b></span>")

#undef MEMOFILE
#undef ENABLE_MEMOS