
# Create Docker Images

php7.1:
	docker buildx build --platform linux/amd64,linux/arm64,linux/arm/v7 -t atyasu/php-composer:7.1 -f Dockerfile.php-7.1 --push .
php7.2:
	docker buildx build --platform linux/amd64,linux/arm64,linux/arm/v7 -t atyasu/php-composer:7.2 -f Dockerfile.php-7.2 --push .
php7.3:
	docker buildx build --platform linux/amd64,linux/arm64,linux/arm/v7 -t atyasu/php-composer:7.3 -f Dockerfile.php-7.3 --push .
php7.4:
	docker buildx build --platform linux/amd64,linux/arm64,linux/arm/v7 -t atyasu/php-composer:7.4 -f Dockerfile.php-7.4 --push .
php8.0:
	docker buildx build --platform linux/amd64,linux/arm64,linux/arm/v7 -t atyasu/php-composer:8.0 -f Dockerfile.php-8.0 --push .
php8.1:
	docker buildx build --platform linux/amd64,linux/arm64,linux/arm/v7 -t atyasu/php-composer:8.1 -f Dockerfile.php-8.1 --push .

create_vm:
	@docker buildx create --use
