! function (jet, $, server, util, debug) {
    "use strict";
    requirejs.config({
        baseUrl: apex_img_dir + "libraries/oraclejet/2.0.2/js/libs",
        paths: {
         "knockout": "knockout/knockout-3.4.0",
         "jquery": "jquery/jquery-2.1.3.min",
         "jqueryui-amd": "jquery/jqueryui-amd-1.11.4.min",
         "ojs": "oj/v2.0.2/min",
         "ojL10n": "oj/v2.0.2/ojL10n",
         "ojtranslations": "oj/v2.0.2/resources",
         "signals": "js-signals/signals.min",
         "text": "require/text",
         "promise": "es6-promise/promise-1.0.0.min",
         "hammerjs": "hammer/hammer-2.0.4.min",
         "ojdnd": "dnd-polyfill/dnd-polyfill-1.0.0.min"
        },
        shim: {
            jquery: {
                exports: ["jQuery", "$"]
            }
        }
    }), jet.tagcloud = {
        init: function (pRegionId, pApexAjaxIdentifier) {
            require(["ojs/ojcore", "jquery", "ojs/ojtagcloud"], function (oj, $) {
                server.plugin(pApexAjaxIdentifier, {}, {
                    success: function (pData) {
                        $(pRegionId)
                            .ojTagCloud(pData);
                    }
                });
            });
        }
    }
}(window.jet = window.jet || {}, apex.jQuery, apex.server, apex.util, apex.debug);
// To keep ThemeRoller working properly:
define("jquery", [], function () {
    return apex.jQuery
});
