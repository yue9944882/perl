=begin comment

Kubernetes

No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

OpenAPI spec version: v1.13.5

Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# Do not edit the class manually.
# Ref: https://openapi-generator.tech
#
package Kubernetes::Object::V1APIServiceSpec;

require 5.6.0;
use strict;
use warnings;
use utf8;
use JSON qw(decode_json);
use Data::Dumper;
use Module::Runtime qw(use_module);
use Log::Any qw($log);
use Date::Parse;
use DateTime;

use Kubernetes::Object::V1ServiceReference;

use base ("Class::Accessor", "Class::Data::Inheritable");


#
#APIServiceSpec contains information for locating and communicating with a server. Only https is supported, though you are able to disable certificate verification.
#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech). Do not edit the class manually.
# REF: https://openapi-generator.tech
#

=begin comment

Kubernetes

No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

OpenAPI spec version: v1.13.5

Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# Do not edit the class manually.
# Ref: https://openapi-generator.tech
#
__PACKAGE__->mk_classdata('attribute_map' => {});
__PACKAGE__->mk_classdata('openapi_types' => {});
__PACKAGE__->mk_classdata('method_documentation' => {}); 
__PACKAGE__->mk_classdata('class_documentation' => {});

# new object
sub new { 
    my ($class, %args) = @_; 

	my $self = bless {}, $class;
	
	foreach my $attribute (keys %{$class->attribute_map}) {
		my $args_key = $class->attribute_map->{$attribute};
		$self->$attribute( $args{ $args_key } );
	}
	
	return $self;
}  

# return perl hash
sub to_hash {
    return decode_json(JSON->new->convert_blessed->encode( shift ));
}

# used by JSON for serialization
sub TO_JSON { 
    my $self = shift;
    my $_data = {};
    foreach my $_key (keys %{$self->attribute_map}) {
        if (defined $self->{$_key}) {
            $_data->{$self->attribute_map->{$_key}} = $self->{$_key};
        }
    }
    return $_data;
}

# from Perl hashref
sub from_hash {
    my ($self, $hash) = @_;

    # loop through attributes and use openapi_types to deserialize the data
    while ( my ($_key, $_type) = each %{$self->openapi_types} ) {
    	my $_json_attribute = $self->attribute_map->{$_key}; 
        if ($_type =~ /^array\[/i) { # array
            my $_subclass = substr($_type, 6, -1);
            my @_array = ();
            foreach my $_element (@{$hash->{$_json_attribute}}) {
                push @_array, $self->_deserialize($_subclass, $_element);
            }
            $self->{$_key} = \@_array;
        } elsif (exists $hash->{$_json_attribute}) { #hash(model), primitive, datetime
            $self->{$_key} = $self->_deserialize($_type, $hash->{$_json_attribute});
        } else {
        	$log->debugf("Warning: %s (%s) does not exist in input hash\n", $_key, $_json_attribute);
        }
    }
  
    return $self;
}

# deserialize non-array data
sub _deserialize {
    my ($self, $type, $data) = @_;
    $log->debugf("deserializing %s with %s",Dumper($data), $type);
        
    if ($type eq 'DateTime') {
        return DateTime->from_epoch(epoch => str2time($data));
    } elsif ( grep( /^$type$/, ('int', 'double', 'string', 'boolean'))) {
        return $data;
    } else { # hash(model)
        my $_instance = eval "Kubernetes::Object::$type->new()";
        return $_instance->from_hash($data);
    }
}



__PACKAGE__->class_documentation({description => 'APIServiceSpec contains information for locating and communicating with a server. Only https is supported, though you are able to disable certificate verification.',
                                  class => 'V1APIServiceSpec',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'ca_bundle' => {
    	datatype => 'string',
    	base_name => 'caBundle',
    	description => 'CABundle is a PEM encoded CA bundle which will be used to validate an API server&#39;s serving certificate. If unspecified, system trust roots on the apiserver are used.',
    	format => '',
    	read_only => '',
    		},
    'group' => {
    	datatype => 'string',
    	base_name => 'group',
    	description => 'Group is the API group name this server hosts',
    	format => '',
    	read_only => '',
    		},
    'group_priority_minimum' => {
    	datatype => 'int',
    	base_name => 'groupPriorityMinimum',
    	description => 'GroupPriorityMininum is the priority this group should have at least. Higher priority means that the group is preferred by clients over lower priority ones. Note that other versions of this group might specify even higher GroupPriorityMininum values such that the whole group gets a higher priority. The primary sort is based on GroupPriorityMinimum, ordered highest number to lowest (20 before 10). The secondary sort is based on the alphabetical comparison of the name of the object.  (v1.bar before v1.foo) We&#39;d recommend something like: *.k8s.io (except extensions) at 18000 and PaaSes (OpenShift, Deis) are recommended to be in the 2000s',
    	format => '',
    	read_only => '',
    		},
    'insecure_skip_tls_verify' => {
    	datatype => 'boolean',
    	base_name => 'insecureSkipTLSVerify',
    	description => 'InsecureSkipTLSVerify disables TLS certificate verification when communicating with this server. This is strongly discouraged.  You should use the CABundle instead.',
    	format => '',
    	read_only => '',
    		},
    'service' => {
    	datatype => 'V1ServiceReference',
    	base_name => 'service',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'version' => {
    	datatype => 'string',
    	base_name => 'version',
    	description => 'Version is the API version this server hosts.  For example, \&quot;v1\&quot;',
    	format => '',
    	read_only => '',
    		},
    'version_priority' => {
    	datatype => 'int',
    	base_name => 'versionPriority',
    	description => 'VersionPriority controls the ordering of this API version inside of its group.  Must be greater than zero. The primary sort is based on VersionPriority, ordered highest to lowest (20 before 10). Since it&#39;s inside of a group, the number can be small, probably in the 10s. In case of equal version priorities, the version string will be used to compute the order inside a group. If the version string is \&quot;kube-like\&quot;, it will sort above non \&quot;kube-like\&quot; version strings, which are ordered lexicographically. \&quot;Kube-like\&quot; versions start with a \&quot;v\&quot;, then are followed by a number (the major version), then optionally the string \&quot;alpha\&quot; or \&quot;beta\&quot; and another number (the minor version). These are sorted first by GA &gt; beta &gt; alpha (where GA is a version with no suffix such as beta or alpha), and then by comparing major version, then minor version. An example sorted list of versions: v10, v2, v1, v11beta2, v10beta3, v3beta1, v12alpha1, v11alpha2, foo1, foo10.',
    	format => '',
    	read_only => '',
    		},
});

__PACKAGE__->openapi_types( {
    'ca_bundle' => 'string',
    'group' => 'string',
    'group_priority_minimum' => 'int',
    'insecure_skip_tls_verify' => 'boolean',
    'service' => 'V1ServiceReference',
    'version' => 'string',
    'version_priority' => 'int'
} );

__PACKAGE__->attribute_map( {
    'ca_bundle' => 'caBundle',
    'group' => 'group',
    'group_priority_minimum' => 'groupPriorityMinimum',
    'insecure_skip_tls_verify' => 'insecureSkipTLSVerify',
    'service' => 'service',
    'version' => 'version',
    'version_priority' => 'versionPriority'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;
