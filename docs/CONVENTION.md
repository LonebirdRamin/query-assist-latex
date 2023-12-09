## Naming Convention

### Commit Messages

Please use the following format for every commit message in this repository:

`<type>(<scope>): <subject>`

> use **type** from the following:
> * `build` : Build related changes (eg: npm related/ adding external dependencies)
> * `chore` : A code change that external user won't see (eg: change to .gitignore file or .prettierrc file)
> * `feat` : A new feature
> * `fix` : A bug fix
> * `docs` : Documentation related changes
> * `refactor` : A code that neither fix bug nor adds a feature. (eg: You can use this when there is semantic changes like renaming a variable/function name)
> * `perf` : A code that improves performance
> * `style` : A code that is related to styling
> * `test` : Adding new test or making changes to existing test

> **scope** is optional:
> * scope must be noun and it represents the section of the section of the codebase
> * [Refer this link for example related to scope](http://karma-runner.github.io/1.0/dev/git-commit-msg.html)

> **subject** have a following rules:
> * use imperative, present tense (eg: use "add" instead of "added" or "adds")
> * don't use dot "`.`" at end
> * don't capitalize first letter

For example:
```zsh
feat: add new module for authentication
fix: wrong variable name
docs: add branch naming convention
```

[Refer this link for more practical examples of commit messages](https://github.com/eslint/eslint/commits/master)

## Branch Names

For branch naming, use the following format:

`<type>/<scope>`

> **type** and **scope** use rules from last section.

For example:
```zsh
feat/generic-report
build/xelatex-deps
```

## Credits 

* https://dev.to/i5han3/git-commit-message-convention-that-you-can-follow-1709
* https://www.conventionalcommits.org/en/v1.0.0/
* https://gist.github.com/joshbuchea/6f47e86d2510bce28f8e7f42ae84c716
* https://github.com/fteem/git-semantic-commits