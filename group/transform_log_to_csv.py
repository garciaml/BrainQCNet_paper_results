
# Transform log files into a csv 

import os
import argparse
import pandas as pd

# Define inputs
# indir: path of input directory 
# modeldir: path of model directory
# output: name of output
parser = argparse.ArgumentParser()
parser.add_argument('-indir', nargs=1, type=str, default='0')
parser.add_argument('-modeldir', nargs=1, type=str)

args = parser.parse_args()

indir = args.indir[0]
modeldir = args.modeldir[0]

subids = os.listdir(indir + modeldir)
subids = [el for el in subids if os.path.isdir(indir + modeldir + el)]

def get_predictions_from_log(indir, modeldir, subid, logfile, method="percentage"):
    # other methods:
    # mean: mean of predictions on each slice
    # median: median of predictions on each slice
    with open(indir + modeldir + subid + logfile, "r") as f: 
        for l in f.readlines():
            # get time
            if "Processing time:" in l:
                t = round(float(l.split(": ")[1]), 2)
            # get slices predicted 1:
            if "Slices predicted 1:" in l:
                slices = l.split(":")[1]
            # get predicted median
            if method == "mean":
                if "Predicted mean:" in l:
                    proba = round(float(l.split(": ")[1]), 2)
            # get predicted mean
            elif method == "median":
                if "Predicted median:" in l:
                    proba = round(float(l.split(": ")[1]), 2)
            # get percentage of slices predicted 1
            else:
                if "Repartition of predictions:" in l:
                    proba = round(float((l.split("; ")[1]).split(" ")[0]), 2) 
    return {"subid": [subid], "proba": [proba], "t": [t], "slices": [slices]}

# Iteration to Build the dataframe 
x_df = pd.DataFrame({"subid": [], "proba": [], "t": [], "slices": []})
y_df = pd.DataFrame({"subid": [], "proba": [], "t": [], "slices": []})
z_df = pd.DataFrame({"subid": [], "proba": [], "t": [], "slices": []})
tot_df = pd.DataFrame({"subid": [], "proba": [], "t": []})
for subid in subids:
    logfile = "/x_global_analysis.log"
    x_preds = get_predictions_from_log(indir, modeldir, subid, logfile)
    x_df = pd.concat([x_df, pd.DataFrame(x_preds)], axis=0, ignore_index=True)
    logfile = "/y_global_analysis.log"
    y_preds = get_predictions_from_log(indir, modeldir, subid, logfile)
    y_df = pd.concat([y_df, pd.DataFrame(y_preds)], axis=0, ignore_index=True)
    logfile = "/z_global_analysis.log"
    z_preds = get_predictions_from_log(indir, modeldir, subid, logfile)
    z_df = pd.concat([z_df, pd.DataFrame(z_preds)], axis=0, ignore_index=True)
    proba = round((x_preds["proba"][0] + y_preds["proba"][0] + z_preds["proba"][0])/3, 2)
    t = round(x_preds["t"][0] + y_preds["t"][0] + z_preds["t"][0], 2)
    tot_df = pd.concat([tot_df, pd.DataFrame({"subid": [subid], "proba": [proba], "t": [t]})], axis=0, ignore_index=True)
x_df["pred"] = x_df["proba"].apply(lambda x: 1 if x > 50 else 0) 
y_df["pred"] = y_df["proba"].apply(lambda x: 1 if x > 50 else 0) 
z_df["pred"] = z_df["proba"].apply(lambda x: 1 if x > 50 else 0) 
tot_df["pred"] = tot_df["proba"].apply(lambda x: 1 if x > 50 else 0) 
# print(df)
x_df.to_csv(indir + modeldir + "x_df.csv")
y_df.to_csv(indir + modeldir + "y_df.csv")
z_df.to_csv(indir + modeldir + "z_df.csv")
tot_df.to_csv(indir + modeldir + "tot_df.csv")
