# AI Usage

## Model(s) used
- Claude (Anthropic), Opus 4.x, via the Claude web app.

## What I used it for
- Generating the initial project scaffold (directory structure, environment.yml,
  requirements.txt, Dockerfile, the toy analysis.py / analysis.R, and the README)
  as a starting point, and mapping it against the rubric to see what I still had
  to do myself.
- A full beginner walkthrough of installing Miniforge/conda on my Mac, after
  "conda: command not found" showed it wasn't installed yet — it gave me the
  curl + bash install steps.
- Step-by-step help with git and GitHub, since I was new to them: initializing
  the repo, committing, creating the remote, and pushing.
- Troubleshooting my push failures: it explained that GitHub no longer accepts
  account passwords (I needed a Personal Access Token), that the hidden password
  prompt was normal, and that my "403 write access not granted" error meant the
  repo didn't exist on github.com yet.

## What I changed or rejected
- Some steps were hard to follow so I asked follow up questions

## What only I did (not AI)
- Ran the commands on my own machine, generated `renv.lock`, built and ran the
  Docker image, and confirmed the results. 