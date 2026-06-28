.class public Lcom/amazon/insights/core/http/RequestTimingInterceptor;
.super Ljava/lang/Object;
.source "RequestTimingInterceptor.java"

# interfaces
.implements Lcom/amazon/insights/core/http/HttpClient$Interceptor;


# static fields
.field public static final REQUESTATTEMPTS_HEADER:Ljava/lang/String; = "x-amzn-RequestAttempts"

.field public static final REQUESTTIME_HEADER:Ljava/lang/String; = "x-amzn-RequestTime"

.field public static final SERVERINFO_HEADER:Ljava/lang/String; = "x-amzn-ServerInfo"

.field private static final TIMEZONE_FORMAT:Ljava/lang/String; = "Z"

.field private static final logger:Lcom/amazon/insights/core/log/Logger;


# instance fields
.field private final connectivity:Lcom/amazon/insights/core/system/Connectivity;

.field private df:Ljava/text/DateFormat;

.field private final eventClient:Lcom/amazon/insights/event/InternalEventClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/amazon/insights/core/http/RequestTimingInterceptor;

    invoke-static {v0}, Lcom/amazon/insights/core/log/Logger;->getLogger(Ljava/lang/Class;)Lcom/amazon/insights/core/log/Logger;

    move-result-object v0

    sput-object v0, Lcom/amazon/insights/core/http/RequestTimingInterceptor;->logger:Lcom/amazon/insights/core/log/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/insights/core/system/Connectivity;Lcom/amazon/insights/event/InternalEventClient;)V
    .locals 1
    .param p1, "connectivity"    # Lcom/amazon/insights/core/system/Connectivity;
    .param p2, "eventClient"    # Lcom/amazon/insights/event/InternalEventClient;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, "Z"

    invoke-static {v0}, Lcom/amazon/insights/core/util/DateUtil;->createLocaleIndependentDateFormatter(Ljava/lang/String;)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/insights/core/http/RequestTimingInterceptor;->df:Ljava/text/DateFormat;

    .line 32
    iput-object p2, p0, Lcom/amazon/insights/core/http/RequestTimingInterceptor;->eventClient:Lcom/amazon/insights/event/InternalEventClient;

    .line 33
    iput-object p1, p0, Lcom/amazon/insights/core/http/RequestTimingInterceptor;->connectivity:Lcom/amazon/insights/core/system/Connectivity;

    .line 34
    return-void
.end method

