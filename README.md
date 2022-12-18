# Natural Language Processing with Deep Learning (CS224N)
Solutions of the course assignment.

## Course objectives
* Understanding of the effective modern methods for deep learning.
  * Basics first, then key methods used in NLP: Recurrent networks, attention, etc.
* Big picture understanding of human languages and the difficulties in understanding and producing them.
* Understanding of and ability to build systems (in PyTorch) for some of the major problems in NLP:
  * Word meaning, dependency parsing, machine translation, question answering.
 
 ## Assignment-01 (Exploring Word Vectors)
 * Implementing co-occurence matrix.
 * Utilizing the SVD concept to reduce embedding dimentionality.
 * Analysing similarity between words.
 
 ## Assignment-02 (Implementing word2vec)
* Implementing the negative sampling loss and gradient.
* Implementing the skip-gram model.

## Assignment-03 (Dependency Parsing)
This assignment is to implement a **Neural Transition-Based** Dependency Parsing model.
* Implementing a parsing step given a transition type.
* Implementing a minibatch parsing given a batch of sentences.
* Implementing a neural model using **PyTorch** to predict a transition.

## Assignment-04 (Neural Machine Translation with RNNs)
* Implementing the encoder layer to generate the representation of sentences for the decoder.
* Implementing the decoder layer which is a a one step model repeated for every step in the input. <br>
  This layer computes the attention scores over the inputs for each step in the decoding process.

## Assignment-05 (Self-Attention, Transformers, and Pretraining)
This assignmnet is to experience pretraining and how finetuning a language model gives access to its hidden knowledge.
* Walking through the minGPT demo provided as most of the code is inherited from it.
* Implementing the `fintuning` setup to setup the training configurations and save the model.
* Implementing the naiive approach by predicting *London* for every example in `london_baseline.py`.
* Implementing the *Span Corruption Function* to introduce noise to the text by randomly selecting the span to be masked.
* ...

## Final Project
The chosen final project is **IID SQuAD** in which the **Bidirectional Attention Flow** model in used as the baseline. <br>
The requirements is to enhance the model via any additions whether from another research or comming up with a novel idea. <br>
*The project will be submitted in a separate repository later.*

## Credits
* Course [website](https://web.stanford.edu/class/archive/cs/cs224n/cs224n.1194/)
* Instructors
  * [Christopher Manning](https://nlp.stanford.edu/~manning/)
  * [Abigail See](https://cs.stanford.edu/people/abisee/)
