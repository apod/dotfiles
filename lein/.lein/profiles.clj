{:user {:plugins [[lein-ancient "0.6.8"]
                  [lein-try "0.4.3"]]}
 :repl {:plugins [[cider/cider-nrepl "0.11.0-SNAPSHOT"]
                  [refactor-nrepl "2.0.0-SNAPSHOT"]]
        :dependencies [[org.clojure/tools.nrepl "0.2.12"]
                       [im.chit/vinyasa "0.4.2"]
                       [alembic "0.3.2"]]
        :injections
        [(require '[vinyasa.inject :as inject])
         (inject/in
          [vinyasa.inject :refer [inject [in inject-in]]]
          [clojure.pprint pprint]
          [clojure.java.shell :refer [sh]]

          ;; Dependency distiller
          [alembic.still :refer [[load-project load-project-clj] [distill pull]]]

          clojure.core
          [vinyasa.reflection .> .? .* .% .%> .& .>ns .>var])]}}

