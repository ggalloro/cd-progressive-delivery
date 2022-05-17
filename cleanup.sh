rm -rf workspace/artifacts.json
gcloud deploy delivery-pipelines delete progressive-pipeline --region europe-west1 --force --quiet
gcloud artifacts docker images delete europe-docker.pkg.dev/galloro-demos/cloudbuilds/leeroy-app --quiet
kubectl -n progress delete deploy,svc --all
gcloud deploy apply --file=clouddeploy-config/delivery-pipeline.yaml --region=europe-west1 --project=galloro-demos --quiet