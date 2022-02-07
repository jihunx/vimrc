set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'nanotech/jellybeans.vim'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/nerdtree'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'airblade/vim-gitgutter' " vim with git status(added, modified, and removed lines)
Plugin 'tpope/vim-fugitive' " vim with git command(e.g., Gdiff)
Plugin 'vim-airline/vim-airline' " vim status bar
Plugin 'vim-airline/vim-airline-themes'
Plugin 'blueyed/vim-diminactive'

call vundle#end()

" for jellybeans
colorscheme jellybeans

" for taglist
nmap <F8> :Tagbar<CR>

" for indent guide
let g:indentguides_spacechar = '┆'
let g:indentguides_tabchar = '|'
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1

" for vim-airline
let g:airline#extensions#tabline#enabled = 1 		" turn on buffer list
let g:airline_theme='hybrid'
set laststatus=2 									" turn on bottom bar
let mapleader = ","
nnoremap <leader>q :bp<CR>
nnoremap <leader>w :bn<CR>

" for blueyed/vim-diminactive
let g:diminactive_enable_focus = 1

" Options
syntax enable										" 구문강조 사용
set number											" 행 번호 표시, set nu도 가능
set t_Co=256										" 색 조정
set autoindent										" 자동 들여쓰기
set smartindent										" 스마트한 들여쓰기
set cindent											" C 언어 자동 들여쓰기
set shiftwidth=4									" 자동 들여쓰기 4칸
set tabstop=4										" 탭을 4칸으로
set ignorecase										" 검색시 대소문자 무시, set ic도 가능
set hlsearch										" 검색어 강조, set hls도 가능
set cursorline										" 편집 위치에 커서 라인 표시
set incsearch						  				" 키워드 입력시 점진적 검색
set wmnu											" tab을 눌렀을 때 자동 완성 목록 표시
filetype indent on									" 파일 종류에 따른 구문강조
highlight Comment term=bold cterm=bold ctermfg=4	" 코멘트 하이라이트
" set nowrapscan									" 검색할 때 문서의 끝에서 처음으로 안 돌아감
" set background=dark								" 하이라이팅 light / dark
" set nobackup										" 백업 파일을 안 만듦
" set nocompatible									" 오리지날 VI와 호환하지 않음
" set backspace=eol,start,indent					" 줄의 끝, 시작, 들여쓰기에서 백스페이스시 이전줄로
" set ruler						      				" 화면 우측 하단에 현재 커서의 위치(줄,칸) 표시
" set laststatus=2									" 상태바 표시를 항상한다
" set fencs=ucs-bom,utf-8,euc-kr.latin1				" 한글 파일은 euc-kr로, 유니코드는 유니코드로
" set fileencoding=utf-8							" 파일저장인코딩
" set tenc=utf-8									" 터미널 인코딩
" set history=1000									" vi 편집기록 기억갯수 .viminfo에 기록
" set wrap
" set noswapfile
" set lbr
" set visualbell					                " 키를 잘못눌렀을 때 화면 프레시
" set mouse=a						                " vim에서 마우스 사용

" Shortcuts
map <F5> :NERDTreeToggle<cr>

" 마지막으로 수정된 곳에 커서를 위치함
au BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\ exe "norm g`\"" |
\ endif
