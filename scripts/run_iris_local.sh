# Description: Run the training of the iris, locally, on the Atari environment

ENV_NAME=$1
echo "Training iris model on environment $ENV_NAME"
python3 src/main.py env.train.id=$ENV_NAME common.device=cuda:0 wandb.mode=online
echo "All seeds have been trained"