# Kubernetes::Object::V1NonResourceRule

## Load the model package
```perl
use Kubernetes::Object::V1NonResourceRule;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**non_resource_ur_ls** | **ARRAY[string]** | NonResourceURLs is a set of partial urls that a user should have access to.  *s are allowed, but only as the full, final step in the path.  \&quot;*\&quot; means all. | [optional] 
**verbs** | **ARRAY[string]** | Verb is a list of kubernetes non-resource API verbs, like: get, post, put, delete, patch, head, options.  \&quot;*\&quot; means all. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


