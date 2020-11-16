import Text.Pandoc.JSON
import Network.Mime
import Data.Text as T
import Data.ByteString.Char8 as BS
import System.Process

go :: Inline -> IO Inline
go (Image alt (src,title)) =
  case BS.unpack $ defaultMimeLookup $ T.pack src of
    "image/svg+xml" -> do
      let newsrc=src++".pdf"
      _ <- readProcess "inkscape" ["--export-pdf",newsrc,src] []
      return $ Image alt (newsrc,title)
    _ -> return $ Image alt (src,title)
go a = return a

main :: IO ()
main = toJSONFilter go
