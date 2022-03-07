
# Create Docker Images

php7.1:
	docker buildx build --platform linux/amd64,linux/arm64,linux/arm/v7 -t atyasu/php-composer:7.1 -f php-71/Dockerfile --push .
php7.2:
	docker buildx build --platform linux/amd64,linux/arm64,linux/arm/v7 -t atyasu/php-composer:7.2 -f php-72/Dockerfile --push .
php7.3:
	docker buildx build --platform linux/amd64,linux/arm64,linux/arm/v7 -t atyasu/php-composer:7.3 -f php-73/Dockerfile --push .
php7.4:
	docker buildx build --platform linux/amd64,linux/arm64,linux/arm/v7 -t atyasu/php-composer:7.4 -f php-74/Dockerfile --push .
php8.0:
	docker buildx build --platform linux/amd64,linux/arm64,linux/arm/v7 -t atyasu/php-composer:8.0 -f php-80/Dockerfile --push .
php8.1:
	docker buildx build --platform linux/amd64,linux/arm64,linux/arm/v7 -t atyasu/php-composer:8.1 -f php-81/Dockerfile --push .

create_vm:
	@docker buildx create --use
