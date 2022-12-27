# # Train on the names dataset
# python src/run.py finetune vanilla wiki.txt \
#     --writing_params_path vanilla.model.params \
#     --finetune_corpus_path birth_places_train.tsv

# # Evaluate on the dev set, writing out predictions
# python src/run.py evaluate vanilla wiki.txt \
#     --reading_params_path vanilla.model.params \
#     --eval_corpus_path birth_dev.tsv \
#     --outputs_path vanilla.nopretrain.dev.predictions

# # Evaluate on the test set, writing out predictions
# python src/run.py evaluate vanilla wiki.txt \
#     --reading_params_path vanilla.model.params \
#     --eval_corpus_path birth_test_inputs.tsv \
#     --outputs_path vanilla.nopretrain.test.predictions

# # Evaluate on the London predictions
# python src/london_baseline.py



# # Pretrain the model
# python src/run.py pretrain vanilla wiki.txt \
#     --writing_params_path vanilla.pretrain.params

# # Finetune the model
# python src/run.py finetune vanilla wiki.txt \
#     --reading_params_path vanilla.pretrain.params \
#     --writing_params_path vanilla.finetune.params \
#     --finetune_corpus_path birth_places_train.tsv

# # Evaluate on the dev set; write to disk
# python src/run.py evaluate vanilla wiki.txt \
#     --reading_params_path vanilla.finetune.params \
#     --eval_corpus_path birth_dev.tsv \
#     --outputs_path vanilla.pretrain.dev.predictions

# # Evaluate on the test set; write to disk
# python src/run.py evaluate vanilla wiki.txt \
#     --reading_params_path vanilla.finetune.params \
#     --eval_corpus_path birth_test_inputs.tsv \
#     --outputs_path vanilla.pretrain.test.predictions


# Pretrain the model
python src/run.py pretrain synthesizer wiki.txt \
	--writing_params_path synthesizer.pretrain.params

# Finetune the model
python src/run.py finetune synthesizer wiki.txt \
	--reading_params_path synthesizer.pretrain.params \
	--writing_params_path synthesizer.finetune.params \
	--finetune_corpus_path birth_places_train.tsv

# Evaluate on the dev set; write to disk
python src/run.py evaluate synthesizer wiki.txt \
	--reading_params_path synthesizer.finetune.params \
	--eval_corpus_path birth_dev.tsv \
	--outputs_path synthesizer.pretrain.dev.predictions

# Evaluate on the test set; write to disk
python src/run.py evaluate synthesizer wiki.txt \
	--reading_params_path synthesizer.finetune.params \
	--eval_corpus_path birth_test_inputs.tsv \
	--outputs_path synthesizer.pretrain.test.predictions