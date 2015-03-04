let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
imap <S-Tab> <Plug>SuperTabBackward
inoremap <C-Tab> 	
inoremap <Plug>(EmmetAnchorizeSummary) =emmet#util#closePopup()=emmet#anchorizeURL(1)<Right>
inoremap <Plug>(EmmetAnchorizeURL) =emmet#util#closePopup()=emmet#anchorizeURL(0)<Right>
inoremap <Plug>(EmmetRemoveTag) =emmet#util#closePopup()=emmet#removeTag()<Right>
inoremap <Plug>(EmmetSplitJoinTag) :call emmet#splitJoinTag()
inoremap <Plug>(EmmetToggleComment) =emmet#util#closePopup()=emmet#toggleComment()<Right>
inoremap <Plug>(EmmetImageSize) =emmet#util#closePopup()=emmet#imageSize()<Right>
inoremap <Plug>(EmmetMovePrev) :call emmet#moveNextPrev(1)
inoremap <Plug>(EmmetMoveNext) :call emmet#moveNextPrev(0)
inoremap <Plug>(EmmetBalanceTagOutward) :call emmet#balanceTag(-1)
inoremap <Plug>(EmmetBalanceTagInward) :call emmet#balanceTag(1)
inoremap <Plug>(EmmetExpandWord) =emmet#util#closePopup()=emmet#expandAbbr(1,"")<Right>
inoremap <Plug>(EmmetExpandAbbr) =emmet#util#closePopup()=emmet#expandAbbr(0,"")<Right>
map! <D-v> *
map  <Plug>(wildfire-fuel)
nnoremap <silent>  :CtrlP
nmap o <Plug>ZoomWin
vmap c <Plug>(EmmetCodePretty)
vmap m <Plug>(EmmetMergeLines)
nmap A <Plug>(EmmetAnchorizeSummary)
nmap a <Plug>(EmmetAnchorizeURL)
nmap k <Plug>(EmmetRemoveTag)
nmap j <Plug>(EmmetSplitJoinTag)
nmap / <Plug>(EmmetToggleComment)
nmap i <Plug>(EmmetImageSize)
nmap N <Plug>(EmmetMovePrev)
nmap n <Plug>(EmmetMoveNext)
vmap D <Plug>(EmmetBalanceTagOutward)
nmap D <Plug>(EmmetBalanceTagOutward)
vmap d <Plug>(EmmetBalanceTagInward)
nmap d <Plug>(EmmetBalanceTagInward)
nmap ; <Plug>(EmmetExpandWord)
vmap , <Plug>(EmmetExpandAbbr)
nmap , <Plug>(EmmetExpandAbbr)
xnoremap <silent> <expr> A targets#uppercaseXmap('A')
onoremap <silent> AL& :call targets#omap('&', 'double last select expand')
onoremap <silent> AN& :call targets#omap('&', 'double next select expand')
onoremap <silent> Al& :call targets#omap('&', 'last select expand')
onoremap <silent> An& :call targets#omap('&', 'next select expand')
onoremap <silent> A& :call targets#omap('&', 'seekselect expand')
onoremap <silent> AL| :call targets#omap('|', 'double last select expand')
onoremap <silent> AN| :call targets#omap('|', 'double next select expand')
onoremap <silent> Al| :call targets#omap('|', 'last select expand')
onoremap <silent> An| :call targets#omap('|', 'next select expand')
onoremap <silent> A| :call targets#omap('|', 'seekselect expand')
onoremap <silent> AL\ :call targets#omap('\', 'double last select expand')
onoremap <silent> AN\ :call targets#omap('\', 'double next select expand')
onoremap <silent> Al\ :call targets#omap('\', 'last select expand')
onoremap <silent> An\ :call targets#omap('\', 'next select expand')
onoremap <silent> A\ :call targets#omap('\', 'seekselect expand')
onoremap <silent> AL/ :call targets#omap('/', 'double last select expand')
onoremap <silent> AN/ :call targets#omap('/', 'double next select expand')
onoremap <silent> Al/ :call targets#omap('/', 'last select expand')
onoremap <silent> An/ :call targets#omap('/', 'next select expand')
onoremap <silent> A/ :call targets#omap('/', 'seekselect expand')
onoremap <silent> AL* :call targets#omap('*', 'double last select expand')
onoremap <silent> AN* :call targets#omap('*', 'double next select expand')
onoremap <silent> Al* :call targets#omap('*', 'last select expand')
onoremap <silent> An* :call targets#omap('*', 'next select expand')
onoremap <silent> A* :call targets#omap('*', 'seekselect expand')
onoremap <silent> AL_ :call targets#omap('_', 'double last select expand')
onoremap <silent> AN_ :call targets#omap('_', 'double next select expand')
onoremap <silent> Al_ :call targets#omap('_', 'last select expand')
onoremap <silent> An_ :call targets#omap('_', 'next select expand')
onoremap <silent> A_ :call targets#omap('_', 'seekselect expand')
onoremap <silent> AL~ :call targets#omap('~', 'double last select expand')
onoremap <silent> AN~ :call targets#omap('~', 'double next select expand')
onoremap <silent> Al~ :call targets#omap('~', 'last select expand')
onoremap <silent> An~ :call targets#omap('~', 'next select expand')
onoremap <silent> A~ :call targets#omap('~', 'seekselect expand')
onoremap <silent> AL= :call targets#omap('=', 'double last select expand')
onoremap <silent> AN= :call targets#omap('=', 'double next select expand')
onoremap <silent> Al= :call targets#omap('=', 'last select expand')
onoremap <silent> An= :call targets#omap('=', 'next select expand')
onoremap <silent> A= :call targets#omap('=', 'seekselect expand')
onoremap <silent> AL- :call targets#omap('-', 'double last select expand')
onoremap <silent> AN- :call targets#omap('-', 'double next select expand')
onoremap <silent> Al- :call targets#omap('-', 'last select expand')
onoremap <silent> An- :call targets#omap('-', 'next select expand')
onoremap <silent> A- :call targets#omap('-', 'seekselect expand')
onoremap <silent> AL+ :call targets#omap('+', 'double last select expand')
onoremap <silent> AN+ :call targets#omap('+', 'double next select expand')
onoremap <silent> Al+ :call targets#omap('+', 'last select expand')
onoremap <silent> An+ :call targets#omap('+', 'next select expand')
onoremap <silent> A+ :call targets#omap('+', 'seekselect expand')
onoremap <silent> AL: :call targets#omap(':', 'double last select expand')
onoremap <silent> AN: :call targets#omap(':', 'double next select expand')
onoremap <silent> Al: :call targets#omap(':', 'last select expand')
onoremap <silent> An: :call targets#omap(':', 'next select expand')
onoremap <silent> A: :call targets#omap(':', 'seekselect expand')
onoremap <silent> AL; :call targets#omap(';', 'double last select expand')
onoremap <silent> AN; :call targets#omap(';', 'double next select expand')
onoremap <silent> Al; :call targets#omap(';', 'last select expand')
onoremap <silent> An; :call targets#omap(';', 'next select expand')
onoremap <silent> A; :call targets#omap(';', 'seekselect expand')
onoremap <silent> AL. :call targets#omap('.', 'double last select expand')
onoremap <silent> AN. :call targets#omap('.', 'double next select expand')
onoremap <silent> Al. :call targets#omap('.', 'last select expand')
onoremap <silent> An. :call targets#omap('.', 'next select expand')
onoremap <silent> A. :call targets#omap('.', 'seekselect expand')
onoremap <silent> AL, :call targets#omap(',', 'double last select expand')
onoremap <silent> AN, :call targets#omap(',', 'double next select expand')
onoremap <silent> Al, :call targets#omap(',', 'last select expand')
onoremap <silent> An, :call targets#omap(',', 'next select expand')
onoremap <silent> A, :call targets#omap(',', 'seekselect expand')
onoremap <silent> Alt :call targets#omap('t', 'lastt selectp shrink')
onoremap <silent> Ant :call targets#omap('t', 'nextt selectp shrink')
onoremap <silent> At :call targets#omap('t', 'seekselectt expand')
onoremap <silent> Ala :call targets#omap('<>', 'lastp selectp expand')
onoremap <silent> Al> :call targets#omap('<>', 'lastp selectp expand')
onoremap <silent> Al< :call targets#omap('<>', 'lastp selectp expand')
onoremap <silent> Ana :call targets#omap('<>', 'nextp selectp expand')
onoremap <silent> An> :call targets#omap('<>', 'nextp selectp expand')
onoremap <silent> An< :call targets#omap('<>', 'nextp selectp expand')
onoremap <silent> Aa :call targets#omap('<>', 'seekselectp expand')
onoremap <silent> A> :call targets#omap('<>', 'seekselectp expand')
onoremap <silent> A< :call targets#omap('<>', 'seekselectp expand')
onoremap <silent> Alr :call targets#omap('[]', 'lastp selectp expand')
onoremap <silent> Al] :call targets#omap('[]', 'lastp selectp expand')
onoremap <silent> Al[ :call targets#omap('[]', 'lastp selectp expand')
onoremap <silent> Anr :call targets#omap('[]', 'nextp selectp expand')
onoremap <silent> An] :call targets#omap('[]', 'nextp selectp expand')
onoremap <silent> An[ :call targets#omap('[]', 'nextp selectp expand')
onoremap <silent> Ar :call targets#omap('[]', 'seekselectp expand')
onoremap <silent> A] :call targets#omap('[]', 'seekselectp expand')
onoremap <silent> A[ :call targets#omap('[]', 'seekselectp expand')
onoremap <silent> AlB :call targets#omap('{}', 'lastp selectp expand')
onoremap <silent> Al} :call targets#omap('{}', 'lastp selectp expand')
onoremap <silent> Al{ :call targets#omap('{}', 'lastp selectp expand')
onoremap <silent> AnB :call targets#omap('{}', 'nextp selectp expand')
onoremap <silent> An} :call targets#omap('{}', 'nextp selectp expand')
onoremap <silent> An{ :call targets#omap('{}', 'nextp selectp expand')
onoremap <silent> AB :call targets#omap('{}', 'seekselectp expand')
onoremap <silent> A} :call targets#omap('{}', 'seekselectp expand')
onoremap <silent> A{ :call targets#omap('{}', 'seekselectp expand')
onoremap <silent> Alb :call targets#omap('()', 'lastp selectp expand')
onoremap <silent> Al) :call targets#omap('()', 'lastp selectp expand')
onoremap <silent> Al( :call targets#omap('()', 'lastp selectp expand')
onoremap <silent> Anb :call targets#omap('()', 'nextp selectp expand')
onoremap <silent> An) :call targets#omap('()', 'nextp selectp expand')
onoremap <silent> An( :call targets#omap('()', 'nextp selectp expand')
onoremap <silent> Ab :call targets#omap('()', 'seekselectp expand')
onoremap <silent> A) :call targets#omap('()', 'seekselectp expand')
onoremap <silent> A( :call targets#omap('()', 'seekselectp expand')
xnoremap <silent> <expr> I targets#uppercaseXmap('I')
onoremap <silent> IL& :call targets#omap('&', 'double last select shrink')
onoremap <silent> IN& :call targets#omap('&', 'double next select shrink')
onoremap <silent> Il& :call targets#omap('&', 'last select shrink')
onoremap <silent> In& :call targets#omap('&', 'next select shrink')
onoremap <silent> I& :call targets#omap('&', 'seekselect shrink')
onoremap <silent> IL| :call targets#omap('|', 'double last select shrink')
onoremap <silent> IN| :call targets#omap('|', 'double next select shrink')
onoremap <silent> Il| :call targets#omap('|', 'last select shrink')
onoremap <silent> In| :call targets#omap('|', 'next select shrink')
onoremap <silent> I| :call targets#omap('|', 'seekselect shrink')
onoremap <silent> IL\ :call targets#omap('\', 'double last select shrink')
onoremap <silent> IN\ :call targets#omap('\', 'double next select shrink')
onoremap <silent> Il\ :call targets#omap('\', 'last select shrink')
onoremap <silent> In\ :call targets#omap('\', 'next select shrink')
onoremap <silent> I\ :call targets#omap('\', 'seekselect shrink')
onoremap <silent> IL/ :call targets#omap('/', 'double last select shrink')
onoremap <silent> IN/ :call targets#omap('/', 'double next select shrink')
onoremap <silent> Il/ :call targets#omap('/', 'last select shrink')
onoremap <silent> In/ :call targets#omap('/', 'next select shrink')
onoremap <silent> I/ :call targets#omap('/', 'seekselect shrink')
onoremap <silent> IL* :call targets#omap('*', 'double last select shrink')
onoremap <silent> IN* :call targets#omap('*', 'double next select shrink')
onoremap <silent> Il* :call targets#omap('*', 'last select shrink')
onoremap <silent> In* :call targets#omap('*', 'next select shrink')
onoremap <silent> I* :call targets#omap('*', 'seekselect shrink')
onoremap <silent> IL_ :call targets#omap('_', 'double last select shrink')
onoremap <silent> IN_ :call targets#omap('_', 'double next select shrink')
onoremap <silent> Il_ :call targets#omap('_', 'last select shrink')
onoremap <silent> In_ :call targets#omap('_', 'next select shrink')
onoremap <silent> I_ :call targets#omap('_', 'seekselect shrink')
onoremap <silent> IL~ :call targets#omap('~', 'double last select shrink')
onoremap <silent> IN~ :call targets#omap('~', 'double next select shrink')
onoremap <silent> Il~ :call targets#omap('~', 'last select shrink')
onoremap <silent> In~ :call targets#omap('~', 'next select shrink')
onoremap <silent> I~ :call targets#omap('~', 'seekselect shrink')
onoremap <silent> IL= :call targets#omap('=', 'double last select shrink')
onoremap <silent> IN= :call targets#omap('=', 'double next select shrink')
onoremap <silent> Il= :call targets#omap('=', 'last select shrink')
onoremap <silent> In= :call targets#omap('=', 'next select shrink')
onoremap <silent> I= :call targets#omap('=', 'seekselect shrink')
onoremap <silent> IL- :call targets#omap('-', 'double last select shrink')
onoremap <silent> IN- :call targets#omap('-', 'double next select shrink')
onoremap <silent> Il- :call targets#omap('-', 'last select shrink')
onoremap <silent> In- :call targets#omap('-', 'next select shrink')
onoremap <silent> I- :call targets#omap('-', 'seekselect shrink')
onoremap <silent> IL+ :call targets#omap('+', 'double last select shrink')
onoremap <silent> IN+ :call targets#omap('+', 'double next select shrink')
onoremap <silent> Il+ :call targets#omap('+', 'last select shrink')
onoremap <silent> In+ :call targets#omap('+', 'next select shrink')
onoremap <silent> I+ :call targets#omap('+', 'seekselect shrink')
onoremap <silent> IL: :call targets#omap(':', 'double last select shrink')
onoremap <silent> IN: :call targets#omap(':', 'double next select shrink')
onoremap <silent> Il: :call targets#omap(':', 'last select shrink')
onoremap <silent> In: :call targets#omap(':', 'next select shrink')
onoremap <silent> I: :call targets#omap(':', 'seekselect shrink')
onoremap <silent> IL; :call targets#omap(';', 'double last select shrink')
onoremap <silent> IN; :call targets#omap(';', 'double next select shrink')
onoremap <silent> Il; :call targets#omap(';', 'last select shrink')
onoremap <silent> In; :call targets#omap(';', 'next select shrink')
onoremap <silent> I; :call targets#omap(';', 'seekselect shrink')
onoremap <silent> IL. :call targets#omap('.', 'double last select shrink')
onoremap <silent> IN. :call targets#omap('.', 'double next select shrink')
onoremap <silent> Il. :call targets#omap('.', 'last select shrink')
onoremap <silent> In. :call targets#omap('.', 'next select shrink')
onoremap <silent> I. :call targets#omap('.', 'seekselect shrink')
onoremap <silent> IL, :call targets#omap(',', 'double last select shrink')
onoremap <silent> IN, :call targets#omap(',', 'double next select shrink')
onoremap <silent> Il, :call targets#omap(',', 'last select shrink')
onoremap <silent> In, :call targets#omap(',', 'next select shrink')
onoremap <silent> I, :call targets#omap(',', 'seekselect shrink')
onoremap <silent> IL` :call targets#omap('`', 'quote double last select shrink')
onoremap <silent> IN` :call targets#omap('`', 'quote double next select shrink')
onoremap <silent> Il` :call targets#omap('`', 'quote last select shrink')
onoremap <silent> In` :call targets#omap('`', 'quote next select shrink')
onoremap <silent> I` :call targets#omap('`', 'quote seekselect shrink')
onoremap <silent> IL' :call targets#omap('''', 'quote double last select shrink')
onoremap <silent> IN' :call targets#omap('''', 'quote double next select shrink')
onoremap <silent> Il' :call targets#omap('''', 'quote last select shrink')
onoremap <silent> In' :call targets#omap('''', 'quote next select shrink')
onoremap <silent> I' :call targets#omap('''', 'quote seekselect shrink')
onoremap <silent> IL" :call targets#omap('"', 'quote double last select shrink')
onoremap <silent> IN" :call targets#omap('"', 'quote double next select shrink')
onoremap <silent> Il" :call targets#omap('"', 'quote last select shrink')
onoremap <silent> In" :call targets#omap('"', 'quote next select shrink')
onoremap <silent> I" :call targets#omap('"', 'quote seekselect shrink')
onoremap <silent> Ilt :call targets#omap('t', 'lastt selectp dropt shrink')
onoremap <silent> Int :call targets#omap('t', 'nextt selectp dropt shrink')
onoremap <silent> It :call targets#omap('t', 'seekselectt dropt shrink')
onoremap <silent> Ila :call targets#omap('<>', 'lastp selectp shrink')
onoremap <silent> Il> :call targets#omap('<>', 'lastp selectp shrink')
onoremap <silent> Il< :call targets#omap('<>', 'lastp selectp shrink')
onoremap <silent> Ina :call targets#omap('<>', 'nextp selectp shrink')
onoremap <silent> In> :call targets#omap('<>', 'nextp selectp shrink')
onoremap <silent> In< :call targets#omap('<>', 'nextp selectp shrink')
onoremap <silent> Ia :call targets#omap('<>', 'seekselectp shrink')
onoremap <silent> I> :call targets#omap('<>', 'seekselectp shrink')
onoremap <silent> I< :call targets#omap('<>', 'seekselectp shrink')
onoremap <silent> Ilr :call targets#omap('[]', 'lastp selectp shrink')
onoremap <silent> Il] :call targets#omap('[]', 'lastp selectp shrink')
onoremap <silent> Il[ :call targets#omap('[]', 'lastp selectp shrink')
onoremap <silent> Inr :call targets#omap('[]', 'nextp selectp shrink')
onoremap <silent> In] :call targets#omap('[]', 'nextp selectp shrink')
onoremap <silent> In[ :call targets#omap('[]', 'nextp selectp shrink')
onoremap <silent> Ir :call targets#omap('[]', 'seekselectp shrink')
onoremap <silent> I] :call targets#omap('[]', 'seekselectp shrink')
onoremap <silent> I[ :call targets#omap('[]', 'seekselectp shrink')
onoremap <silent> IlB :call targets#omap('{}', 'lastp selectp shrink')
onoremap <silent> Il} :call targets#omap('{}', 'lastp selectp shrink')
onoremap <silent> Il{ :call targets#omap('{}', 'lastp selectp shrink')
onoremap <silent> InB :call targets#omap('{}', 'nextp selectp shrink')
onoremap <silent> In} :call targets#omap('{}', 'nextp selectp shrink')
onoremap <silent> In{ :call targets#omap('{}', 'nextp selectp shrink')
onoremap <silent> IB :call targets#omap('{}', 'seekselectp shrink')
onoremap <silent> I} :call targets#omap('{}', 'seekselectp shrink')
onoremap <silent> I{ :call targets#omap('{}', 'seekselectp shrink')
onoremap <silent> Ilb :call targets#omap('()', 'lastp selectp shrink')
onoremap <silent> Il) :call targets#omap('()', 'lastp selectp shrink')
onoremap <silent> Il( :call targets#omap('()', 'lastp selectp shrink')
onoremap <silent> Inb :call targets#omap('()', 'nextp selectp shrink')
onoremap <silent> In) :call targets#omap('()', 'nextp selectp shrink')
onoremap <silent> In( :call targets#omap('()', 'nextp selectp shrink')
onoremap <silent> Ib :call targets#omap('()', 'seekselectp shrink')
onoremap <silent> I) :call targets#omap('()', 'seekselectp shrink')
onoremap <silent> I( :call targets#omap('()', 'seekselectp shrink')
xmap S <Plug>VSurround
nmap [c <Plug>GitGutterPrevHunk
nmap \hr <Plug>GitGutterRevertHunk
nmap \hs <Plug>GitGutterStageHunk
nmap \\u <Plug>CommentaryUndo
nmap \\\ <Plug>CommentaryLine
nmap \\ <Plug>Commentary
xmap \\ <Plug>Commentary
map \ws :ChooseWin
map \ct :w:!cucumber
map \cl :w:exe "!cucumber %" . ":" . line(".")
map \cf :w:!cucumber %
map \rt :w:!rspec --format nested
map \rl :w:exe "!rspec %" . ":" . line(".")
map \rf :w:!rspec % --format nested
map \` v
map \; s
map \w[ = " equalize all windows
map \w] _ " maximize height
map \w+ + " increment height
map \w- - " decrement height
map \yd :bufdo bd
map \yt :ls
map \. :Sexplore
map \cs :Tabularize /:\zs
map \es :Tabularize /=\zs
map \c :Tabularize /:
map \e :Tabularize /=
map \' :NERDTreeToggle
map \y :CtrlPBuffer
map \t 
nmap ]c <Plug>GitGutterNextHunk
xnoremap <silent> aL& :call targets#xmap('&', 'double last select dropr')
onoremap <silent> aL& :call targets#omap('&', 'double last select dropr')
xnoremap <silent> aN& :call targets#xmap('&', 'double next select dropr')
onoremap <silent> aN& :call targets#omap('&', 'double next select dropr')
xnoremap <silent> al& :call targets#xmap('&', 'last select dropr')
onoremap <silent> al& :call targets#omap('&', 'last select dropr')
xnoremap <silent> an& :call targets#xmap('&', 'next select dropr')
onoremap <silent> an& :call targets#omap('&', 'next select dropr')
xnoremap <silent> a& :call targets#xmap('&', 'seekselect dropr')
onoremap <silent> a& :call targets#omap('&', 'seekselect dropr')
xnoremap <silent> aL| :call targets#xmap('|', 'double last select dropr')
onoremap <silent> aL| :call targets#omap('|', 'double last select dropr')
xnoremap <silent> aN| :call targets#xmap('|', 'double next select dropr')
onoremap <silent> aN| :call targets#omap('|', 'double next select dropr')
xnoremap <silent> al| :call targets#xmap('|', 'last select dropr')
onoremap <silent> al| :call targets#omap('|', 'last select dropr')
xnoremap <silent> an| :call targets#xmap('|', 'next select dropr')
onoremap <silent> an| :call targets#omap('|', 'next select dropr')
xnoremap <silent> a| :call targets#xmap('|', 'seekselect dropr')
onoremap <silent> a| :call targets#omap('|', 'seekselect dropr')
xnoremap <silent> aL\ :call targets#xmap('\', 'double last select dropr')
onoremap <silent> aL\ :call targets#omap('\', 'double last select dropr')
xnoremap <silent> aN\ :call targets#xmap('\', 'double next select dropr')
onoremap <silent> aN\ :call targets#omap('\', 'double next select dropr')
xnoremap <silent> al\ :call targets#xmap('\', 'last select dropr')
onoremap <silent> al\ :call targets#omap('\', 'last select dropr')
xnoremap <silent> an\ :call targets#xmap('\', 'next select dropr')
onoremap <silent> an\ :call targets#omap('\', 'next select dropr')
xnoremap <silent> a\ :call targets#xmap('\', 'seekselect dropr')
onoremap <silent> a\ :call targets#omap('\', 'seekselect dropr')
xnoremap <silent> aL/ :call targets#xmap('/', 'double last select dropr')
onoremap <silent> aL/ :call targets#omap('/', 'double last select dropr')
xnoremap <silent> aN/ :call targets#xmap('/', 'double next select dropr')
onoremap <silent> aN/ :call targets#omap('/', 'double next select dropr')
xnoremap <silent> al/ :call targets#xmap('/', 'last select dropr')
onoremap <silent> al/ :call targets#omap('/', 'last select dropr')
xnoremap <silent> an/ :call targets#xmap('/', 'next select dropr')
onoremap <silent> an/ :call targets#omap('/', 'next select dropr')
xnoremap <silent> a/ :call targets#xmap('/', 'seekselect dropr')
onoremap <silent> a/ :call targets#omap('/', 'seekselect dropr')
xnoremap <silent> aL* :call targets#xmap('*', 'double last select dropr')
onoremap <silent> aL* :call targets#omap('*', 'double last select dropr')
xnoremap <silent> aN* :call targets#xmap('*', 'double next select dropr')
onoremap <silent> aN* :call targets#omap('*', 'double next select dropr')
xnoremap <silent> al* :call targets#xmap('*', 'last select dropr')
onoremap <silent> al* :call targets#omap('*', 'last select dropr')
xnoremap <silent> an* :call targets#xmap('*', 'next select dropr')
onoremap <silent> an* :call targets#omap('*', 'next select dropr')
xnoremap <silent> a* :call targets#xmap('*', 'seekselect dropr')
onoremap <silent> a* :call targets#omap('*', 'seekselect dropr')
xnoremap <silent> aL_ :call targets#xmap('_', 'double last select dropr')
onoremap <silent> aL_ :call targets#omap('_', 'double last select dropr')
xnoremap <silent> aN_ :call targets#xmap('_', 'double next select dropr')
onoremap <silent> aN_ :call targets#omap('_', 'double next select dropr')
xnoremap <silent> al_ :call targets#xmap('_', 'last select dropr')
onoremap <silent> al_ :call targets#omap('_', 'last select dropr')
xnoremap <silent> an_ :call targets#xmap('_', 'next select dropr')
onoremap <silent> an_ :call targets#omap('_', 'next select dropr')
xnoremap <silent> a_ :call targets#xmap('_', 'seekselect dropr')
onoremap <silent> a_ :call targets#omap('_', 'seekselect dropr')
xnoremap <silent> aL~ :call targets#xmap('~', 'double last select dropr')
onoremap <silent> aL~ :call targets#omap('~', 'double last select dropr')
xnoremap <silent> aN~ :call targets#xmap('~', 'double next select dropr')
onoremap <silent> aN~ :call targets#omap('~', 'double next select dropr')
xnoremap <silent> al~ :call targets#xmap('~', 'last select dropr')
onoremap <silent> al~ :call targets#omap('~', 'last select dropr')
xnoremap <silent> an~ :call targets#xmap('~', 'next select dropr')
onoremap <silent> an~ :call targets#omap('~', 'next select dropr')
xnoremap <silent> a~ :call targets#xmap('~', 'seekselect dropr')
onoremap <silent> a~ :call targets#omap('~', 'seekselect dropr')
xnoremap <silent> aL= :call targets#xmap('=', 'double last select dropr')
onoremap <silent> aL= :call targets#omap('=', 'double last select dropr')
xnoremap <silent> aN= :call targets#xmap('=', 'double next select dropr')
onoremap <silent> aN= :call targets#omap('=', 'double next select dropr')
xnoremap <silent> al= :call targets#xmap('=', 'last select dropr')
onoremap <silent> al= :call targets#omap('=', 'last select dropr')
xnoremap <silent> an= :call targets#xmap('=', 'next select dropr')
onoremap <silent> an= :call targets#omap('=', 'next select dropr')
xnoremap <silent> a= :call targets#xmap('=', 'seekselect dropr')
onoremap <silent> a= :call targets#omap('=', 'seekselect dropr')
xnoremap <silent> aL- :call targets#xmap('-', 'double last select dropr')
onoremap <silent> aL- :call targets#omap('-', 'double last select dropr')
xnoremap <silent> aN- :call targets#xmap('-', 'double next select dropr')
onoremap <silent> aN- :call targets#omap('-', 'double next select dropr')
xnoremap <silent> al- :call targets#xmap('-', 'last select dropr')
onoremap <silent> al- :call targets#omap('-', 'last select dropr')
xnoremap <silent> an- :call targets#xmap('-', 'next select dropr')
onoremap <silent> an- :call targets#omap('-', 'next select dropr')
xnoremap <silent> a- :call targets#xmap('-', 'seekselect dropr')
onoremap <silent> a- :call targets#omap('-', 'seekselect dropr')
xnoremap <silent> aL+ :call targets#xmap('+', 'double last select dropr')
onoremap <silent> aL+ :call targets#omap('+', 'double last select dropr')
xnoremap <silent> aN+ :call targets#xmap('+', 'double next select dropr')
onoremap <silent> aN+ :call targets#omap('+', 'double next select dropr')
xnoremap <silent> al+ :call targets#xmap('+', 'last select dropr')
onoremap <silent> al+ :call targets#omap('+', 'last select dropr')
xnoremap <silent> an+ :call targets#xmap('+', 'next select dropr')
onoremap <silent> an+ :call targets#omap('+', 'next select dropr')
xnoremap <silent> a+ :call targets#xmap('+', 'seekselect dropr')
onoremap <silent> a+ :call targets#omap('+', 'seekselect dropr')
xnoremap <silent> aL: :call targets#xmap(':', 'double last select dropr')
onoremap <silent> aL: :call targets#omap(':', 'double last select dropr')
xnoremap <silent> aN: :call targets#xmap(':', 'double next select dropr')
onoremap <silent> aN: :call targets#omap(':', 'double next select dropr')
xnoremap <silent> al: :call targets#xmap(':', 'last select dropr')
onoremap <silent> al: :call targets#omap(':', 'last select dropr')
xnoremap <silent> an: :call targets#xmap(':', 'next select dropr')
onoremap <silent> an: :call targets#omap(':', 'next select dropr')
xnoremap <silent> a: :call targets#xmap(':', 'seekselect dropr')
onoremap <silent> a: :call targets#omap(':', 'seekselect dropr')
xnoremap <silent> aL; :call targets#xmap(';', 'double last select dropr')
onoremap <silent> aL; :call targets#omap(';', 'double last select dropr')
xnoremap <silent> aN; :call targets#xmap(';', 'double next select dropr')
onoremap <silent> aN; :call targets#omap(';', 'double next select dropr')
xnoremap <silent> al; :call targets#xmap(';', 'last select dropr')
onoremap <silent> al; :call targets#omap(';', 'last select dropr')
xnoremap <silent> an; :call targets#xmap(';', 'next select dropr')
onoremap <silent> an; :call targets#omap(';', 'next select dropr')
xnoremap <silent> a; :call targets#xmap(';', 'seekselect dropr')
onoremap <silent> a; :call targets#omap(';', 'seekselect dropr')
xnoremap <silent> aL. :call targets#xmap('.', 'double last select dropr')
onoremap <silent> aL. :call targets#omap('.', 'double last select dropr')
xnoremap <silent> aN. :call targets#xmap('.', 'double next select dropr')
onoremap <silent> aN. :call targets#omap('.', 'double next select dropr')
xnoremap <silent> al. :call targets#xmap('.', 'last select dropr')
onoremap <silent> al. :call targets#omap('.', 'last select dropr')
xnoremap <silent> an. :call targets#xmap('.', 'next select dropr')
onoremap <silent> an. :call targets#omap('.', 'next select dropr')
xnoremap <silent> a. :call targets#xmap('.', 'seekselect dropr')
onoremap <silent> a. :call targets#omap('.', 'seekselect dropr')
xnoremap <silent> aL, :call targets#xmap(',', 'double last select dropr')
onoremap <silent> aL, :call targets#omap(',', 'double last select dropr')
xnoremap <silent> aN, :call targets#xmap(',', 'double next select dropr')
onoremap <silent> aN, :call targets#omap(',', 'double next select dropr')
xnoremap <silent> al, :call targets#xmap(',', 'last select dropr')
onoremap <silent> al, :call targets#omap(',', 'last select dropr')
xnoremap <silent> an, :call targets#xmap(',', 'next select dropr')
onoremap <silent> an, :call targets#omap(',', 'next select dropr')
xnoremap <silent> a, :call targets#xmap(',', 'seekselect dropr')
onoremap <silent> a, :call targets#omap(',', 'seekselect dropr')
xnoremap <silent> aL` :call targets#xmap('`', 'quote double last select expand')
onoremap <silent> aL` :call targets#omap('`', 'quote double last select expand')
xnoremap <silent> aN` :call targets#xmap('`', 'quote double next select expand')
onoremap <silent> aN` :call targets#omap('`', 'quote double next select expand')
xnoremap <silent> al` :call targets#xmap('`', 'quote last select expand')
onoremap <silent> al` :call targets#omap('`', 'quote last select expand')
xnoremap <silent> an` :call targets#xmap('`', 'quote next select expand')
onoremap <silent> an` :call targets#omap('`', 'quote next select expand')
xnoremap <silent> a` :call targets#xmap('`', 'quote seekselect expand')
onoremap <silent> a` :call targets#omap('`', 'quote seekselect expand')
xnoremap <silent> aL' :call targets#xmap('''', 'quote double last select expand')
onoremap <silent> aL' :call targets#omap('''', 'quote double last select expand')
xnoremap <silent> aN' :call targets#xmap('''', 'quote double next select expand')
onoremap <silent> aN' :call targets#omap('''', 'quote double next select expand')
xnoremap <silent> al' :call targets#xmap('''', 'quote last select expand')
onoremap <silent> al' :call targets#omap('''', 'quote last select expand')
xnoremap <silent> an' :call targets#xmap('''', 'quote next select expand')
onoremap <silent> an' :call targets#omap('''', 'quote next select expand')
xnoremap <silent> a' :call targets#xmap('''', 'quote seekselect expand')
onoremap <silent> a' :call targets#omap('''', 'quote seekselect expand')
xnoremap <silent> aL" :call targets#xmap('"', 'quote double last select expand')
onoremap <silent> aL" :call targets#omap('"', 'quote double last select expand')
xnoremap <silent> aN" :call targets#xmap('"', 'quote double next select expand')
onoremap <silent> aN" :call targets#omap('"', 'quote double next select expand')
xnoremap <silent> al" :call targets#xmap('"', 'quote last select expand')
onoremap <silent> al" :call targets#omap('"', 'quote last select expand')
xnoremap <silent> an" :call targets#xmap('"', 'quote next select expand')
onoremap <silent> an" :call targets#omap('"', 'quote next select expand')
xnoremap <silent> a" :call targets#xmap('"', 'quote seekselect expand')
onoremap <silent> a" :call targets#omap('"', 'quote seekselect expand')
xnoremap <silent> alt :call targets#xmap('t', 'lastt selectp')
onoremap <silent> alt :call targets#omap('t', 'lastt selectp')
xnoremap <silent> ant :call targets#xmap('t', 'nextt selectp')
onoremap <silent> ant :call targets#omap('t', 'nextt selectp')
xnoremap <silent> at :call targets#xmap('t', 'grow seekselectt')
onoremap <silent> at :call targets#omap('t', 'grow seekselectt')
xnoremap <silent> ala :call targets#xmap('<>', 'lastp selectp')
onoremap <silent> ala :call targets#omap('<>', 'lastp selectp')
xnoremap <silent> al> :call targets#xmap('<>', 'lastp selectp')
onoremap <silent> al> :call targets#omap('<>', 'lastp selectp')
xnoremap <silent> al< :call targets#xmap('<>', 'lastp selectp')
onoremap <silent> al< :call targets#omap('<>', 'lastp selectp')
xnoremap <silent> ana :call targets#xmap('<>', 'nextp selectp')
onoremap <silent> ana :call targets#omap('<>', 'nextp selectp')
xnoremap <silent> an> :call targets#xmap('<>', 'nextp selectp')
onoremap <silent> an> :call targets#omap('<>', 'nextp selectp')
xnoremap <silent> an< :call targets#xmap('<>', 'nextp selectp')
onoremap <silent> an< :call targets#omap('<>', 'nextp selectp')
xnoremap <silent> aa :call targets#xmap('<>', 'grow seekselectp')
onoremap <silent> aa :call targets#omap('<>', 'grow seekselectp')
xnoremap <silent> a> :call targets#xmap('<>', 'grow seekselectp')
onoremap <silent> a> :call targets#omap('<>', 'grow seekselectp')
xnoremap <silent> a< :call targets#xmap('<>', 'grow seekselectp')
onoremap <silent> a< :call targets#omap('<>', 'grow seekselectp')
xnoremap <silent> alr :call targets#xmap('[]', 'lastp selectp')
onoremap <silent> alr :call targets#omap('[]', 'lastp selectp')
xnoremap <silent> al] :call targets#xmap('[]', 'lastp selectp')
onoremap <silent> al] :call targets#omap('[]', 'lastp selectp')
xnoremap <silent> al[ :call targets#xmap('[]', 'lastp selectp')
onoremap <silent> al[ :call targets#omap('[]', 'lastp selectp')
xnoremap <silent> anr :call targets#xmap('[]', 'nextp selectp')
onoremap <silent> anr :call targets#omap('[]', 'nextp selectp')
xnoremap <silent> an] :call targets#xmap('[]', 'nextp selectp')
onoremap <silent> an] :call targets#omap('[]', 'nextp selectp')
xnoremap <silent> an[ :call targets#xmap('[]', 'nextp selectp')
onoremap <silent> an[ :call targets#omap('[]', 'nextp selectp')
xnoremap <silent> ar :call targets#xmap('[]', 'grow seekselectp')
onoremap <silent> ar :call targets#omap('[]', 'grow seekselectp')
xnoremap <silent> a] :call targets#xmap('[]', 'grow seekselectp')
onoremap <silent> a] :call targets#omap('[]', 'grow seekselectp')
xnoremap <silent> a[ :call targets#xmap('[]', 'grow seekselectp')
onoremap <silent> a[ :call targets#omap('[]', 'grow seekselectp')
xnoremap <silent> alB :call targets#xmap('{}', 'lastp selectp')
onoremap <silent> alB :call targets#omap('{}', 'lastp selectp')
xnoremap <silent> al} :call targets#xmap('{}', 'lastp selectp')
onoremap <silent> al} :call targets#omap('{}', 'lastp selectp')
xnoremap <silent> al{ :call targets#xmap('{}', 'lastp selectp')
onoremap <silent> al{ :call targets#omap('{}', 'lastp selectp')
xnoremap <silent> anB :call targets#xmap('{}', 'nextp selectp')
onoremap <silent> anB :call targets#omap('{}', 'nextp selectp')
xnoremap <silent> an} :call targets#xmap('{}', 'nextp selectp')
onoremap <silent> an} :call targets#omap('{}', 'nextp selectp')
xnoremap <silent> an{ :call targets#xmap('{}', 'nextp selectp')
onoremap <silent> an{ :call targets#omap('{}', 'nextp selectp')
xnoremap <silent> aB :call targets#xmap('{}', 'grow seekselectp')
onoremap <silent> aB :call targets#omap('{}', 'grow seekselectp')
xnoremap <silent> a} :call targets#xmap('{}', 'grow seekselectp')
onoremap <silent> a} :call targets#omap('{}', 'grow seekselectp')
xnoremap <silent> a{ :call targets#xmap('{}', 'grow seekselectp')
onoremap <silent> a{ :call targets#omap('{}', 'grow seekselectp')
xnoremap <silent> alb :call targets#xmap('()', 'lastp selectp')
onoremap <silent> alb :call targets#omap('()', 'lastp selectp')
xnoremap <silent> al) :call targets#xmap('()', 'lastp selectp')
onoremap <silent> al) :call targets#omap('()', 'lastp selectp')
xnoremap <silent> al( :call targets#xmap('()', 'lastp selectp')
onoremap <silent> al( :call targets#omap('()', 'lastp selectp')
xnoremap <silent> anb :call targets#xmap('()', 'nextp selectp')
onoremap <silent> anb :call targets#omap('()', 'nextp selectp')
xnoremap <silent> an) :call targets#xmap('()', 'nextp selectp')
onoremap <silent> an) :call targets#omap('()', 'nextp selectp')
xnoremap <silent> an( :call targets#xmap('()', 'nextp selectp')
onoremap <silent> an( :call targets#omap('()', 'nextp selectp')
xnoremap <silent> ab :call targets#xmap('()', 'grow seekselectp')
onoremap <silent> ab :call targets#omap('()', 'grow seekselectp')
xnoremap <silent> a) :call targets#xmap('()', 'grow seekselectp')
onoremap <silent> a) :call targets#omap('()', 'grow seekselectp')
xnoremap <silent> a( :call targets#xmap('()', 'grow seekselectp')
onoremap <silent> a( :call targets#omap('()', 'grow seekselectp')
nmap <silent> b <Plug>CamelCaseMotion_b
xmap <silent> b <Plug>CamelCaseMotion_b
omap <silent> b <Plug>CamelCaseMotion_b
nmap cs <Plug>Csurround
nmap ds <Plug>Dsurround
nmap <silent> e <Plug>CamelCaseMotion_e
xmap <silent> e <Plug>CamelCaseMotion_e
omap <silent> e <Plug>CamelCaseMotion_e
nmap gx <Plug>NetrwBrowseX
xmap gS <Plug>VgSurround
nmap gcu <Plug>CommentaryUndo
nmap gcc <Plug>CommentaryLine
nmap gc <Plug>Commentary
xmap gc <Plug>Commentary
xnoremap <silent> iL& :call targets#xmap('&', 'double last select drop')
onoremap <silent> iL& :call targets#omap('&', 'double last select drop')
xnoremap <silent> iN& :call targets#xmap('&', 'double next select drop')
onoremap <silent> iN& :call targets#omap('&', 'double next select drop')
xnoremap <silent> il& :call targets#xmap('&', 'last select drop')
onoremap <silent> il& :call targets#omap('&', 'last select drop')
xnoremap <silent> in& :call targets#xmap('&', 'next select drop')
onoremap <silent> in& :call targets#omap('&', 'next select drop')
xnoremap <silent> i& :call targets#xmap('&', 'seekselect drop')
onoremap <silent> i& :call targets#omap('&', 'seekselect drop')
xnoremap <silent> iL| :call targets#xmap('|', 'double last select drop')
onoremap <silent> iL| :call targets#omap('|', 'double last select drop')
xnoremap <silent> iN| :call targets#xmap('|', 'double next select drop')
onoremap <silent> iN| :call targets#omap('|', 'double next select drop')
xnoremap <silent> il| :call targets#xmap('|', 'last select drop')
onoremap <silent> il| :call targets#omap('|', 'last select drop')
xnoremap <silent> in| :call targets#xmap('|', 'next select drop')
onoremap <silent> in| :call targets#omap('|', 'next select drop')
xnoremap <silent> i| :call targets#xmap('|', 'seekselect drop')
onoremap <silent> i| :call targets#omap('|', 'seekselect drop')
xnoremap <silent> iL\ :call targets#xmap('\', 'double last select drop')
onoremap <silent> iL\ :call targets#omap('\', 'double last select drop')
xnoremap <silent> iN\ :call targets#xmap('\', 'double next select drop')
onoremap <silent> iN\ :call targets#omap('\', 'double next select drop')
xnoremap <silent> il\ :call targets#xmap('\', 'last select drop')
onoremap <silent> il\ :call targets#omap('\', 'last select drop')
xnoremap <silent> in\ :call targets#xmap('\', 'next select drop')
onoremap <silent> in\ :call targets#omap('\', 'next select drop')
xnoremap <silent> i\ :call targets#xmap('\', 'seekselect drop')
onoremap <silent> i\ :call targets#omap('\', 'seekselect drop')
xnoremap <silent> iL/ :call targets#xmap('/', 'double last select drop')
onoremap <silent> iL/ :call targets#omap('/', 'double last select drop')
xnoremap <silent> iN/ :call targets#xmap('/', 'double next select drop')
onoremap <silent> iN/ :call targets#omap('/', 'double next select drop')
xnoremap <silent> il/ :call targets#xmap('/', 'last select drop')
onoremap <silent> il/ :call targets#omap('/', 'last select drop')
xnoremap <silent> in/ :call targets#xmap('/', 'next select drop')
onoremap <silent> in/ :call targets#omap('/', 'next select drop')
xnoremap <silent> i/ :call targets#xmap('/', 'seekselect drop')
onoremap <silent> i/ :call targets#omap('/', 'seekselect drop')
xnoremap <silent> iL* :call targets#xmap('*', 'double last select drop')
onoremap <silent> iL* :call targets#omap('*', 'double last select drop')
xnoremap <silent> iN* :call targets#xmap('*', 'double next select drop')
onoremap <silent> iN* :call targets#omap('*', 'double next select drop')
xnoremap <silent> il* :call targets#xmap('*', 'last select drop')
onoremap <silent> il* :call targets#omap('*', 'last select drop')
xnoremap <silent> in* :call targets#xmap('*', 'next select drop')
onoremap <silent> in* :call targets#omap('*', 'next select drop')
xnoremap <silent> i* :call targets#xmap('*', 'seekselect drop')
onoremap <silent> i* :call targets#omap('*', 'seekselect drop')
xnoremap <silent> iL_ :call targets#xmap('_', 'double last select drop')
onoremap <silent> iL_ :call targets#omap('_', 'double last select drop')
xnoremap <silent> iN_ :call targets#xmap('_', 'double next select drop')
onoremap <silent> iN_ :call targets#omap('_', 'double next select drop')
xnoremap <silent> il_ :call targets#xmap('_', 'last select drop')
onoremap <silent> il_ :call targets#omap('_', 'last select drop')
xnoremap <silent> in_ :call targets#xmap('_', 'next select drop')
onoremap <silent> in_ :call targets#omap('_', 'next select drop')
xnoremap <silent> i_ :call targets#xmap('_', 'seekselect drop')
onoremap <silent> i_ :call targets#omap('_', 'seekselect drop')
xnoremap <silent> iL~ :call targets#xmap('~', 'double last select drop')
onoremap <silent> iL~ :call targets#omap('~', 'double last select drop')
xnoremap <silent> iN~ :call targets#xmap('~', 'double next select drop')
onoremap <silent> iN~ :call targets#omap('~', 'double next select drop')
xnoremap <silent> il~ :call targets#xmap('~', 'last select drop')
onoremap <silent> il~ :call targets#omap('~', 'last select drop')
xnoremap <silent> in~ :call targets#xmap('~', 'next select drop')
onoremap <silent> in~ :call targets#omap('~', 'next select drop')
xnoremap <silent> i~ :call targets#xmap('~', 'seekselect drop')
onoremap <silent> i~ :call targets#omap('~', 'seekselect drop')
xnoremap <silent> iL= :call targets#xmap('=', 'double last select drop')
onoremap <silent> iL= :call targets#omap('=', 'double last select drop')
xnoremap <silent> iN= :call targets#xmap('=', 'double next select drop')
onoremap <silent> iN= :call targets#omap('=', 'double next select drop')
xnoremap <silent> il= :call targets#xmap('=', 'last select drop')
onoremap <silent> il= :call targets#omap('=', 'last select drop')
xnoremap <silent> in= :call targets#xmap('=', 'next select drop')
onoremap <silent> in= :call targets#omap('=', 'next select drop')
xnoremap <silent> i= :call targets#xmap('=', 'seekselect drop')
onoremap <silent> i= :call targets#omap('=', 'seekselect drop')
xnoremap <silent> iL- :call targets#xmap('-', 'double last select drop')
onoremap <silent> iL- :call targets#omap('-', 'double last select drop')
xnoremap <silent> iN- :call targets#xmap('-', 'double next select drop')
onoremap <silent> iN- :call targets#omap('-', 'double next select drop')
xnoremap <silent> il- :call targets#xmap('-', 'last select drop')
onoremap <silent> il- :call targets#omap('-', 'last select drop')
xnoremap <silent> in- :call targets#xmap('-', 'next select drop')
onoremap <silent> in- :call targets#omap('-', 'next select drop')
xnoremap <silent> i- :call targets#xmap('-', 'seekselect drop')
onoremap <silent> i- :call targets#omap('-', 'seekselect drop')
xnoremap <silent> iL+ :call targets#xmap('+', 'double last select drop')
onoremap <silent> iL+ :call targets#omap('+', 'double last select drop')
xnoremap <silent> iN+ :call targets#xmap('+', 'double next select drop')
onoremap <silent> iN+ :call targets#omap('+', 'double next select drop')
xnoremap <silent> il+ :call targets#xmap('+', 'last select drop')
onoremap <silent> il+ :call targets#omap('+', 'last select drop')
xnoremap <silent> in+ :call targets#xmap('+', 'next select drop')
onoremap <silent> in+ :call targets#omap('+', 'next select drop')
xnoremap <silent> i+ :call targets#xmap('+', 'seekselect drop')
onoremap <silent> i+ :call targets#omap('+', 'seekselect drop')
xnoremap <silent> iL: :call targets#xmap(':', 'double last select drop')
onoremap <silent> iL: :call targets#omap(':', 'double last select drop')
xnoremap <silent> iN: :call targets#xmap(':', 'double next select drop')
onoremap <silent> iN: :call targets#omap(':', 'double next select drop')
xnoremap <silent> il: :call targets#xmap(':', 'last select drop')
onoremap <silent> il: :call targets#omap(':', 'last select drop')
xnoremap <silent> in: :call targets#xmap(':', 'next select drop')
onoremap <silent> in: :call targets#omap(':', 'next select drop')
xnoremap <silent> i: :call targets#xmap(':', 'seekselect drop')
onoremap <silent> i: :call targets#omap(':', 'seekselect drop')
xnoremap <silent> iL; :call targets#xmap(';', 'double last select drop')
onoremap <silent> iL; :call targets#omap(';', 'double last select drop')
xnoremap <silent> iN; :call targets#xmap(';', 'double next select drop')
onoremap <silent> iN; :call targets#omap(';', 'double next select drop')
xnoremap <silent> il; :call targets#xmap(';', 'last select drop')
onoremap <silent> il; :call targets#omap(';', 'last select drop')
xnoremap <silent> in; :call targets#xmap(';', 'next select drop')
onoremap <silent> in; :call targets#omap(';', 'next select drop')
xnoremap <silent> i; :call targets#xmap(';', 'seekselect drop')
onoremap <silent> i; :call targets#omap(';', 'seekselect drop')
xnoremap <silent> iL. :call targets#xmap('.', 'double last select drop')
onoremap <silent> iL. :call targets#omap('.', 'double last select drop')
xnoremap <silent> iN. :call targets#xmap('.', 'double next select drop')
onoremap <silent> iN. :call targets#omap('.', 'double next select drop')
xnoremap <silent> il. :call targets#xmap('.', 'last select drop')
onoremap <silent> il. :call targets#omap('.', 'last select drop')
xnoremap <silent> in. :call targets#xmap('.', 'next select drop')
onoremap <silent> in. :call targets#omap('.', 'next select drop')
xnoremap <silent> i. :call targets#xmap('.', 'seekselect drop')
onoremap <silent> i. :call targets#omap('.', 'seekselect drop')
xnoremap <silent> iL, :call targets#xmap(',', 'double last select drop')
onoremap <silent> iL, :call targets#omap(',', 'double last select drop')
xnoremap <silent> iN, :call targets#xmap(',', 'double next select drop')
onoremap <silent> iN, :call targets#omap(',', 'double next select drop')
xnoremap <silent> il, :call targets#xmap(',', 'last select drop')
onoremap <silent> il, :call targets#omap(',', 'last select drop')
xnoremap <silent> in, :call targets#xmap(',', 'next select drop')
onoremap <silent> in, :call targets#omap(',', 'next select drop')
xnoremap <silent> i, :call targets#xmap(',', 'seekselect drop')
onoremap <silent> i, :call targets#omap(',', 'seekselect drop')
xnoremap <silent> iL` :call targets#xmap('`', 'quote double last select drop')
onoremap <silent> iL` :call targets#omap('`', 'quote double last select drop')
xnoremap <silent> iN` :call targets#xmap('`', 'quote double next select drop')
onoremap <silent> iN` :call targets#omap('`', 'quote double next select drop')
xnoremap <silent> il` :call targets#xmap('`', 'quote last select drop')
onoremap <silent> il` :call targets#omap('`', 'quote last select drop')
xnoremap <silent> in` :call targets#xmap('`', 'quote next select drop')
onoremap <silent> in` :call targets#omap('`', 'quote next select drop')
xnoremap <silent> i` :call targets#xmap('`', 'quote seekselect drop')
onoremap <silent> i` :call targets#omap('`', 'quote seekselect drop')
xnoremap <silent> iL' :call targets#xmap('''', 'quote double last select drop')
onoremap <silent> iL' :call targets#omap('''', 'quote double last select drop')
xnoremap <silent> iN' :call targets#xmap('''', 'quote double next select drop')
onoremap <silent> iN' :call targets#omap('''', 'quote double next select drop')
xnoremap <silent> il' :call targets#xmap('''', 'quote last select drop')
onoremap <silent> il' :call targets#omap('''', 'quote last select drop')
xnoremap <silent> in' :call targets#xmap('''', 'quote next select drop')
onoremap <silent> in' :call targets#omap('''', 'quote next select drop')
xnoremap <silent> i' :call targets#xmap('''', 'quote seekselect drop')
onoremap <silent> i' :call targets#omap('''', 'quote seekselect drop')
xnoremap <silent> iL" :call targets#xmap('"', 'quote double last select drop')
onoremap <silent> iL" :call targets#omap('"', 'quote double last select drop')
xnoremap <silent> iN" :call targets#xmap('"', 'quote double next select drop')
onoremap <silent> iN" :call targets#omap('"', 'quote double next select drop')
xnoremap <silent> il" :call targets#xmap('"', 'quote last select drop')
onoremap <silent> il" :call targets#omap('"', 'quote last select drop')
xnoremap <silent> in" :call targets#xmap('"', 'quote next select drop')
onoremap <silent> in" :call targets#omap('"', 'quote next select drop')
xnoremap <silent> i" :call targets#xmap('"', 'quote seekselect drop')
onoremap <silent> i" :call targets#omap('"', 'quote seekselect drop')
xnoremap <silent> ilt :call targets#xmap('t', 'lastt selectp dropt')
onoremap <silent> ilt :call targets#omap('t', 'lastt selectp dropt')
xnoremap <silent> int :call targets#xmap('t', 'nextt selectp dropt')
onoremap <silent> int :call targets#omap('t', 'nextt selectp dropt')
xnoremap <silent> it :call targets#xmap('t', 'grow seekselectt dropt')
onoremap <silent> it :call targets#omap('t', 'grow seekselectt dropt')
xnoremap <silent> ila :call targets#xmap('<>', 'lastp selectp drop')
onoremap <silent> ila :call targets#omap('<>', 'lastp selectp drop')
xnoremap <silent> il> :call targets#xmap('<>', 'lastp selectp drop')
onoremap <silent> il> :call targets#omap('<>', 'lastp selectp drop')
xnoremap <silent> il< :call targets#xmap('<>', 'lastp selectp drop')
onoremap <silent> il< :call targets#omap('<>', 'lastp selectp drop')
xnoremap <silent> ina :call targets#xmap('<>', 'nextp selectp drop')
onoremap <silent> ina :call targets#omap('<>', 'nextp selectp drop')
xnoremap <silent> in> :call targets#xmap('<>', 'nextp selectp drop')
onoremap <silent> in> :call targets#omap('<>', 'nextp selectp drop')
xnoremap <silent> in< :call targets#xmap('<>', 'nextp selectp drop')
onoremap <silent> in< :call targets#omap('<>', 'nextp selectp drop')
xnoremap <silent> ia :call targets#xmap('<>', 'grow seekselectp drop')
onoremap <silent> ia :call targets#omap('<>', 'grow seekselectp drop')
xnoremap <silent> i> :call targets#xmap('<>', 'grow seekselectp drop')
onoremap <silent> i> :call targets#omap('<>', 'grow seekselectp drop')
xnoremap <silent> i< :call targets#xmap('<>', 'grow seekselectp drop')
onoremap <silent> i< :call targets#omap('<>', 'grow seekselectp drop')
xnoremap <silent> ilr :call targets#xmap('[]', 'lastp selectp drop')
onoremap <silent> ilr :call targets#omap('[]', 'lastp selectp drop')
xnoremap <silent> il] :call targets#xmap('[]', 'lastp selectp drop')
onoremap <silent> il] :call targets#omap('[]', 'lastp selectp drop')
xnoremap <silent> il[ :call targets#xmap('[]', 'lastp selectp drop')
onoremap <silent> il[ :call targets#omap('[]', 'lastp selectp drop')
xnoremap <silent> inr :call targets#xmap('[]', 'nextp selectp drop')
onoremap <silent> inr :call targets#omap('[]', 'nextp selectp drop')
xnoremap <silent> in] :call targets#xmap('[]', 'nextp selectp drop')
onoremap <silent> in] :call targets#omap('[]', 'nextp selectp drop')
xnoremap <silent> in[ :call targets#xmap('[]', 'nextp selectp drop')
onoremap <silent> in[ :call targets#omap('[]', 'nextp selectp drop')
xnoremap <silent> ir :call targets#xmap('[]', 'grow seekselectp drop')
onoremap <silent> ir :call targets#omap('[]', 'grow seekselectp drop')
xnoremap <silent> i] :call targets#xmap('[]', 'grow seekselectp drop')
onoremap <silent> i] :call targets#omap('[]', 'grow seekselectp drop')
xnoremap <silent> i[ :call targets#xmap('[]', 'grow seekselectp drop')
onoremap <silent> i[ :call targets#omap('[]', 'grow seekselectp drop')
xnoremap <silent> ilB :call targets#xmap('{}', 'lastp selectp drop')
onoremap <silent> ilB :call targets#omap('{}', 'lastp selectp drop')
xnoremap <silent> il} :call targets#xmap('{}', 'lastp selectp drop')
onoremap <silent> il} :call targets#omap('{}', 'lastp selectp drop')
xnoremap <silent> il{ :call targets#xmap('{}', 'lastp selectp drop')
onoremap <silent> il{ :call targets#omap('{}', 'lastp selectp drop')
xnoremap <silent> inB :call targets#xmap('{}', 'nextp selectp drop')
onoremap <silent> inB :call targets#omap('{}', 'nextp selectp drop')
xnoremap <silent> in} :call targets#xmap('{}', 'nextp selectp drop')
onoremap <silent> in} :call targets#omap('{}', 'nextp selectp drop')
xnoremap <silent> in{ :call targets#xmap('{}', 'nextp selectp drop')
onoremap <silent> in{ :call targets#omap('{}', 'nextp selectp drop')
xnoremap <silent> iB :call targets#xmap('{}', 'grow seekselectp drop')
onoremap <silent> iB :call targets#omap('{}', 'grow seekselectp drop')
xnoremap <silent> i} :call targets#xmap('{}', 'grow seekselectp drop')
onoremap <silent> i} :call targets#omap('{}', 'grow seekselectp drop')
xnoremap <silent> i{ :call targets#xmap('{}', 'grow seekselectp drop')
onoremap <silent> i{ :call targets#omap('{}', 'grow seekselectp drop')
xnoremap <silent> ilb :call targets#xmap('()', 'lastp selectp drop')
onoremap <silent> ilb :call targets#omap('()', 'lastp selectp drop')
xnoremap <silent> il) :call targets#xmap('()', 'lastp selectp drop')
onoremap <silent> il) :call targets#omap('()', 'lastp selectp drop')
xnoremap <silent> il( :call targets#xmap('()', 'lastp selectp drop')
onoremap <silent> il( :call targets#omap('()', 'lastp selectp drop')
xnoremap <silent> inb :call targets#xmap('()', 'nextp selectp drop')
onoremap <silent> inb :call targets#omap('()', 'nextp selectp drop')
xnoremap <silent> in) :call targets#xmap('()', 'nextp selectp drop')
onoremap <silent> in) :call targets#omap('()', 'nextp selectp drop')
xnoremap <silent> in( :call targets#xmap('()', 'nextp selectp drop')
onoremap <silent> in( :call targets#omap('()', 'nextp selectp drop')
xnoremap <silent> ib :call targets#xmap('()', 'grow seekselectp drop')
onoremap <silent> ib :call targets#omap('()', 'grow seekselectp drop')
xnoremap <silent> i) :call targets#xmap('()', 'grow seekselectp drop')
onoremap <silent> i) :call targets#omap('()', 'grow seekselectp drop')
xnoremap <silent> i( :call targets#xmap('()', 'grow seekselectp drop')
onoremap <silent> i( :call targets#omap('()', 'grow seekselectp drop')
xmap i,e <Plug>CamelCaseMotion_ie
xmap i,b <Plug>CamelCaseMotion_ib
xmap i,w <Plug>CamelCaseMotion_iw
omap i,e <Plug>CamelCaseMotion_ie
omap i,b <Plug>CamelCaseMotion_ib
omap i,w <Plug>CamelCaseMotion_iw
nmap mx <Plug>ClearAllBookmarks
nmap mc <Plug>ClearBookmarks
nmap mp <Plug>PrevBookmark
nmap mn <Plug>NextBookmark
nmap mi <Plug>Annotate
nmap mm <Plug>ToggleBookmark
nmap ma <Plug>ShowAllBookmarks
nmap <silent> w <Plug>CamelCaseMotion_w
xmap <silent> w <Plug>CamelCaseMotion_w
omap <silent> w <Plug>CamelCaseMotion_w
nmap ySS <Plug>YSsurround
nmap ySs <Plug>YSsurround
nmap yss <Plug>Yssurround
nmap yS <Plug>YSurround
nmap ys <Plug>Ysurround
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#NetrwBrowseX(expand("<cfile>"),0)
nnoremap <silent> <Plug>ZoomWin :sil call ZoomWin#ZoomWin()
vnoremap <silent> <Plug>(wildfire-water) :call wildfire#water(v:count1)
vnoremap <silent> <Plug>(wildfire-fuel) :call wildfire#fuel(v:count1)
nnoremap <silent> <Plug>(wildfire-fuel) :call wildfire#start(v:count1)
nnoremap <silent> <Plug>SurroundRepeat .
nnoremap <silent> <Plug>GitGutterRevertHunk :GitGutterRevertHunk
nnoremap <silent> <Plug>GitGutterStageHunk :GitGutterStageHunk
nnoremap <silent> <expr> <Plug>GitGutterPrevHunk &diff ? '[c' : ":\execute v:count1 . 'GitGutterPrevHunk'\"
nnoremap <silent> <expr> <Plug>GitGutterNextHunk &diff ? ']c' : ":\execute v:count1 . 'GitGutterNextHunk'\"
nnoremap <Plug>FireplaceSource :Source 
nnoremap <silent> <Plug>FireplaceCountPrint :Eval
nnoremap <silent> <Plug>(choosewin) :call choosewin#start(range(1, winnr('$')))
nnoremap <silent> <Plug>ClearAllBookmarks :ClearAllBookmarks
nnoremap <silent> <Plug>ClearBookmarks :ClearBookmarks
nnoremap <silent> <Plug>PrevBookmark :PrevBookmark
nnoremap <silent> <Plug>NextBookmark :NextBookmark
nnoremap <silent> <Plug>Annotate :Annotate
nnoremap <silent> <Plug>ToggleBookmark :ToggleBookmark
nnoremap <silent> <Plug>ShowAllBookmarks :ShowAllBookmarks
vnoremap <Plug>(EmmetCodePretty) :call emmet#codePretty()
vnoremap <Plug>(EmmetMergeLines) :call emmet#mergeLines()
nnoremap <Plug>(EmmetAnchorizeSummary) :call emmet#anchorizeURL(1)
nnoremap <Plug>(EmmetAnchorizeURL) :call emmet#anchorizeURL(0)
nnoremap <Plug>(EmmetRemoveTag) :call emmet#removeTag()
nnoremap <Plug>(EmmetSplitJoinTag) :call emmet#splitJoinTag()
nnoremap <Plug>(EmmetToggleComment) :call emmet#toggleComment()
nnoremap <Plug>(EmmetImageSize) :call emmet#imageSize()
nnoremap <Plug>(EmmetMovePrev) :call emmet#moveNextPrev(1)
nnoremap <Plug>(EmmetMoveNext) :call emmet#moveNextPrev(0)
vnoremap <Plug>(EmmetBalanceTagOutward) :call emmet#balanceTag(-2)
nnoremap <Plug>(EmmetBalanceTagOutward) :call emmet#balanceTag(-1)
vnoremap <Plug>(EmmetBalanceTagInward) :call emmet#balanceTag(2)
nnoremap <Plug>(EmmetBalanceTagInward) :call emmet#balanceTag(1)
nnoremap <Plug>(EmmetExpandWord) :call emmet#expandAbbr(1,"")
vnoremap <Plug>(EmmetExpandAbbr) :call emmet#expandAbbr(2,"")
nnoremap <Plug>(EmmetExpandAbbr) :call emmet#expandAbbr(3,"")
vnoremap <silent> <Plug>CamelCaseMotion_ie :call camelcasemotion#InnerMotion('e',v:count1)
vnoremap <silent> <Plug>CamelCaseMotion_ib :call camelcasemotion#InnerMotion('b',v:count1)
vnoremap <silent> <Plug>CamelCaseMotion_iw :call camelcasemotion#InnerMotion('w',v:count1)
onoremap <silent> <Plug>CamelCaseMotion_ie :call camelcasemotion#InnerMotion('e',v:count1)
onoremap <silent> <Plug>CamelCaseMotion_ib :call camelcasemotion#InnerMotion('b',v:count1)
onoremap <silent> <Plug>CamelCaseMotion_iw :call camelcasemotion#InnerMotion('w',v:count1)
vnoremap <silent> <Plug>CamelCaseMotion_e :call camelcasemotion#Motion('e',v:count1,'v')
vnoremap <silent> <Plug>CamelCaseMotion_b :call camelcasemotion#Motion('b',v:count1,'v')
vnoremap <silent> <Plug>CamelCaseMotion_w :call camelcasemotion#Motion('w',v:count1,'v')
onoremap <silent> <Plug>CamelCaseMotion_e :call camelcasemotion#Motion('e',v:count1,'o')
onoremap <silent> <Plug>CamelCaseMotion_b :call camelcasemotion#Motion('b',v:count1,'o')
onoremap <silent> <Plug>CamelCaseMotion_w :call camelcasemotion#Motion('w',v:count1,'o')
nnoremap <silent> <Plug>CamelCaseMotion_e :call camelcasemotion#Motion('e',v:count1,'n')
nnoremap <silent> <Plug>CamelCaseMotion_b :call camelcasemotion#Motion('b',v:count1,'n')
nnoremap <silent> <Plug>CamelCaseMotion_w :call camelcasemotion#Motion('w',v:count1,'n')
map <BS> <Plug>(wildfire-water)
vmap <D-x> "*d
vmap <D-c> "*y
vmap <D-v> "-d"*P
nmap <D-v> "*P
imap S <Plug>ISurround
imap s <Plug>Isurround
imap 	 <Plug>SuperTabForward
imap  <Plug>Isurround
imap A <Plug>(EmmetAnchorizeSummary)
imap a <Plug>(EmmetAnchorizeURL)
imap k <Plug>(EmmetRemoveTag)
imap j <Plug>(EmmetSplitJoinTag)
imap / <Plug>(EmmetToggleComment)
imap i <Plug>(EmmetImageSize)
imap N <Plug>(EmmetMovePrev)
imap n <Plug>(EmmetMoveNext)
imap D <Plug>(EmmetBalanceTagOutward)
imap d <Plug>(EmmetBalanceTagInward)
imap ; <Plug>(EmmetExpandWord)
imap , <Plug>(EmmetExpandAbbr)
nnoremap § :nohlsearch
cmap w!! %!sudo tee > /dev/null %
let &cpo=s:cpo_save
unlet s:cpo_save
set autoread
set background=dark
set backspace=indent,eol,start
set clipboard=unnamed
set expandtab
set fileencodings=ucs-bom,utf-8,default,latin1
set helplang=en
set hidden
set history=100
set hlsearch
set ignorecase
set incsearch
set iskeyword=@,48-57,_,192-255,-,$,#,.
set laststatus=2
set lazyredraw
set listchars=tab:\ \ ,trail:·
set operatorfunc=<SNR>65_go
set ruler
set runtimepath=~/.vim,~/.vim/bundle/ack.vim,~/.vim/bundle/camelcasemotion,~/.vim/bundle/CSApprox,~/.vim/bundle/ctrlp.vim,~/.vim/bundle/emmet-vim,~/.vim/bundle/Gist.vim,~/.vim/bundle/gruvbox,~/.vim/bundle/html5.vim,~/.vim/bundle/nerdtree,~/.vim/bundle/paredit.vim,~/.vim/bundle/rainbow_parentheses.vim,~/.vim/bundle/supertab,~/.vim/bundle/syntastic,~/.vim/bundle/Tabmerge,~/.vim/bundle/tabular,~/.vim/bundle/targets.vim,~/.vim/bundle/tern_for_vim,~/.vim/bundle/textutil.vim,~/.vim/bundle/tomorrow-night-vim,~/.vim/bundle/vim-airline,~/.vim/bundle/vim-bookmarks,~/.vim/bundle/vim-choosewin,~/.vim/bundle/vim-classpath,~/.vim/bundle/vim-clojure-static,~/.vim/bundle/vim-colors-solarized,~/.vim/bundle/vim-commentary,~/.vim/bundle/vim-css-color,~/.vim/bundle/vim-cucumber,~/.vim/bundle/vim-dispatch,~/.vim/bundle/vim-endwise,~/.vim/bundle/vim-fireplace,~/.vim/bundle/vim-fugitive,~/.vim/bundle/vim-gitgutter,~/.vim/bundle/vim-haml,~/.vim/bundle/vim-javascript-syntax,~/.vim/bundle/vim-localrc,~/.vim/bundle/vim-markdown,~/.vim/bundle/vim-poly
set shiftwidth=4
set shortmess=filnxtToOI
set showcmd
set showmatch
set smartcase
set splitbelow
set splitright
set statusline=%f\ %=L:%l/%L\ %c\ (%p%%)
set noswapfile
set tabstop=4
set ttimeoutlen=100
set viminfo=!,'100,<50,s10,h
set visualbell
set wildignore=*/.git/*,*/.hg/*,*/.svn/*.,*/.DS_Store
set wildmenu
set nowritebackup
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/code/wedding
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +56 public/stylesheets/base/_layout.scss
badd +1 public/stylesheets/base/_type.scss
argglobal
silent! argdel *
argadd public/lib/modules/accomodation/accomodation.client.module.js
edit public/stylesheets/base/_layout.scss
set splitbelow splitright
wincmd t
set winheight=1 winwidth=1
argglobal
setlocal keymap=
setlocal noarabic
setlocal noautoindent
setlocal backupcopy=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
set colorcolumn=80
setlocal colorcolumn=80
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=//\ %s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=^\\s*\\%(@mixin\\|=\\)
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'scss'
setlocal filetype=scss
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=marker
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=^\\s*@import\\s\\+\\%(url(\\)\\=[\"']\\=
setlocal includeexpr=substitute(v:fname,'\\%(.*/\\|^\\)\\zs','_','')
setlocal indentexpr=GetCSSIndent()
setlocal indentkeys=0{,0},!^F,o,O
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,-,$,#,.
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
set list
setlocal list
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=csscomplete#CompleteCSS
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!airline#statusline(1)
setlocal suffixesadd=.sass,.scss,.css
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'scss'
setlocal syntax=scss
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
let s:l = 54 - ((32 * winheight(0) + 16) / 33)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
54
normal! 0
tabnext 1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToOI
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
