# gcloud function test

Hello World application deployed with gcloud, template as in [AWS Lambda Test](https://github.com/piotrostr/lambda-test/).

The deployment here is smoother, faster and less error prone than when using
Lambda. There is less overhead since only the service has to be enabled and
there are no trust-policies. The function has a domain out the box so invoking
it is as easy as hitting the url. The code does not need to be zipped as well,
making the cli command hold just three params.

## Usage

### Requirements

Authenticated [`gcloud` CLI](https://cloud.google.com/sdk/gcloud).

### Deploy

```bash
./deploy.sh
```

Creates a project, enables the APIs and deploys the function as `Handler`.

### Cleanup

```bash
./cleanup.sh
```

Deletes the function, deletes the project.
