{:user {:dependencies [[alembic "0.3.2"]]
        :plugins [[refactor-nrepl "3.1.0"]
                  [cider/cider-nrepl "0.26.0"]
                  [lein-license "1.0.0"]
                  [com.gfredericks/lein-shorthand "0.4.1"]]
        :shorthand {. [clojure.pprint/pprint
                       alembic.still/distill
                       alembic.still/lein]}}}
