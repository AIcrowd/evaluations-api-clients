/**
 * AIcrowd Evaluations API
 * API to create and evaluate custom challenges on AIcrowd!
 *
 * OpenAPI spec version: 1.0.0
 * 
 *
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen.git
 * Do not edit the class manually.
 */

package com.aicrowd.evaluations.api

import java.text.SimpleDateFormat

import com.aicrowd.evaluations.models.Submissions
import io.swagger.client.{ApiInvoker, ApiException}

import com.sun.jersey.multipart.FormDataMultiPart
import com.sun.jersey.multipart.file.FileDataBodyPart

import javax.ws.rs.core.MediaType

import java.io.File
import java.util.Date
import java.util.TimeZone

import scala.collection.mutable.HashMap

import com.wordnik.swagger.client._
import scala.concurrent.Future
import collection.mutable

import java.net.URI

import com.wordnik.swagger.client.ClientResponseReaders.Json4sFormatsReader._
import com.wordnik.swagger.client.RequestWriters.Json4sFormatsWriter._

import scala.concurrent.ExecutionContext.Implicits.global
import scala.concurrent._
import scala.concurrent.duration._
import scala.util.{Failure, Success, Try}

import org.json4s._

class SubmissionsApi(
  val defBasePath: String = "https://localhost/v1",
  defApiInvoker: ApiInvoker = ApiInvoker
) {
  private lazy val dateTimeFormatter = {
    val formatter = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSSZ")
    formatter.setTimeZone(TimeZone.getTimeZone("UTC"))
    formatter
  }
  private val dateFormatter = {
    val formatter = new SimpleDateFormat("yyyy-MM-dd")
    formatter.setTimeZone(TimeZone.getTimeZone("UTC"))
    formatter
  }
  implicit val formats = new org.json4s.DefaultFormats {
    override def dateFormatter = dateTimeFormatter
  }
  implicit val stringReader: ClientResponseReader[String] = ClientResponseReaders.StringReader
  implicit val unitReader: ClientResponseReader[Unit] = ClientResponseReaders.UnitReader
  implicit val jvalueReader: ClientResponseReader[JValue] = ClientResponseReaders.JValueReader
  implicit val jsonReader: ClientResponseReader[Nothing] = JsonFormatsReader
  implicit val stringWriter: RequestWriter[String] = RequestWriters.StringWriter
  implicit val jsonWriter: RequestWriter[Nothing] = JsonFormatsWriter

  var basePath: String = defBasePath
  var apiInvoker: ApiInvoker = defApiInvoker

  def addHeader(key: String, value: String): mutable.HashMap[String, String] = {
    apiInvoker.defaultHeaders += key -> value
  }

  val config: SwaggerConfig = SwaggerConfig.forUrl(new URI(defBasePath))
  val client = new RestClient(config)
  val helper = new SubmissionsApiAsyncHelper(client, config)

  /**
   * 
   * Make a new submission
   *
   * @param payload  
   * @param xFields An optional fields mask (optional)
   * @return Submissions
   */
  def createSubmission(payload: Submissions, xFields: Option[String] = None): Option[Submissions] = {
    val await = Try(Await.result(createSubmissionAsync(payload, xFields), Duration.Inf))
    await match {
      case Success(i) => Some(await.get)
      case Failure(t) => None
    }
  }

  /**
   *  asynchronously
   * Make a new submission
   *
   * @param payload  
   * @param xFields An optional fields mask (optional)
   * @return Future(Submissions)
   */
  def createSubmissionAsync(payload: Submissions, xFields: Option[String] = None): Future[Submissions] = {
      helper.createSubmission(payload, xFields)
  }

  /**
   * 
   * Stop evaluation of a submission and delete it
   *
   * @param submissionId  
   * @return void
   */
  def deleteSubmission(submissionId: Integer) = {
    val await = Try(Await.result(deleteSubmissionAsync(submissionId), Duration.Inf))
    await match {
      case Success(i) => Some(await.get)
      case Failure(t) => None
    }
  }

  /**
   *  asynchronously
   * Stop evaluation of a submission and delete it
   *
   * @param submissionId  
   * @return Future(void)
   */
  def deleteSubmissionAsync(submissionId: Integer) = {
      helper.deleteSubmission(submissionId)
  }

  /**
   * 
   * Get details of a submission by its ID
   *
   * @param submissionId  
   * @param xFields An optional fields mask (optional)
   * @return Submissions
   */
  def getSubmission(submissionId: Integer, xFields: Option[String] = None): Option[Submissions] = {
    val await = Try(Await.result(getSubmissionAsync(submissionId, xFields), Duration.Inf))
    await match {
      case Success(i) => Some(await.get)
      case Failure(t) => None
    }
  }

  /**
   *  asynchronously
   * Get details of a submission by its ID
   *
   * @param submissionId  
   * @param xFields An optional fields mask (optional)
   * @return Future(Submissions)
   */
  def getSubmissionAsync(submissionId: Integer, xFields: Option[String] = None): Future[Submissions] = {
      helper.getSubmission(submissionId, xFields)
  }

  /**
   * 
   * Get the submission data by submission ID
   *
   * @param submissionId  
   * @return void
   */
  def getSubmissionData(submissionId: Integer) = {
    val await = Try(Await.result(getSubmissionDataAsync(submissionId), Duration.Inf))
    await match {
      case Success(i) => Some(await.get)
      case Failure(t) => None
    }
  }

  /**
   *  asynchronously
   * Get the submission data by submission ID
   *
   * @param submissionId  
   * @return Future(void)
   */
  def getSubmissionDataAsync(submissionId: Integer) = {
      helper.getSubmissionData(submissionId)
  }

  /**
   * 
   * Get the submission logs by submission ID
   *
   * @param submissionId  
   * @return void
   */
  def getSubmissionLogs(submissionId: Integer) = {
    val await = Try(Await.result(getSubmissionLogsAsync(submissionId), Duration.Inf))
    await match {
      case Success(i) => Some(await.get)
      case Failure(t) => None
    }
  }

  /**
   *  asynchronously
   * Get the submission logs by submission ID
   *
   * @param submissionId  
   * @return Future(void)
   */
  def getSubmissionLogsAsync(submissionId: Integer) = {
      helper.getSubmissionLogs(submissionId)
  }

  /**
   * 
   * List all submissions available
   *
   * @param meta Fetch submissions with this meta value (optional)
   * @param status Fetch submissions with this status (optional)
   * @param userId Fetch submissions created by the user (optional)
   * @param xFields An optional fields mask (optional)
   * @return List[Submissions]
   */
  def listSubmissions(meta: Option[String] = None, status: Option[String] = None, userId: Option[Integer] = None, xFields: Option[String] = None): Option[List[Submissions]] = {
    val await = Try(Await.result(listSubmissionsAsync(meta, status, userId, xFields), Duration.Inf))
    await match {
      case Success(i) => Some(await.get)
      case Failure(t) => None
    }
  }

  /**
   *  asynchronously
   * List all submissions available
   *
   * @param meta Fetch submissions with this meta value (optional)
   * @param status Fetch submissions with this status (optional)
   * @param userId Fetch submissions created by the user (optional)
   * @param xFields An optional fields mask (optional)
   * @return Future(List[Submissions])
   */
  def listSubmissionsAsync(meta: Option[String] = None, status: Option[String] = None, userId: Option[Integer] = None, xFields: Option[String] = None): Future[List[Submissions]] = {
      helper.listSubmissions(meta, status, userId, xFields)
  }

}

