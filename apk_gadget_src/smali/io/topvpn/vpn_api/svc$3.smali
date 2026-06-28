.class Lio/topvpn/vpn_api/svc$3;
.super Lio/topvpn/vpn_api/state$listener;
.source "svc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/topvpn/vpn_api/svc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/topvpn/vpn_api/svc;


# direct methods
.method constructor <init>(Lio/topvpn/vpn_api/svc;)V
    .locals 0

    .prologue
    .line 774
    iput-object p1, p0, Lio/topvpn/vpn_api/svc$3;->this$0:Lio/topvpn/vpn_api/svc;

    invoke-direct {p0}, Lio/topvpn/vpn_api/state$listener;-><init>()V

    return-void
.end method


# virtual methods
.method public on_changed(Lio/topvpn/vpn_api/state$key;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 777
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 779
    sget-object v3, Lio/topvpn/vpn_api/state;->USING_BATTERY:Lio/topvpn/vpn_api/state$key;

    if-ne p1, v3, :cond_3

    .line 780
    const-string v3, "charging"

    iget-object v4, p0, Lio/topvpn/vpn_api/svc$3;->this$0:Lio/topvpn/vpn_api/svc;

    invoke-static {v4}, Lio/topvpn/vpn_api/svc;->access$4900(Lio/topvpn/vpn_api/svc;)Lio/topvpn/vpn_api/state;

    move-result-object v4

    sget-object v5, Lio/topvpn/vpn_api/state;->USING_BATTERY:Lio/topvpn/vpn_api/state$key;

    invoke-virtual {v4, v5}, Lio/topvpn/vpn_api/state;->get_bool(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    move v2, v1

    :cond_0
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 806
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 807
    iget-object v1, p0, Lio/topvpn/vpn_api/svc$3;->this$0:Lio/topvpn/vpn_api/svc;

    invoke-static {v1, p1}, Lio/topvpn/vpn_api/svc;->access$1700(Lio/topvpn/vpn_api/svc;Lio/topvpn/vpn_api/state$key;)V

    .line 808
    :cond_2
    iget-object v1, p0, Lio/topvpn/vpn_api/svc$3;->this$0:Lio/topvpn/vpn_api/svc;

    const/4 v2, 0x7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "phone_state_change "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    instance-of v4, v0, Lorg/json/JSONObject;

    if-nez v4, :cond_b

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lio/topvpn/vpn_api/svc;->access$100(Lio/topvpn/vpn_api/svc;ILjava/lang/String;)I

    .line 810
    :goto_2
    return-void

    .line 781
    :cond_3
    sget-object v3, Lio/topvpn/vpn_api/state;->SCREEN_ON:Lio/topvpn/vpn_api/state$key;

    if-ne p1, v3, :cond_5

    .line 783
    const-string v3, "screen_off"

    iget-object v4, p0, Lio/topvpn/vpn_api/svc$3;->this$0:Lio/topvpn/vpn_api/svc;

    invoke-static {v4}, Lio/topvpn/vpn_api/svc;->access$4900(Lio/topvpn/vpn_api/svc;)Lio/topvpn/vpn_api/state;

    move-result-object v4

    sget-object v5, Lio/topvpn/vpn_api/state;->SCREEN_ON:Lio/topvpn/vpn_api/state$key;

    invoke-virtual {v4, v5}, Lio/topvpn/vpn_api/state;->get_bool(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    move v2, v1

    :cond_4
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 784
    iget-object v2, p0, Lio/topvpn/vpn_api/svc$3;->this$0:Lio/topvpn/vpn_api/svc;

    invoke-static {v2}, Lio/topvpn/vpn_api/svc;->access$1300(Lio/topvpn/vpn_api/svc;)V

    goto :goto_0

    .line 809
    :catch_0
    move-exception v0

    goto :goto_2

    .line 786
    :cond_5
    sget-object v3, Lio/topvpn/vpn_api/state;->WIFI_CONNECTED:Lio/topvpn/vpn_api/state$key;

    if-ne p1, v3, :cond_6

    .line 787
    const-string v2, "wifi_on"

    iget-object v3, p0, Lio/topvpn/vpn_api/svc$3;->this$0:Lio/topvpn/vpn_api/svc;

    invoke-static {v3}, Lio/topvpn/vpn_api/svc;->access$4900(Lio/topvpn/vpn_api/svc;)Lio/topvpn/vpn_api/state;

    move-result-object v3

    sget-object v4, Lio/topvpn/vpn_api/state;->WIFI_CONNECTED:Lio/topvpn/vpn_api/state$key;

    invoke-virtual {v3, v4}, Lio/topvpn/vpn_api/state;->get_bool(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_0

    .line 788
    :cond_6
    sget-object v3, Lio/topvpn/vpn_api/state;->MOBILE_CONNECTED:Lio/topvpn/vpn_api/state$key;

    if-ne p1, v3, :cond_8

    .line 790
    const-string v2, "mobile_on"

    iget-object v3, p0, Lio/topvpn/vpn_api/svc$3;->this$0:Lio/topvpn/vpn_api/svc;

    invoke-static {v3}, Lio/topvpn/vpn_api/svc;->access$4900(Lio/topvpn/vpn_api/svc;)Lio/topvpn/vpn_api/state;

    move-result-object v3

    sget-object v4, Lio/topvpn/vpn_api/state;->MOBILE_CONNECTED:Lio/topvpn/vpn_api/state$key;

    invoke-virtual {v3, v4}, Lio/topvpn/vpn_api/state;->get_bool(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 791
    iget-object v2, p0, Lio/topvpn/vpn_api/svc$3;->this$0:Lio/topvpn/vpn_api/svc;

    invoke-static {v2}, Lio/topvpn/vpn_api/svc;->access$4900(Lio/topvpn/vpn_api/svc;)Lio/topvpn/vpn_api/state;

    move-result-object v2

    sget-object v3, Lio/topvpn/vpn_api/state;->MOBILE_CONNECTED:Lio/topvpn/vpn_api/state$key;

    invoke-virtual {v2, v3}, Lio/topvpn/vpn_api/state;->get_bool(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lio/topvpn/vpn_api/svc$3;->this$0:Lio/topvpn/vpn_api/svc;

    .line 792
    invoke-static {v2}, Lio/topvpn/vpn_api/svc;->access$4900(Lio/topvpn/vpn_api/svc;)Lio/topvpn/vpn_api/state;

    move-result-object v2

    sget-object v3, Lio/topvpn/vpn_api/state;->WIFI_CONNECTED:Lio/topvpn/vpn_api/state$key;

    invoke-virtual {v2, v3}, Lio/topvpn/vpn_api/state;->get_bool(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 794
    iget-object v2, p0, Lio/topvpn/vpn_api/svc$3;->this$0:Lio/topvpn/vpn_api/svc;

    invoke-static {v2}, Lio/topvpn/vpn_api/svc;->access$1000(Lio/topvpn/vpn_api/svc;)Lio/topvpn/vpn_api/conf;

    move-result-object v2

    sget-object v3, Lio/topvpn/vpn_api/conf;->DISABLE_JAVA_3G_MONITOR:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {v2, v3}, Lio/topvpn/vpn_api/conf;->get_bool(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 795
    iget-object v2, p0, Lio/topvpn/vpn_api/svc$3;->this$0:Lio/topvpn/vpn_api/svc;

    invoke-static {v2}, Lio/topvpn/vpn_api/svc;->access$5000(Lio/topvpn/vpn_api/svc;)V

    .line 796
    :cond_7
    iget-object v2, p0, Lio/topvpn/vpn_api/svc$3;->this$0:Lio/topvpn/vpn_api/svc;

    invoke-static {v2}, Lio/topvpn/vpn_api/svc;->access$5100(Lio/topvpn/vpn_api/svc;)V

    goto/16 :goto_0

    .line 799
    :cond_8
    sget-object v3, Lio/topvpn/vpn_api/state;->BATTERY_LEVEL:Lio/topvpn/vpn_api/state$key;

    if-ne p1, v3, :cond_9

    .line 800
    const-string v2, "battery_level"

    iget-object v3, p0, Lio/topvpn/vpn_api/svc$3;->this$0:Lio/topvpn/vpn_api/svc;

    invoke-static {v3}, Lio/topvpn/vpn_api/svc;->access$4900(Lio/topvpn/vpn_api/svc;)Lio/topvpn/vpn_api/state;

    move-result-object v3

    sget-object v4, Lio/topvpn/vpn_api/state;->BATTERY_LEVEL:Lio/topvpn/vpn_api/state$key;

    invoke-virtual {v3, v4}, Lio/topvpn/vpn_api/state;->get_float(Ljava/lang/Object;)F

    move-result v3

    float-to-double v4, v3

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    goto/16 :goto_0

    .line 801
    :cond_9
    sget-object v3, Lio/topvpn/vpn_api/state;->ON_CALL:Lio/topvpn/vpn_api/state$key;

    if-eq p1, v3, :cond_1

    .line 802
    sget-object v3, Lio/topvpn/vpn_api/state;->MOBILE_ENABLE:Lio/topvpn/vpn_api/state$key;

    if-ne p1, v3, :cond_a

    .line 803
    iget-object v2, p0, Lio/topvpn/vpn_api/svc$3;->this$0:Lio/topvpn/vpn_api/svc;

    invoke-static {v2}, Lio/topvpn/vpn_api/svc;->access$1400(Lio/topvpn/vpn_api/svc;)V

    goto/16 :goto_0

    :cond_a
    move v1, v2

    .line 805
    goto/16 :goto_0

    .line 808
    :cond_b
    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto/16 :goto_1
.end method

.method public bridge synthetic on_changed(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 774
    check-cast p1, Lio/topvpn/vpn_api/state$key;

    invoke-virtual {p0, p1}, Lio/topvpn/vpn_api/svc$3;->on_changed(Lio/topvpn/vpn_api/state$key;)V

    return-void
.end method
