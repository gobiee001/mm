.class Lcom/amazon/device/ads/MRAIDAdSDKBridge;
.super Ljava/lang/Object;
.source "MRAIDAdSDKBridge.java"

# interfaces
.implements Lcom/amazon/device/ads/AdSDKBridge;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/ads/MRAIDAdSDKBridge$13;,
        Lcom/amazon/device/ads/MRAIDAdSDKBridge$AlertDialogFactory;,
        Lcom/amazon/device/ads/MRAIDAdSDKBridge$StorePictureJSIF;,
        Lcom/amazon/device/ads/MRAIDAdSDKBridge$CreateCalendarEventJSIF;,
        Lcom/amazon/device/ads/MRAIDAdSDKBridge$SupportsJSIF;,
        Lcom/amazon/device/ads/MRAIDAdSDKBridge$OpenJSIF;,
        Lcom/amazon/device/ads/MRAIDAdSDKBridge$PlayVideoJSIF;,
        Lcom/amazon/device/ads/MRAIDAdSDKBridge$ResizeJSIF;,
        Lcom/amazon/device/ads/MRAIDAdSDKBridge$ExpandJSIF;,
        Lcom/amazon/device/ads/MRAIDAdSDKBridge$CloseJSIF;,
        Lcom/amazon/device/ads/MRAIDAdSDKBridge$UseCustomCloseJSIF;,
        Lcom/amazon/device/ads/MRAIDAdSDKBridge$SetResizePropertiesJSIF;,
        Lcom/amazon/device/ads/MRAIDAdSDKBridge$GetResizePropertiesJSIF;,
        Lcom/amazon/device/ads/MRAIDAdSDKBridge$SetExpandPropertiesJSIF;,
        Lcom/amazon/device/ads/MRAIDAdSDKBridge$GetExpandPropertiesJSIF;,
        Lcom/amazon/device/ads/MRAIDAdSDKBridge$SetOrientationPropertiesJSIF;,
        Lcom/amazon/device/ads/MRAIDAdSDKBridge$GetPlacementTypeJSIF;,
        Lcom/amazon/device/ads/MRAIDAdSDKBridge$GetScreenSizeJSIF;,
        Lcom/amazon/device/ads/MRAIDAdSDKBridge$GetMaxSizeJSIF;,
        Lcom/amazon/device/ads/MRAIDAdSDKBridge$GetDefaultPositionJSIF;,
        Lcom/amazon/device/ads/MRAIDAdSDKBridge$GetCurrentPositionJSIF;
    }
.end annotation


# static fields
.field private static final CLOSE_BUTTON_SIZE:I = 0x32

.field private static final CONTENT_DESCRIPTION_AD_CONTAINER_VIEW:Ljava/lang/String; = "adContainerView"

.field private static final CONTENT_DESCRIPTION_DIMMING_VIEW:Ljava/lang/String; = "dimmingView"

.field private static final CONTENT_DESCRIPTION_EXPANSION_VIEW:Ljava/lang/String; = "expansionView"

.field private static final CONTENT_DESCRIPTION_RESIZED_VIEW:Ljava/lang/String; = "resizedView"

.field private static final ERROR_EVENT_FORMAT:Ljava/lang/String; = "mraidBridge.error(\'%s\', \'%s\');"

.field private static final JAVASCRIPT:Ljava/lang/String;

.field private static final LOGTAG:Ljava/lang/String;

.field private static final MRAID_BRIDGE_NAME:Ljava/lang/String; = "mraidObject"

.field private static final PLACEMENT_TYPE_INLINE:Ljava/lang/String; = "inline"

.field private static final PLACEMENT_TYPE_INTERSTITIAL:Ljava/lang/String; = "interstitial"


# instance fields
.field private adContainerView:Landroid/view/ViewGroup;

.field private final adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

.field private final adUtils:Lcom/amazon/device/ads/AdUtils2;

.field private final alertDialogFactory:Lcom/amazon/device/ads/MRAIDAdSDKBridge$AlertDialogFactory;

.field private final defaultPosition:Lcom/amazon/device/ads/Position;

.field private final expandProperties:Lcom/amazon/device/ads/ExpandProperties;

.field private expandedWithUrl:Z

.field private expansionView:Landroid/view/ViewGroup;

.field private final graphicsUtils:Lcom/amazon/device/ads/GraphicsUtils;

.field private final javascriptInteractor:Lcom/amazon/device/ads/JavascriptInteractor;

.field private final logger:Lcom/amazon/device/ads/MobileAdsLogger;

.field private final orientationProperties:Lcom/amazon/device/ads/OrientationProperties;

.field private final permissionChecker:Lcom/amazon/device/ads/PermissionChecker;

.field private resizeProperties:Lcom/amazon/device/ads/ResizeProperties;

.field private resizedView:Landroid/view/ViewGroup;

.field private rootView:Landroid/widget/FrameLayout;

.field private sdkEventListener:Lcom/amazon/device/ads/SDKEventListener;

.field private final threadRunner:Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;

.field private final webRequestFactory:Lcom/amazon/device/ads/WebRequest$WebRequestFactory;

