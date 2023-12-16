## Contributors' Guideline

---

### Prerequisites

- You must have LaTeX installed on your machine. If you don't have LaTeX installed, please refer to this [LaTeX Installation Guide](https://www.latex-project.org/get/) by LaTeX Project to get started. Make sure to install the right version or distribution of LaTeX for your operating system.
- It is also recommended that you have a basic understanding of LaTeX. If you are new to LaTeX, please refer to this [LaTeX Tutorial](https://www.overleaf.com/learn/latex/Learn_LaTeX_in_30_minutes) by Overleaf to get started.

### Getting Started

1. Fork this repository, but if you're already a part of the CPE-KMUTT organization, you may skip this step.
2. Clone the repository to your local machine using the following command:
    ```bash
    git clone https://github.com/cpe-kmutt-student/latex-report-template.git
    ```
3. Create a new branch for your contribution on **your local repository**. Following the convention, name your branch based on the type of report you are working on. For example, if you are working on a generic report, name your branch `feat/generic-report`. As such you should type this in your terminal to create a new branch on your local repository:
    ```bash
    git checkout -b feat/<your-report-type>
    ```
   > For more information, please refer to the [naming standard](../CONVENTION.md) of this repository.
4. Create a new folder for your report on root. The folder name should be correlated to your branch name. For example, if you are working on a generic report, name your folder `generic-report`.
5. Create a new LaTeX file for your report. The file name should be correlated to your branch name. For example, if you are working on a generic report, name your file `main.tex`.
   > * You're allowed to copy the content of the existing report template to your file and make modification to it.
    > * If your report have both Thai and English version, please name your file `main_th.tex` and `main_en.tex` respectively.
6. **Happy coding + writing!**

### Committing Your Work
> This section use Git CLI as an example for explanation. If you're already good with Git, you may skip this section altogether.

1. After you have finished your work, you may commit your work to your local repository. Add your work to the staging area using the following command:
    ```bash
    git add .
    ```
    Then commit your work using the following command:
    ```bash
    git commit -m "<your-commit-message>"
    ```
   > Make sure to follow the [commit message convention](../CONVENTION.md) of this repository.

2. Once you have committed your work, you may push your work to your remote repository using the following command:
    ```bash
    git push origin <your-branch-name>
    ```
    > * Try pushing commits in batch, avoid pushing commit one by one as much as possible.
    > * Make sure to **push your work to your branch**, not the `main` branch!
3. And you're done!