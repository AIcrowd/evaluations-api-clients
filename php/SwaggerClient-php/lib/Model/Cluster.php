<?php
/**
 * Cluster
 *
 * PHP version 5
 *
 * @category Class
 * @package  Swagger\Client
 * @author   Swagger Codegen team
 * @link     https://github.com/swagger-api/swagger-codegen
 */

/**
 * AIcrowd Evaluations API
 *
 * API to create and evaluate custom challenges on AIcrowd!
 *
 * OpenAPI spec version: 1.0.0
 * 
 * Generated by: https://github.com/swagger-api/swagger-codegen.git
 * Swagger Codegen version: 2.4.13
 */

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */

namespace Swagger\Client\Model;

use \ArrayAccess;
use \Swagger\Client\ObjectSerializer;

/**
 * Cluster Class Doc Comment
 *
 * @category Class
 * @package  Swagger\Client
 * @author   Swagger Codegen team
 * @link     https://github.com/swagger-api/swagger-codegen
 */
class Cluster implements ModelInterface, ArrayAccess
{
    const DISCRIMINATOR = null;

    /**
      * The original name of the model.
      *
      * @var string
      */
    protected static $swaggerModelName = 'Cluster';

    /**
      * Array of property to type mappings. Used for (de)serialization
      *
      * @var string[]
      */
    protected static $swaggerTypes = [
        'id' => 'int',
        'created' => '\DateTime',
        'updated' => '\DateTime',
        'remote_address' => 'string',
        'auth_token' => 'string',
        'docker_username' => 'string',
        'docker_registry' => 'string',
        'namespace' => 'string',
        'storage_class' => 'string',
        'status' => 'bool',
        'wf_name' => 'string',
        'user_id' => 'int',
        'organisation_id' => 'int'
    ];

    /**
      * Array of property to format mappings. Used for (de)serialization
      *
      * @var string[]
      */
    protected static $swaggerFormats = [
        'id' => null,
        'created' => 'date-time',
        'updated' => 'date-time',
        'remote_address' => null,
        'auth_token' => null,
        'docker_username' => null,
        'docker_registry' => null,
        'namespace' => null,
        'storage_class' => null,
        'status' => null,
        'wf_name' => null,
        'user_id' => null,
        'organisation_id' => null
    ];

    /**
     * Array of property to type mappings. Used for (de)serialization
     *
     * @return array
     */
    public static function swaggerTypes()
    {
        return self::$swaggerTypes;
    }

    /**
     * Array of property to format mappings. Used for (de)serialization
     *
     * @return array
     */
    public static function swaggerFormats()
    {
        return self::$swaggerFormats;
    }

    /**
     * Array of attributes where the key is the local name,
     * and the value is the original name
     *
     * @var string[]
     */
    protected static $attributeMap = [
        'id' => 'id',
        'created' => 'created',
        'updated' => 'updated',
        'remote_address' => 'remote_address',
        'auth_token' => 'auth_token',
        'docker_username' => 'docker_username',
        'docker_registry' => 'docker_registry',
        'namespace' => 'namespace',
        'storage_class' => 'storage_class',
        'status' => 'status',
        'wf_name' => 'wf_name',
        'user_id' => 'user_id',
        'organisation_id' => 'organisation_id'
    ];

    /**
     * Array of attributes to setter functions (for deserialization of responses)
     *
     * @var string[]
     */
    protected static $setters = [
        'id' => 'setId',
        'created' => 'setCreated',
        'updated' => 'setUpdated',
        'remote_address' => 'setRemoteAddress',
        'auth_token' => 'setAuthToken',
        'docker_username' => 'setDockerUsername',
        'docker_registry' => 'setDockerRegistry',
        'namespace' => 'setNamespace',
        'storage_class' => 'setStorageClass',
        'status' => 'setStatus',
        'wf_name' => 'setWfName',
        'user_id' => 'setUserId',
        'organisation_id' => 'setOrganisationId'
    ];

    /**
     * Array of attributes to getter functions (for serialization of requests)
     *
     * @var string[]
     */
    protected static $getters = [
        'id' => 'getId',
        'created' => 'getCreated',
        'updated' => 'getUpdated',
        'remote_address' => 'getRemoteAddress',
        'auth_token' => 'getAuthToken',
        'docker_username' => 'getDockerUsername',
        'docker_registry' => 'getDockerRegistry',
        'namespace' => 'getNamespace',
        'storage_class' => 'getStorageClass',
        'status' => 'getStatus',
        'wf_name' => 'getWfName',
        'user_id' => 'getUserId',
        'organisation_id' => 'getOrganisationId'
    ];

