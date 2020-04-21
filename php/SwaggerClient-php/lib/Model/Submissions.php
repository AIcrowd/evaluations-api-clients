<?php
/**
 * Submissions
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
 * Submissions Class Doc Comment
 *
 * @category Class
 * @package  Swagger\Client
 * @author   Swagger Codegen team
 * @link     https://github.com/swagger-api/swagger-codegen
 */
class Submissions implements ModelInterface, ArrayAccess
{
    const DISCRIMINATOR = null;

    /**
      * The original name of the model.
      *
      * @var string
      */
    protected static $swaggerModelName = 'Submissions';

    /**
      * Array of property to type mappings. Used for (de)serialization
      *
      * @var string[]
      */
    protected static $swaggerTypes = [
        'id' => 'int',
        'created' => '\DateTime',
        'updated' => '\DateTime',
        'participant_id' => 'int',
        'round_id' => 'int',
        'grader_id' => 'int',
        'submission_data' => 'object',
        'status' => 'string',
        'output' => 'string',
        'additional_outputs' => 'object',
        'logs' => 'object',
        'started' => '\DateTime',
        'ended' => '\DateTime',
        'meta' => 'object',
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
        'participant_id' => null,
        'round_id' => null,
        'grader_id' => null,
        'submission_data' => null,
        'status' => null,
        'output' => null,
        'additional_outputs' => null,
        'logs' => null,
        'started' => 'date-time',
        'ended' => 'date-time',
        'meta' => null,
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
        'participant_id' => 'participant_id',
        'round_id' => 'round_id',
        'grader_id' => 'grader_id',
        'submission_data' => 'submission_data',
        'status' => 'status',
        'output' => 'output',
        'additional_outputs' => 'additional_outputs',
        'logs' => 'logs',
        'started' => 'started',
        'ended' => 'ended',
        'meta' => 'meta',
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
        'participant_id' => 'setParticipantId',
        'round_id' => 'setRoundId',
        'grader_id' => 'setGraderId',
        'submission_data' => 'setSubmissionData',
        'status' => 'setStatus',
        'output' => 'setOutput',
        'additional_outputs' => 'setAdditionalOutputs',
        'logs' => 'setLogs',
        'started' => 'setStarted',
        'ended' => 'setEnded',
        'meta' => 'setMeta',
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
        'participant_id' => 'getParticipantId',
        'round_id' => 'getRoundId',
        'grader_id' => 'getGraderId',
        'submission_data' => 'getSubmissionData',
        'status' => 'getStatus',
        'output' => 'getOutput',
        'additional_outputs' => 'getAdditionalOutputs',
        'logs' => 'getLogs',
        'started' => 'getStarted',
        'ended' => 'getEnded',
        'meta' => 'getMeta',
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
        $this->container['participant_id'] = isset($data['participant_id']) ? $data['participant_id'] : null;
        $this->container['round_id'] = isset($data['round_id']) ? $data['round_id'] : null;
        $this->container['grader_id'] = isset($data['grader_id']) ? $data['grader_id'] : null;
        $this->container['submission_data'] = isset($data['submission_data']) ? $data['submission_data'] : null;
        $this->container['status'] = isset($data['status']) ? $data['status'] : null;
        $this->container['output'] = isset($data['output']) ? $data['output'] : null;
        $this->container['additional_outputs'] = isset($data['additional_outputs']) ? $data['additional_outputs'] : null;
        $this->container['logs'] = isset($data['logs']) ? $data['logs'] : null;
        $this->container['started'] = isset($data['started']) ? $data['started'] : null;
        $this->container['ended'] = isset($data['ended']) ? $data['ended'] : null;
        $this->container['meta'] = isset($data['meta']) ? $data['meta'] : null;
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

        if ($this->container['grader_id'] === null) {
            $invalidProperties[] = "'grader_id' can't be null";
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
     * Gets participant_id
     *
     * @return int
     */
    public function getParticipantId()
    {
        return $this->container['participant_id'];
    }

    /**
     * Sets participant_id
     *
     * @param int $participant_id Participant identifier
     *
     * @return $this
     */
    public function setParticipantId($participant_id)
    {
        $this->container['participant_id'] = $participant_id;

        return $this;
    }

    /**
     * Gets round_id
     *
     * @return int
     */
    public function getRoundId()
    {
        return $this->container['round_id'];
    }

    /**
     * Sets round_id
     *
     * @param int $round_id Round identifier
     *
     * @return $this
     */
    public function setRoundId($round_id)
    {
        $this->container['round_id'] = $round_id;

        return $this;
    }

    /**
     * Gets grader_id
     *
     * @return int
     */
    public function getGraderId()
    {
        return $this->container['grader_id'];
    }

    /**
     * Sets grader_id
     *
     * @param int $grader_id Grader identifier
     *
     * @return $this
     */
    public function setGraderId($grader_id)
    {
        $this->container['grader_id'] = $grader_id;

        return $this;
    }

    /**
     * Gets submission_data
     *
     * @return object
     */
    public function getSubmissionData()
    {
        return $this->container['submission_data'];
    }

    /**
     * Sets submission_data
     *
     * @param object $submission_data URL to the submission code
     *
     * @return $this
     */
    public function setSubmissionData($submission_data)
    {
        $this->container['submission_data'] = $submission_data;

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
     * @param string $status Current status of the submission
     *
     * @return $this
     */
    public function setStatus($status)
    {
        $this->container['status'] = $status;

        return $this;
    }

    /**
     * Gets output
     *
     * @return string
     */
    public function getOutput()
    {
        return $this->container['output'];
    }

    /**
     * Sets output
     *
     * @param string $output S3 link of the output (available after the evaluation)
     *
     * @return $this
     */
    public function setOutput($output)
    {
        $this->container['output'] = $output;

        return $this;
    }

    /**
     * Gets additional_outputs
     *
     * @return object
     */
    public function getAdditionalOutputs()
    {
        return $this->container['additional_outputs'];
    }

    /**
     * Sets additional_outputs
     *
     * @param object $additional_outputs Array of any additional outputs
     *
     * @return $this
     */
    public function setAdditionalOutputs($additional_outputs)
    {
        $this->container['additional_outputs'] = $additional_outputs;

        return $this;
    }

    /**
     * Gets logs
     *
     * @return object
     */
    public function getLogs()
    {
        return $this->container['logs'];
    }

    /**
     * Sets logs
     *
     * @param object $logs S3 link of the STDOUT of the evaluation
     *
     * @return $this
     */
    public function setLogs($logs)
    {
        $this->container['logs'] = $logs;

        return $this;
    }

    /**
     * Gets started
     *
     * @return \DateTime
     */
    public function getStarted()
    {
        return $this->container['started'];
    }

    /**
     * Sets started
     *
     * @param \DateTime $started Evaluation start time
     *
     * @return $this
     */
    public function setStarted($started)
    {
        $this->container['started'] = $started;

        return $this;
    }

    /**
     * Gets ended
     *
     * @return \DateTime
     */
    public function getEnded()
    {
        return $this->container['ended'];
    }

    /**
     * Sets ended
     *
     * @param \DateTime $ended Evaluation end time
     *
     * @return $this
     */
    public function setEnded($ended)
    {
        $this->container['ended'] = $ended;

        return $this;
    }

    /**
     * Gets meta
     *
     * @return object
     */
    public function getMeta()
    {
        return $this->container['meta'];
    }

    /**
     * Sets meta
     *
     * @param object $meta Additional meta-data
     *
     * @return $this
     */
    public function setMeta($meta)
    {
        $this->container['meta'] = $meta;

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


