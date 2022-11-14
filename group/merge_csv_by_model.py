# Merge all the tot_df.csv coming from transform_log_to_csv.py

import argparse
import pandas as pd


parser = argparse.ArgumentParser()
parser.add_argument('-indir', nargs=1, type=str, default='0')
parser.add_argument('-modeldir', nargs=1, type=str)
parser.add_argument('-modelname', nargs=1, type=str)

args = parser.parse_args()

indir = args.indir[0]
modeldir = args.modeldir[0]
modelname = args.modelname[0]

df_all = pd.DataFrame({"subid": [], "proba": [], "t": [], "pred": []})
for dataset in ["train_full", "val_full", "testset1", "testset3_good_medium", "testset3_good_part1", "testset3_good_part2", "abide2"]:
    df_all = pd.concat([df_all, pd.read_csv(indir + dataset + "/" + modeldir + "tot_df.csv", index_col=0)], axis=0, ignore_index=True, sort=False)
df_all.to_csv(indir + modelname + "_df_all.csv")