class SubmissionsApiAsyncHelper(client: TransportClient, config: SwaggerConfig) extends ApiClient(client, config) {

  def createSubmission(payload: Submissions,
    xFields: Option[String] = None
    )(implicit reader: ClientResponseReader[Submissions], writer: RequestWriter[Submissions]): Future[Submissions] = {
    // create path and map variables
    val path = (addFmt("/submissions/"))

    // query params
    val queryParams = new mutable.HashMap[String, String]
    val headerParams = new mutable.HashMap[String, String]

    if (payload == null) throw new Exception("Missing required parameter 'payload' when calling SubmissionsApi->createSubmission")
    xFields match {
      case Some(param) => headerParams += "X-Fields" -> param.toString
      case _ => headerParams
    }

    val resFuture = client.submit("POST", path, queryParams.toMap, headerParams.toMap, writer.write(payload))
    resFuture flatMap { resp =>
      process(reader.read(resp))
    }
  }

  def deleteSubmission(submissionId: Integer)(implicit reader: ClientResponseReader[Unit]): Future[Unit] = {
    // create path and map variables
    val path = (addFmt("/submissions/{submission_id}")
      replaceAll("\\{" + "submission_id" + "\\}", submissionId.toString))

    // query params
    val queryParams = new mutable.HashMap[String, String]
    val headerParams = new mutable.HashMap[String, String]


    val resFuture = client.submit("DELETE", path, queryParams.toMap, headerParams.toMap, "")
    resFuture flatMap { resp =>
      process(reader.read(resp))
    }
  }

