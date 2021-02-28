python cs285/scripts/run_hw1.py \
--expert_policy_file cs285/policies/experts/Ant.pkl \
--env_name Ant-v2 \
--exp_name bc_ant \
--n_iter 1 \
--expert_data cs285/expert_data/expert_data_Ant-v2.pkl \
--num_agent_train_steps_per_iter 2000 \
--eval_batch_size 5000 \
--video_log_freq 1 


python cs285/scripts/run_hw1.py \
--expert_policy_file cs285/policies/experts/Humanoid.pkl  \
--env_name Humanoid-v2 \
--exp_name bc_humanoid \
--n_iter 1 \
--expert_data cs285/expert_data/expert_data_Humanoid-v2.pkl \
--num_agent_train_steps_per_iter 2000 \
--eval_batch_size 5000 \
--video_log_freq 1


for steps in 1000 1500 2000 2500 3000 
do
    python cs285/scripts/run_hw1.py \
    --expert_policy_file cs285/policies/experts/Ant.pkl \
    --env_name Ant-v2 \
    --exp_name bc_ant_tune_iter \
    --n_iter 1 \
    --expert_data cs285/expert_data/expert_data_Ant-v2.pkl \
    --num_agent_train_steps_per_iter $steps \
    --eval_batch_size 5000 \
    --video_log_freq 1 
done


python cs285/scripts/run_hw1.py \
--expert_policy_file cs285/policies/experts/Ant.pkl \
--env_name Ant-v2 \
--exp_name dagger_ant \
--n_iter 10 \
--do_dagger --expert_data cs285/expert_data/expert_data_Ant-v2.pkl \
--eval_batch_size 5000 \
--video_log_freq 9



python cs285/scripts/run_hw1.py \
--expert_policy_file cs285/policies/experts/Humanoid.pkl  \
--env_name Humanoid-v2 \
--exp_name dagger_humanoid \
--n_iter 10 \
--do_dagger \
 --expert_data cs285/expert_data/expert_data_Humanoid-v2.pkl \
 --eval_batch_size 5000 \
 --video_log_freq 9




python cs285/scripts/run_hw1.py \
--expert_policy_file cs285/policies/experts/Humanoid.pkl \
--env_name Humanoid-v2 \
--exp_name dagger_humanoid --n_iter 10 \
--do_dagger \
--expert_data cs285/expert_data/expert_data_Humanoid-v2.pkl \
--learning_rate 5e-6 \
--n_layers 2 \
--size 324 \
--train_batch_size 500 \
--video_log_freq 9


python cs285/scripts/run_hw1.py \
--expert_policy_file cs285/policies/experts/Ant.pkl \
--env_name Ant-v2 \
--exp_name dagger_ant --n_iter 10 \
--do_dagger \
--expert_data cs285/expert_data/expert_data_Ant-v2.pkl \
--learning_rate 5e-6 \
--n_layers 1 \
--size 324 \
--train_batch_size 500 \
--video_log_freq 10
# 0.034485090523958206
python cs285/scripts/run_hw1.py --expert_policy_file cs285/policies/experts/Ant.pkl  --env_name Ant-v2 --exp_name dagger_ant --n_iter 10 --do_dagger --expert_data cs285/expert_data/expert_data_Ant-v2.pkl  --video_log_freq -1