.field private final webUtils:Lcom/amazon/device/ads/WebUtils2;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 50
    const-class v0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->LOGTAG:Ljava/lang/String;

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(function (window, console) {\n    var is_array = function (obj) {\n        return Object.prototype.toString.call(obj) === \'[object Array]\';\n    },\n    forEach = function (array, fn) {\n        var i;\n        for (i = 0; i < array.length; i++) {\n            if (i in array) {\n                fn.call(null, array[i], i);\n            }\n        }\n    },\n    events = {\n            error: \'error\',\n            ready: \'ready\',\n            sizeChange: \'sizeChange\',\n            stateChange: \'stateChange\',\n            viewableChange: \'viewableChange\'\n    },\n    states = [\"loading\",\"default\",\"expanded\",\"resized\",\"hidden\"],\n    placementTypes = [\"inline\", \"interstitial\"],\n    listeners = [],\n    version = \'2.0\',\n    currentState = \"loading\",\n    supportedFeatures = null,\n    orientationProperties = {\"allowOrientationChange\":true,\"forceOrientation\":\"none\"},\n    // Error Event fires listeners\n    invokeListeners = function(event, args) {\n        var eventListeners = listeners[event] || [];\n        // fire all the listeners\n        forEach(eventListeners, function(listener){\n            try {\n                listener.apply(null, args);\n            }catch(e){\n                debug(\"Error executing \" + event + \" listener\");\n                debug(e);\n            }\n        });\n    },\n    debug = function(msg) {\n        console.log(\"MRAID log: \" + msg);\n    },\n    readyEvent = function() {\n        debug(\"MRAID ready\");\n        invokeListeners(\"ready\");\n    },\n    errorEvent = function(message, action) {\n        debug(\"error: \" + message + \" action: \" + action);\n        var args = [message, action];\n        invokeListeners(\"error\", args);\n    },\n    stateChangeEvent = function(state) {\n        debug(\"stateChange: \" + state);\n        var args = [state];\n        currentState = state;\n        invokeListeners(\"stateChange\", args);\n    },\n    viewableChangeEvent = function(viewable) {\n        debug(\"viewableChange: \" + viewable);\n        var args = [viewable];\n        invokeListeners(\"viewableChange\", args);\n    }, \n    sizeChangeEvent = function(width, height) {\n        debug(\"sizeChange: \" + width + \"x\" + height);\n        var args = [width, height];\n        invokeListeners(\"sizeChange\", args);\n    };\n    window.mraidBridge = {\n            error : errorEvent,\n            ready : readyEvent,\n            stateChange : stateChangeEvent,\n            sizeChange : sizeChangeEvent,\n            viewableChange : viewableChangeEvent\n    };\n    // Define the mraid object\n    window.mraid = {\n            // Command Flow\n            addEventListener : function(event, listener){\n                var eventListeners = listeners[event] || [],\n                alreadyRegistered = false;\n                \n                //verify the event is one that will actually occur\n                if (!events.hasOwnProperty(event)){\n                    return;\n                }\n                \n                //register first set of listeners for this event\n                if (!is_array(listeners[event])) {\n                    listeners[event] = eventListeners;\n                }\n                \n                forEach(eventListeners, function(l){ \n                    // Listener already registered, so no need to add it.\n                        if (listener === l){\n                            alreadyRegistered = true;\n                        }\n                    }\n                );\n                if (!alreadyRegistered){\n                    listeners[event].push(listener);\n                }\n            },\n            removeEventListener : function(event, listener){\n                if (listeners.hasOwnProperty(event)) {\n                    var eventListeners = listeners[event];\n                    if (eventListeners) {\n                        var idx = eventListeners.indexOf(listener);\n                        if (idx !== -1) {\n                            eventListeners.splice(idx, 1);\n                        }\n                    }\n                }\n            },\n            useCustomClose: function(bool){\n                mraidObject."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/amazon/device/ads/JavascriptInteractor;->getExecutorMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(\"UseCustomClose\", JSON.stringify({useCustomClose: bool}));\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "            },\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "            // Support\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "            supports: function(feature){\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                if (!supportedFeatures)\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                    supportedFeatures = JSON.parse(mraidObject."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/amazon/device/ads/JavascriptInteractor;->getExecutorMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(\"Supports\", null));\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                }\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                return supportedFeatures[feature];\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "            },\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "            // Properties\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "            getVersion: function(){\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                return version;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "            },\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "            getState: function(){\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                return currentState;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "            },\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "            getPlacementType: function(){\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                var json = JSON.parse(mraidObject."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/amazon/device/ads/JavascriptInteractor;->getExecutorMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(\"GetPlacementType\", null));\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                return json.placementType;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "            },\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "            isViewable: function(){\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                // TODO - should we ask the OS if the widget is visible.\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                return currentState !== \"hidden\" && currentState !== \"loading\";\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "            },\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "            getExpandProperties: function(){\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                return JSON.parse(mraidObject."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/amazon/device/ads/JavascriptInteractor;->getExecutorMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(\"GetExpandProperties\", null));\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "            },\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "            setExpandProperties: function(properties){\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                var currentProperties = mraid.getExpandProperties(),\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                //properties aren\'t all required, map to existing value if not set.\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                width = properties.hasOwnProperty(\'width\') ? properties.width : currentProperties.width,\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                height = properties.hasOwnProperty(\'height\') ? properties.height : currentProperties.height,\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                useClose = properties.hasOwnProperty(\'useCustomClose\') ? properties.useCustomClose : currentProperties.useCustomClose;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                //Backwards compatibility with MRAID 1.0 creatives\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                if (!!properties.lockOrientation){\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                    mraid.setOrientationProperties({\"allowOrientationChange\":false});\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                }\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                mraidObject."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/amazon/device/ads/JavascriptInteractor;->getExecutorMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(\"SetExpandProperties\", JSON.stringify({\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                        width: width, \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                        height: height, \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                        useClose: useClose}));\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "            },\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "            getOrientationProperties: function(){\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                return orientationProperties;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "            },\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "            setOrientationProperties: function(properties){\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                if (properties.hasOwnProperty(\"allowOrientationChange\")) {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                    orientationProperties.allowOrientationChange = properties.allowOrientationChange;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                }\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                if (properties.hasOwnProperty(\"forceOrientation\")) {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                    orientationProperties.forceOrientation = properties.forceOrientation;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                }\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                mraidObject."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/amazon/device/ads/JavascriptInteractor;->getExecutorMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(\"SetOrientationProperties\", JSON.stringify({\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                        allowOrientationChange: orientationProperties.allowOrientationChange, \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                        forceOrientation: orientationProperties.forceOrientation}));\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "            },\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "            getResizeProperties: function(){\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                return JSON.parse(mraidObject."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/amazon/device/ads/JavascriptInteractor;->getExecutorMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(\"GetResizeProperties\", null));\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "            },\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "            setResizeProperties: function(properties){\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                if (!properties.customClosePosition){\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                   properties.customClosePosition = null;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                }\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                if (!properties.hasOwnProperty(\'allowOffscreen\')){\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                   properties.allowOffscreen = true;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                }\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                mraidObject."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/amazon/device/ads/JavascriptInteractor;->getExecutorMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(\"SetResizeProperties\", JSON.stringify({\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                        width: properties.width, \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                        height: properties.height, \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                        offsetX: properties.offsetX, \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                        offsetY: properties.offsetY, \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                        customClosePosition: properties.customClosePosition, \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                        allowOffscreen: properties.allowOffscreen}));\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "            },\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "            getCurrentPosition: function(){\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                return JSON.parse(mraidObject."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/amazon/device/ads/JavascriptInteractor;->getExecutorMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(\"GetCurrentPosition\", null));\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "            },\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "            getMaxSize: function(){\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                return JSON.parse(mraidObject."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/amazon/device/ads/JavascriptInteractor;->getExecutorMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(\"GetMaxSize\", null));\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "            },\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "            getDefaultPosition: function(){\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                return JSON.parse(mraidObject."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/amazon/device/ads/JavascriptInteractor;->getExecutorMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(\"GetDefaultPosition\", null));\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "            },\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "            getScreenSize: function(){\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                return JSON.parse(mraidObject."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/amazon/device/ads/JavascriptInteractor;->getExecutorMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(\"GetScreenSize\", null));\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "            },\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "            // Operations\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "            open: function(url) {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                mraidObject."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/amazon/device/ads/JavascriptInteractor;->getExecutorMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(\"Open\", JSON.stringify({url: url}));\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "            },\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "            close: function() {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                mraidObject."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/amazon/device/ads/JavascriptInteractor;->getExecutorMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(\"Close\", null);\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "            },\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "            expand: function(url) {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                if (url !== undefined) {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                    mraidObject."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/amazon/device/ads/JavascriptInteractor;->getExecutorMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(\"Expand\", JSON.stringify({url: url}));\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                } else {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                    mraidObject."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/amazon/device/ads/JavascriptInteractor;->getExecutorMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(\"Expand\", JSON.stringify({url: \"\"}));\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                }\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "            },\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "            resize: function() {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                mraidObject."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/amazon/device/ads/JavascriptInteractor;->getExecutorMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(\"Resize\", null);\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "            },\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "            createCalendarEvent: function(eventObject) {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                mraidObject."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/amazon/device/ads/JavascriptInteractor;->getExecutorMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(\"CreateCalendarEvent\", JSON.stringify({\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                        description: eventObject.description || null, \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                        location: eventObject.customClosePosition || null, \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                        summary: eventObject.summary || null, \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                        start: eventObject.start || null, \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                        end: eventObject.end || null}));\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "            },\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "            playVideo: function(url){\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                mraidObject."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/amazon/device/ads/JavascriptInteractor;->getExecutorMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(\"PlayVideo\", JSON.stringify({url: url}));\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "            },\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "            storePicture: function(url){\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                mraidObject."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/amazon/device/ads/JavascriptInteractor;->getExecutorMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(\"StorePicture\", JSON.stringify({url: url}));\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "            }\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    };\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "})(window, console);\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->JAVASCRIPT:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/amazon/device/ads/AdControlAccessor;Lcom/amazon/device/ads/JavascriptInteractor;)V
    .locals 11
    .param p1, "adControlAccessor"    # Lcom/amazon/device/ads/AdControlAccessor;
    .param p2, "javascriptInteractor"    # Lcom/amazon/device/ads/JavascriptInteractor;

    .prologue
    .line 339
    new-instance v3, Lcom/amazon/device/ads/PermissionChecker;

    invoke-direct {v3}, Lcom/amazon/device/ads/PermissionChecker;-><init>()V

    new-instance v4, Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    invoke-direct {v4}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;-><init>()V

    new-instance v5, Lcom/amazon/device/ads/WebRequest$WebRequestFactory;

    invoke-direct {v5}, Lcom/amazon/device/ads/WebRequest$WebRequestFactory;-><init>()V

    invoke-static {}, Lcom/amazon/device/ads/ThreadUtils;->getThreadRunner()Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;

    move-result-object v6

    new-instance v7, Lcom/amazon/device/ads/GraphicsUtils;

    invoke-direct {v7}, Lcom/amazon/device/ads/GraphicsUtils;-><init>()V

    new-instance v8, Lcom/amazon/device/ads/MRAIDAdSDKBridge$AlertDialogFactory;

    invoke-direct {v8}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$AlertDialogFactory;-><init>()V

    new-instance v9, Lcom/amazon/device/ads/WebUtils2;

    invoke-direct {v9}, Lcom/amazon/device/ads/WebUtils2;-><init>()V

    new-instance v10, Lcom/amazon/device/ads/AdUtils2;

    invoke-direct {v10}, Lcom/amazon/device/ads/AdUtils2;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v10}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;-><init>(Lcom/amazon/device/ads/AdControlAccessor;Lcom/amazon/device/ads/JavascriptInteractor;Lcom/amazon/device/ads/PermissionChecker;Lcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/WebRequest$WebRequestFactory;Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;Lcom/amazon/device/ads/GraphicsUtils;Lcom/amazon/device/ads/MRAIDAdSDKBridge$AlertDialogFactory;Lcom/amazon/device/ads/WebUtils2;Lcom/amazon/device/ads/AdUtils2;)V

    .line 349
    return-void
.end method

.method constructor <init>(Lcom/amazon/device/ads/AdControlAccessor;Lcom/amazon/device/ads/JavascriptInteractor;Lcom/amazon/device/ads/PermissionChecker;Lcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/WebRequest$WebRequestFactory;Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;Lcom/amazon/device/ads/GraphicsUtils;Lcom/amazon/device/ads/MRAIDAdSDKBridge$AlertDialogFactory;Lcom/amazon/device/ads/WebUtils2;Lcom/amazon/device/ads/AdUtils2;)V
    .locals 1
    .param p1, "adControlAccessor"    # Lcom/amazon/device/ads/AdControlAccessor;
    .param p2, "javascriptInteractor"    # Lcom/amazon/device/ads/JavascriptInteractor;
    .param p3, "permissionChecker"    # Lcom/amazon/device/ads/PermissionChecker;
    .param p4, "loggerFactory"    # Lcom/amazon/device/ads/MobileAdsLoggerFactory;
    .param p5, "webRequestFactory"    # Lcom/amazon/device/ads/WebRequest$WebRequestFactory;
    .param p6, "threadRunner"    # Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;
    .param p7, "graphicsUtils"    # Lcom/amazon/device/ads/GraphicsUtils;
    .param p8, "alertDialogFactory"    # Lcom/amazon/device/ads/MRAIDAdSDKBridge$AlertDialogFactory;
    .param p9, "webUtils"    # Lcom/amazon/device/ads/WebUtils2;
    .param p10, "adUtils"    # Lcom/amazon/device/ads/AdUtils2;

    .prologue
    .line 360
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 307
    new-instance v0, Lcom/amazon/device/ads/OrientationProperties;

    invoke-direct {v0}, Lcom/amazon/device/ads/OrientationProperties;-><init>()V

    iput-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->orientationProperties:Lcom/amazon/device/ads/OrientationProperties;

    .line 308
    new-instance v0, Lcom/amazon/device/ads/ExpandProperties;

    invoke-direct {v0}, Lcom/amazon/device/ads/ExpandProperties;-><init>()V

    iput-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->expandProperties:Lcom/amazon/device/ads/ExpandProperties;

    .line 310
    new-instance v0, Lcom/amazon/device/ads/Position;

    invoke-direct {v0}, Lcom/amazon/device/ads/Position;-><init>()V

    iput-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->defaultPosition:Lcom/amazon/device/ads/Position;

    .line 315
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->expandedWithUrl:Z

    .line 361
    iput-object p1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    .line 362
    iput-object p2, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->javascriptInteractor:Lcom/amazon/device/ads/JavascriptInteractor;

    .line 363
    sget-object v0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->LOGTAG:Ljava/lang/String;

    invoke-virtual {p4, v0}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    .line 364
    iput-object p3, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->permissionChecker:Lcom/amazon/device/ads/PermissionChecker;

    .line 365
    iput-object p5, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->webRequestFactory:Lcom/amazon/device/ads/WebRequest$WebRequestFactory;

    .line 366
    iput-object p6, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->threadRunner:Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;

    .line 367
    iput-object p7, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->graphicsUtils:Lcom/amazon/device/ads/GraphicsUtils;

    .line 368
    iput-object p8, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->alertDialogFactory:Lcom/amazon/device/ads/MRAIDAdSDKBridge$AlertDialogFactory;

    .line 369
    iput-object p9, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->webUtils:Lcom/amazon/device/ads/WebUtils2;

    .line 370
    iput-object p10, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adUtils:Lcom/amazon/device/ads/AdUtils2;

    .line 371
    invoke-direct {p0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->populateJavascriptExecutorsInInteractor()V

    .line 372
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)Lcom/amazon/device/ads/AdControlAccessor;
    .locals 1
    .param p0, "x0"    # Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazon/device/ads/MRAIDAdSDKBridge;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/amazon/device/ads/MRAIDAdSDKBridge;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->fetchPicture(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->resizedView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$200(Lcom/amazon/device/ads/MRAIDAdSDKBridge;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "x0"    # Lcom/amazon/device/ads/MRAIDAdSDKBridge;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->savePicture(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$300(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)Lcom/amazon/device/ads/GraphicsUtils;
    .locals 1
    .param p0, "x0"    # Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->graphicsUtils:Lcom/amazon/device/ads/GraphicsUtils;

    return-object v0
.end method

.method static synthetic access$500(Lcom/amazon/device/ads/MRAIDAdSDKBridge;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/amazon/device/ads/MRAIDAdSDKBridge;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->fireErrorEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/amazon/device/ads/MRAIDAdSDKBridge;Lcom/amazon/device/ads/AdControlAccessor;)V
    .locals 0
    .param p0, "x0"    # Lcom/amazon/device/ads/MRAIDAdSDKBridge;
    .param p1, "x1"    # Lcom/amazon/device/ads/AdControlAccessor;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->collapseExpandedAdOnThread(Lcom/amazon/device/ads/AdControlAccessor;)V

    return-void
.end method

.method static synthetic access$700(Lcom/amazon/device/ads/MRAIDAdSDKBridge;Lcom/amazon/device/ads/ExpandProperties;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/amazon/device/ads/MRAIDAdSDKBridge;
    .param p1, "x1"    # Lcom/amazon/device/ads/ExpandProperties;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->expandAdOnThread(Lcom/amazon/device/ads/ExpandProperties;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)Lcom/amazon/device/ads/MobileAdsLogger;
    .locals 1
    .param p0, "x0"    # Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    return-object v0
.end method

.method static synthetic access$900(Lcom/amazon/device/ads/MRAIDAdSDKBridge;Lcom/amazon/device/ads/ResizeProperties;Lcom/amazon/device/ads/Size;)V
    .locals 0
    .param p0, "x0"    # Lcom/amazon/device/ads/MRAIDAdSDKBridge;
    .param p1, "x1"    # Lcom/amazon/device/ads/ResizeProperties;
    .param p2, "x2"    # Lcom/amazon/device/ads/Size;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->resizeAdOnThread(Lcom/amazon/device/ads/ResizeProperties;Lcom/amazon/device/ads/Size;)V

    return-void
.end method

.method private collapseExpandedAdOnThread(Lcom/amazon/device/ads/AdControlAccessor;)V
    .locals 5
    .param p1, "adControlAccessor"    # Lcom/amazon/device/ads/AdControlAccessor;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 947
    invoke-direct {p0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    const v3, 0x1020002

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->rootView:Landroid/widget/FrameLayout;

    .line 949
    iget-boolean v2, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->expandedWithUrl:Z

    if-eqz v2, :cond_2

    .line 951
    iget-object v2, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v3, "Expanded With URL"

    invoke-virtual {v2, v3}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 952
    invoke-virtual {p1}, Lcom/amazon/device/ads/AdControlAccessor;->popView()Z

    .line 958
    :goto_0
    invoke-direct {p0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->lookupExpansionView()V

    .line 960
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x11

    invoke-direct {v0, v4, v4, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 964
    .local v0, "layoutParams2":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p1, v0}, Lcom/amazon/device/ads/AdControlAccessor;->moveViewBackToParent(Landroid/view/ViewGroup$LayoutParams;)V

    .line 965
    invoke-virtual {p1}, Lcom/amazon/device/ads/AdControlAccessor;->removeCloseButton()V

    .line 967
    iget-object v2, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->expansionView:Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 969
    iget-object v2, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->rootView:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->expansionView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 971
    :cond_0
    iget-object v2, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->resizedView:Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 973
    iget-object v2, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->rootView:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->resizedView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 977
    :cond_1
    iget-object v2, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->rootView:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 978
    .local v1, "vto":Landroid/view/ViewTreeObserver;
    new-instance v2, Lcom/amazon/device/ads/MRAIDAdSDKBridge$7;

    invoke-direct {v2, p0, p1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$7;-><init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;Lcom/amazon/device/ads/AdControlAccessor;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 998
    return-void

    .line 956
    .end local v0    # "layoutParams2":Landroid/widget/FrameLayout$LayoutParams;
    .end local v1    # "vto":Landroid/view/ViewTreeObserver;
    :cond_2
    iget-object v2, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v3, "Not Expanded with URL"

    invoke-virtual {v2, v3}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private computeExpandedSizeInPixels(Lcom/amazon/device/ads/ExpandProperties;Ljava/lang/String;)Lcom/amazon/device/ads/Size;
    .locals 8
    .param p1, "expandProperties"    # Lcom/amazon/device/ads/ExpandProperties;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 1032
    iget-object v5, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v5}, Lcom/amazon/device/ads/AdControlAccessor;->getMaxSize()Lcom/amazon/device/ads/Size;

    move-result-object v1

    .line 1033
    .local v1, "maxSize":Lcom/amazon/device/ads/Size;
    if-eqz p2, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/amazon/device/ads/Size;->getWidth()I

    move-result v4

    .line 1034
    .local v4, "widthToCompute":I
    :goto_0
    if-eqz p2, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/amazon/device/ads/Size;->getHeight()I

    move-result v0

    .line 1036
    .local v0, "heightToCompute":I
    :goto_1
    iget-object v5, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Expanding Ad to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 1037
    iget-object v5, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adUtils:Lcom/amazon/device/ads/AdUtils2;

    invoke-virtual {v5, v4}, Lcom/amazon/device/ads/AdUtils2;->deviceIndependentPixelToPixel(I)I

    move-result v3

    .line 1038
    .local v3, "pixelWidth":I
    iget-object v5, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adUtils:Lcom/amazon/device/ads/AdUtils2;

    invoke-virtual {v5, v0}, Lcom/amazon/device/ads/AdUtils2;->deviceIndependentPixelToPixel(I)I

    move-result v2

    .line 1040
    .local v2, "pixelHeight":I
    new-instance v5, Lcom/amazon/device/ads/Size;

    invoke-direct {v5, v3, v2}, Lcom/amazon/device/ads/Size;-><init>(II)V

    return-object v5

    .line 1033
    .end local v0    # "heightToCompute":I
    .end local v2    # "pixelHeight":I
    .end local v3    # "pixelWidth":I
    .end local v4    # "widthToCompute":I
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/device/ads/ExpandProperties;->getWidth()I

    move-result v4

    goto :goto_0

    .line 1034
    .restart local v4    # "widthToCompute":I
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/device/ads/ExpandProperties;->getHeight()I

    move-result v0

    goto :goto_1
.end method

.method private computeResizeSizeInPixels(Lcom/amazon/device/ads/ResizeProperties;)Lcom/amazon/device/ads/Size;
    .locals 5
    .param p1, "resizeProperties"    # Lcom/amazon/device/ads/ResizeProperties;

    .prologue
    .line 1325
    invoke-virtual {p1}, Lcom/amazon/device/ads/ResizeProperties;->getWidth()I

    move-result v3

    .line 1326
    .local v3, "widthToCompute":I
    invoke-virtual {p1}, Lcom/amazon/device/ads/ResizeProperties;->getHeight()I

    move-result v0

    .line 1328
    .local v0, "heightToCompute":I
    iget-object v4, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adUtils:Lcom/amazon/device/ads/AdUtils2;

    invoke-virtual {v4, v3}, Lcom/amazon/device/ads/AdUtils2;->deviceIndependentPixelToPixel(I)I

    move-result v2

    .line 1329
    .local v2, "pixelWidth":I
    iget-object v4, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adUtils:Lcom/amazon/device/ads/AdUtils2;

    invoke-virtual {v4, v0}, Lcom/amazon/device/ads/AdUtils2;->deviceIndependentPixelToPixel(I)I

    move-result v1

    .line 1331
    .local v1, "pixelHeight":I
    new-instance v4, Lcom/amazon/device/ads/Size;

    invoke-direct {v4, v2, v1}, Lcom/amazon/device/ads/Size;-><init>(II)V

    return-object v4
.end method

.method private createCalendarIntent(Lcom/amazon/device/ads/CalendarEventParameters;)V
    .locals 4
    .param p1, "parameters"    # Lcom/amazon/device/ads/CalendarEventParameters;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 818
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.INSERT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "vnd.android.cursor.item/event"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 823
    .local v0, "calendarIntent":Landroid/content/Intent;
    const-string v1, "title"

    invoke-virtual {p1}, Lcom/amazon/device/ads/CalendarEventParameters;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 825
    invoke-virtual {p1}, Lcom/amazon/device/ads/CalendarEventParameters;->getLocation()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/device/ads/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 827
    const-string v1, "eventLocation"

    invoke-virtual {p1}, Lcom/amazon/device/ads/CalendarEventParameters;->getLocation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 830
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/device/ads/CalendarEventParameters;->getSummary()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/device/ads/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 832
    const-string v1, "description"

    invoke-virtual {p1}, Lcom/amazon/device/ads/CalendarEventParameters;->getSummary()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 835
    :cond_1
    const-string v1, "beginTime"

    invoke-virtual {p1}, Lcom/amazon/device/ads/CalendarEventParameters;->getStart()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 837
    invoke-virtual {p1}, Lcom/amazon/device/ads/CalendarEventParameters;->getEnd()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 839
    const-string v1, "endTime"

    invoke-virtual {p1}, Lcom/amazon/device/ads/CalendarEventParameters;->getEnd()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 842
    :cond_2
    invoke-direct {p0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 843
    return-void
.end method

.method private createExpandedView()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 1049
    invoke-direct {p0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->rootView:Landroid/widget/FrameLayout;

    .line 1050
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->expansionView:Landroid/view/ViewGroup;

    .line 1051
    iget-object v1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->expansionView:Landroid/view/ViewGroup;

    const-string v2, "expansionView"

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1053
    new-instance v0, Landroid/view/View;

    invoke-direct {p0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1054
    .local v0, "dimmingView":Landroid/view/View;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1055
    const-string v1, "dimmingView"

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1056
    new-instance v1, Lcom/amazon/device/ads/MRAIDAdSDKBridge$8;

    invoke-direct {v1, p0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$8;-><init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1064
    iget-object v1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->expansionView:Landroid/view/ViewGroup;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1066
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {p0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adContainerView:Landroid/view/ViewGroup;

    .line 1067
    iget-object v1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adContainerView:Landroid/view/ViewGroup;

    const-string v2, "adContainerView"

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1068
    return-void
.end method

.method private createResizedView()V
    .locals 2

    .prologue
    .line 1336
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->resizedView:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 1338
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->rootView:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    .line 1340
    invoke-direct {p0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->rootView:Landroid/widget/FrameLayout;

    .line 1342
    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->resizedView:Landroid/view/ViewGroup;

    .line 1343
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->resizedView:Landroid/view/ViewGroup;

    const-string v1, "resizedView"

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1345
    :cond_1
    return-void
.end method

.method private expandAdOnThread(Lcom/amazon/device/ads/ExpandProperties;Ljava/lang/String;)V
    .locals 9
    .param p1, "expandProperties"    # Lcom/amazon/device/ads/ExpandProperties;
    .param p2, "url"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v8, -0x1

    .line 1091
    if-eqz p2, :cond_0

    .line 1094
    iget-object v5, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v5}, Lcom/amazon/device/ads/AdControlAccessor;->stashView()V

    .line 1095
    iput-boolean v3, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->expandedWithUrl:Z

    .line 1102
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->computeExpandedSizeInPixels(Lcom/amazon/device/ads/ExpandProperties;Ljava/lang/String;)Lcom/amazon/device/ads/Size;

    move-result-object v0

    .line 1104
    .local v0, "expandSize":Lcom/amazon/device/ads/Size;
    invoke-direct {p0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->createExpandedView()V

    .line 1106
    iget-object v5, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    iget-object v6, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adContainerView:Landroid/view/ViewGroup;

    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v7, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6, v7, v3}, Lcom/amazon/device/ads/AdControlAccessor;->moveViewToViewGroup(Landroid/view/ViewGroup;Landroid/view/ViewGroup$LayoutParams;Z)V

    .line 1110
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0}, Lcom/amazon/device/ads/Size;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Lcom/amazon/device/ads/Size;->getHeight()I

    move-result v6

    invoke-direct {v1, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1111
    .local v1, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v5, 0xd

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1112
    iget-object v5, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->expansionView:Landroid/view/ViewGroup;

    iget-object v6, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v5, v6, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1114
    iget-object v5, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->rootView:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->expansionView:Landroid/view/ViewGroup;

    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v7, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1117
    iget-object v5, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {p1}, Lcom/amazon/device/ads/ExpandProperties;->getUseCustomClose()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_1

    :goto_1
    invoke-virtual {v5, v3}, Lcom/amazon/device/ads/AdControlAccessor;->enableCloseButton(Z)V

    .line 1120
    iget-object v3, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->rootView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    .line 1121
    .local v2, "vto":Landroid/view/ViewTreeObserver;
    new-instance v3, Lcom/amazon/device/ads/MRAIDAdSDKBridge$10;

    invoke-direct {v3, p0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$10;-><init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1143
    return-void

    .line 1099
    .end local v0    # "expandSize":Lcom/amazon/device/ads/Size;
    .end local v1    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v2    # "vto":Landroid/view/ViewTreeObserver;
    :cond_0
    iput-boolean v4, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->expandedWithUrl:Z

    goto :goto_0

    .restart local v0    # "expandSize":Lcom/amazon/device/ads/Size;
    .restart local v1    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    move v3, v4

    .line 1117
    goto :goto_1
.end method

.method private fetchPicture(Ljava/lang/String;)V
    .locals 8
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 864
    iget-object v4, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->webRequestFactory:Lcom/amazon/device/ads/WebRequest$WebRequestFactory;

    invoke-virtual {v4}, Lcom/amazon/device/ads/WebRequest$WebRequestFactory;->createWebRequest()Lcom/amazon/device/ads/WebRequest;

    move-result-object v3

    .line 865
    .local v3, "webRequest":Lcom/amazon/device/ads/WebRequest;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/amazon/device/ads/WebRequest;->enableLog(Z)V

    .line 866
    invoke-virtual {v3, p1}, Lcom/amazon/device/ads/WebRequest;->setUrlString(Ljava/lang/String;)V

    .line 870
    :try_start_0
    invoke-virtual {v3}, Lcom/amazon/device/ads/WebRequest;->makeCall()Lcom/amazon/device/ads/WebRequest$WebResponse;
    :try_end_0
    .catch Lcom/amazon/device/ads/WebRequest$WebRequestException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 877
    .local v2, "response":Lcom/amazon/device/ads/WebRequest$WebResponse;
    if-nez v2, :cond_0

    .line 879
    const-string v4, "Server could not be contacted to download picture."

    const-string v5, "storePicture"

    invoke-direct {p0, v4, v5}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->fireErrorEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    .end local v2    # "response":Lcom/amazon/device/ads/WebRequest$WebResponse;
    :goto_0
    return-void

    .line 872
    :catch_0
    move-exception v1

    .line 874
    .local v1, "e":Lcom/amazon/device/ads/WebRequest$WebRequestException;
    const-string v4, "Server could not be contacted to download picture."

    const-string v5, "storePicture"

    invoke-direct {p0, v4, v5}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->fireErrorEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 882
    .end local v1    # "e":Lcom/amazon/device/ads/WebRequest$WebRequestException;
    .restart local v2    # "response":Lcom/amazon/device/ads/WebRequest$WebResponse;
    :cond_0
    new-instance v4, Lcom/amazon/device/ads/ImageResponseReader;

    invoke-virtual {v2}, Lcom/amazon/device/ads/WebRequest$WebResponse;->getResponseReader()Lcom/amazon/device/ads/ResponseReader;

    move-result-object v5

    iget-object v6, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->graphicsUtils:Lcom/amazon/device/ads/GraphicsUtils;

    invoke-direct {v4, v5, v6}, Lcom/amazon/device/ads/ImageResponseReader;-><init>(Lcom/amazon/device/ads/ResponseReader;Lcom/amazon/device/ads/GraphicsUtils;)V

    invoke-virtual {v4}, Lcom/amazon/device/ads/ImageResponseReader;->readAsBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 883
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 885
    const-string v4, "Picture could not be retrieved from server."

    const-string v5, "storePicture"

    invoke-direct {p0, v4, v5}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->fireErrorEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 888
    :cond_1
    iget-object v4, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->threadRunner:Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;

    new-instance v5, Lcom/amazon/device/ads/MRAIDAdSDKBridge$3;

    invoke-direct {v5, p0, v0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$3;-><init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;Landroid/graphics/Bitmap;)V

    sget-object v6, Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;->SCHEDULE:Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;

    sget-object v7, Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;->MAIN_THREAD:Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;

    invoke-virtual {v4, v5, v6, v7}, Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;->execute(Ljava/lang/Runnable;Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;)V

    goto :goto_0
.end method

.method private fireErrorEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 1447
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "mraidBridge.error(\'%s\', \'%s\');"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdControlAccessor;->injectJavascript(Ljava/lang/String;)V

    .line 1448
    return-void
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdControlAccessor;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private isValidClosePosition(Lcom/amazon/device/ads/RelativePosition;IILcom/amazon/device/ads/Size;II)Z
    .locals 7
    .param p1, "closePosition"    # Lcom/amazon/device/ads/RelativePosition;
    .param p2, "topMargin"    # I
    .param p3, "leftMargin"    # I
    .param p4, "resizeSize"    # Lcom/amazon/device/ads/Size;
    .param p5, "maxWidth"    # I
    .param p6, "maxHeight"    # I

    .prologue
    .line 1261
    iget-object v5, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adUtils:Lcom/amazon/device/ads/AdUtils2;

    const/16 v6, 0x32

    invoke-virtual {v5, v6}, Lcom/amazon/device/ads/AdUtils2;->deviceIndependentPixelToPixel(I)I

    move-result v1

    .line 1262
    .local v1, "closeButtonSize":I
    const/4 v4, 0x0

    .line 1263
    .local v4, "top":I
    const/4 v0, 0x0

    .line 1264
    .local v0, "bottom":I
    const/4 v2, 0x0

    .line 1265
    .local v2, "left":I
    const/4 v3, 0x0

    .line 1266
    .local v3, "right":I
    sget-object v5, Lcom/amazon/device/ads/MRAIDAdSDKBridge$13;->$SwitchMap$com$amazon$device$ads$RelativePosition:[I

    invoke-virtual {p1}, Lcom/amazon/device/ads/RelativePosition;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 1311
    :goto_0
    if-ltz v4, :cond_0

    if-ltz v2, :cond_0

    if-gt v0, p6, :cond_0

    if-le v3, p5, :cond_1

    .line 1313
    :cond_0
    const/4 v5, 0x0

    .line 1315
    :goto_1
    return v5

    .line 1269
    :pswitch_0
    move v4, p2

    .line 1270
    move v2, p3

    .line 1271
    add-int v0, v4, v1

    .line 1272
    add-int v3, v2, v1

    .line 1273
    goto :goto_0

    .line 1275
    :pswitch_1
    move v4, p2

    .line 1276
    invoke-virtual {p4}, Lcom/amazon/device/ads/Size;->getWidth()I

    move-result v5

    add-int v3, p3, v5

    .line 1277
    add-int v0, v4, v1

    .line 1278
    sub-int v2, v3, v1

    .line 1279
    goto :goto_0

    .line 1281
    :pswitch_2
    move v4, p2

    .line 1282
    invoke-virtual {p4}, Lcom/amazon/device/ads/Size;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, p3

    div-int/lit8 v6, v1, 0x2

    sub-int v2, v5, v6

    .line 1283
    add-int v0, v4, v1

    .line 1284
    add-int v3, v2, v1

    .line 1285
    goto :goto_0

    .line 1287
    :pswitch_3
    invoke-virtual {p4}, Lcom/amazon/device/ads/Size;->getHeight()I

    move-result v5

    add-int v0, p2, v5

    .line 1288
    move v2, p3

    .line 1289
    sub-int v4, v0, v1

    .line 1290
    add-int v3, v2, v1

    .line 1291
    goto :goto_0

    .line 1293
    :pswitch_4
    invoke-virtual {p4}, Lcom/amazon/device/ads/Size;->getHeight()I

    move-result v5

    add-int v0, p2, v5

    .line 1294
    invoke-virtual {p4}, Lcom/amazon/device/ads/Size;->getWidth()I

    move-result v5

    add-int v3, p3, v5

    .line 1295
    sub-int v4, v0, v1

    .line 1296
    sub-int v2, v3, v1

    .line 1297
    goto :goto_0

    .line 1299
    :pswitch_5
    invoke-virtual {p4}, Lcom/amazon/device/ads/Size;->getHeight()I

    move-result v5

    add-int v0, p2, v5

    .line 1300
    invoke-virtual {p4}, Lcom/amazon/device/ads/Size;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, p3

    div-int/lit8 v6, v1, 0x2

    sub-int v2, v5, v6

    .line 1301
    sub-int v4, v0, v1

    .line 1302
    add-int v3, v2, v1

    .line 1303
    goto :goto_0

    .line 1305
    :pswitch_6
    invoke-virtual {p4}, Lcom/amazon/device/ads/Size;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, p2

    div-int/lit8 v6, v1, 0x2

    sub-int v4, v5, v6

    .line 1306
    invoke-virtual {p4}, Lcom/amazon/device/ads/Size;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, p3

    div-int/lit8 v6, v1, 0x2

    sub-int v2, v5, v6

    .line 1307
    add-int v0, v4, v1

    .line 1308
    add-int v3, v2, v1

    goto :goto_0

    .line 1315
    :cond_1
    const/4 v5, 0x1

    goto :goto_1

    .line 1266
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private lookupExpansionView()V
    .locals 4

    .prologue
    .line 1007
    iget-object v2, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->expansionView:Landroid/view/ViewGroup;

    if-nez v2, :cond_0

    .line 1009
    iget-object v2, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v2}, Lcom/amazon/device/ads/AdControlAccessor;->getViewParentIfExpanded()Landroid/view/ViewGroup;

    move-result-object v0

    .line 1010
    .local v0, "adContainerView":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    const-string v2, "adContainerView"

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1013
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 1014
    .local v1, "expansionView":Landroid/view/ViewGroup;
    if-eqz v1, :cond_0

    const-string v2, "expansionView"

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1017
    iput-object v1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->expansionView:Landroid/view/ViewGroup;

    .line 1021
    .end local v0    # "adContainerView":Landroid/view/ViewGroup;
    .end local v1    # "expansionView":Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method private populateJavascriptExecutorsInInteractor()V
    .locals 2

    .prologue
    .line 376
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->javascriptInteractor:Lcom/amazon/device/ads/JavascriptInteractor;

    new-instance v1, Lcom/amazon/device/ads/MRAIDAdSDKBridge$CloseJSIF;

    invoke-direct {v1, p0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$CloseJSIF;-><init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)V

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/JavascriptInteractor;->addMethodExecutor(Lcom/amazon/device/ads/JavascriptInteractor$JavascriptMethodExecutor;)V

    .line 377
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->javascriptInteractor:Lcom/amazon/device/ads/JavascriptInteractor;

    new-instance v1, Lcom/amazon/device/ads/MRAIDAdSDKBridge$CreateCalendarEventJSIF;

    invoke-direct {v1, p0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$CreateCalendarEventJSIF;-><init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)V

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/JavascriptInteractor;->addMethodExecutor(Lcom/amazon/device/ads/JavascriptInteractor$JavascriptMethodExecutor;)V

    .line 378
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->javascriptInteractor:Lcom/amazon/device/ads/JavascriptInteractor;

    new-instance v1, Lcom/amazon/device/ads/MRAIDAdSDKBridge$ExpandJSIF;

    invoke-direct {v1, p0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$ExpandJSIF;-><init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)V

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/JavascriptInteractor;->addMethodExecutor(Lcom/amazon/device/ads/JavascriptInteractor$JavascriptMethodExecutor;)V

    .line 379
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->javascriptInteractor:Lcom/amazon/device/ads/JavascriptInteractor;

    new-instance v1, Lcom/amazon/device/ads/MRAIDAdSDKBridge$GetCurrentPositionJSIF;

    invoke-direct {v1, p0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$GetCurrentPositionJSIF;-><init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)V

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/JavascriptInteractor;->addMethodExecutor(Lcom/amazon/device/ads/JavascriptInteractor$JavascriptMethodExecutor;)V

    .line 380
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->javascriptInteractor:Lcom/amazon/device/ads/JavascriptInteractor;

    new-instance v1, Lcom/amazon/device/ads/MRAIDAdSDKBridge$GetDefaultPositionJSIF;

    invoke-direct {v1, p0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$GetDefaultPositionJSIF;-><init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)V

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/JavascriptInteractor;->addMethodExecutor(Lcom/amazon/device/ads/JavascriptInteractor$JavascriptMethodExecutor;)V

    .line 381
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->javascriptInteractor:Lcom/amazon/device/ads/JavascriptInteractor;

    new-instance v1, Lcom/amazon/device/ads/MRAIDAdSDKBridge$GetExpandPropertiesJSIF;

    invoke-direct {v1, p0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$GetExpandPropertiesJSIF;-><init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)V

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/JavascriptInteractor;->addMethodExecutor(Lcom/amazon/device/ads/JavascriptInteractor$JavascriptMethodExecutor;)V

    .line 382
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->javascriptInteractor:Lcom/amazon/device/ads/JavascriptInteractor;

    new-instance v1, Lcom/amazon/device/ads/MRAIDAdSDKBridge$GetMaxSizeJSIF;

    invoke-direct {v1, p0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$GetMaxSizeJSIF;-><init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)V

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/JavascriptInteractor;->addMethodExecutor(Lcom/amazon/device/ads/JavascriptInteractor$JavascriptMethodExecutor;)V

    .line 383
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->javascriptInteractor:Lcom/amazon/device/ads/JavascriptInteractor;

    new-instance v1, Lcom/amazon/device/ads/MRAIDAdSDKBridge$GetPlacementTypeJSIF;

    invoke-direct {v1, p0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$GetPlacementTypeJSIF;-><init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)V

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/JavascriptInteractor;->addMethodExecutor(Lcom/amazon/device/ads/JavascriptInteractor$JavascriptMethodExecutor;)V

    .line 384
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->javascriptInteractor:Lcom/amazon/device/ads/JavascriptInteractor;

    new-instance v1, Lcom/amazon/device/ads/MRAIDAdSDKBridge$GetResizePropertiesJSIF;

    invoke-direct {v1, p0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$GetResizePropertiesJSIF;-><init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)V

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/JavascriptInteractor;->addMethodExecutor(Lcom/amazon/device/ads/JavascriptInteractor$JavascriptMethodExecutor;)V

    .line 385
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->javascriptInteractor:Lcom/amazon/device/ads/JavascriptInteractor;

    new-instance v1, Lcom/amazon/device/ads/MRAIDAdSDKBridge$GetScreenSizeJSIF;

    invoke-direct {v1, p0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$GetScreenSizeJSIF;-><init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)V

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/JavascriptInteractor;->addMethodExecutor(Lcom/amazon/device/ads/JavascriptInteractor$JavascriptMethodExecutor;)V

    .line 386
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->javascriptInteractor:Lcom/amazon/device/ads/JavascriptInteractor;

    new-instance v1, Lcom/amazon/device/ads/MRAIDAdSDKBridge$OpenJSIF;

    invoke-direct {v1, p0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$OpenJSIF;-><init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)V

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/JavascriptInteractor;->addMethodExecutor(Lcom/amazon/device/ads/JavascriptInteractor$JavascriptMethodExecutor;)V

    .line 387
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->javascriptInteractor:Lcom/amazon/device/ads/JavascriptInteractor;

    new-instance v1, Lcom/amazon/device/ads/MRAIDAdSDKBridge$PlayVideoJSIF;

    invoke-direct {v1, p0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$PlayVideoJSIF;-><init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)V

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/JavascriptInteractor;->addMethodExecutor(Lcom/amazon/device/ads/JavascriptInteractor$JavascriptMethodExecutor;)V

    .line 388
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->javascriptInteractor:Lcom/amazon/device/ads/JavascriptInteractor;

    new-instance v1, Lcom/amazon/device/ads/MRAIDAdSDKBridge$ResizeJSIF;

    invoke-direct {v1, p0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$ResizeJSIF;-><init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)V

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/JavascriptInteractor;->addMethodExecutor(Lcom/amazon/device/ads/JavascriptInteractor$JavascriptMethodExecutor;)V

    .line 389
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->javascriptInteractor:Lcom/amazon/device/ads/JavascriptInteractor;

    new-instance v1, Lcom/amazon/device/ads/MRAIDAdSDKBridge$SetExpandPropertiesJSIF;

    invoke-direct {v1, p0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$SetExpandPropertiesJSIF;-><init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)V

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/JavascriptInteractor;->addMethodExecutor(Lcom/amazon/device/ads/JavascriptInteractor$JavascriptMethodExecutor;)V

    .line 390
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->javascriptInteractor:Lcom/amazon/device/ads/JavascriptInteractor;

    new-instance v1, Lcom/amazon/device/ads/MRAIDAdSDKBridge$SetOrientationPropertiesJSIF;

    invoke-direct {v1, p0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$SetOrientationPropertiesJSIF;-><init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)V

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/JavascriptInteractor;->addMethodExecutor(Lcom/amazon/device/ads/JavascriptInteractor$JavascriptMethodExecutor;)V

    .line 391
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->javascriptInteractor:Lcom/amazon/device/ads/JavascriptInteractor;

    new-instance v1, Lcom/amazon/device/ads/MRAIDAdSDKBridge$SetResizePropertiesJSIF;

    invoke-direct {v1, p0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$SetResizePropertiesJSIF;-><init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)V

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/JavascriptInteractor;->addMethodExecutor(Lcom/amazon/device/ads/JavascriptInteractor$JavascriptMethodExecutor;)V

    .line 392
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->javascriptInteractor:Lcom/amazon/device/ads/JavascriptInteractor;

    new-instance v1, Lcom/amazon/device/ads/MRAIDAdSDKBridge$StorePictureJSIF;

    invoke-direct {v1, p0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$StorePictureJSIF;-><init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)V

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/JavascriptInteractor;->addMethodExecutor(Lcom/amazon/device/ads/JavascriptInteractor$JavascriptMethodExecutor;)V

    .line 393
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->javascriptInteractor:Lcom/amazon/device/ads/JavascriptInteractor;

    new-instance v1, Lcom/amazon/device/ads/MRAIDAdSDKBridge$SupportsJSIF;

    invoke-direct {v1, p0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$SupportsJSIF;-><init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)V

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/JavascriptInteractor;->addMethodExecutor(Lcom/amazon/device/ads/JavascriptInteractor$JavascriptMethodExecutor;)V

    .line 394
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->javascriptInteractor:Lcom/amazon/device/ads/JavascriptInteractor;

    new-instance v1, Lcom/amazon/device/ads/MRAIDAdSDKBridge$UseCustomCloseJSIF;

    invoke-direct {v1, p0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$UseCustomCloseJSIF;-><init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)V

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/JavascriptInteractor;->addMethodExecutor(Lcom/amazon/device/ads/JavascriptInteractor$JavascriptMethodExecutor;)V

    .line 395
    return-void
.end method

.method private resizeAdOnThread(Lcom/amazon/device/ads/ResizeProperties;Lcom/amazon/device/ads/Size;)V
    .locals 13
    .param p1, "resizeProperties"    # Lcom/amazon/device/ads/ResizeProperties;
    .param p2, "resizeSize"    # Lcom/amazon/device/ads/Size;

    .prologue
    const/4 v12, 0x0

    .line 1161
    invoke-direct {p0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->createResizedView()V

    .line 1163
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adUtils:Lcom/amazon/device/ads/AdUtils2;

    iget-object v4, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->defaultPosition:Lcom/amazon/device/ads/Position;

    invoke-virtual {v4}, Lcom/amazon/device/ads/Position;->getX()I

    move-result v4

    invoke-virtual {p1}, Lcom/amazon/device/ads/ResizeProperties;->getOffsetX()I

    move-result v11

    add-int/2addr v4, v11

    invoke-virtual {v0, v4}, Lcom/amazon/device/ads/AdUtils2;->deviceIndependentPixelToPixel(I)I

    move-result v3

    .line 1164
    .local v3, "leftMargin":I
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adUtils:Lcom/amazon/device/ads/AdUtils2;

    iget-object v4, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->defaultPosition:Lcom/amazon/device/ads/Position;

    invoke-virtual {v4}, Lcom/amazon/device/ads/Position;->getY()I

    move-result v4

    invoke-virtual {p1}, Lcom/amazon/device/ads/ResizeProperties;->getOffsetY()I

    move-result v11

    add-int/2addr v4, v11

    invoke-virtual {v0, v4}, Lcom/amazon/device/ads/AdUtils2;->deviceIndependentPixelToPixel(I)I

    move-result v2

    .line 1165
    .local v2, "topMargin":I
    invoke-virtual {p1}, Lcom/amazon/device/ads/ResizeProperties;->getCustomClosePosition()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/device/ads/RelativePosition;->fromString(Ljava/lang/String;)Lcom/amazon/device/ads/RelativePosition;

    move-result-object v1

    .line 1167
    .local v1, "closePosition":Lcom/amazon/device/ads/RelativePosition;
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdControlAccessor;->getMaxSize()Lcom/amazon/device/ads/Size;

    move-result-object v8

    .line 1168
    .local v8, "maxSize":Lcom/amazon/device/ads/Size;
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adUtils:Lcom/amazon/device/ads/AdUtils2;

    invoke-virtual {v8}, Lcom/amazon/device/ads/Size;->getWidth()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/amazon/device/ads/AdUtils2;->deviceIndependentPixelToPixel(I)I

    move-result v5

    .line 1169
    .local v5, "maxWidth":I
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adUtils:Lcom/amazon/device/ads/AdUtils2;

    invoke-virtual {v8}, Lcom/amazon/device/ads/Size;->getHeight()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/amazon/device/ads/AdUtils2;->deviceIndependentPixelToPixel(I)I

    move-result v6

    .line 1170
    .local v6, "maxHeight":I
    invoke-virtual {p1}, Lcom/amazon/device/ads/ResizeProperties;->getAllowOffscreen()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1172
    invoke-virtual {p2}, Lcom/amazon/device/ads/Size;->getWidth()I

    move-result v0

    if-le v0, v5, :cond_0

    .line 1174
    invoke-virtual {p2, v5}, Lcom/amazon/device/ads/Size;->setWidth(I)V

    .line 1176
    :cond_0
    invoke-virtual {p2}, Lcom/amazon/device/ads/Size;->getHeight()I

    move-result v0

    if-le v0, v6, :cond_1

    .line 1178
    invoke-virtual {p2, v6}, Lcom/amazon/device/ads/Size;->setHeight(I)V

    .line 1180
    :cond_1
    if-gez v3, :cond_4

    .line 1182
    const/4 v3, 0x0

    .line 1188
    :cond_2
    :goto_0
    if-gez v2, :cond_5

    .line 1190
    const/4 v2, 0x0

    .line 1207
    :cond_3
    :goto_1
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p2}, Lcom/amazon/device/ads/Size;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Lcom/amazon/device/ads/Size;->getHeight()I

    move-result v4

    invoke-direct {v7, v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1208
    .local v7, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    iget-object v4, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->resizedView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4, v7, v12}, Lcom/amazon/device/ads/AdControlAccessor;->moveViewToViewGroup(Landroid/view/ViewGroup;Landroid/view/ViewGroup$LayoutParams;Z)V

    .line 1210
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p2}, Lcom/amazon/device/ads/Size;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Lcom/amazon/device/ads/Size;->getHeight()I

    move-result v4

    invoke-direct {v9, v0, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1213
    .local v9, "params":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v0, 0x30

    iput v0, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1214
    iput v3, v9, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1215
    iput v2, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1216
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->rootView:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->resizedView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1218
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->resizedView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1225
    :goto_2
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v0, v12, v1}, Lcom/amazon/device/ads/AdControlAccessor;->enableCloseButton(ZLcom/amazon/device/ads/RelativePosition;)V

    .line 1228
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->rootView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v10

    .line 1229
    .local v10, "vto":Landroid/view/ViewTreeObserver;
    new-instance v0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$12;

    invoke-direct {v0, p0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$12;-><init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)V

    invoke-virtual {v10, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1257
    .end local v7    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v9    # "params":Landroid/widget/FrameLayout$LayoutParams;
    .end local v10    # "vto":Landroid/view/ViewTreeObserver;
    :goto_3
    return-void

    .line 1184
    :cond_4
    invoke-virtual {p2}, Lcom/amazon/device/ads/Size;->getWidth()I

    move-result v0

    add-int/2addr v0, v3

    if-le v0, v5, :cond_2

    .line 1186
    invoke-virtual {p2}, Lcom/amazon/device/ads/Size;->getWidth()I

    move-result v0

    sub-int v3, v5, v0

    goto :goto_0

    .line 1192
    :cond_5
    invoke-virtual {p2}, Lcom/amazon/device/ads/Size;->getHeight()I

    move-result v0

    add-int/2addr v0, v2

    if-le v0, v6, :cond_3

    .line 1194
    invoke-virtual {p2}, Lcom/amazon/device/ads/Size;->getHeight()I

    move-result v0

    sub-int v2, v6, v0

    goto :goto_1

    :cond_6
    move-object v0, p0

    move-object v4, p2

    .line 1200
    invoke-direct/range {v0 .. v6}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->isValidClosePosition(Lcom/amazon/device/ads/RelativePosition;IILcom/amazon/device/ads/Size;II)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1202
    const-string v0, "Resize failed because close event area must be entirely on screen."

    const-string v4, "resize"

    invoke-direct {p0, v0, v4}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->fireErrorEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1222
    .restart local v7    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v9    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_7
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->rootView:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->resizedView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2
.end method

.method private savePicture(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 900
    iget-object v1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->alertDialogFactory:Lcom/amazon/device/ads/MRAIDAdSDKBridge$AlertDialogFactory;

    invoke-direct {p0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$AlertDialogFactory;->createBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 901
    .local v0, "alert":Landroid/app/AlertDialog$Builder;
    const-string v1, "Would you like to save the image to your gallery?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 902
    const-string v1, "Yes"

    new-instance v2, Lcom/amazon/device/ads/MRAIDAdSDKBridge$4;

    invoke-direct {v2, p0, p1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$4;-><init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 916
    const-string v1, "No"

    new-instance v2, Lcom/amazon/device/ads/MRAIDAdSDKBridge$5;

    invoke-direct {v2, p0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$5;-><init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 922
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 923
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 590
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdControlAccessor;->closeAd()Z

    move-result v0

    if-nez v0, :cond_0

    .line 592
    const-string v0, "Unable to close ad in its current state."

    const-string v1, "close"

    invoke-direct {p0, v0, v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->fireErrorEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    :cond_0
    return-void
.end method

.method collapseExpandedAd(Lcom/amazon/device/ads/AdControlAccessor;)V
    .locals 4
    .param p1, "adControlAccessor"    # Lcom/amazon/device/ads/AdControlAccessor;

    .prologue
    .line 932
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Collapsing expanded ad "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 933
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->threadRunner:Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;

    new-instance v1, Lcom/amazon/device/ads/MRAIDAdSDKBridge$6;

    invoke-direct {v1, p0, p1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$6;-><init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;Lcom/amazon/device/ads/AdControlAccessor;)V

    sget-object v2, Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;->RUN_ASAP:Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;

    sget-object v3, Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;->MAIN_THREAD:Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;->execute(Ljava/lang/Runnable;Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;)V

    .line 941
    return-void
.end method

.method public createCalendarEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "location"    # Ljava/lang/String;
    .param p3, "summary"    # Ljava/lang/String;
    .param p4, "start"    # Ljava/lang/String;
    .param p5, "end"    # Ljava/lang/String;

    .prologue
    .line 791
    const/16 v1, 0xe

    invoke-static {v1}, Lcom/amazon/device/ads/AndroidTargetUtils;->isAtLeastAndroidAPI(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 793
    const-string v7, "API version does not support calendar operations."

    .line 794
    .local v7, "message":Ljava/lang/String;
    iget-object v1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v2, "API version does not support calendar operations."

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 795
    const-string v1, "API version does not support calendar operations."

    const-string v2, "createCalendarEvent"

    invoke-direct {p0, v1, v2}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->fireErrorEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    .end local v7    # "message":Ljava/lang/String;
    :goto_0
    return-void

    .line 799
    :cond_0
    const/4 v0, 0x0

    .line 803
    .local v0, "parameters":Lcom/amazon/device/ads/CalendarEventParameters;
    :try_start_0
    new-instance v0, Lcom/amazon/device/ads/CalendarEventParameters;

    .end local v0    # "parameters":Lcom/amazon/device/ads/CalendarEventParameters;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/amazon/device/ads/CalendarEventParameters;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 812
    .restart local v0    # "parameters":Lcom/amazon/device/ads/CalendarEventParameters;
    invoke-direct {p0, v0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->createCalendarIntent(Lcom/amazon/device/ads/CalendarEventParameters;)V

    goto :goto_0

    .line 805
    .end local v0    # "parameters":Lcom/amazon/device/ads/CalendarEventParameters;
    :catch_0
    move-exception v6

    .line 808
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    iget-object v1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    invoke-virtual {v6}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 809
    invoke-virtual {v6}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "createCalendarEvent"

    invoke-direct {p0, v1, v2}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->fireErrorEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public expand(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x32

    .line 598
    iget-object v1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v1}, Lcom/amazon/device/ads/AdControlAccessor;->isInterstitial()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 600
    const-string v1, "Unable to expand an interstitial ad placement"

    const-string v2, "expand"

    invoke-direct {p0, v1, v2}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->fireErrorEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    :goto_0
    return-void

    .line 604
    :cond_0
    iget-object v1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v1}, Lcom/amazon/device/ads/AdControlAccessor;->isModal()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 606
    const-string v1, "Unable to expand while expanded."

    const-string v2, "expand"

    invoke-direct {p0, v1, v2}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->fireErrorEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 609
    :cond_1
    iget-object v1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v1}, Lcom/amazon/device/ads/AdControlAccessor;->isVisible()Z

    move-result v1

    if-nez v1, :cond_2

    .line 611
    const-string v1, "Unable to expand ad while it is not visible."

    const-string v2, "expand"

    invoke-direct {p0, v1, v2}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->fireErrorEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 615
    :cond_2
    iget-object v1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->expandProperties:Lcom/amazon/device/ads/ExpandProperties;

    invoke-virtual {v1}, Lcom/amazon/device/ads/ExpandProperties;->getWidth()I

    move-result v1

    if-lt v1, v2, :cond_3

    iget-object v1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->expandProperties:Lcom/amazon/device/ads/ExpandProperties;

    invoke-virtual {v1}, Lcom/amazon/device/ads/ExpandProperties;->getHeight()I

    move-result v1

    if-ge v1, v2, :cond_4

    .line 617
    :cond_3
    const-string v1, "Expand size is too small, must leave room for close."

    const-string v2, "expand"

    invoke-direct {p0, v1, v2}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->fireErrorEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 621
    :cond_4
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->expandProperties:Lcom/amazon/device/ads/ExpandProperties;

    .line 622
    .local v0, "expandProperties":Lcom/amazon/device/ads/ExpandProperties;
    invoke-static {p1}, Lcom/amazon/device/ads/StringUtils;->isNullOrWhiteSpace(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 624
    iget-object v1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->webUtils:Lcom/amazon/device/ads/WebUtils2;

    invoke-virtual {v1, p1}, Lcom/amazon/device/ads/WebUtils2;->isUrlValid(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 626
    iget-object v1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    new-instance v2, Lcom/amazon/device/ads/MRAIDAdSDKBridge$1;

    invoke-direct {v2, p0, v0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$1;-><init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;Lcom/amazon/device/ads/ExpandProperties;)V

    invoke-virtual {v1, p1, v2}, Lcom/amazon/device/ads/AdControlAccessor;->preloadUrl(Ljava/lang/String;Lcom/amazon/device/ads/PreloadCallback;)V

    goto :goto_0

    .line 641
    :cond_5
    const-string v1, "Unable to expand with invalid URL."

    const-string v2, "expand"

    invoke-direct {p0, v1, v2}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->fireErrorEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 648
    :cond_6
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->expandAd(Lcom/amazon/device/ads/ExpandProperties;Ljava/lang/String;)V

    goto :goto_0
.end method

.method expandAd(Lcom/amazon/device/ads/ExpandProperties;Ljava/lang/String;)V
    .locals 4
    .param p1, "expandProperties"    # Lcom/amazon/device/ads/ExpandProperties;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 1079
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->threadRunner:Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;

    new-instance v1, Lcom/amazon/device/ads/MRAIDAdSDKBridge$9;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$9;-><init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;Lcom/amazon/device/ads/ExpandProperties;Ljava/lang/String;)V

    sget-object v2, Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;->RUN_ASAP:Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;

    sget-object v3, Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;->MAIN_THREAD:Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;->execute(Ljava/lang/Runnable;Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;)V

    .line 1087
    return-void
.end method

.method public getCurrentPosition()Lorg/json/JSONObject;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 474
    iget-object v1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v1}, Lcom/amazon/device/ads/AdControlAccessor;->getCurrentPosition()Lcom/amazon/device/ads/Position;

    move-result-object v0

    .line 475
    .local v0, "currentPosition":Lcom/amazon/device/ads/Position;
    if-nez v0, :cond_0

    .line 478
    const-string v1, "Current position is unavailable because the ad has not yet been displayed."

    const-string v2, "getCurrentPosition"

    invoke-direct {p0, v1, v2}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->fireErrorEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    new-instance v1, Lcom/amazon/device/ads/Position;

    new-instance v2, Lcom/amazon/device/ads/Size;

    invoke-direct {v2, v3, v3}, Lcom/amazon/device/ads/Size;-><init>(II)V

    invoke-direct {v1, v2, v3, v3}, Lcom/amazon/device/ads/Position;-><init>(Lcom/amazon/device/ads/Size;II)V

    invoke-virtual {v1}, Lcom/amazon/device/ads/Position;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    .line 481
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v1}, Lcom/amazon/device/ads/AdControlAccessor;->getCurrentPosition()Lcom/amazon/device/ads/Position;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/device/ads/Position;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    goto :goto_0
.end method

.method public getDefaultPosition()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->defaultPosition:Lcom/amazon/device/ads/Position;

    invoke-virtual {v0}, Lcom/amazon/device/ads/Position;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public getExpandProperties()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 553
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->expandProperties:Lcom/amazon/device/ads/ExpandProperties;

    invoke-virtual {v0}, Lcom/amazon/device/ads/ExpandProperties;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public getJavascript()Ljava/lang/String;
    .locals 1

    .prologue
    .line 418
    sget-object v0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->JAVASCRIPT:Ljava/lang/String;

    return-object v0
.end method

.method public getJavascriptInteractorExecutor()Lcom/amazon/device/ads/JavascriptInteractor$Executor;
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->javascriptInteractor:Lcom/amazon/device/ads/JavascriptInteractor;

    invoke-virtual {v0}, Lcom/amazon/device/ads/JavascriptInteractor;->getExecutor()Lcom/amazon/device/ads/JavascriptInteractor$Executor;

    move-result-object v0

    return-object v0
.end method

.method public getMaxSize()Lorg/json/JSONObject;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 491
    iget-object v1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v1}, Lcom/amazon/device/ads/AdControlAccessor;->getMaxSize()Lcom/amazon/device/ads/Size;

    move-result-object v0

    .line 492
    .local v0, "maxSize":Lcom/amazon/device/ads/Size;
    if-nez v0, :cond_0

    .line 494
    new-instance v1, Lcom/amazon/device/ads/Size;

    invoke-direct {v1, v2, v2}, Lcom/amazon/device/ads/Size;-><init>(II)V

    invoke-virtual {v1}, Lcom/amazon/device/ads/Size;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    .line 496
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/amazon/device/ads/Size;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 412
    const-string v0, "mraidObject"

    return-object v0
.end method

.method public getOrientationProperties()Ljava/lang/String;
    .locals 1

    .prologue
    .line 524
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->orientationProperties:Lcom/amazon/device/ads/OrientationProperties;

    invoke-virtual {v0}, Lcom/amazon/device/ads/OrientationProperties;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlacementType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 515
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdControlAccessor;->isInterstitial()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 517
    const-string v0, "interstitial"

    .line 519
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "inline"

    goto :goto_0
.end method

.method public getResizeProperties()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->resizeProperties:Lcom/amazon/device/ads/ResizeProperties;

    invoke-virtual {v0}, Lcom/amazon/device/ads/ResizeProperties;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public getSDKEventListener()Lcom/amazon/device/ads/SDKEventListener;
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->sdkEventListener:Lcom/amazon/device/ads/SDKEventListener;

    if-nez v0, :cond_0

    .line 430
    new-instance v0, Lcom/amazon/device/ads/MRAIDAdSDKEventListener;

    invoke-direct {v0, p0}, Lcom/amazon/device/ads/MRAIDAdSDKEventListener;-><init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)V

    iput-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->sdkEventListener:Lcom/amazon/device/ads/SDKEventListener;

    .line 432
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->sdkEventListener:Lcom/amazon/device/ads/SDKEventListener;

    return-object v0
.end method

.method public getScreenSize()Lorg/json/JSONObject;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 501
    iget-object v1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v1}, Lcom/amazon/device/ads/AdControlAccessor;->getScreenSize()Lcom/amazon/device/ads/Size;

    move-result-object v0

    .line 502
    .local v0, "screenSize":Lcom/amazon/device/ads/Size;
    if-nez v0, :cond_0

    .line 504
    new-instance v1, Lcom/amazon/device/ads/Size;

    invoke-direct {v1, v2, v2}, Lcom/amazon/device/ads/Size;-><init>(II)V

    invoke-virtual {v1}, Lcom/amazon/device/ads/Size;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    .line 506
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/amazon/device/ads/Size;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    goto :goto_0
.end method

.method public getSupportedFeatures()Lorg/json/JSONObject;
    .locals 8

    .prologue
    .line 754
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 757
    .local v5, "json":Lorg/json/JSONObject;
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "android.hardware.telephony"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    .line 758
    .local v2, "canSms":Z
    const-string v6, "sms"

    invoke-virtual {v5, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 760
    invoke-direct {p0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "android.hardware.telephony"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    .line 761
    .local v4, "canTel":Z
    const-string v6, "tel"

    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 763
    const/16 v6, 0xe

    invoke-static {v6}, Lcom/amazon/device/ads/AndroidTargetUtils;->isAtLeastAndroidAPI(I)Z

    move-result v0

    .line 764
    .local v0, "canCalendar":Z
    const-string v6, "calendar"

    invoke-virtual {v5, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 766
    iget-object v6, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->permissionChecker:Lcom/amazon/device/ads/PermissionChecker;

    invoke-direct {p0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/amazon/device/ads/PermissionChecker;->hasWriteExternalStoragePermission(Landroid/content/Context;)Z

    move-result v3

    .line 767
    .local v3, "canStorePicture":Z
    const-string v6, "storePicture"

    invoke-virtual {v5, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 769
    const/16 v6, 0xb

    invoke-static {v6}, Lcom/amazon/device/ads/AndroidTargetUtils;->isAtLeastAndroidAPI(I)Z

    move-result v1

    .line 770
    .local v1, "canInlineVideo":Z
    const-string v6, "inlineVideo"

    invoke-virtual {v5, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 776
    .end local v0    # "canCalendar":Z
    .end local v1    # "canInlineVideo":Z
    .end local v2    # "canSms":Z
    .end local v3    # "canStorePicture":Z
    .end local v4    # "canTel":Z
    :goto_0
    return-object v5

    .line 772
    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method public hasNativeExecution()Z
    .locals 1

    .prologue
    .line 400
    const/4 v0, 0x1

    return v0
.end method

.method public open(Ljava/lang/String;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 720
    iget-object v2, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v2}, Lcom/amazon/device/ads/AdControlAccessor;->isVisible()Z

    move-result v2

    if-nez v2, :cond_0

    .line 722
    const-string v2, "Unable to open a URL while the ad is not visible"

    const-string v3, "open"

    invoke-direct {p0, v2, v3}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->fireErrorEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    :goto_0
    return-void

    .line 725
    :cond_0
    iget-object v2, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Opening URL "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 726
    iget-object v2, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->webUtils:Lcom/amazon/device/ads/WebUtils2;

    invoke-virtual {v2, p1}, Lcom/amazon/device/ads/WebUtils2;->isUrlValid(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 728
    invoke-static {p1}, Lcom/amazon/device/ads/WebUtils;->getScheme(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 729
    .local v1, "scheme":Ljava/lang/String;
    const-string v2, "http"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "https"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 732
    :cond_1
    new-instance v2, Lcom/amazon/device/ads/InAppBrowser$InAppBrowserBuilder;

    invoke-direct {v2}, Lcom/amazon/device/ads/InAppBrowser$InAppBrowserBuilder;-><init>()V

    invoke-direct {p0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazon/device/ads/InAppBrowser$InAppBrowserBuilder;->withContext(Landroid/content/Context;)Lcom/amazon/device/ads/InAppBrowser$InAppBrowserBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/device/ads/InAppBrowser$InAppBrowserBuilder;->withExternalBrowserButton()Lcom/amazon/device/ads/InAppBrowser$InAppBrowserBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/amazon/device/ads/InAppBrowser$InAppBrowserBuilder;->withUrl(Ljava/lang/String;)Lcom/amazon/device/ads/InAppBrowser$InAppBrowserBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/device/ads/InAppBrowser$InAppBrowserBuilder;->show()V

    goto :goto_0

    .line 741
    :cond_2
    iget-object v2, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v2, p1}, Lcom/amazon/device/ads/AdControlAccessor;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 746
    .end local v1    # "scheme":Ljava/lang/String;
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "URL "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not a valid URL"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 747
    .local v0, "message":Ljava/lang/String;
    iget-object v2, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    invoke-virtual {v2, v0}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 748
    const-string v2, "open"

    invoke-direct {p0, v0, v2}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->fireErrorEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method orientationPropertyChange()V
    .locals 10

    .prologue
    const/4 v9, -0x1

    .line 1381
    iget-object v6, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v6}, Lcom/amazon/device/ads/AdControlAccessor;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v6}, Lcom/amazon/device/ads/AdControlAccessor;->isModal()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1438
    :cond_0
    :goto_0
    return-void

    .line 1385
    :cond_1
    invoke-direct {p0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 1386
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v5

    .line 1387
    .local v5, "originalOrientation":I
    iget-object v6, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v6}, Lcom/amazon/device/ads/AdControlAccessor;->getCurrentPosition()Lcom/amazon/device/ads/Position;

    move-result-object v2

    .line 1388
    .local v2, "currentPosition":Lcom/amazon/device/ads/Position;
    iget-object v6, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Current Orientation: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 1390
    sget-object v6, Lcom/amazon/device/ads/AdState;->EXPANDED:Lcom/amazon/device/ads/AdState;

    iget-object v7, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v7}, Lcom/amazon/device/ads/AdControlAccessor;->getAdState()Lcom/amazon/device/ads/AdState;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/amazon/device/ads/AdState;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1392
    sget-object v6, Lcom/amazon/device/ads/MRAIDAdSDKBridge$13;->$SwitchMap$com$amazon$device$ads$ForceOrientation:[I

    iget-object v7, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->orientationProperties:Lcom/amazon/device/ads/OrientationProperties;

    invoke-virtual {v7}, Lcom/amazon/device/ads/OrientationProperties;->getForceOrientation()Lcom/amazon/device/ads/ForceOrientation;

    move-result-object v7

    invoke-virtual {v7}, Lcom/amazon/device/ads/ForceOrientation;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 1406
    :cond_2
    :goto_1
    sget-object v6, Lcom/amazon/device/ads/AdState;->EXPANDED:Lcom/amazon/device/ads/AdState;

    iget-object v7, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v7}, Lcom/amazon/device/ads/AdControlAccessor;->getAdState()Lcom/amazon/device/ads/AdState;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/amazon/device/ads/AdState;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    sget-object v6, Lcom/amazon/device/ads/ForceOrientation;->NONE:Lcom/amazon/device/ads/ForceOrientation;

    iget-object v7, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->orientationProperties:Lcom/amazon/device/ads/OrientationProperties;

    invoke-virtual {v7}, Lcom/amazon/device/ads/OrientationProperties;->getForceOrientation()Lcom/amazon/device/ads/ForceOrientation;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/amazon/device/ads/ForceOrientation;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1408
    :cond_3
    iget-object v6, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->orientationProperties:Lcom/amazon/device/ads/OrientationProperties;

    invoke-virtual {v6}, Lcom/amazon/device/ads/OrientationProperties;->isAllowOrientationChange()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1411
    iget-object v6, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v6}, Lcom/amazon/device/ads/AdControlAccessor;->getContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v1

    .line 1412
    .local v1, "currentOrientation":I
    if-eq v1, v9, :cond_4

    .line 1414
    iget-object v6, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v6}, Lcom/amazon/device/ads/AdControlAccessor;->getContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Landroid/app/Activity;

    invoke-virtual {v6, v9}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 1423
    .end local v1    # "currentOrientation":I
    :cond_4
    :goto_2
    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v3

    .line 1424
    .local v3, "newOrientation":I
    iget-object v6, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "New Orientation: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 1425
    if-eq v3, v5, :cond_0

    .line 1428
    if-eqz v2, :cond_0

    .line 1430
    iget-object v6, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v6}, Lcom/amazon/device/ads/AdControlAccessor;->getCurrentPosition()Lcom/amazon/device/ads/Position;

    move-result-object v4

    .line 1431
    .local v4, "newPosition":Lcom/amazon/device/ads/Position;
    invoke-virtual {v2}, Lcom/amazon/device/ads/Position;->getSize()Lcom/amazon/device/ads/Size;

    move-result-object v6

    invoke-virtual {v6}, Lcom/amazon/device/ads/Size;->getWidth()I

    move-result v6

    invoke-virtual {v4}, Lcom/amazon/device/ads/Position;->getSize()Lcom/amazon/device/ads/Size;

    move-result-object v7

    invoke-virtual {v7}, Lcom/amazon/device/ads/Size;->getWidth()I

    move-result v7

    if-eq v6, v7, :cond_0

    .line 1434
    invoke-virtual {p0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->reportSizeChangeEvent()V

    goto/16 :goto_0

    .line 1395
    .end local v3    # "newOrientation":I
    .end local v4    # "newPosition":Lcom/amazon/device/ads/Position;
    :pswitch_0
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto/16 :goto_1

    .line 1398
    :pswitch_1
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto/16 :goto_1

    .line 1417
    :cond_5
    iget-object v6, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v6}, Lcom/amazon/device/ads/AdControlAccessor;->isModal()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1419
    invoke-static {v0}, Lcom/amazon/device/ads/DisplayUtils;->determineCanonicalScreenOrientation(Landroid/content/Context;)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_2

    .line 1392
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public playVideo(Ljava/lang/String;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 684
    iget-object v3, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v3}, Lcom/amazon/device/ads/AdControlAccessor;->isVisible()Z

    move-result v3

    if-nez v3, :cond_0

    .line 686
    const-string v3, "Unable to play a video while the ad is not visible"

    const-string v4, "playVideo"

    invoke-direct {p0, v3, v4}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->fireErrorEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    :goto_0
    return-void

    .line 689
    :cond_0
    invoke-static {p1}, Lcom/amazon/device/ads/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 691
    const-string v3, "Unable to play a video without a URL"

    const-string v4, "playVideo"

    invoke-direct {p0, v3, v4}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->fireErrorEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 696
    :cond_1
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 697
    .local v0, "data":Landroid/os/Bundle;
    const-string v3, "url"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    new-instance v2, Landroid/content/Intent;

    invoke-direct {p0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/amazon/device/ads/AdActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 699
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "adapter"

    const-class v4, Lcom/amazon/device/ads/VideoActionHandler;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 700
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 701
    invoke-direct {p0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 703
    .end local v0    # "data":Landroid/os/Bundle;
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 705
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    iget-object v3, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v4, "Failed to open VideoAction activity"

    invoke-virtual {v3, v4}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 706
    const-string v3, "Internal SDK Failure. Unable to launch VideoActionHandler"

    const-string v4, "playVideo"

    invoke-direct {p0, v3, v4}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->fireErrorEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method reportSizeChangeEvent()V
    .locals 4

    .prologue
    .line 1350
    iget-object v1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v1}, Lcom/amazon/device/ads/AdControlAccessor;->getCurrentPosition()Lcom/amazon/device/ads/Position;

    move-result-object v0

    .line 1351
    .local v0, "currentPosition":Lcom/amazon/device/ads/Position;
    if-eqz v0, :cond_0

    .line 1353
    iget-object v1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mraidBridge.sizeChange("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/amazon/device/ads/Position;->getSize()Lcom/amazon/device/ads/Size;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/device/ads/Size;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/amazon/device/ads/Position;->getSize()Lcom/amazon/device/ads/Size;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/device/ads/Size;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ");"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/AdControlAccessor;->injectJavascript(Ljava/lang/String;)V

    .line 1355
    :cond_0
    return-void
.end method

.method public resize()V
    .locals 2

    .prologue
    const/16 v1, 0x32

    .line 654
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdControlAccessor;->isInterstitial()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 656
    const-string v0, "Unable to resize an interstitial ad placement."

    const-string v1, "resize"

    invoke-direct {p0, v0, v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->fireErrorEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    :goto_0
    return-void

    .line 659
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdControlAccessor;->isModal()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 661
    const-string v0, "Unable to resize while expanded."

    const-string v1, "resize"

    invoke-direct {p0, v0, v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->fireErrorEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 664
    :cond_1
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdControlAccessor;->isVisible()Z

    move-result v0

    if-nez v0, :cond_2

    .line 666
    const-string v0, "Unable to resize ad while it is not visible."

    const-string v1, "resize"

    invoke-direct {p0, v0, v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->fireErrorEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 669
    :cond_2
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->resizeProperties:Lcom/amazon/device/ads/ResizeProperties;

    if-nez v0, :cond_3

    .line 671
    const-string v0, "Resize properties must be set before calling resize."

    const-string v1, "resize"

    invoke-direct {p0, v0, v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->fireErrorEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 674
    :cond_3
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->resizeProperties:Lcom/amazon/device/ads/ResizeProperties;

    invoke-virtual {v0}, Lcom/amazon/device/ads/ResizeProperties;->getWidth()I

    move-result v0

    if-lt v0, v1, :cond_4

    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->resizeProperties:Lcom/amazon/device/ads/ResizeProperties;

    invoke-virtual {v0}, Lcom/amazon/device/ads/ResizeProperties;->getHeight()I

    move-result v0

    if-ge v0, v1, :cond_5

    .line 676
    :cond_4
    const-string v0, "Resize width and height must be at least 50 dp in order to fit the close button."

    const-string v1, "resize"

    invoke-direct {p0, v0, v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->fireErrorEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 679
    :cond_5
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->resizeProperties:Lcom/amazon/device/ads/ResizeProperties;

    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->resizeAd(Lcom/amazon/device/ads/ResizeProperties;)V

    goto :goto_0
.end method

.method resizeAd(Lcom/amazon/device/ads/ResizeProperties;)V
    .locals 5
    .param p1, "resizeProperties"    # Lcom/amazon/device/ads/ResizeProperties;

    .prologue
    .line 1148
    invoke-direct {p0, p1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->computeResizeSizeInPixels(Lcom/amazon/device/ads/ResizeProperties;)Lcom/amazon/device/ads/Size;

    move-result-object v0

    .line 1149
    .local v0, "resizeSize":Lcom/amazon/device/ads/Size;
    iget-object v1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->threadRunner:Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;

    new-instance v2, Lcom/amazon/device/ads/MRAIDAdSDKBridge$11;

    invoke-direct {v2, p0, p1, v0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$11;-><init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;Lcom/amazon/device/ads/ResizeProperties;Lcom/amazon/device/ads/Size;)V

    sget-object v3, Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;->RUN_ASAP:Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;

    sget-object v4, Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;->MAIN_THREAD:Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;

    invoke-virtual {v1, v2, v3, v4}, Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;->execute(Ljava/lang/Runnable;Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;)V

    .line 1157
    return-void
.end method

.method public setExpandProperties(IIZ)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "useCustomClose"    # Z

    .prologue
    .line 558
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->expandProperties:Lcom/amazon/device/ads/ExpandProperties;

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/ExpandProperties;->setWidth(I)V

    .line 559
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->expandProperties:Lcom/amazon/device/ads/ExpandProperties;

    invoke-virtual {v0, p2}, Lcom/amazon/device/ads/ExpandProperties;->setHeight(I)V

    .line 560
    invoke-virtual {p0, p3}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->setUseCustomClose(Z)V

    .line 561
    return-void
.end method

.method public setOrientationProperties(ZLjava/lang/String;)V
    .locals 5
    .param p1, "allowOrientationChange"    # Z
    .param p2, "forceOrientation"    # Ljava/lang/String;

    .prologue
    .line 531
    iget-object v2, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v2}, Lcom/amazon/device/ads/AdControlAccessor;->isInterstitial()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v2}, Lcom/amazon/device/ads/AdControlAccessor;->isModal()Z

    move-result v2

    if-nez v2, :cond_0

    .line 533
    iget-object v2, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v2}, Lcom/amazon/device/ads/AdControlAccessor;->orientationChangeAttemptedWhenNotAllowed()V

    .line 535
    :cond_0
    iget-object v2, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->orientationProperties:Lcom/amazon/device/ads/OrientationProperties;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazon/device/ads/OrientationProperties;->setAllowOrientationChange(Ljava/lang/Boolean;)V

    .line 536
    invoke-static {p2}, Lcom/amazon/device/ads/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 540
    :try_start_0
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p2, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/device/ads/ForceOrientation;->valueOf(Ljava/lang/String;)Lcom/amazon/device/ads/ForceOrientation;

    move-result-object v0

    .line 541
    .local v0, "forceOrientationEnum":Lcom/amazon/device/ads/ForceOrientation;
    iget-object v2, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->orientationProperties:Lcom/amazon/device/ads/OrientationProperties;

    invoke-virtual {v2, v0}, Lcom/amazon/device/ads/OrientationProperties;->setForceOrientation(Lcom/amazon/device/ads/ForceOrientation;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 548
    .end local v0    # "forceOrientationEnum":Lcom/amazon/device/ads/ForceOrientation;
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->orientationPropertyChange()V

    .line 549
    return-void

    .line 543
    :catch_0
    move-exception v1

    .line 545
    .local v1, "iae":Ljava/lang/IllegalArgumentException;
    iget-object v2, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not a valid orientation to force:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazon/device/ads/MobileAdsLogger;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setResizeProperties(IIIILjava/lang/String;Z)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "offsetX"    # I
    .param p4, "offsetY"    # I
    .param p5, "customClosePosition"    # Ljava/lang/String;
    .param p6, "allowOffscreen"    # Z

    .prologue
    .line 570
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->resizeProperties:Lcom/amazon/device/ads/ResizeProperties;

    if-nez v0, :cond_0

    .line 572
    new-instance v0, Lcom/amazon/device/ads/ResizeProperties;

    invoke-direct {v0}, Lcom/amazon/device/ads/ResizeProperties;-><init>()V

    iput-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->resizeProperties:Lcom/amazon/device/ads/ResizeProperties;

    .line 574
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->resizeProperties:Lcom/amazon/device/ads/ResizeProperties;

    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/ResizeProperties;->setAllowOffscreen(Ljava/lang/Boolean;)V

    .line 575
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->resizeProperties:Lcom/amazon/device/ads/ResizeProperties;

    invoke-virtual {v0, p5}, Lcom/amazon/device/ads/ResizeProperties;->setCustomClosePosition(Ljava/lang/String;)V

    .line 576
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->resizeProperties:Lcom/amazon/device/ads/ResizeProperties;

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/ResizeProperties;->setWidth(I)V

    .line 577
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->resizeProperties:Lcom/amazon/device/ads/ResizeProperties;

    invoke-virtual {v0, p2}, Lcom/amazon/device/ads/ResizeProperties;->setHeight(I)V

    .line 578
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->resizeProperties:Lcom/amazon/device/ads/ResizeProperties;

    invoke-virtual {v0, p3}, Lcom/amazon/device/ads/ResizeProperties;->setOffsetX(I)V

    .line 579
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->resizeProperties:Lcom/amazon/device/ads/ResizeProperties;

    invoke-virtual {v0, p4}, Lcom/amazon/device/ads/ResizeProperties;->setOffsetY(I)V

    .line 580
    return-void
.end method

.method public setUseCustomClose(Z)V
    .locals 2
    .param p1, "useCustomClose"    # Z

    .prologue
    .line 584
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->expandProperties:Lcom/amazon/device/ads/ExpandProperties;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/ExpandProperties;->setUseCustomClose(Ljava/lang/Boolean;)V

    .line 585
    iget-object v1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/amazon/device/ads/AdControlAccessor;->showNativeCloseButtonImage(Z)V

    .line 586
    return-void

    .line 585
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public storePicture(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 847
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->permissionChecker:Lcom/amazon/device/ads/PermissionChecker;

    invoke-direct {p0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/PermissionChecker;->hasWriteExternalStoragePermission(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 849
    const-string v0, "Picture could not be stored because permission was denied."

    const-string v1, "storePicture"

    invoke-direct {p0, v0, v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->fireErrorEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    :goto_0
    return-void

    .line 852
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->threadRunner:Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;

    new-instance v1, Lcom/amazon/device/ads/MRAIDAdSDKBridge$2;

    invoke-direct {v1, p0, p1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$2;-><init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;Ljava/lang/String;)V

    sget-object v2, Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;->RUN_ASAP:Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;

    sget-object v3, Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;->BACKGROUND_THREAD:Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;->execute(Ljava/lang/Runnable;Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;)V

    goto :goto_0
.end method

.method updateDefaultPosition(IIII)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "offsetX"    # I
    .param p4, "offsetY"    # I

    .prologue
    .line 464
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->defaultPosition:Lcom/amazon/device/ads/Position;

    new-instance v1, Lcom/amazon/device/ads/Size;

    invoke-direct {v1, p1, p2}, Lcom/amazon/device/ads/Size;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/Position;->setSize(Lcom/amazon/device/ads/Size;)V

    .line 465
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->defaultPosition:Lcom/amazon/device/ads/Position;

    invoke-virtual {v0, p3}, Lcom/amazon/device/ads/Position;->setX(I)V

    .line 466
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->defaultPosition:Lcom/amazon/device/ads/Position;

    invoke-virtual {v0, p4}, Lcom/amazon/device/ads/Position;->setY(I)V

    .line 467
    return-void
.end method

.method updateExpandProperties(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 449
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->expandProperties:Lcom/amazon/device/ads/ExpandProperties;

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/ExpandProperties;->setWidth(I)V

    .line 450
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->expandProperties:Lcom/amazon/device/ads/ExpandProperties;

    invoke-virtual {v0, p2}, Lcom/amazon/device/ads/ExpandProperties;->setHeight(I)V

    .line 451
    return-void
.end method
