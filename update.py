# Copyright 2015 Las Venturas Playground. All rights reserved.
# Use of this source code is governed by the MIT license, a copy of which can
# be found in the LICENSE file.

"""
update.py [sha]

Updates the `playground` submodule in the current directory to a specific revision (if a SHA has
been provided), or to the HEAD.
"""

import os
import subprocess
import sys

# Directory in which the playground repository has been checked out.
PLAYGROUND_DIRECTORY = 'playground'
PLAYGROUND_PATH = os.path.join(os.path.dirname(os.path.abspath(__file__)), PLAYGROUND_DIRECTORY)

def run_command(command, cwd=None):
  process = subprocess.Popen(command, stdout=subprocess.PIPE, cwd=cwd)
  output, _ = process.communicate()
  exit_code = process.wait()

  return exit_code, output


def update_revision(target_sha):
  commands = [
    ['git', 'fetch'],
    ['git', 'checkout', target_sha]
  ]
 
  for command in commands:
    exit_code, output = run_command(command, cwd=PLAYGROUND_PATH)
    if exit_code != 0:
      return exit_code, output

  return 0, None


def create_commit():
  exit_code, revision = run_command(['git', 'rev-parse', 'HEAD'], cwd=PLAYGROUND_PATH)
  if exit_code != 0:
    return exit_code, revision

  message = 'Update the used "playground" revision to %s' % revision[0:7]
  command = ['git', 'commit', '-m', message, PLAYGROUND_DIRECTORY]

  return run_command(command)


def main(argv):
  exit_code, output = update_revision('HEAD' if len(argv) < 2 else argv[1])
  if exit_code != 0:
    print 'Unable to update the `playground` submodule:'
    print output
    return 1

  exit_code, output = create_commit()
  if exit_code != 0:
    print 'Unable to create a commit for the updated dependency:'
    print output

    if 'no changes' in output:
      print 'Is the staging server already at the intended revision?'

    return 1

  print 'The dependency has been updated - now push your commit!'
  return 0

if __name__ == '__main__':
  sys.exit(main(sys.argv))
