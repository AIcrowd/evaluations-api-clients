<?php
/**
 * Grader
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
 * Swagger Codegen version: 2.4.26
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
 * Grader Class Doc Comment
 *
 * @category Class
 * @package  Swagger\Client
 * @author   Swagger Codegen team
 * @link     https://github.com/swagger-api/swagger-codegen
 */
class Grader implements ModelInterface, ArrayAccess
{
    const DISCRIMINATOR = null;

    /**
      * The original name of the model.
      *
      * @var string
      */
    protected static $swaggerModelName = 'Grader';

    /**
      * Array of property to type mappings. Used for (de)serialization
      *
      * @var string[]
      */
    protected static $swaggerTypes = [
        'id' => 'int',
        'created' => '\DateTime',
        'updated' => '\DateTime',
        'archived' => 'bool',
        'dataset' => 'object',
        'cluster_id' => 'int',
        'description' => 'string',
        'workflow_spec' => 'object',
        'evaluator_repo' => 'string',
        'evaluator_repo_tag' => 'string',
        'name' => 'string',
        'notifications' => 'string',
        'logs' => 'string',
        'meta' => 'string',
        'status' => 'string',
        'secrets' => 'object',
        'wf_name' => 'string',
        'allowed_extensions' => 'object',
        'workflow_priority' => 'int',
        'config_path' => 'string',
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
        'archived' => null,
        'dataset' => null,
        'cluster_id' => null,
        'description' => null,
        'workflow_spec' => null,
        'evaluator_repo' => null,
        'evaluator_repo_tag' => null,
        'name' => null,
        'notifications' => null,
        'logs' => null,
        'meta' => null,
        'status' => null,
        'secrets' => null,
        'wf_name' => null,
        'allowed_extensions' => null,
        'workflow_priority' => null,
        'config_path' => null,
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
        'archived' => 'archived',
        'dataset' => 'dataset',
        'cluster_id' => 'cluster_id',
        'description' => 'description',
        'workflow_spec' => 'workflow_spec',
        'evaluator_repo' => 'evaluator_repo',
        'evaluator_repo_tag' => 'evaluator_repo_tag',
        'name' => 'name',
        'notifications' => 'notifications',
        'logs' => 'logs',
        'meta' => 'meta',
        'status' => 'status',
        'secrets' => 'secrets',
        'wf_name' => 'wf_name',
        'allowed_extensions' => 'allowed_extensions',
        'workflow_priority' => 'workflow_priority',
        'config_path' => 'config_path',
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
        'archived' => 'setArchived',
        'dataset' => 'setDataset',
        'cluster_id' => 'setClusterId',
        'description' => 'setDescription',
        'workflow_spec' => 'setWorkflowSpec',
        'evaluator_repo' => 'setEvaluatorRepo',
        'evaluator_repo_tag' => 'setEvaluatorRepoTag',
        'name' => 'setName',
        'notifications' => 'setNotifications',
        'logs' => 'setLogs',
        'meta' => 'setMeta',
        'status' => 'setStatus',
        'secrets' => 'setSecrets',
        'wf_name' => 'setWfName',
        'allowed_extensions' => 'setAllowedExtensions',
        'workflow_priority' => 'setWorkflowPriority',
        'config_path' => 'setConfigPath',
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
        'archived' => 'getArchived',
        'dataset' => 'getDataset',
        'cluster_id' => 'getClusterId',
        'description' => 'getDescription',
        'workflow_spec' => 'getWorkflowSpec',
        'evaluator_repo' => 'getEvaluatorRepo',
        'evaluator_repo_tag' => 'getEvaluatorRepoTag',
        'name' => 'getName',
        'notifications' => 'getNotifications',
        'logs' => 'getLogs',
        'meta' => 'getMeta',
        'status' => 'getStatus',
        'secrets' => 'getSecrets',
        'wf_name' => 'getWfName',
        'allowed_extensions' => 'getAllowedExtensions',
        'workflow_priority' => 'getWorkflowPriority',
        'config_path' => 'getConfigPath',
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
        $this->container['archived'] = isset($data['archived']) ? $data['archived'] : null;
        $this->container['dataset'] = isset($data['dataset']) ? $data['dataset'] : null;
        $this->container['cluster_id'] = isset($data['cluster_id']) ? $data['cluster_id'] : null;
        $this->container['description'] = isset($data['description']) ? $data['description'] : null;
        $this->container['workflow_spec'] = isset($data['workflow_spec']) ? $data['workflow_spec'] : null;
        $this->container['evaluator_repo'] = isset($data['evaluator_repo']) ? $data['evaluator_repo'] : null;
        $this->container['evaluator_repo_tag'] = isset($data['evaluator_repo_tag']) ? $data['evaluator_repo_tag'] : null;
        $this->container['name'] = isset($data['name']) ? $data['name'] : null;
        $this->container['notifications'] = isset($data['notifications']) ? $data['notifications'] : null;
        $this->container['logs'] = isset($data['logs']) ? $data['logs'] : null;
        $this->container['meta'] = isset($data['meta']) ? $data['meta'] : null;
        $this->container['status'] = isset($data['status']) ? $data['status'] : null;
        $this->container['secrets'] = isset($data['secrets']) ? $data['secrets'] : null;
        $this->container['wf_name'] = isset($data['wf_name']) ? $data['wf_name'] : null;
        $this->container['allowed_extensions'] = isset($data['allowed_extensions']) ? $data['allowed_extensions'] : null;
        $this->container['workflow_priority'] = isset($data['workflow_priority']) ? $data['workflow_priority'] : null;
        $this->container['config_path'] = isset($data['config_path']) ? $data['config_path'] : null;
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

        if ($this->container['evaluator_repo'] === null) {
            $invalidProperties[] = "'evaluator_repo' can't be null";
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
     * Gets archived
     *
     * @return bool
     */
    public function getArchived()
    {
        return $this->container['archived'];
    }

    /**
     * Sets archived
     *
     * @param bool $archived Grader archival status
     *
     * @return $this
     */
    public function setArchived($archived)
    {
        $this->container['archived'] = $archived;

        return $this;
    }

    /**
     * Gets dataset
     *
     * @return object
     */
    public function getDataset()
    {
        return $this->container['dataset'];
    }

    /**
     * Sets dataset
     *
     * @param object $dataset Dataset metadata
     *
     * @return $this
     */
    public function setDataset($dataset)
    {
        $this->container['dataset'] = $dataset;

        return $this;
    }

    /**
     * Gets cluster_id
     *
     * @return int
     */
    public function getClusterId()
    {
        return $this->container['cluster_id'];
    }

    /**
     * Sets cluster_id
     *
     * @param int $cluster_id Cluster to run the grader on
     *
     * @return $this
     */
    public function setClusterId($cluster_id)
    {
        $this->container['cluster_id'] = $cluster_id;

        return $this;
    }

    /**
     * Gets description
     *
     * @return string
     */
    public function getDescription()
    {
        return $this->container['description'];
    }

    /**
     * Sets description
     *
     * @param string $description Description of the grader
     *
     * @return $this
     */
    public function setDescription($description)
    {
        $this->container['description'] = $description;

        return $this;
    }

    /**
     * Gets workflow_spec
     *
     * @return object
     */
    public function getWorkflowSpec()
    {
        return $this->container['workflow_spec'];
    }

    /**
     * Sets workflow_spec
     *
     * @param object $workflow_spec Argo workflow template spec
     *
     * @return $this
     */
    public function setWorkflowSpec($workflow_spec)
    {
        $this->container['workflow_spec'] = $workflow_spec;

        return $this;
    }

    /**
     * Gets evaluator_repo
     *
     * @return string
     */
    public function getEvaluatorRepo()
    {
        return $this->container['evaluator_repo'];
    }

    /**
     * Sets evaluator_repo
     *
     * @param string $evaluator_repo Git URL of the repository containing the code that will be used for the evaluation
     *
     * @return $this
     */
    public function setEvaluatorRepo($evaluator_repo)
    {
        $this->container['evaluator_repo'] = $evaluator_repo;

        return $this;
    }

    /**
     * Gets evaluator_repo_tag
     *
     * @return string
     */
    public function getEvaluatorRepoTag()
    {
        return $this->container['evaluator_repo_tag'];
    }

    /**
     * Sets evaluator_repo_tag
     *
     * @param string $evaluator_repo_tag Git branch/tag that should be used with the evaluator repository.
     *
     * @return $this
     */
    public function setEvaluatorRepoTag($evaluator_repo_tag)
    {
        $this->container['evaluator_repo_tag'] = $evaluator_repo_tag;

        return $this;
    }

    /**
     * Gets name
     *
     * @return string
     */
    public function getName()
    {
        return $this->container['name'];
    }

    /**
     * Sets name
     *
     * @param string $name Name of the grader
     *
     * @return $this
     */
    public function setName($name)
    {
        $this->container['name'] = $name;

        return $this;
    }

    /**
     * Gets notifications
     *
     * @return string
     */
    public function getNotifications()
    {
        return $this->container['notifications'];
    }

    /**
     * Sets notifications
     *
     * @param string $notifications Notifications available for the grader.
     *
     * @return $this
     */
    public function setNotifications($notifications)
    {
        $this->container['notifications'] = $notifications;

        return $this;
    }

    /**
     * Gets logs
     *
     * @return string
     */
    public function getLogs()
    {
        return $this->container['logs'];
    }

    /**
     * Sets logs
     *
     * @param string $logs Logs from argo workflow
     *
     * @return $this
     */
    public function setLogs($logs)
    {
        $this->container['logs'] = $logs;

        return $this;
    }

    /**
     * Gets meta
     *
     * @return string
     */
    public function getMeta()
    {
        return $this->container['meta'];
    }

    /**
     * Sets meta
     *
     * @param string $meta Additional meta data of the grader
     *
     * @return $this
     */
    public function setMeta($meta)
    {
        $this->container['meta'] = $meta;

        return $this;
    }

    /**
     * Gets status
     *
     * @return string
     */
    public function getStatus()
    {
        return $this->container['status'];
    }

    /**
     * Sets status
     *
     * @param string $status Status of the grader - True if it ready, False otherwise
     *
     * @return $this
     */
    public function setStatus($status)
    {
        $this->container['status'] = $status;

        return $this;
    }

    /**
     * Gets secrets
     *
     * @return object
     */
    public function getSecrets()
    {
        return $this->container['secrets'];
    }

    /**
     * Sets secrets
     *
     * @param object $secrets List of key:value pair of secrets that will be replace `{key}` in aicrowd.yaml
     *
     * @return $this
     */
    public function setSecrets($secrets)
    {
        $this->container['secrets'] = $secrets;

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
     * Gets allowed_extensions
     *
     * @return object
     */
    public function getAllowedExtensions()
    {
        return $this->container['allowed_extensions'];
    }

    /**
     * Sets allowed_extensions
     *
     * @param object $allowed_extensions Allowed extensions for the grader
     *
     * @return $this
     */
    public function setAllowedExtensions($allowed_extensions)
    {
        $this->container['allowed_extensions'] = $allowed_extensions;

        return $this;
    }

    /**
     * Gets workflow_priority
     *
     * @return int
     */
    public function getWorkflowPriority()
    {
        return $this->container['workflow_priority'];
    }

    /**
     * Sets workflow_priority
     *
     * @param int $workflow_priority Workflow priority to assign
     *
     * @return $this
     */
    public function setWorkflowPriority($workflow_priority)
    {
        $this->container['workflow_priority'] = $workflow_priority;

        return $this;
    }

    /**
     * Gets config_path
     *
     * @return string
     */
    public function getConfigPath()
    {
        return $this->container['config_path'];
    }

    /**
     * Sets config_path
     *
     * @param string $config_path Path to grader configuration (default: aicrowd.yaml)
     *
     * @return $this
     */
    public function setConfigPath($config_path)
    {
        $this->container['config_path'] = $config_path;

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


