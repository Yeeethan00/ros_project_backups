rostopic pub /hand_controller/command trajectory_msgs/JointTrajectory '{joint_names: ["jm1", "jm2", "js1", "js2", "js3", "jz1", "jz2", "jz3", "jw1", "jw2", "jw3", "jx1", "jx2", "jx3"], points: [{positions: [1.0, 1.0, -1.0, -1.0, -1.0, -1.0, -1.0, -1.0, -1.0, -1.0, -1.0, -1.0, -1.0, -1.0], time_from_start: [1.0, 0.0]}]}'

rostopic pub /s_controller/command trajectory_msgs/JointTrajectory '{joint_names: ["js1", "js2", "js3"], points: [{positions: [-1.0, -1.0, -1.0], time_from_start: [1.0, 0.0]}]}'

rostopic pub /z_controller/command trajectory_msgs/JointTrajectory '{joint_names: ["jz1", "jz2", "jz3"], points: [{positions: [1.0, 1.0, 1.0], time_from_start: [1.0, 0.0]}]}'

rostopic pub /w_controller/command trajectory_msgs/JointTrajectory '{joint_names: ["jw1", "jw2", "jw3"], points: [{positions: [-1.0, -1.0, -1.0], time_from_start: [1.0, 0.0]}]}'

rostopic pub /x_controller/command trajectory_msgs/JointTrajectory '{joint_names: ["jx1", "jx2", "jx3"], points: [{positions: [1.0, 1.0, 1.0], time_from_start: [1.0, 0.0]}]}'
