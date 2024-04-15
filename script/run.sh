#! /bin/bash

gnome-terminal --tab -e 'bash -c "roscore;exec bash"'
sleep 3s

# 运行PL-VINS
gnome-terminal --tab -e 'bash -c "roslaunch plvins_estimator plvins_show_linepoint.launch;exec bash"'
gnome-terminal --window -e 'bash -c "rosbag play --pause /home/kwanwaipang/dataset/fpv/Indoor_forward/indoor_forward_3_davis_with_gt.bag;exec bash"'

# gnome-terminal --window -e 'bash -c "rosbag play --pause /home/kwanwaipang/dataset/hku_event_camera/davis346+dvxplorer/vicon_correct/vicon_dark2.bag;exec bash"'
# gnome-terminal --tab -e 'bash -c "roslaunch plvins_estimator evaluation.launch;exec bash"'

# evo_ape bag pl_eio_result.bag /dvs_vicon/gt_pose /pose_graph/imu_pl_loop -v --align --n_to_align 251
# evo_traj bag pl_eio_result.bag /pose_graph/imu_pl_loop --ref=/dvs_vicon/gt_pose -v --align --n_to_align 251 --plot --plot_mode=xyz

sleep 16s


