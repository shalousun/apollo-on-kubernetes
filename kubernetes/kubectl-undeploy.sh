# Undeploy apollo
# kubectl label nodes k8s-node1 apollo=apollo
# kubectl get nodes k8s-node1 --show-labels
# dev-env
kubectl delete -f apollo-env-dev/service-mysql-for-apollo-dev-env.yaml --record && \
kubectl delete -f apollo-env-dev/service-apollo-config-server-dev.yaml --record && \
kubectl delete -f apollo-env-dev/service-apollo-admin-server-dev.yaml --record

# fat-env(test-alpha-env)
#kubectl delete -f apollo-env-test-alpha/service-mysql-for-apollo-test-alpha-env.yaml --record && \
#kubectl delete -f apollo-env-test-alpha/service-apollo-config-server-test-alpha.yaml --record && \
#kubectl delete -f apollo-env-test-alpha/service-apollo-admin-server-test-alpha.yaml --record

# uat-env(test-beta-env)
#kubectl delete -f apollo-env-test-beta/service-mysql-for-apollo-test-beta-env.yaml --record && \
#kubectl delete -f apollo-env-test-beta/service-apollo-config-server-test-beta.yaml --record && \
#kubectl delete -f apollo-env-test-beta/service-apollo-admin-server-test-beta.yaml --record

# prod-env
#kubectl delete -f apollo-env-prod/service-mysql-for-apollo-prod-env.yaml --record && \
#kubectl delete -f apollo-env-prod/service-apollo-config-server-prod.yaml --record && \
#kubectl delete -f apollo-env-prod/service-apollo-admin-server-prod.yaml --record

# portal
kubectl delete -f service-apollo-portal-server.yaml --record