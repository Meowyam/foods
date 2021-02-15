{-# LANGUAGE CPP #-}
{-# LANGUAGE NoRebindableSyntax #-}
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
module Paths_calc (
    version,
    getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

#if defined(VERSION_base)

#if MIN_VERSION_base(4,0,0)
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#else
catchIO :: IO a -> (Exception.Exception -> IO a) -> IO a
#endif

#else
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#endif
catchIO = Exception.catch

version :: Version
version = Version [0,1] []
bindir, libdir, dynlibdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/home/meowyam/nlg/gf-contrib/gf1/calc/.stack-work/install/x86_64-linux-tinfo6/a85861620a73d44f77f8e6ef97f0f9ad4d9bd60a7d3f882baadd2635c1fbec05/8.4.4/bin"
libdir     = "/home/meowyam/nlg/gf-contrib/gf1/calc/.stack-work/install/x86_64-linux-tinfo6/a85861620a73d44f77f8e6ef97f0f9ad4d9bd60a7d3f882baadd2635c1fbec05/8.4.4/lib/x86_64-linux-ghc-8.4.4/calc-0.1-KPG0EpIh0r75yZcSjViHsp-Calc"
dynlibdir  = "/home/meowyam/nlg/gf-contrib/gf1/calc/.stack-work/install/x86_64-linux-tinfo6/a85861620a73d44f77f8e6ef97f0f9ad4d9bd60a7d3f882baadd2635c1fbec05/8.4.4/lib/x86_64-linux-ghc-8.4.4"
datadir    = "/home/meowyam/nlg/gf-contrib/gf1/calc/.stack-work/install/x86_64-linux-tinfo6/a85861620a73d44f77f8e6ef97f0f9ad4d9bd60a7d3f882baadd2635c1fbec05/8.4.4/share/x86_64-linux-ghc-8.4.4/calc-0.1"
libexecdir = "/home/meowyam/nlg/gf-contrib/gf1/calc/.stack-work/install/x86_64-linux-tinfo6/a85861620a73d44f77f8e6ef97f0f9ad4d9bd60a7d3f882baadd2635c1fbec05/8.4.4/libexec/x86_64-linux-ghc-8.4.4/calc-0.1"
sysconfdir = "/home/meowyam/nlg/gf-contrib/gf1/calc/.stack-work/install/x86_64-linux-tinfo6/a85861620a73d44f77f8e6ef97f0f9ad4d9bd60a7d3f882baadd2635c1fbec05/8.4.4/etc"

getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "calc_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "calc_libdir") (\_ -> return libdir)
getDynLibDir = catchIO (getEnv "calc_dynlibdir") (\_ -> return dynlibdir)
getDataDir = catchIO (getEnv "calc_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "calc_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "calc_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
