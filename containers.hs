{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExtendedDefaultRules #-}

module Main where

import Prelude hiding (writeFile)
import Lucid
import Lucid.Base
import Data.List (sort)
import Data.Text (Text, unpack)
import Data.Text.Lazy.IO (writeFile)
import Control.Monad (mapM_, join)

section :: [Text] -> Html ()
section (title:links) =
  details_ [class_ "section"] $ do
    header title
    block links

header :: Text -> Html ()
header = summary_ [class_ "header"] . toHtml

block :: [Text] -> Html ()
block = div_ [class_ "block"] . mapM_ (join item)

item :: Text -> Text -> Html ()
item url text = a_ [class_ "item", href_ url] $ toHtml text

main :: IO ()
main = do
  writeFile "containers.html" $ renderText $ do
    doctype_
    html_ [lang_ "en"] $ do
      head_ $ do
        meta_ [charset_ "utf-8"]
        meta_ [name_ "viewport", content_ "width=device-width, initial-scale=1, shrink-to-fit=no"]
        title_ "Containers"
        link_ [rel_ "shortcut icon", type_ "image/png", href_ "https://kubernetes.io/images/favicon.png"]
        style_ $
          "html, body { " <>
            "font-size: 12pt;" <>
            "font-family: Avenir, Helvetica, Arial;" <>
            "font-weight: 300;" <>
            "line-height: 1.5;" <>
            "padding: 0rem;" <>
            "background: #fcfcfc;" <>
          "}" <>
          "*, *:before, *:after {" <>
            "font-size: inherit;" <>
            "font-family: inherit;" <>
            "font-weight: inherit;" <>
            "line-height: inherit;" <>
            "margin: 0px;" <>
            "padding: 0px;" <>
            "border-width: 0px;" <>
            "background: inherit;" <>
          "}" <>
          ".section {" <>
            "border-top: 0.5px solid rgb(175,175,175);" <>
          "}" <>
          ".header {" <>
            "font-size: 14pt;" <>
            "font-weight: 400;" <>
            "padding: 1em 2rem;" <>
            "cursor: pointer;" <>
          "}" <>
          ".header:hover {" <>
            "background: #f0f0f0;" <>
          "}" <>
          ".header { display: block; }" <>
          ".header::-webkit-details-marker { display: none; }" <>
          ".block {" <>
            "padding: 0 0 1rem 0;" <>
          "}" <>
          ".item {" <>
            "display: block;" <>
            "padding-left: 2rem;" <>
            "overflow: hidden;" <>
            "white-space: nowrap;" <>
          "}" <>
          ".item:hover {" <>
            "background: #f0f0f0;" <>
          "}" <>
          "a:link { text-decoration:inherit; }" <>
          "a:visited { text-decoration:inherit; }" <>
          "a:hover { text-decoration:inherit; }" <>
          "a:active { text-decoration:inherit; }" <>
          "a:focus { background: rgb(229,248,226); }" <>
          "* { outline-style:none; outline-width:0px; }"
      body_ $ do
        (`with` [open_ ""]) $ section [ "Now"
          , "https://speakerdeck.com/thockin/illustrated-guide-to-kubernetes-networking"
          , "https://itnext.io/the-abc-of-kubernetes-access-control-e7d280af5c88"
          , "https://www.reddit.com/r/programming/comments/9343w8/a_short_concise_and_highlevel_introduction_to/"
          , "https://techbeacon.com/devops/one-year-using-kubernetes-production-lessons-learned"
          ]
        -- "Now" ]
        section [ "Tutorials"
          , "https://www.giantswarm.io/blog/understanding-basic-kubernetes-concepts-using-deployments-manage-services-declaratively"
          , "https://www.giantswarm.io/blog/understanding-basic-kubernetes-concepts-v-daemon-sets-and-jobs"
          , "https://www.stavros.io/posts/kubernetes-101/"
          , "https://github.com/kelseyhightower/kubernetes-the-hard-way"
          , "https://github.com/ramitsurana/awesome-kubernetes"
          , "https://distillery.com/blog/getting-started-kubernetes-amazon-web-services-aws/"
          , "https://kubernetes.io/docs/concepts/workloads/controllers/deployment/"
          , "https://kubernetes.io/docs/concepts/workloads/pods/"
          , "https://www.mirantis.com/blog/multi-container-pods-and-container-communication-in-kubernetes/"
          , "https://kubernetes.io/docs/concepts/services-networking/connect-applications-service/"
          , "https://www.noqcks.io/notes/2018/02/03/understanding-kubernetes-resources/"
          , "https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/"
          , "https://kubernetes.io/docs/tasks/configure-pod-container/configure-liveness-readiness-startup-probes/"
          , "https://cloud.google.com/kubernetes-engine/docs/concepts/node-pools"
          , "https://kubernetes.io/docs/concepts/architecture/nodes/"
          , "https://cloud.google.com/kubernetes-engine/docs/concepts/cluster-architecture"
          , "https://kubernetes.io/docs/concepts/services-networking/service/"
          , "https://kubernetes.io/docs/concepts/services-networking/ingress/"
          , "https://kubernetes.io/docs/tasks/run-application/horizontal-pod-autoscale/"
          , "https://cloud.google.com/kubernetes-engine/docs/concepts/cluster-autoscaler"
          , "https://kubernetes.io/docs/concepts/scheduling-eviction/assign-pod-node/"
          , "https://kubernetes.io/docs/concepts/scheduling-eviction/taint-and-toleration/"
          , "https://cloud.google.com/kubernetes-engine/docs/concepts/persistent-volumes"
          , "https://kubernetes.io/docs/concepts/storage/persistent-volumes/"
          , "https://kubernetes.io/docs/concepts/workloads/controllers/statefulset/"
          , "https://kubernetes.io/docs/concepts/workloads/pods/disruptions/"
          , "https://kubernetes.io/docs/tasks/configure-pod-container/configure-pod-configmap/"
          , "https://jvns.ca/blog/2017/08/05/how-kubernetes-certificates-work/"
          , "https://kubernetes.io/docs/reference/access-authn-authz/authorization/"
          , "https://kubernetes.io/docs/concepts/extend-kubernetes/api-extension/custom-resources/"
          , "https://kubernetes.io/docs/concepts/services-networking/network-policies/"
          , "https://kubernetes.io/docs/reference/kubectl/overview/"
          ]
        -- "Tutorials" ]
        section [ "Links"
          , "http://alexander.holbreich.org/kube-aws/"
          , "http://blog.holdenkarau.com/2018/09/introducing-kubeflow-system-for_8.html"
          , "http://code.haleby.se/2017/03/10/deploying-a-haskell-web-service-to-kubernetes/"
          , "https://about.gitlab.com/blog/2016/11/14/idea-to-production/"
          , "https://acotten.com/post/1year-kubernetes"
          , "https://anchore.com/blog/anchore-and-kubernetes-pod-people/"
          , "https://architecht.io/kubernetes-is-a-big-deal-but-an-overlooked-one-3c4dc2cd67df"
          , "https://azure.microsoft.com/en-us/services/kubernetes-service/"
          , "https://blog.jetstack.io/blog/kubernetes-1-3-hidden-gems/"
          , "https://blog.softwaremill.com/developing-microservices-with-kubernetes-and-telepresence-c390d3ca9fcb"
          , "https://cloud.google.com/blog/products/gcp/Kubernetes-13-on-tap-for-Google-Container-Engine"
          , "https://codeandtalk.com/v/container-camp-usa-2016/whats-new-in-kubernetes-tim-hockin"
          , "https://copyconstruct.medium.com/schedulers-kubernetes-and-nomad-b0f2e14a896"
          , "https://coreos.com/blog/kubernetes-cluster-federation.html"
          , "https://coreos.com/blog/minikube-and-rkt.html"
          , "https://coreos.com/blog/monitoring-kubernetes-with-prometheus.html"
          , "https://coreos.com/blog/prometheus-and-kubernetes-up-and-running.html"
          , "https://coreos.com/blog/self-hosted-kubernetes.html"
          , "https://coreos.com/blog/the-prometheus-operator.html"
          , "https://developers.redhat.com/blog/2016/06/22/how-to-run-java-fat-jars-in-docker-kubernetes-and-openshift/"
          , "https://docs.docker.com/engine/swarm/"
          , "https://fission.io/"
          , "https://github.com/Apprenda/Kismatic"
          , "https://github.com/Boostport/kubernetes-vault"
          , "https://github.com/asobti/kube-monkey"
          , "https://github.com/cdrage/kubeshift"
          , "https://github.com/janeczku/docker-alpine-kubernetes"
          , "https://github.com/kubeless/kubeless"
          , "https://github.com/kubernetes-retired/contrib/tree/master/prometheus"
          , "https://github.com/kubernetes/minikube"
          , "https://github.com/lastbackend/lastbackend"
          , "https://github.com/metral/nanokube"
          , "https://gravitational.com/blog/remotely-controlling-kubernetes-clusters-ssh-certificates/"
          , "https://humanitec.com/blog/how-to-deploy-hugo-website"
          , "https://joejulian.name/post/kubernetes-container-engine-comparison/"
          , "https://kerpanic.wordpress.com/2017/12/19/kubernetes-offline-installation-guide-part-1-setting-up/"
          , "https://kerpanic.wordpress.com/2017/12/22/kubernetes-offline-installation-guide-part-2-master-and-workers/"
          , "https://kubedex.com/observability-time-series-vs-logging-vs-tracing/"
          , "https://kubernetes.io/"
          , "https://kubernetes.io/blog/2016/03/using-spark-and-zeppelin-to-process-big-data-on-kubernetes/"
          , "https://kubernetes.io/blog/2016/04/using-deployment-objects-with/"
          , "https://kubernetes.io/blog/2016/07/rktnetes-brings-rkt-container-engine-to-kubernetes/"
          , "https://kubernetes.io/blog/2016/07/thousand-instances-of-cassandra-using-kubernetes-pet-set/"
          , "https://kubernetes.io/blog/2016/09/creating-postgresql-cluster-using-helm/"
          , "https://kubernetes.io/blog/2016/10/dynamic-provisioning-and-storage-in-kubernetes/"
          , "https://kubernetes.io/blog/2016/11/kubernetes-containers-logging-monitoring-with-sematext/"
          , "https://linkerd.io/2016/11/18/a-service-mesh-for-kubernetes-part-v-dogfood-environments-ingress-and-edge-routing/"
          , "https://medium.com/@chaliy/your-very-own-kubernetes-cluster-on-azure-acs-9ea758dcf100"
          , "https://medium.com/@dpaunin/postgresql-cluster-into-kubernetes-cluster-f353cde212de"
          , "https://medium.com/google-cloud/deploying-django-postgres-and-redis-containers-to-kubernetes-part-2-b287f7970a33"
          , "https://medium.com/google-cloud/local-django-on-kubernetes-with-minikube-89f5ad100378"
          , "https://medium.com/levvel-consulting/the-differences-between-kubernetes-and-openshift-ae778059a90e"
          , "https://mesosphere.github.io/marathon/"
          , "https://platform9.com/"
          , "https://platform9.com/blog/compare-kubernetes-vs-mesos/"
          , "https://platform9.com/blog/kubernetes-vs-ecs/"
          , "https://rancher.com/comparing-rancher-orchestration-engine-options/"
          , "https://redmonk.com/fryan/2016/11/08/kubernetes-from-evolution-to-an-established-ecosystem/"
          , "https://sematext.com/blog//rancheros-monitoring-and-logging-support/"
          , "https://softwareengineeringdaily.com/2016/05/19/googles-microservices-kubernetes-grpc-sandeep-dinesh/"
          , "https://stackshare.io/posts/companies-using-kubernetes-in-production-2018"
          , "https://techcrunch.com/2016/10/26/coreos-launches-its-openstack-on-kubernetes-project-as-a-technical-preview/"
          , "https://techcrunch.com/2016/11/17/kubernetes-founders-launch-heptio-with-8-5m-in-funding-to-help-bring-containers-to-the-enterprise/"
          , "https://thenewstack.io/kontena-offers-kubernetes-alternative-promises-easier-deploy/"
          , "https://thenewstack.io/strategies-running-stateful-applications-kubernetes-persistent-volumes-claims/"
          , "https://thenewstack.io/strategies-running-stateful-applications-kubernetes-volumes/"
          , "https://www.docker.com/blog/simplifying-kubernetes-with-docker-compose-and-friends/"
          , "https://www.fairwinds.com/blog/migrating-from-heroku-to-kubernetes-on-aws"
          , "https://www.fpcomplete.com/blog/2015/11/kubernetes/"
          , "https://www.fpcomplete.com/blog/2018/07/deploying-rust-with-docker-and-kubernetes/"
          , "https://www.fpcomplete.com/blog/2018/09/yesod-postgres-kubernetes-deployment/"
          , "https://www.fpcomplete.com/blog/deploying_haskell_apps_with_kubernetes/"
          , "https://www.giantswarm.io/"
          , "https://www.giantswarm.io/blog/rolling-updates-of-kubernetes-on-top-of-fleet"
          , "https://www.ianlewis.org/en/how-kubeadm-initializes-your-kubernetes-master"
          , "https://www.infoq.com/articles/container-runtimes-kubernetes/"
          , "https://www.infoq.com/news/2016/05/coreos-openstack-kubernetes/"
          , "https://www.infoq.com/news/2016/09/kubernetes-1.4-released"
          , "https://www.infoq.com/news/2016/11/apprenda-kubernetes-ket/"
          , "https://www.infoq.com/news/2016/12/kubernetes-1.5"
          , "https://www.infoq.com/news/2018/07/gpu-nvidia-tesla-gke/"
          , "https://www.infoq.com/news/2018/07/knative-kubernetes-serverless/"
          , "https://www.infoq.com/news/2018/12/KubeCon-SQL/"
          , "https://www.infoq.com/presentations/building-microservices-platform-kubernetes/"
          , "https://www.infoq.com/presentations/kubernetes-production-spring-platform-2018/"
          , "https://www.morethanseven.net/2016/11/23/the-coming-of-the-kubernetes-distributions/"
          , "https://www.nextplatform.com/2016/05/09/google-friends-add-prometheus-kubernetes-platform/"
          , "https://www.nextplatform.com/2018/07/17/when-does-kubernetes-become-invisible-and-ubiquitous/"
          , "https://www.nextplatform.com/2018/07/24/google-takes-on-public-cloud-rivals-with-private-kubernetes-service/"
          , "https://www.openshift.com/"
          , "https://www.openshift.com/blog/kubernetes-state-storage"
          , "https://www.oreilly.com/content/swarm-v-fleet-v-kubernetes-v-mesos/"
          , "https://www.reddit.com/r/docker/comments/5k2h3o/swarm_mode_how_to_mimic_kubernetes_pods/"
          , "https://www.reddit.com/r/haskell/comments/au6e7t/a_minimum_simple_servant_server_example_with/"
          , "https://www.slideshare.net/hkarau/pyspark-on-kubernetes-python-barcelona-march-meetup"
          , "https://www.slideshare.net/micheleorsi/kubernetes-and-lastminutecom-our-course-towards-better-scalability-and-processes"
          , "https://www.techrepublic.com/article/how-red-hat-aims-to-make-kubernetes-boring-and-successful/"
          , "https://www.tweag.io/blog/2019-03-07-configuring-and-testing-kubernetes-clusters/"
          , "https://www.youtube.com/playlist?list=PLj6h78yzYM2PqgIGU1Qmi8nY7dqn9PCr4"
          , "https://www.youtube.com/watch?v=C_u4_l84ED8"
          , "https://www.youtube.com/watch?v=agbBy1Aduew"
          , "https://www.youtube.com/watch?v=iruaCgeG7qs"
          , "https://www.youtube.com/watch?v=iruaCgeG7qs"
          , "https://www.zdnet.com/article/beyond-kubernetes-istio-network-service-mesh/"
          , "https://www.zdnet.com/article/coreos-shows-openstack-can-be-run-as-a-container-with-kubernetes/"
          , "https://jvns.ca/blog/2017/06/04/learning-about-kubernetes/"
          , "https://www.google.com/search?client=firefox-b-1-d&q=kubernetes+real-time"
          , "https://www.google.com/search?client=firefox-b-1-d&q=k3s"
          , "https://www.reddit.com/r/kubernetes/comments/b476va/maybe_you_dont_need_kubernetes/"
          , "https://www.google.com/search?client=firefox-b-1-d&q=kubernetes+flannel"
          , "https://github.com/takama/k8sdemo"
          , "https://www.google.com/search?client=firefox-b-1-d&q=hackage+kubernetes"
          , "https://kubernetes.io/blog/2016/03/five-days-of-kubernetes-12/"
          , "https://kubernetes.io/blog/2015/06/the-distributed-system-toolkit-patterns/"
          , "https://kubernetes.io/blog/2016/06/container-design-patterns/"
          , "https://kubernetes.io/docs/concepts/extend-kubernetes/compute-storage-net/network-plugins/"
          ]
        -- "Links" ]
        section [ "News"
          , "https://www.infoq.com/news/2016/05/apprenda-commercial-kubernetes/"
          , "https://tech.trivago.com/2019/01/25/nomad-our-experiences-and-best-practices/"
          ]
        -- "News" ]
        section [ "Components"
          , "https://etcd.io/"
          , "https://github.com/etcd-io/etcd"
          , "https://cloud.google.com/kubernetes-engine/"
          , "https://doc.traefik.io/traefik/"
          , "https://www.nomadproject.io/"
          , "https://helm.sh/"
          , "https://www.consul.io/"
          , "https://www.vaultproject.io/"
          , "https://grafana.com/oss/loki/"
          , "https://github.com/fabiolb/fabio"
          , "https://github.com/kubernetes/kops"
          , "https://rancher.com/"
          , "https://k3s.io/"
          , "https://github.com/kubernetes/kubernetes"
          ]
        -- "Components" ]
        section [ "Sites"
          , "https://cromleylabs.com/"
          , "https://cloud.google.com/kubernetes-engine/"
          , "https://aws.amazon.com/eks/?whats-new-cards"
          ]
        -- "Sites" ]
        section [ "Done"
          , "https://dev.to/danlebrero/kubernetes-explained-in-pictures-the-theme-park-analogy-3d99"
          , "https://dev.to/danlebrero/kubernetes-explained-the-theme-park-analogy-auto-scaling-taints-and-affinities-2ced"
          , "https://dev.to/danlebrero/kubernetes-explained-in-pictures-statefulsets-persistent-volumes-and-headless-services-5do9"
          , "https://endler.dev/2019/maybe-you-dont-need-kubernetes/"
          , "https://initialcommit.com/blog/kubernetes-explained"
          , "https://www.youtube.com/watch?v=WwBdNXt6wO4"
          , "https://medium.com/@itmarketplace.net/kubernetes-101-12ad2424d2f1"
          , "https://thenewstack.io/kubernetes-not-scary-complex-even-confusing/"
          ]
        -- "Done" ]
