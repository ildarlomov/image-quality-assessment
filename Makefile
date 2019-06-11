build:
	docker build -t nima-cpu . -f Dockerfile.cpu

train: build
	./train-local \
	--config-file /Users/ildar.lomov/playground/image-quality-assessment/models/MobileNet/config_mobilenet_aesthetic.json \
	--samples-file /Users/ildar.lomov/playground/image-quality-assessment/data/finetune/hotel_labels_train.json \
	--image-dir /Users/ildar.lomov/playground/image-quality-assessment/finetune_data/imgs