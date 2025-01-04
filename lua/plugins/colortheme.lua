return {
    'Shatur/neovim-ayu',
    lazy = false,
    priority = 1000,
    config = function()
        -- Memuat tema Ayu
        vim.cmd('colorscheme ayu')

        -- Membuat latar belakang transparan
        vim.cmd('hi Normal guibg=NONE')        -- Menetapkan latar belakang Normal menjadi transparan
        vim.cmd('hi NormalNC guibg=NONE')      -- Menetapkan latar belakang NormalNC menjadi transparan (untuk window non-fokus)
        vim.cmd('hi StatusLine guibg=NONE')    -- Menetapkan latar belakang StatusLine menjadi transparan
        vim.cmd('hi VertSplit guibg=NONE')     -- Menetapkan latar belakang VertSplit menjadi transparan
        vim.cmd('hi SignColumn guibg=NONE')    -- Menetapkan latar belakang SignColumn menjadi transparan

        -- Memberikan kontras warna pada angka baris tanpa latar belakang
        vim.cmd('hi LineNr guifg=#A8A8A8')  -- Menetapkan warna angka baris dengan kontras terang (misalnya abu-abu terang)
        vim.cmd('hi CursorLineNr guifg=#FFCC00')  -- Memberikan warna kontras yang mencolok pada angka baris di baris yang sedang dipilih (misalnya kuning)
    end
}
