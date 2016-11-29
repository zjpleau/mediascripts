# TV
#/usr/share/filebot/bin/filebot.sh -script fn:amc --output "/home/zachary/mounts/sorted/media/" --action move -non-strict "/home/zachary/downloads/complete/tv/" --def excludeList=amc.txt --def "seriesFormat=tv/{n}/{episode.special ? 'Special' : 'Season '+s.pad(2)}/{norm={it.upperInitial().lowerTrail().replaceTrailingBrackets().replaceAll(/\u0022/, '\'').replaceAll(/[:|]/, '.').replaceAll(/\?/, '!').replaceAll(/[*\s\.]+/, '.').replaceAll(/\b[IiVvXx]+\b/, { it.upper() }).replaceAll(/[0-9](th|nd|rd)/, { it.lower() })};norm(n) }.{episode.special ? 'S00E'+special.pad(2) : s00e00}.{norm(t)}{'.'+vf}{'.'+source}{'.'+fn.matchAll(/PROPER|REPACK/)*.upper().sort().join('.')}{'.'+vc.replace('Microsoft', 'VC-1').replace('AVC', 'x264')}{'.'+ac.replace('MPEG Audio', 'MP3')}{audio.FormatProfile =~ /MA Core/ ? '-HD.MA' : ''}{audio.FormatProfile =~ /ES/ ? '-ES' : ''}{audio.FormatProfile =~ /Pro/ ? '-Pro' : ''}{'.'+af.replace('8 6ch', '7.1').replace('7 6ch', '6.1').replace('6ch', '5.1').replace('3ch', '2.1').replace('2ch','2.0').replace('1ch','1.0')}{def g = c{group}; def m = c{fn.match(/(?:(?<=[-])[a-z0-9]+$)|(?:^[a-z0-9]+(?=[-]))/)}; if(g!=null) return '-'+g;}{'.'+lang}" --def clean=y --def subtitles=en "ut_kind=multi" #--def plex=127.0.0.1:piWcFjCiyqLrxUELzV9w 
#/usr/share/filebot/bin/filebot.sh -script fn:cleaner /home/zachary/downloads/complete/tv/
#/usr/share/filebot/bin/filebot.sh -script fn:suball /home/zachary/mounts/local-sorted/media/tv/ -non-strict

# Music Videos
/usr/share/filebot/bin/filebot.sh -script fn:amc --output "/home/zachary/mounts/sorted/media/" --action move -non-strict "/home/zachary/downloads/complete/musicvideo/" --def excludeList=amc.txt --def "movieFormat=musicvideo/{n} {'('+y+')'}/{norm={it.upperInitial().lowerTrail().replaceTrailingBrackets().replaceAll(/\u0022/, '\'').replaceAll(/[:|]/, '.').replaceAll(/\?/, '!').replaceAll(/[*\s\.,]+/, '.').replaceAll(/\b[IiVvXx]+\b/, { it.upper() }).replaceAll(/[0-9](th|nd|rd)/, { it.lower() })};isLatin = {java.text.Normalizer.normalize(it, java.text.Normalizer.Form.NFD).replaceAll(/\p{InCombiningDiacriticalMarks}+/, '') ==~ /^\p{InBasicLatin}+$/}; isLatin(info.OriginalName) ? norm(info.OriginalName) : norm(primaryTitle) }.({y}){if(isLatin(info.OriginalName) && info.OriginalName != primaryTitle) '.'+ norm(primaryTitle) }{'.'+vf}{'.'+source}{fn.contains('3D') || fn.contains('3-D') ? '.3D':''}{'.'+fn.replace(/(?i)\.DC\./, '.directors.cut.').replaceAll(/director\'?s|theatrical|ultimate/,'$0.Cut').matchAll(/UNCENSORED|UNRATED|REMASTERED|EXTENDED|UNCUT|DIRECTOR\'?S.CUT|THEATRICAL.CUT|ULTIMATE.CUT|FINAL.CUT|SPECIAL.EDITION/)*.upperInitial()*.lowerTrail().sort().join('.')}{'.'+fn.matchAll(/PROPER|REPACK/)*.upper().sort().join('.')}{'.'+vc.replace('Microsoft', 'VC-1').replace('AVC', 'x264')}{'.'+ac.replace('MPEG Audio', 'MP3')}{audio.FormatProfile =~ /MA Core/ ? '-HD.MA' : ''}{audio.FormatProfile =~ /ES/ ? '-ES' : ''}{audio.FormatProfile =~ /Pro/ ? '-Pro' : ''}{'.'+af.replace('8 6ch', '7.1').replace('7 6ch', '6.1').replace('6ch', '5.1').replace('3ch', '2.1').replace('2ch','2.0').replace('1ch','1.0')}{def g = c{group}; def m = c{fn.match(/(?:(?<=[-])[a-z0-9]+$)|(?:^[a-z0-9]+(?=[-]))/)}; if(g!=null) return '-'+g;}{'.'+lang}" --def clean=y --def subtitles=en "ut_kind=multi" --def plex=127.0.0.1:piWcFjCiyqLrxUELzV9w
#/usr/share/filebot/bin/filebot.sh -script fn:cleaner /home/zachary/downloads/complete/movies/
/usr/share/filebot/bin/filebot.sh -script fn:suball /home/zachary/mounts/local-sorted/media/musicvideo/ -non-strict