  def getSubmission(submissionId: Integer,
    xFields: Option[String] = None
    )(implicit reader: ClientResponseReader[Submissions]): Future[Submissions] = {
    // create path and map variables
    val path = (addFmt("/submissions/{submission_id}")
      replaceAll("\\{" + "submission_id" + "\\}", submissionId.toString))

    // query params
    val queryParams = new mutable.HashMap[String, String]
    val headerParams = new mutable.HashMap[String, String]

    xFields match {
      case Some(param) => headerParams += "X-Fields" -> param.toString
      case _ => headerParams
    }

    val resFuture = client.submit("GET", path, queryParams.toMap, headerParams.toMap, "")
    resFuture flatMap { resp =>
      process(reader.read(resp))
    }
  }

  def getSubmissionData(submissionId: Integer)(implicit reader: ClientResponseReader[Unit]): Future[Unit] = {
    // create path and map variables
    val path = (addFmt("/submissions/{submission_id}/data")
      replaceAll("\\{" + "submission_id" + "\\}", submissionId.toString))

    // query params
    val queryParams = new mutable.HashMap[String, String]
    val headerParams = new mutable.HashMap[String, String]


    val resFuture = client.submit("GET", path, queryParams.toMap, headerParams.toMap, "")
    resFuture flatMap { resp =>
      process(reader.read(resp))
    }
  }

  def getSubmissionLogs(submissionId: Integer)(implicit reader: ClientResponseReader[Unit]): Future[Unit] = {
    // create path and map variables
    val path = (addFmt("/submissions/{submission_id}/logs")
      replaceAll("\\{" + "submission_id" + "\\}", submissionId.toString))

    // query params
    val queryParams = new mutable.HashMap[String, String]
    val headerParams = new mutable.HashMap[String, String]


    val resFuture = client.submit("GET", path, queryParams.toMap, headerParams.toMap, "")
    resFuture flatMap { resp =>
      process(reader.read(resp))
    }
  }

  def listSubmissions(meta: Option[String] = None,
    status: Option[String] = None,
    userId: Option[Integer] = None,
    xFields: Option[String] = None
    )(implicit reader: ClientResponseReader[List[Submissions]]): Future[List[Submissions]] = {
    // create path and map variables
    val path = (addFmt("/submissions/"))

    // query params
    val queryParams = new mutable.HashMap[String, String]
    val headerParams = new mutable.HashMap[String, String]

    meta match {
      case Some(param) => queryParams += "meta" -> param.toString
      case _ => queryParams
    }
    status match {
      case Some(param) => queryParams += "status" -> param.toString
      case _ => queryParams
    }
    userId match {
      case Some(param) => queryParams += "user_id" -> param.toString
      case _ => queryParams
    }
    xFields match {
      case Some(param) => headerParams += "X-Fields" -> param.toString
      case _ => headerParams
    }

    val resFuture = client.submit("GET", path, queryParams.toMap, headerParams.toMap, "")
    resFuture flatMap { resp =>
      process(reader.read(resp))
    }
  }


}
