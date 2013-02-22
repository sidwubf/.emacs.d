(require 'whitespace)
(global-whitespace-mode)
(setq whitespace-style
      '(face trailing))
;(setq whitespace-style
;      '(face trailing tabs lines lines-tail empty
;        space-after-tab space-before-tab))
;(add-hook 'before-save-hook 'delete-trailing-whitespace)
;(setq whitespace-display-mappings
; '(
;   (space-mark 32 [183] [46]) ; normal space, ·
;   (space-mark 160 [164] [95])
;   (space-mark 2208 [2212] [95])
;   (space-mark 2336 [2340] [95])
;   (space-mark 3616 [3620] [95])
;   (space-mark 3872 [3876] [95])
;   (newline-mark 10 [182 10]) ; newlne, ¶
;   (tab-mark 9 [9655 9] [92 9]) ; tab, ▷
;))