.method private declared-synchronized getTimeZone()Ljava/lang/String;
    .locals 2

    .prologue
    .line 46
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amazon/insights/core/http/RequestTimingInterceptor;->df:Ljava/text/DateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private recordRequestTimeEvent(Lcom/amazon/insights/core/http/HttpClient$Response;)V
    .locals 18
    .param p1, "response"    # Lcom/amazon/insights/core/http/HttpClient$Response;

    .prologue
    .line 51
    if-nez p1, :cond_1

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    :try_start_0
    invoke-interface/range {p1 .. p1}, Lcom/amazon/insights/core/http/HttpClient$Response;->getOriginatingRequest()Lcom/amazon/insights/core/http/HttpClient$Request;

    move-result-object v5

    .line 56
    .local v5, "request":Lcom/amazon/insights/core/http/HttpClient$Request;
    if-eqz v5, :cond_0

    .line 60
    invoke-interface {v5}, Lcom/amazon/insights/core/http/HttpClient$Request;->getUrl()Ljava/lang/String;

    move-result-object v12

    .line 61
    .local v12, "url":Ljava/lang/String;
    const-string v13, "x-amzn-RequestTime"

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Lcom/amazon/insights/core/http/HttpClient$Response;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 62
    .local v10, "responseTimeStr":Ljava/lang/String;
    const-wide/16 v8, 0x0

    .line 63
    .local v8, "responseTime":J
    if-eqz v10, :cond_2

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    if-lez v13, :cond_2

    .line 65
    :try_start_1
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v8

    .line 70
    :cond_2
    :goto_1
    :try_start_2
    const-string v13, "x-amzn-RequestAttempts"

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Lcom/amazon/insights/core/http/HttpClient$Response;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 71
    .local v7, "requestAttemptsStr":Ljava/lang/String;
    const/4 v6, 0x0

    .line 72
    .local v6, "requestAttempts":I
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v13

    if-lez v13, :cond_3

    .line 74
    :try_start_3
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result v6

    .line 79
    :cond_3
    :goto_2
    :try_start_4
    const-string v13, "x-amzn-ServerInfo"

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Lcom/amazon/insights/core/http/HttpClient$Response;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 80
    .local v11, "serverInfo":Ljava/lang/String;
    invoke-static {v10}, Lcom/amazon/insights/core/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 81
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/amazon/insights/core/http/RequestTimingInterceptor;->eventClient:Lcom/amazon/insights/event/InternalEventClient;

    if-eqz v13, :cond_0

    .line 85
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/amazon/insights/core/http/RequestTimingInterceptor;->eventClient:Lcom/amazon/insights/event/InternalEventClient;

    const-string v14, "_httpRequestTiming"

    invoke-interface {v13, v14}, Lcom/amazon/insights/event/InternalEventClient;->createEvent(Ljava/lang/String;)Lcom/amazon/insights/Event;

    move-result-object v13

    const-string v14, "url"

    invoke-interface {v13, v14, v12}, Lcom/amazon/insights/Event;->withAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/insights/Event;

    move-result-object v13

    const-string v14, "responseCode"

    invoke-interface/range {p1 .. p1}, Lcom/amazon/insights/core/http/HttpClient$Response;->getCode()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v13, v14, v15}, Lcom/amazon/insights/Event;->withAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/insights/Event;

    move-result-object v13

    const-string v14, "timeZone"

    invoke-direct/range {p0 .. p0}, Lcom/amazon/insights/core/http/RequestTimingInterceptor;->getTimeZone()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v13, v14, v15}, Lcom/amazon/insights/Event;->withAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/insights/Event;

    move-result-object v13

    const-string v14, "attempts"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v13, v14, v15}, Lcom/amazon/insights/Event;->withMetric(Ljava/lang/String;Ljava/lang/Number;)Lcom/amazon/insights/Event;

    move-result-object v13

    const-string v14, "totalTime"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-interface {v13, v14, v15}, Lcom/amazon/insights/Event;->withMetric(Ljava/lang/String;Ljava/lang/Number;)Lcom/amazon/insights/Event;

    move-result-object v13

    const-string v14, "requestSize"

    invoke-interface/range {p1 .. p1}, Lcom/amazon/insights/core/http/HttpClient$Response;->getRequestSize()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-interface {v13, v14, v15}, Lcom/amazon/insights/Event;->withMetric(Ljava/lang/String;Ljava/lang/Number;)Lcom/amazon/insights/Event;

    move-result-object v13

    const-string v14, "responseSize"

    invoke-interface/range {p1 .. p1}, Lcom/amazon/insights/core/http/HttpClient$Response;->getResponseSize()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-interface {v13, v14, v15}, Lcom/amazon/insights/Event;->withMetric(Ljava/lang/String;Ljava/lang/Number;)Lcom/amazon/insights/Event;

    move-result-object v4

    .line 94
    .local v4, "recordEvent":Lcom/amazon/insights/Event;
    const-string v2, "UNKNOWN"

    .line 95
    .local v2, "connectionType":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/amazon/insights/core/http/RequestTimingInterceptor;->connectivity:Lcom/amazon/insights/core/system/Connectivity;

    if-eqz v13, :cond_4

    .line 96
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/amazon/insights/core/http/RequestTimingInterceptor;->connectivity:Lcom/amazon/insights/core/system/Connectivity;

    invoke-interface {v13}, Lcom/amazon/insights/core/system/Connectivity;->hasWired()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 97
    const-string v2, "OTHER"

    .line 105
    :cond_4
    :goto_3
    const-string v13, "network"

    invoke-interface {v4, v13, v2}, Lcom/amazon/insights/Event;->withAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/insights/Event;

    .line 107
    if-eqz v11, :cond_5

    .line 108
    const-string v13, "serverInfo"

    invoke-interface {v4, v13, v11}, Lcom/amazon/insights/Event;->withAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/insights/Event;

    .line 111
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/amazon/insights/core/http/RequestTimingInterceptor;->eventClient:Lcom/amazon/insights/event/InternalEventClient;

    const/4 v14, 0x0

    invoke-interface {v13, v4, v14}, Lcom/amazon/insights/event/InternalEventClient;->recordEvent(Lcom/amazon/insights/Event;Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 113
    .end local v2    # "connectionType":Ljava/lang/String;
    .end local v4    # "recordEvent":Lcom/amazon/insights/Event;
    .end local v5    # "request":Lcom/amazon/insights/core/http/HttpClient$Request;
    .end local v6    # "requestAttempts":I
    .end local v7    # "requestAttemptsStr":Ljava/lang/String;
    .end local v8    # "responseTime":J
    .end local v10    # "responseTimeStr":Ljava/lang/String;
    .end local v11    # "serverInfo":Ljava/lang/String;
    .end local v12    # "url":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 114
    .local v3, "e":Ljava/lang/Exception;
    sget-object v13, Lcom/amazon/insights/core/http/RequestTimingInterceptor;->logger:Lcom/amazon/insights/core/log/Logger;

    const-string v14, "Unable to record _RequestTime event"

    invoke-virtual {v13, v14, v3}, Lcom/amazon/insights/core/log/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 98
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v2    # "connectionType":Ljava/lang/String;
    .restart local v4    # "recordEvent":Lcom/amazon/insights/Event;
    .restart local v5    # "request":Lcom/amazon/insights/core/http/HttpClient$Request;
    .restart local v6    # "requestAttempts":I
    .restart local v7    # "requestAttemptsStr":Ljava/lang/String;
    .restart local v8    # "responseTime":J
    .restart local v10    # "responseTimeStr":Ljava/lang/String;
    .restart local v11    # "serverInfo":Ljava/lang/String;
    .restart local v12    # "url":Ljava/lang/String;
    :cond_6
    :try_start_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/amazon/insights/core/http/RequestTimingInterceptor;->connectivity:Lcom/amazon/insights/core/system/Connectivity;

    invoke-interface {v13}, Lcom/amazon/insights/core/system/Connectivity;->hasWifi()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 99
    const-string v2, "WIFI"

    goto :goto_3

    .line 100
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/amazon/insights/core/http/RequestTimingInterceptor;->connectivity:Lcom/amazon/insights/core/system/Connectivity;

    invoke-interface {v13}, Lcom/amazon/insights/core/system/Connectivity;->hasWAN()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 101
    const-string v2, "WAN"
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_3

    .line 75
    .end local v2    # "connectionType":Ljava/lang/String;
    .end local v4    # "recordEvent":Lcom/amazon/insights/Event;
    .end local v11    # "serverInfo":Ljava/lang/String;
    :catch_1
    move-exception v13

    goto/16 :goto_2

    .line 66
    .end local v6    # "requestAttempts":I
    .end local v7    # "requestAttemptsStr":Ljava/lang/String;
    :catch_2
    move-exception v13

    goto/16 :goto_1
.end method


# virtual methods
.method public after(Lcom/amazon/insights/core/http/HttpClient$Response;)V
    .locals 0
    .param p1, "response"    # Lcom/amazon/insights/core/http/HttpClient$Response;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/amazon/insights/core/http/RequestTimingInterceptor;->recordRequestTimeEvent(Lcom/amazon/insights/core/http/HttpClient$Response;)V

    .line 43
    return-void
.end method

.method public before(Lcom/amazon/insights/core/http/HttpClient$Request;)V
    .locals 0
    .param p1, "request"    # Lcom/amazon/insights/core/http/HttpClient$Request;

    .prologue
    .line 38
    return-void
.end method
