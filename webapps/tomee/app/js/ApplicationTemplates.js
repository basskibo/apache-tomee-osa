/**
 *
 * Licensed to the Apache Software Foundation (ASF) under one or more
 * contributor license agreements.  See the NOTICE file distributed with
 * this work for additional information regarding copyright ownership.
 * The ASF licenses this file to You under the Apache License, Version 2.0
 * (the "License"); you may not use this file except in compliance with
 * the License.  You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 *  Unless required by applicable law or agreed to in writing, software
 *  distributed under the License is distributed on an "AS IS" BASIS,
 *  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *  See the License for the specific language governing permissions and
 *  limitations under the License.
 */

TOMEE.ApplicationTemplates = (function (paths) {
    "use strict";

    var templates = {};

    TOMEE.utils.forEach(paths, function (path) {
        $.ajax({
                url:'app/js/templates/' + path + '.handlebars',
                method:'GET',
                dataType:'text',
                async:false,
                success:function (data) {
                    templates[path] = Handlebars.compile(data);
                }
            }
        );
    });

    return {
        getValue:function (templateName, cfg) {
            var template = templates[templateName];
            if (!template) {
                throw 'Template not registered. "' + templateName + '"';
            }
            return template(cfg);
        }
    };
})([
    'application',
    'application-growl',
    'application-growl-message',
    'application-disabled',
    'application-toolbar',
    'application-toolbar-logout-btn',
    'application-tab-home',
    'application-tab-console',
    'application-tab-console-sample',
    'application-tab-console-output-line',
    'application-tab-log',
    'application-tab-log-file',
    'application-tab-log-lines',
    'application-tab-status',
    'application-tab-status-lines',
    'application-disconnected-popup',
    'application-tab-webservices',
    'application-tab-webservices-table',
    'application-tab-jndi',
    'application-tab-jndi-table'
]);