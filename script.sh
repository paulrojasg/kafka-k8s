kubectl apply -f zookeeper.yaml

kubectl apply -f kafka-broker.yaml

kubectl exec -it kafka-pod -- sh

# Create topic
kafka-topics --bootstrap-server kafka-service:9092 --create --topic univalle-ideas

# Producer
kafka-console-producer --bootstrap-server kafka-service:9092 --topic univalle-ideas

# Consumer
kafka-console-consumer --bootstrap-server kafka-service:9092 --topic univalle-ideas --from-beginning