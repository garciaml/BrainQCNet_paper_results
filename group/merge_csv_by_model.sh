

VGGMODEL10="vgg19/18112020/10push0.9506.pth/"
VGGMODEL20="vgg19/18112020/20push0.9489.pth/"
VGGMODEL30="vgg19/18112020/30push0.9483.pth/"
RESMODEL10="resnet152/19112020/10push0.8167.pth/"
RESMODEL20="resnet152/19112020/20push0.9678.pth/"
DENSMODEL10="densenet161/25012021/10push0.9800.pth/"
DENSMODEL20="densenet161/25012021/20_19push0.9800.pth/"
DENSMODEL30="densenet161/25012021/30push0.9706.pth/"

INDIR="/media/mleanie/SAMSUNG/protopnet_results/"

python merge_csv_by_model.py -indir $INDIR -modeldir $VGGMODEL10 -modelname "vgg19_10"
python merge_csv_by_model.py -indir $INDIR -modeldir $VGGMODEL20 -modelname "vgg19_20"
python merge_csv_by_model.py -indir $INDIR -modeldir $VGGMODEL30 -modelname "vgg19_30"

python merge_csv_by_model.py -indir $INDIR -modeldir $RESMODEL10 -modelname "resnet152_10"
python merge_csv_by_model.py -indir $INDIR -modeldir $RESMODEL20 -modelname "resnet152_20"

python merge_csv_by_model.py -indir $INDIR -modeldir $DENSMODEL10 -modelname "densenet161_10"
python merge_csv_by_model.py -indir $INDIR -modeldir $DENSMODEL20 -modelname "densenet161_20"
python merge_csv_by_model.py -indir $INDIR -modeldir $DENSMODEL30 -modelname "densenet161_30"