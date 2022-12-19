# Calculate the accuracy of a baseline that simply predicts "London" for every
#   example in the dev set.
# Hint: Make use of existing code.
# Your solution here should only be a few lines.

import utils
from tqdm import tqdm

with open('dev.london', 'w') as fout:
    predictions = []
    for line in tqdm(open('birth_dev.tsv')):
        predictions.append('London')
        fout.write('London\n')
    
    total, correct = utils.evaluate_places('birth_dev.tsv', predictions)

if total > 0:
    print('Correct: {} out of {}: {}%'.format(correct, total, correct/total*100))
else:
    print('Predictions written to {}; no targets provided'
          .format('dev.london'))