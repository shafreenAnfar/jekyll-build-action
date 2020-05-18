# jekyll-build-action
Plain in-place Jekyll build action to be used in pipelines with a variety of possible deploy targets.

# Usage
This Action literally only invokes a Jekyll build, so your pipeline needs to ensure the Jekyll source is first gathered, and once this action completes you must copy the contents of the destination folder to your intended hosting location.

A typical example would be a GitHub repository with Jekyll source, and publishing the output to an S3 bucket configured for static site hosting.

The pipeline to realize this would look something like the following:
```yaml
jobs:
  jekyll:
    name: Build and deploy Jekyll site
    runs-on: ubuntu-latest

    steps:
    - name: Checkout
      uses: actions/checkout@v2

    - name: Build
      uses: shafreenAnfar/jekyll-build-action@v2

```

# References
For more technical details on these steps and associated setup, see:
- [actions/checkout](https://github.com/actions/checkout)
