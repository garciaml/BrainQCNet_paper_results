
VGGMODEL10="vgg19/18112020/10push0.9506.pth/"
VGGMODEL20="vgg19/18112020/20push0.9489.pth/"
VGGMODEL30="vgg19/18112020/30push0.9483.pth/"
RESMODEL10="resnet152/19112020/10push0.8167.pth/"
RESMODEL20="resnet152/19112020/20push0.9678.pth/"
DENSMODEL10="densenet161/25012021/10push0.9800.pth/"
DENSMODEL20="densenet161/25012021/20_19push0.9800.pth/"
DENSMODEL30="densenet161/25012021/30push0.9706.pth/"
# train_full
INDIR="/media/mleanie/SAMSUNG/protopnet_results/train_full/"
python transform_log_to_csv.py -indir $INDIR -modeldir $VGGMODEL10
python transform_log_to_csv.py -indir $INDIR -modeldir $VGGMODEL20
python transform_log_to_csv.py -indir $INDIR -modeldir $VGGMODEL30
python transform_log_to_csv.py -indir $INDIR -modeldir $RESMODEL10
python transform_log_to_csv.py -indir $INDIR -modeldir $RESMODEL20
python transform_log_to_csv.py -indir $INDIR -modeldir $DENSMODEL10
python transform_log_to_csv.py -indir $INDIR -modeldir $DENSMODEL20
python transform_log_to_csv.py -indir $INDIR -modeldir $DENSMODEL30
# val_full
INDIR="/media/mleanie/SAMSUNG/protopnet_results/val_full/"
python transform_log_to_csv.py -indir $INDIR -modeldir $VGGMODEL10
python transform_log_to_csv.py -indir $INDIR -modeldir $VGGMODEL20
python transform_log_to_csv.py -indir $INDIR -modeldir $VGGMODEL30
python transform_log_to_csv.py -indir $INDIR -modeldir $RESMODEL10
python transform_log_to_csv.py -indir $INDIR -modeldir $RESMODEL20
python transform_log_to_csv.py -indir $INDIR -modeldir $DENSMODEL10
python transform_log_to_csv.py -indir $INDIR -modeldir $DENSMODEL20
python transform_log_to_csv.py -indir $INDIR -modeldir $DENSMODEL30
# testset1
INDIR="/media/mleanie/SAMSUNG/protopnet_results/testset1/"
python transform_log_to_csv.py -indir $INDIR -modeldir $VGGMODEL10
python transform_log_to_csv.py -indir $INDIR -modeldir $VGGMODEL20
python transform_log_to_csv.py -indir $INDIR -modeldir $VGGMODEL30
python transform_log_to_csv.py -indir $INDIR -modeldir $RESMODEL10
python transform_log_to_csv.py -indir $INDIR -modeldir $RESMODEL20
python transform_log_to_csv.py -indir $INDIR -modeldir $DENSMODEL10
python transform_log_to_csv.py -indir $INDIR -modeldir $DENSMODEL20
python transform_log_to_csv.py -indir $INDIR -modeldir $DENSMODEL30
# testset3_good_medium
INDIR="/media/mleanie/SAMSUNG/protopnet_results/testset3_good_medium/"
python transform_log_to_csv.py -indir $INDIR -modeldir $VGGMODEL10
python transform_log_to_csv.py -indir $INDIR -modeldir $VGGMODEL20
python transform_log_to_csv.py -indir $INDIR -modeldir $VGGMODEL30
python transform_log_to_csv.py -indir $INDIR -modeldir $RESMODEL10
python transform_log_to_csv.py -indir $INDIR -modeldir $RESMODEL20
python transform_log_to_csv.py -indir $INDIR -modeldir $DENSMODEL10
python transform_log_to_csv.py -indir $INDIR -modeldir $DENSMODEL20
python transform_log_to_csv.py -indir $INDIR -modeldir $DENSMODEL30
# testset3_good_part1
INDIR="/media/mleanie/SAMSUNG/protopnet_results/testset3_good_part1/"
python transform_log_to_csv.py -indir $INDIR -modeldir $VGGMODEL10
python transform_log_to_csv.py -indir $INDIR -modeldir $VGGMODEL20
python transform_log_to_csv.py -indir $INDIR -modeldir $VGGMODEL30
python transform_log_to_csv.py -indir $INDIR -modeldir $RESMODEL10
python transform_log_to_csv.py -indir $INDIR -modeldir $RESMODEL20
python transform_log_to_csv.py -indir $INDIR -modeldir $DENSMODEL10
python transform_log_to_csv.py -indir $INDIR -modeldir $DENSMODEL20
python transform_log_to_csv.py -indir $INDIR -modeldir $DENSMODEL30
# testset3_good_part2
INDIR="/media/mleanie/SAMSUNG/protopnet_results/testset3_good_part2/"
python transform_log_to_csv.py -indir $INDIR -modeldir $VGGMODEL10
python transform_log_to_csv.py -indir $INDIR -modeldir $VGGMODEL20
python transform_log_to_csv.py -indir $INDIR -modeldir $VGGMODEL30
python transform_log_to_csv.py -indir $INDIR -modeldir $RESMODEL10
python transform_log_to_csv.py -indir $INDIR -modeldir $RESMODEL20
python transform_log_to_csv.py -indir $INDIR -modeldir $DENSMODEL10
python transform_log_to_csv.py -indir $INDIR -modeldir $DENSMODEL20
python transform_log_to_csv.py -indir $INDIR -modeldir $DENSMODEL30
# abide2
INDIR="/media/mleanie/SAMSUNG/protopnet_results/abide2/"
python transform_log_to_csv.py -indir $INDIR -modeldir $VGGMODEL10
python transform_log_to_csv.py -indir $INDIR -modeldir $VGGMODEL20
python transform_log_to_csv.py -indir $INDIR -modeldir $VGGMODEL30
python transform_log_to_csv.py -indir $INDIR -modeldir $RESMODEL10
python transform_log_to_csv.py -indir $INDIR -modeldir $RESMODEL20
python transform_log_to_csv.py -indir $INDIR -modeldir $DENSMODEL10
python transform_log_to_csv.py -indir $INDIR -modeldir $DENSMODEL20
python transform_log_to_csv.py -indir $INDIR -modeldir $DENSMODEL30