# Kubernetes::Object::V2beta1HorizontalPodAutoscalerStatus

## Load the model package
```perl
use Kubernetes::Object::V2beta1HorizontalPodAutoscalerStatus;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**conditions** | [**ARRAY[V2beta1HorizontalPodAutoscalerCondition]**](V2beta1HorizontalPodAutoscalerCondition.md) | conditions is the set of conditions required for this autoscaler to scale its target, and indicates whether or not those conditions are met. | 
**current_metrics** | [**ARRAY[V2beta1MetricStatus]**](V2beta1MetricStatus.md) | currentMetrics is the last read state of the metrics used by this autoscaler. | [optional] 
**current_replicas** | **int** | currentReplicas is current number of replicas of pods managed by this autoscaler, as last seen by the autoscaler. | 
**desired_replicas** | **int** | desiredReplicas is the desired number of replicas of pods managed by this autoscaler, as last calculated by the autoscaler. | 
**last_scale_time** | **DateTime** | lastScaleTime is the last time the HorizontalPodAutoscaler scaled the number of pods, used by the autoscaler to control how often the number of pods is changed. | [optional] 
**observed_generation** | **int** | observedGeneration is the most recent generation observed by this autoscaler. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


