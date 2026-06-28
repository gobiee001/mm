.class public Lcom/chartboost/sdk/impl/ay;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/chartboost/sdk/impl/av;

.field private final b:Lcom/chartboost/sdk/impl/ax;

.field private final c:I

.field private final d:Lorg/json/JSONObject;

.field private final e:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/av;Lcom/chartboost/sdk/impl/ax;ILjava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/chartboost/sdk/impl/ay;->a:Lcom/chartboost/sdk/impl/av;

    .line 48
    iput-object p2, p0, Lcom/chartboost/sdk/impl/ay;->b:Lcom/chartboost/sdk/impl/ax;

    .line 49
    iput p3, p0, Lcom/chartboost/sdk/impl/ay;->c:I

    .line 50
    iput-object p4, p0, Lcom/chartboost/sdk/impl/ay;->e:Ljava/lang/String;

    .line 51
    iput-object p5, p0, Lcom/chartboost/sdk/impl/ay;->d:Lorg/json/JSONObject;

    .line 52
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/high16 v4, 0x447a0000    # 1000.0f

    .line 57
    :try_start_0
    iget v0, p0, Lcom/chartboost/sdk/impl/ay;->c:I

    packed-switch v0, :pswitch_data_0

    .line 204
    :goto_0
    return-void

    .line 59
    :pswitch_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ay;->b:Lcom/chartboost/sdk/impl/ax;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ax;->b(Lorg/json/JSONObject;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 201
    :catch_0
    move-exception v0

    .line 202
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "run("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/chartboost/sdk/impl/ay;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 63
    :pswitch_1
    :try_start_1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ay;->b:Lcom/chartboost/sdk/impl/ax;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ax;->h()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 68
    :pswitch_2
    :try_start_2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ay;->d:Lorg/json/JSONObject;

    const-string v1, "duration"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-float v0, v0

    .line 69
    const-string v1, "NativeBridgeCommand"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "######### JS->Native Video current player duration"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    mul-float v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ay;->b:Lcom/chartboost/sdk/impl/ax;

    mul-float/2addr v0, v4

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/ax;->a(F)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 71
    :catch_1
    move-exception v0

    .line 72
    :try_start_3
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ay;->b:Lcom/chartboost/sdk/impl/ax;

    const-string v1, "Parsing exception unknown field for current player duration"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ax;->e(Ljava/lang/String;)V

    .line 73
    const-string v0, "NativeBridgeCommand"

    const-string v1, "Cannot find duration parameter for the video"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 79
    :pswitch_3
    :try_start_4
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ay;->d:Lorg/json/JSONObject;

    const-string v1, "message"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 80
    const-class v1, Lcom/chartboost/sdk/impl/aw;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JS->Native Debug message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ay;->b:Lcom/chartboost/sdk/impl/ax;

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/ax;->c(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 82
    :catch_2
    move-exception v0

    .line 83
    :try_start_5
    const-string v0, "NativeBridgeCommand"

    const-string v1, "Exception occured while parsing the message for webview debug track event"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ay;->b:Lcom/chartboost/sdk/impl/ax;

    const-string v1, "Exception occured while parsing the message for webview debug track event"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ax;->c(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    .line 90
    :pswitch_4
    :try_start_6
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ay;->d:Lorg/json/JSONObject;

    const-string v1, "message"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    const-class v1, Lcom/chartboost/sdk/impl/aw;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JS->Native Error message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ay;->b:Lcom/chartboost/sdk/impl/ax;

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/ax;->d(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_0

    .line 93
    :catch_3
    move-exception v0

    .line 94
    :try_start_7
    const-string v0, "NativeBridgeCommand"

    const-string v1, "Error message is empty"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ay;->b:Lcom/chartboost/sdk/impl/ax;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ax;->d(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_0

    .line 101
    :pswitch_5
    :try_start_8
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ay;->d:Lorg/json/JSONObject;

    const-string v1, "url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 104
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 105
    iget-object v2, p0, Lcom/chartboost/sdk/impl/ay;->b:Lcom/chartboost/sdk/impl/ax;

    invoke-virtual {v2}, Lcom/chartboost/sdk/impl/ax;->y()Lcom/chartboost/sdk/impl/ax$b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/chartboost/sdk/impl/ax$b;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 106
    const-class v1, Lcom/chartboost/sdk/impl/aw;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JS->Native Track MRAID openUrl: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Landroid/content/ActivityNotFoundException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    goto/16 :goto_0

    .line 107
    :catch_4
    move-exception v0

    .line 108
    :try_start_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "ActivityNotFoundException occured when opening a url in a browser"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 109
    const-string v0, "NativeBridgeCommand"

    const-string v1, "ActivityNotFoundException occured when opening a url in a browser"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 110
    :catch_5
    move-exception v0

    .line 111
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "Exception while opening a browser view with MRAID url"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 112
    const-string v0, "NativeBridgeCommand"

    const-string v1, "Exception while opening a browser view with MRAID url"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 117
    :pswitch_6
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ay;->b:Lcom/chartboost/sdk/impl/ax;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ax;->z()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_0

    .line 122
    :pswitch_7
    :try_start_a
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ay;->d:Lorg/json/JSONObject;

    const-string v1, "duration"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-float v0, v0

    .line 123
    const-string v1, "NativeBridgeCommand"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "######### JS->Native Video total player duration"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    mul-float v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ay;->b:Lcom/chartboost/sdk/impl/ax;

    mul-float/2addr v0, v4

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/ax;->b(F)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    goto/16 :goto_0

    .line 125
    :catch_6
    move-exception v0

    .line 126
    :try_start_b
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ay;->b:Lcom/chartboost/sdk/impl/ax;

    const-string v1, "Parsing exception unknown field for total player duration"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ax;->e(Ljava/lang/String;)V

    .line 127
    const-string v0, "NativeBridgeCommand"

    const-string v1, "Cannot find duration parameter for the video"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    goto/16 :goto_0

    .line 133
    :pswitch_8
    :try_start_c
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ay;->d:Lorg/json/JSONObject;

    const-string v1, "event"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 134
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ay;->b:Lcom/chartboost/sdk/impl/ax;

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/ax;->b(Ljava/lang/String;)V

    .line 135
    const-class v1, Lcom/chartboost/sdk/impl/aw;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JS->Native Track VAST event message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7

    goto/16 :goto_0

    .line 136
    :catch_7
    move-exception v0

    .line 137
    :try_start_d
    const-string v0, "NativeBridgeCommand"

    const-string v1, "Exception occured while parsing the message for webview tracking VAST events"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 142
    :pswitch_9
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ay;->a:Lcom/chartboost/sdk/impl/av;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/av;->onHideCustomView()V

    .line 143
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ay;->b:Lcom/chartboost/sdk/impl/ax;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ax;->b(I)V

    .line 144
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ay;->b:Lcom/chartboost/sdk/impl/ax;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ax;->w()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0

    goto/16 :goto_0

    .line 149
    :pswitch_a
    :try_start_e
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ay;->d:Lorg/json/JSONObject;

    const-string v1, "name"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 150
    invoke-static {}, Lcom/chartboost/sdk/impl/m;->a()Lcom/chartboost/sdk/impl/m;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/m;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 151
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ay;->b:Lcom/chartboost/sdk/impl/ax;

    iput-object v0, v1, Lcom/chartboost/sdk/impl/ax;->m:Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_8

    .line 156
    :cond_1
    :goto_1
    :try_start_f
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ay;->b:Lcom/chartboost/sdk/impl/ax;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ax;->b(I)V

    goto/16 :goto_0

    .line 152
    :catch_8
    move-exception v0

    .line 153
    const-string v0, "NativeBridgeCommand"

    const-string v1, "Cannot find video file name"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ay;->b:Lcom/chartboost/sdk/impl/ax;

    const-string v1, "Parsing exception unknown field for video pause"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ax;->e(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0

    goto :goto_1

    .line 161
    :pswitch_b
    :try_start_10
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ay;->d:Lorg/json/JSONObject;

    const-string v1, "name"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 162
    invoke-static {}, Lcom/chartboost/sdk/impl/m;->a()Lcom/chartboost/sdk/impl/m;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/m;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 163
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ay;->b:Lcom/chartboost/sdk/impl/ax;

    iput-object v0, v1, Lcom/chartboost/sdk/impl/ax;->m:Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_9

    .line 168
    :cond_2
    :goto_2
    :try_start_11
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ay;->b:Lcom/chartboost/sdk/impl/ax;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ax;->b(I)V

    goto/16 :goto_0

    .line 164
    :catch_9
    move-exception v0

    .line 165
    const-string v0, "NativeBridgeCommand"

    const-string v1, "Cannot find video file name"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ay;->b:Lcom/chartboost/sdk/impl/ax;

    const-string v1, "Parsing exception unknown field for video play"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ax;->e(Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_0

    goto :goto_2

    .line 173
    :pswitch_c
    :try_start_12
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ay;->d:Lorg/json/JSONObject;

    const-string v1, "name"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 174
    invoke-static {}, Lcom/chartboost/sdk/impl/m;->a()Lcom/chartboost/sdk/impl/m;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/m;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 175
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ay;->b:Lcom/chartboost/sdk/impl/ax;

    iput-object v0, v1, Lcom/chartboost/sdk/impl/ax;->m:Ljava/lang/String;

    .line 176
    :cond_3
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ay;->b:Lcom/chartboost/sdk/impl/ax;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ax;->x()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_a

    goto/16 :goto_0

    .line 177
    :catch_a
    move-exception v0

    .line 178
    :try_start_13
    const-string v0, "NativeBridgeCommand"

    const-string v1, "Cannot find video file name"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ay;->b:Lcom/chartboost/sdk/impl/ax;

    const-string v1, "Parsing exception unknown field for video replay"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ax;->e(Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_0

    goto/16 :goto_0

    .line 185
    :pswitch_d
    :try_start_14
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ay;->d:Lorg/json/JSONObject;

    const-string v1, "message"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 186
    const-class v1, Lcom/chartboost/sdk/impl/aw;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JS->Native Warning message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ay;->b:Lcom/chartboost/sdk/impl/ax;

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/ax;->e(Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_b

    goto/16 :goto_0

    .line 188
    :catch_b
    move-exception v0

    .line 189
    :try_start_15
    const-string v0, "NativeBridgeCommand"

    const-string v1, "Warning message is empty"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ay;->b:Lcom/chartboost/sdk/impl/ax;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ax;->e(Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_0

    goto/16 :goto_0

    .line 195
    :pswitch_e
    :try_start_16
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ay;->b:Lcom/chartboost/sdk/impl/ax;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ay;->d:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ax;->c(Lorg/json/JSONObject;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_c

    goto/16 :goto_0

    .line 196
    :catch_c
    move-exception v0

    .line 197
    :try_start_17
    const-string v0, "NativeBridgeCommand"

    const-string v1, "Invalid set orientation command"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_0

    goto/16 :goto_0

    .line 57
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method
