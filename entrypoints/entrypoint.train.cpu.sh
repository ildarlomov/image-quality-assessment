#!/bin/bash
set -e
echo "Hello!"
ls -lah /src/images
# start training
python -W ignore -m trainer.train -j /src/$TRAIN_JOB_DIR -i /src/images
