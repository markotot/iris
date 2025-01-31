# Description: Run the training of the iris on the Atari environment

ENV_NAME=$1
WANDB_API_KEY=$2

wandb login $WANDB_API_KEY

echo  "WANDB_API_KEY=$WANDB_API_KEY"
echo "Training iris model on environment $ENV_NAME"
python src/main.py env.train.id=$ENV_NAME common.device=cuda:0 wandb.mode=online
wait
echo "All seeds have been trained"