    /**
     * Array of attributes where the key is the local name,
     * and the value is the original name
     *
     * @return array
     */
    public static function attributeMap()
    {
        return self::$attributeMap;
    }

    /**
     * Array of attributes to setter functions (for deserialization of responses)
     *
     * @return array
     */
    public static function setters()
    {
        return self::$setters;
    }

    /**
     * Array of attributes to getter functions (for serialization of requests)
     *
     * @return array
     */
    public static function getters()
    {
        return self::$getters;
    }

    /**
     * The original name of the model.
     *
     * @return string
     */
    public function getModelName()
    {
        return self::$swaggerModelName;
    }

    

    

    /**
     * Associative array for storing property values
     *
     * @var mixed[]
     */
    protected $container = [];

    /**
     * Constructor
     *
     * @param mixed[] $data Associated array of property values
     *                      initializing the model
     */
    public function __construct(array $data = null)
    {
        $this->container['id'] = isset($data['id']) ? $data['id'] : null;
        $this->container['created'] = isset($data['created']) ? $data['created'] : null;
        $this->container['updated'] = isset($data['updated']) ? $data['updated'] : null;
        $this->container['remote_address'] = isset($data['remote_address']) ? $data['remote_address'] : null;
        $this->container['auth_token'] = isset($data['auth_token']) ? $data['auth_token'] : null;
        $this->container['docker_username'] = isset($data['docker_username']) ? $data['docker_username'] : null;
        $this->container['docker_registry'] = isset($data['docker_registry']) ? $data['docker_registry'] : null;
        $this->container['namespace'] = isset($data['namespace']) ? $data['namespace'] : null;
        $this->container['storage_class'] = isset($data['storage_class']) ? $data['storage_class'] : null;
        $this->container['status'] = isset($data['status']) ? $data['status'] : null;
        $this->container['wf_name'] = isset($data['wf_name']) ? $data['wf_name'] : null;
        $this->container['user_id'] = isset($data['user_id']) ? $data['user_id'] : null;
        $this->container['organisation_id'] = isset($data['organisation_id']) ? $data['organisation_id'] : null;
    }

    /**
     * Show all the invalid properties with reasons.
     *
     * @return array invalid properties with reasons
     */
    public function listInvalidProperties()
    {
        $invalidProperties = [];

        if ($this->container['remote_address'] === null) {
            $invalidProperties[] = "'remote_address' can't be null";
        }
        if ($this->container['auth_token'] === null) {
            $invalidProperties[] = "'auth_token' can't be null";
        }
        if ($this->container['docker_username'] === null) {
            $invalidProperties[] = "'docker_username' can't be null";
        }
        return $invalidProperties;
    }

    /**
     * Validate all the properties in the model
     * return true if all passed
     *
     * @return bool True if all properties are valid
     */
    public function valid()
    {
        return count($this->listInvalidProperties()) === 0;
    }


    /**
     * Gets id
     *
     * @return int
     */
    public function getId()
    {
        return $this->container['id'];
    }

    /**
     * Sets id
     *
     * @param int $id ID
     *
     * @return $this
     */
    public function setId($id)
    {
        $this->container['id'] = $id;

        return $this;
    }

    /**
     * Gets created
     *
     * @return \DateTime
     */
    public function getCreated()
    {
        return $this->container['created'];
    }

    /**
     * Sets created
     *
     * @param \DateTime $created Creation time
     *
     * @return $this
     */
    public function setCreated($created)
    {
        $this->container['created'] = $created;

        return $this;
    }

    /**
     * Gets updated
     *
     * @return \DateTime
     */
    public function getUpdated()
    {
        return $this->container['updated'];
    }

    /**
     * Sets updated
     *
     * @param \DateTime $updated Last updation time
     *
     * @return $this
     */
    public function setUpdated($updated)
    {
        $this->container['updated'] = $updated;

        return $this;
    }

    /**
     * Gets remote_address
     *
     * @return string
     */
    public function getRemoteAddress()
    {
        return $this->container['remote_address'];
    }

    /**
     * Sets remote_address
     *
     * @param string $remote_address Remote address used to connect to the cluster
     *
     * @return $this
     */
    public function setRemoteAddress($remote_address)
    {
        $this->container['remote_address'] = $remote_address;

        return $this;
    }

    /**
     * Gets auth_token
     *
     * @return string
     */
    public function getAuthToken()
    {
        return $this->container['auth_token'];
    }

    /**
     * Sets auth_token
     *
     * @param string $auth_token Authentication needed for the cluster
     *
     * @return $this
     */
    public function setAuthToken($auth_token)
    {
        $this->container['auth_token'] = $auth_token;

        return $this;
    }

