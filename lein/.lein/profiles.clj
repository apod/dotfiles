{:user {:plugins [[lein-ancient "0.6.10"]
                  [lein-try "0.4.3"]]}
 :repl {:dependencies [[org.clojure/tools.nrepl "0.2.12"]
                       [spyscope "0.1.6"]]
        :injections [(require 'spyscope.core)]}}
