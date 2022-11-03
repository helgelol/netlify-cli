# netlify-cli

A  Node.js container with the [Netlify CLI](https://docs.netlify.com/cli/get-started/) 
npm package installed for direct use in pipelines.  
It took the actual deploy stage of my pipelines down from 3.5 minutes to under 30 seconds.

# Updates
Updates daily if there is a new version of Netlify CLI available.

# Usage
Example usage in `.gitlab-ci.yml`
```yaml
stage-name:
  stage: stage-name
  image:
    name: helgejs/netlify-cli
    entrypoint: ['']
  script:
    - netlify deploy --auth=$YourPersonalNetlifyAccessToken --dir=<buildDirectory> --site=$YourPersonalNetlifySiteID --prod --message="$CI_COMMIT_MESSAGE"
  artifacts:
    paths:
      - <buildDirectory>

```
# Source
[helgejs\netlify-cli](https://hub.docker.com/r/helgejs/netlify-cli)
