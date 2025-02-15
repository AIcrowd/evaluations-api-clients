package com.aicrowd.evaluations;

import groovyx.net.http.HTTPBuilder
import groovyx.net.http.Method

import static groovyx.net.http.ContentType.JSON
import static java.net.URI.create;

class ApiUtils {

    def invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, method, container, type)  {
        def (url, uriPath) = buildUrlAndUriPath(basePath, versionPath, resourcePath)
        println "url=$url uriPath=$uriPath"
        def http = new HTTPBuilder(url)
        http.request( Method.valueOf(method), JSON ) {
            uri.path = uriPath
            uri.query = queryParams
            response.success = { resp, json ->
                if (type != null) {
                    onSuccess(parse(json, container, type))
                }
            }
            response.failure = { resp ->
                onFailure(resp.status, resp.statusLine.reasonPhrase)
            }
        }
    }


    def buildUrlAndUriPath(basePath, versionPath, resourcePath) {
        // HTTPBuilder expects to get as its constructor parameter an URL,
        // without any other additions like path, therefore we need to cut the path
        // from the basePath as it is represented by swagger APIs
        // we use java.net.URI to manipulate the basePath
        // then the uriPath will hold the rest of the path
        URI baseUri =  create(basePath)
        def pathOnly = baseUri.getPath()
        [basePath-pathOnly, pathOnly+versionPath+resourcePath]
    }


    def parse(object, container, clazz) {
        if (container == "List") {
            return object.collect {parse(it, "", clazz)}
        }   else {
                return clazz.newInstance(object)
        }
    }

}
