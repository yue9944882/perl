# Kubernetes::Object::V2beta1PodsMetricSource

## Load the model package
```perl
use Kubernetes::Object::V2beta1PodsMetricSource;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**metric_name** | **string** | metricName is the name of the metric in question | 
**selector** | [**V1LabelSelector**](V1LabelSelector.md) |  | [optional] 
**target_average_value** | **string** | targetAverageValue is the target value of the average of the metric across all relevant pods (as a quantity) | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


