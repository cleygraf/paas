gitlab-ci-local \
    --variable GCP_SERVICE_KEY="$(op read op://Personal/GCP_SERVICE_KEY/credential)" \
    --variable GCP_SERVICE_KEY__TEST="$(op read op://Personal/GCP_SERVICE_KEY__TEST/credential)" \
    --variable GCP_REGISTRY_KEY="$(op read op://Personal/GCP_REGISTRY_KEY/credential)" \
    --variable APP_NAME="gcp-paas-app" \
    --variable BASE_DOMAIN_PROD="bw2xookxra-ez.a.run.app" \
    --variable BASE_DOMAIN_REVIEW="aw26i256sa-ez.a.run.app" \
    --variable GCP_PROJECT_ID="static-hosting-385113" \
    --variable GCP_PROJECT_ID__TEST="live-demo-test" \
    --variable INFRA="google"
