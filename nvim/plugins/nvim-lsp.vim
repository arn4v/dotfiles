let g:completion_enable_auto_popup = 1
let g:completion_enable_auto_hover = 1
let g:completion_trigger_character = ['.', '::']

inoremap <silent><expr> <c-space> completion#trigger_completion()
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<S-TAB>"


" GoTo code navigation.
nnoremap <leader>gi <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <leader>gy <cmd>lua vim.lsp.buf.type_definition()<CR>
nnoremap <leader>gd <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <leader>gD <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <leader>gi <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <leader>gr <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <leader>rr <cmd>lua vim.lsp.buf.rename()<CR>
nnoremap <leader>h  <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <leader>K  <cmd>lua vim.lsp.buf.signature_help()<CR>
" nnoremap <silent>g0 <cmd>lua vim.lsp.buf.document_symbol()<CR>
" nnoremap <silent>gW <cmd>lua vim.lsp.buf.workspace_symbol()<CR>
" nnoremap <leader>g[ <Plug>(coc-diagnostic-prev)
" nnoremap <leader>g] <Plug>(coc-diagnostic-next)
" nnoremap <silent> <leader>gp <Plug>(coc-diagnostic-prev-error)
" nnoremap <silent> <leader>gn <Plug>(coc-diagnostic-next-error)

lua << EOF
local nvim_lsp = require('nvim_lsp')
local diagnostic = require('diagnostic')
local completion = require('completion')
local lsp_status = require('lsp-status')

local on_attach = function()
        completion.on_attach()
        diagnostic.on_attach()
end

local servers = { 'tsserver', 'bashls', 'dockerls', 'jsonls', 'pyls', 'vimls' }
for _, lsp in ipairs(servers) do
  lsp_status.register_progress()
  lsp_status.config({
    status_symbol = '',
    indicator_errors = 'e',
    indicator_warnings = 'w',
    indicator_info = 'i',
    indicator_hint = 'h',
    indicator_ok = '✔️',
    spinner_frames = { '⣾', '⣽', '⣻', '⢿', '⡿', '⣟', '⣯', '⣷' },
  })
  nvim_lsp[lsp].setup {
    on_attach = on_attach,
    capabilities = lsp_status.capabilities
}
end
EOF
