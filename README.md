# Hello GitHub Actions!

## Intro

Continuous integration is the practice of integrating all your code changes into the main branch of a shared source code repository ***early and often***, ***automatically testing*** each change when you commit or do another action, and automatically kicking off a build.

With continuous integration, errors and security issues can be identified and fixed more easily, and much earlier in the development process.

> Think of it as being all about merging your code: you want to merge successfully while avoiding breaking anything!

![Simplistic CI pipeline](./CI.draw.png)

## Tools

Much like what you were told about DevOps, CI is a thought process. Its orchestration can be achieved using many tools in the shed like:

- GitHub Actions
- Jenkins
- GitLab CI/CD
- Bitbucket
and many more...

> We will focus on GitHub Actions today!

## GitHub Actions

Just like how the tool `git` creates a hidden `.git/` directory to house repository history, you need to **manually** create a `.github` directory, a `workflows` subdirectory, and finally `.yml` files of various uses.

Let's get into more detail:

- `.github/` is a special directory format that has many uses, like setting up GitHub-specific automation, community standards, and workflows.
- `workflows/` is the directory where we will define our integration workflow for any project.
- `file.yml` is where the actual action logic/workflow sits. But first, what is YAML?

![NOTICE]
> This is a strict naming rule! For a workflow to be recognized and configured on GitHub, it **must** be in the exact path: `.github/workflows/file-name.yml`

## YAML and Action File Structure

### What is YAML?

**YAML** (which used to stand for *Yet Another Markup Language* but now is *YAML Ain't Markup Language*) is a human-readable data format used for configuration files. Instead of using complex brackets `{}` or XML tags `<>`, 
YAML relies on **indentation** and key-value pairs to structure data.

![NOTICE]
> YAML uses **spaces for indentation—never use tabs!** Incorrect spacing is the most common reason a workflow file fails to parse.

---

### Structure of a GitHub Actions Workflow

A workflow file is broken down into a few basic building blocks:

1. **`name`** *(Optional)*: The display name of your workflow as it appears in the GitHub **Actions** tab.
2. **`on`** *(Required)*: The **event trigger**. Tells GitHub *when* to kick off the pipeline (e.g., when someone pushes code, opens a pull request, or on a set schedule).
3. **`jobs`** *(Required)*: The actual workload. A workflow is made of one or more jobs that can run in parallel or in sequence.
   - **`runs-on`**: Specifies the operating system of the virtual runner machine hosted by GitHub (e.g., `ubuntu-latest`, `windows-latest`, `macos-latest`).
   - **`steps`**: The ordered list of tasks to execute inside that job.
     - **`uses`**: Runs a pre-built action from GitHub or the community (like checking out your code repository).
     - **`run`**: Executes custom terminal commands directly on the runner shell.

---

![TIP]
> always check out the official document for any syntax you are not sure of, any detail you forgot or need to understand better, or any examples you wanna follow 
> you can find it at githubactionsdocs/refrences `https://docs.github.com/en/actions/reference`
