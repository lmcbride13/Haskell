sayHello :: String  -> IO ()
sayHello x =
  putStrLn ("Hello, " ++ x ++ "!")

double x = x * 2