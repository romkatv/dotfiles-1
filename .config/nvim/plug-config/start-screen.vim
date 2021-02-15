let g:startify_session_dir = '~/.config/nvim/session'

let g:startify_lists = [
          \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
          \ { 'type': 'files',     'header': ['   Files']            },
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
          \ ]

let g:startify_bookmarks = [
            \ { 'i': '~/.config/nvim/init.vim' },
            \ { 'p': '~/Documents/Projects' },
            \ '~/Documents/Projects/Python',
            \ '~/Documents/Projects/Websites',
            \ '~/Documents/Projects/Electronics',
            \ '~/Documents/Projects/Java',
            \ ]

let g:startify_custom_header = [
  \ '   _____   ____    ______                 ________',
  \ '   ___  | / /_ |  / /__(_)______ ___      ___  __ \_______   __',
  \ '   __   |/ /__ | / /__  /__  __ `__ \     __  / / /  _ \_ | / /',
  \ '   _  /|  / __ |/ / _  / _  / / / / /     _  /_/ //  __/_ |/ /',
  \ '   /_/ |_/  _____/  /_/  /_/ /_/ /_/      /_____/ \___/_____/',
  \ ]
