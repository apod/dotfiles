{:user {:plugins [[lein-ancient "0.6.10"]
                  [lein-try "0.4.3"]
                  [lein-cljfmt "0.5.6"]
                  [venantius/yagni "0.1.4"]
                  [lein-kibit "0.1.6-beta2"]
                  [jonase/eastwood "0.2.4"]]}
 :repl {:dependencies [[org.clojure/tools.nrepl "0.2.12"]
                       [im.chit/lucid.core.debug "1.3.6"]
                       [im.chit/lucid.package "1.3.6"]
                       [spyscope "0.1.6"]]
        :injections [(require '[spyscope.core :refer :all])
                     (require '[lucid.core.debug :refer :all])
                     (require '[lucid.package :refer [pull]])]}}
