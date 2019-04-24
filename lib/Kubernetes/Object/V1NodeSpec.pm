
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
package Kubernetes::Object::V1NodeSpec;

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

use Kubernetes::Object::V1NodeConfigSource;
use Kubernetes::Object::V1Taint;

use base ( "Class::Accessor", "Class::Data::Inheritable" );

#
#NodeSpec describes the attributes that a node is created with.
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
__PACKAGE__->mk_classdata( 'attribute_map'        => {} );
__PACKAGE__->mk_classdata( 'openapi_types'        => {} );
__PACKAGE__->mk_classdata( 'method_documentation' => {} );
__PACKAGE__->mk_classdata( 'class_documentation'  => {} );

# new object
sub new {
    my ( $class, %args ) = @_;

    my $self = bless {}, $class;

    foreach my $attribute ( keys %{ $class->attribute_map } ) {
        my $args_key = $class->attribute_map->{$attribute};
        $self->$attribute( $args{$args_key} );
    }

    return $self;
}

# return perl hash
sub to_hash {
    return decode_json( JSON->new->convert_blessed->encode(shift) );
}

# used by JSON for serialization
sub TO_JSON {
    my $self  = shift;
    my $_data = {};
    foreach my $_key ( keys %{ $self->attribute_map } ) {
        if ( defined $self->{$_key} ) {
            $_data->{ $self->attribute_map->{$_key} } = $self->{$_key};
        }
    }
    return $_data;
}

# from Perl hashref
sub from_hash {
    my ( $self, $hash ) = @_;

    # loop through attributes and use openapi_types to deserialize the data
    while ( my ( $_key, $_type ) = each %{ $self->openapi_types } ) {
        my $_json_attribute = $self->attribute_map->{$_key};
        if ( $_type =~ /^array\[/i ) {    # array
            my $_subclass = substr( $_type, 6, -1 );
            my @_array    = ();
            foreach my $_element ( @{ $hash->{$_json_attribute} } ) {
                push @_array, $self->_deserialize( $_subclass, $_element );
            }
            $self->{$_key} = \@_array;
        }
        elsif ( exists $hash->{$_json_attribute} )
        {                                 #hash(model), primitive, datetime
            $self->{$_key} =
              $self->_deserialize( $_type, $hash->{$_json_attribute} );
        }
        else {
            $log->debugf( "Warning: %s (%s) does not exist in input hash\n",
                $_key, $_json_attribute );
        }
    }

    return $self;
}

# deserialize non-array data
sub _deserialize {
    my ( $self, $type, $data ) = @_;
    $log->debugf( "deserializing %s with %s", Dumper($data), $type );

    if ( $type eq 'DateTime' ) {
        return DateTime->from_epoch( epoch => str2time($data) );
    }
    elsif ( grep( /^$type$/, ( 'int', 'double', 'string', 'boolean' ) ) ) {
        return $data;
    }
    else {    # hash(model)
        my $_instance = eval "Kubernetes::Object::$type->new()";
        return $_instance->from_hash($data);
    }
}

__PACKAGE__->class_documentation(
    {
        description =>
          'NodeSpec describes the attributes that a node is created with.',
        class    => 'V1NodeSpec',
        required => [],             # TODO
    }
);

__PACKAGE__->method_documentation(
    {
        'config_source' => {
            datatype    => 'V1NodeConfigSource',
            base_name   => 'configSource',
            description => '',
            format      => '',
            read_only   => '',
        },
        'external_id' => {
            datatype  => 'string',
            base_name => 'externalID',
            description =>
'Deprecated. Not all kubelets will set this field. Remove field after 1.13. see: https://issues.k8s.io/61966',
            format    => '',
            read_only => '',
        },
        'pod_cidr' => {
            datatype  => 'string',
            base_name => 'podCIDR',
            description =>
              'PodCIDR represents the pod IP range assigned to the node.',
            format    => '',
            read_only => '',
        },
        'provider_id' => {
            datatype  => 'string',
            base_name => 'providerID',
            description =>
'ID of the node assigned by the cloud provider in the format: &lt;ProviderName&gt;://&lt;ProviderSpecificNodeID&gt;',
            format    => '',
            read_only => '',
        },
        'taints' => {
            datatype    => 'ARRAY[V1Taint]',
            base_name   => 'taints',
            description => 'If specified, the node&#39;s taints.',
            format      => '',
            read_only   => '',
        },
        'unschedulable' => {
            datatype  => 'boolean',
            base_name => 'unschedulable',
            description =>
'Unschedulable controls node schedulability of new pods. By default, node is schedulable. More info: https://kubernetes.io/docs/concepts/nodes/node/#manual-node-administration',
            format    => '',
            read_only => '',
        },
    }
);

__PACKAGE__->openapi_types(
    {
        'config_source' => 'V1NodeConfigSource',
        'external_id'   => 'string',
        'pod_cidr'      => 'string',
        'provider_id'   => 'string',
        'taints'        => 'ARRAY[V1Taint]',
        'unschedulable' => 'boolean'
    }
);

__PACKAGE__->attribute_map(
    {
        'config_source' => 'configSource',
        'external_id'   => 'externalID',
        'pod_cidr'      => 'podCIDR',
        'provider_id'   => 'providerID',
        'taints'        => 'taints',
        'unschedulable' => 'unschedulable'
    }
);

__PACKAGE__->mk_accessors( keys %{ __PACKAGE__->attribute_map } );

1;
