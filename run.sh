set -e

COMMAND="$1"
shift
case "$COMMAND" in
    dj)
        docker-compose run --rm app django-admin "$@"
        ;;

    up)
        docker-compose up --build
        ;;
    
    down)
        docker-compose down
        ;;

    *)
        echo "Unrecognized command: $COMMAND"
        exit 1
esac 