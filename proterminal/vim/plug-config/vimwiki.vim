" Set syntax to markdown
" + add markdown to html converter (see https://github.com/patrickdavey/vimwiki_markdown)
let g:vimwiki_list = [{'path': '~/wiki', 'template_path': '~/wiki/templates/',
          \ 'template_default': 'default', 'syntax': 'markdown', 'ext': '.md',
          \ 'path_html': '~/wiki/html/', 'custom_wiki2html': 'vimwiki_markdown',
          \ 'html_filename_parameterization': 1,
          \ 'template_ext': '.tpl'}]
