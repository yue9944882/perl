
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
package Kubernetes::Object::V1ScaleIOVolumeSource;

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

use Kubernetes::Object::V1LocalObjectReference;

use base ( "Class::Accessor", "Class::Data::Inheritable" );

#
#ScaleIOVolumeSource represents a persistent ScaleIO volume
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
          'ScaleIOVolumeSource represents a persistent ScaleIO volume',
        class    => 'V1ScaleIOVolumeSource',
        required => [],                        # TODO
    }
);

__PACKAGE__->method_documentation(
    {
        'fs_type' => {
            datatype  => 'string',
            base_name => 'fsType',
            description =>
'Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. \&quot;ext4\&quot;, \&quot;xfs\&quot;, \&quot;ntfs\&quot;. Default is \&quot;xfs\&quot;.',
            format    => '',
            read_only => '',
        },
        'gateway' => {
            datatype    => 'string',
            base_name   => 'gateway',
            description => 'The host address of the ScaleIO API Gateway.',
            format      => '',
            read_only   => '',
        },
        'protection_domain' => {
            datatype  => 'string',
            base_name => 'protectionDomain',
            description =>
'The name of the ScaleIO Protection Domain for the configured storage.',
            format    => '',
            read_only => '',
        },
        'read_only' => {
            datatype  => 'boolean',
            base_name => 'readOnly',
            description =>
'Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.',
            format    => '',
            read_only => '',
        },
        'secret_ref' => {
            datatype    => 'V1LocalObjectReference',
            base_name   => 'secretRef',
            description => '',
            format      => '',
            read_only   => '',
        },
        'ssl_enabled' => {
            datatype  => 'boolean',
            base_name => 'sslEnabled',
            description =>
'Flag to enable/disable SSL communication with Gateway, default false',
            format    => '',
            read_only => '',
        },
        'storage_mode' => {
            datatype  => 'string',
            base_name => 'storageMode',
            description =>
'Indicates whether the storage for a volume should be ThickProvisioned or ThinProvisioned. Default is ThinProvisioned.',
            format    => '',
            read_only => '',
        },
        'storage_pool' => {
            datatype  => 'string',
            base_name => 'storagePool',
            description =>
              'The ScaleIO Storage Pool associated with the protection domain.',
            format    => '',
            read_only => '',
        },
        'system' => {
            datatype  => 'string',
            base_name => 'system',
            description =>
              'The name of the storage system as configured in ScaleIO.',
            format    => '',
            read_only => '',
        },
        'volume_name' => {
            datatype  => 'string',
            base_name => 'volumeName',
            description =>
'The name of a volume already created in the ScaleIO system that is associated with this volume source.',
            format    => '',
            read_only => '',
        },
    }
);

__PACKAGE__->openapi_types(
    {
        'fs_type'           => 'string',
        'gateway'           => 'string',
        'protection_domain' => 'string',
        'read_only'         => 'boolean',
        'secret_ref'        => 'V1LocalObjectReference',
        'ssl_enabled'       => 'boolean',
        'storage_mode'      => 'string',
        'storage_pool'      => 'string',
        'system'            => 'string',
        'volume_name'       => 'string'
    }
);

__PACKAGE__->attribute_map(
    {
        'fs_type'           => 'fsType',
        'gateway'           => 'gateway',
        'protection_domain' => 'protectionDomain',
        'read_only'         => 'readOnly',
        'secret_ref'        => 'secretRef',
        'ssl_enabled'       => 'sslEnabled',
        'storage_mode'      => 'storageMode',
        'storage_pool'      => 'storagePool',
        'system'            => 'system',
        'volume_name'       => 'volumeName'
    }
);

__PACKAGE__->mk_accessors( keys %{ __PACKAGE__->attribute_map } );

1;