    /**
     * Gets docker_username
     *
     * @return string
     */
    public function getDockerUsername()
    {
        return $this->container['docker_username'];
    }

    /**
     * Sets docker_username
     *
     * @param string $docker_username Docker registry username
     *
     * @return $this
     */
    public function setDockerUsername($docker_username)
    {
        $this->container['docker_username'] = $docker_username;

        return $this;
    }

    /**
     * Gets docker_registry
     *
     * @return string
     */
    public function getDockerRegistry()
    {
        return $this->container['docker_registry'];
    }

    /**
     * Sets docker_registry
     *
     * @param string $docker_registry Docker registry URL. Dockerhub is used by default.
     *
     * @return $this
     */
    public function setDockerRegistry($docker_registry)
    {
        $this->container['docker_registry'] = $docker_registry;

        return $this;
    }

    /**
     * Gets namespace
     *
     * @return string
     */
    public function getNamespace()
    {
        return $this->container['namespace'];
    }

    /**
     * Sets namespace
     *
     * @param string $namespace Kubernetes namespace to run the workflows in
     *
     * @return $this
     */
    public function setNamespace($namespace)
    {
        $this->container['namespace'] = $namespace;

        return $this;
    }

    /**
     * Gets storage_class
     *
     * @return string
     */
    public function getStorageClass()
    {
        return $this->container['storage_class'];
    }

    /**
     * Sets storage_class
     *
     * @param string $storage_class Storage class to use for datasets
     *
     * @return $this
     */
    public function setStorageClass($storage_class)
    {
        $this->container['storage_class'] = $storage_class;

        return $this;
    }

    /**
     * Gets status
     *
     * @return bool
     */
    public function getStatus()
    {
        return $this->container['status'];
    }

    /**
     * Sets status
     *
     * @param bool $status Readiness of the cluster
     *
     * @return $this
     */
    public function setStatus($status)
    {
        $this->container['status'] = $status;

        return $this;
    }

    /**
     * Gets wf_name
     *
     * @return string
     */
    public function getWfName()
    {
        return $this->container['wf_name'];
    }

    /**
     * Sets wf_name
     *
     * @param string $wf_name Name of the workflow used to setup grader
     *
     * @return $this
     */
    public function setWfName($wf_name)
    {
        $this->container['wf_name'] = $wf_name;

        return $this;
    }

    /**
     * Gets user_id
     *
     * @return int
     */
    public function getUserId()
    {
        return $this->container['user_id'];
    }

    /**
     * Sets user_id
     *
     * @param int $user_id User ID
     *
     * @return $this
     */
    public function setUserId($user_id)
    {
        $this->container['user_id'] = $user_id;

        return $this;
    }

    /**
     * Gets organisation_id
     *
     * @return int
     */
    public function getOrganisationId()
    {
        return $this->container['organisation_id'];
    }

    /**
     * Sets organisation_id
     *
     * @param int $organisation_id Organisation ID
     *
     * @return $this
     */
    public function setOrganisationId($organisation_id)
    {
        $this->container['organisation_id'] = $organisation_id;

        return $this;
    }
    /**
     * Returns true if offset exists. False otherwise.
     *
     * @param integer $offset Offset
     *
     * @return boolean
     */
    public function offsetExists($offset)
    {
        return isset($this->container[$offset]);
    }

    /**
     * Gets offset.
     *
     * @param integer $offset Offset
     *
     * @return mixed
     */
    public function offsetGet($offset)
    {
        return isset($this->container[$offset]) ? $this->container[$offset] : null;
    }

    /**
     * Sets value based on offset.
     *
     * @param integer $offset Offset
     * @param mixed   $value  Value to be set
     *
     * @return void
     */
    public function offsetSet($offset, $value)
    {
        if (is_null($offset)) {
            $this->container[] = $value;
        } else {
            $this->container[$offset] = $value;
        }
    }

    /**
     * Unsets offset.
     *
     * @param integer $offset Offset
     *
     * @return void
     */
    public function offsetUnset($offset)
    {
        unset($this->container[$offset]);
    }

    /**
     * Gets the string presentation of the object
     *
     * @return string
     */
    public function __toString()
    {
        if (defined('JSON_PRETTY_PRINT')) { // use JSON pretty print
            return json_encode(
                ObjectSerializer::sanitizeForSerialization($this),
                JSON_PRETTY_PRINT
            );
        }

        return json_encode(ObjectSerializer::sanitizeForSerialization($this));
    }
}


