-- Examples from
-- http://www.haskell.org/haskellwiki/Gtk2Hs/Tutorials/Intro
import Graphics.UI.Gtk
import Control.Monad.Trans(liftIO)

main = do
    initGUI
    window <- windowNew
    window `on` deleteEvent $ liftIO mainQuit >> return False
    -- ^ IE, on window deleteEvent ...
    widgetShowAll window
    mainGUI
