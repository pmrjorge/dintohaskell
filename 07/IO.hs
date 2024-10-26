module UnderstandingIO where
import System.IO (openFile, IOMode (ReadMode, WriteMode), hGetContents, hPutStr)
longCopy :: FilePath -> FilePath -> IO ()
longCopy src dst = openFile src ReadMode >>= 
                    hGetContents >>=
                    \contents -> openFile dst WriteMode >>=
                    flip hPutStr contents

