call plug#begin('~/.vim/plugged')






Plug 'mattn/emmet-vim'


  "colorschemes
Plug  'morhetz/gruvbox'    
      "avto_skobki
        Plug 'jiangmiao/auto-pairs'
          " Use release branch (recommend)
           Plug 'neoclide/coc.nvim', {'branch': 'release'}

            Plug 'tpope/vim-surround'
                Plug 'tpope/vim-commentary'
                  Plug 'w0rp/ale'
                      
                    
                    
                          Plug 'SirVer/ultisnips'
                             Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle'  } 
                             Plug 'itchyny/lightline.vim' 

  call plug#end()





  set number
    set shiftwidth=4
     set smarttab
     set tabstop=2
        set expandtab
        set t_vb=
        set novisualbell
        set nobackup
        set noswapfile
        set encoding=utf-8
       
        set wrap
        set linebreak
        set t_Co=256

         

	  syntax on

	     colorscheme gruvbox
	    set background=dark
              

	        "mappings
		  map <C-n> :NERDTreeToggle<CR>







augroup EmmetSettings
      autocmd! FileType html imap <tab> <plug>(emmet-expand-abbr)
  augroup END














" let g:user_emmet_expandabbr_key='<Tab>'
" imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")
" let g:user_emmet_settings = {
  \  'javascript.jsx' : {
   \      'extends' : 'jsx',
  \  },
 \} 






 map <silent> <C-h> :call WinMove('h')<CR>
map <silent> <C-j> :call WinMove('j')<CR>
map <silent> <C-k> :call WinMove('k')<CR>
map <silent> <C-l> :call WinMove('l')<CR>


"Удобное управление окнами
function! WinMove(key)
  let t:curwin = winnr()
  exec "wincmd ".a:key
  if (t:curwin == winnr())
    if (match(a:key,'[jk]'))
      wincmd v
    else
      wincmd s
    endif
    exec "wincmd ".a:key
  endif
endfunction 
