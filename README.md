# GD 2000 Exam Practice

This is a rehearsal for the midterm. The exam is an in-person git workflow
demonstration on the lab machines; this is the same set of steps, at home, on
your own machine, where you can be slow and make mistakes.

The git work is the point. The questions are about the course material, not
about git.

## 1. Fork this repository

Press "Fork" on GitHub. You now have your own copy, under your own account.

## 2. Clone your fork

Clone *your* fork, not the original:

    git clone https://github.com/<your-username>/gd2000-exam-practice.git
    cd gd2000-exam-practice

## 3. Run the script

Linux or macOS:

    sh tools/prepare.sh

Windows, from PowerShell or cmd:

    tools\prepare.cmd

or, if you prefer to type it out:

    powershell -ExecutionPolicy Bypass -File tools\prepare.ps1

It creates some files and modifies one. If it will not run on your machine,
create the files by hand instead -- see "If the script will not run" at the
bottom. Nothing in the grading depends on the script working.

## 4. Add a rule of your own

Open `rules/draft-rules.md`. There is a heading near the bottom called
"My rule". Add one rule to the game that you think makes it better, and say
what it does.

## 5. Answer the questions

Fill in `exam-review.md`. Six questions, a few sentences each.

## 6. Commit some of it, not all of it

This is the part you are practicing. Stage and commit these:

    git add cards/script-cards.md
    git add rules/draft-rules.md
    git add exam-review.md
    git commit -m "Add cards, rules, and exam review answers"

Do **not** commit `playtest/`. Those files should stay untracked. Run

    git status

and you should see them listed under "Untracked files". Leave them there.
That is the point of the exercise: you are choosing which changes go in and
which do not.

## 7. Push

    git push

## 8. Submit

Go to the assignment on Inkfish, open the "Clone Git Repo" tab, and paste the
URL of *your* fork:

    https://github.com/<your-username>/gd2000-exam-practice

Inkfish clones whatever is on GitHub at that URL, so make sure you pushed to
the branch you normally see on the page (usually `main`).

## If the script will not run

Create these by hand instead. The script only exists so that you have some
changes to stage and some to leave alone; doing it by hand is exactly as good.

- `cards/script-cards.md` -- the three cards listed in `tools/prepare.sh`.
- the `## Script-generated rules` section at the bottom of
  `rules/draft-rules.md` -- the two rules listed in `tools/prepare.sh`.
- `playtest/session-1.log`, `playtest/session-2.log`, `playtest/session-3.log`
  -- a few lines each, anything plausible.

Then continue from step 4.
