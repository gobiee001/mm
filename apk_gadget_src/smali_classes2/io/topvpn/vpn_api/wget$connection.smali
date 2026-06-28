.class public interface abstract Lio/topvpn/vpn_api/wget$connection;
.super Ljava/lang/Object;
.source "wget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/topvpn/vpn_api/wget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "connection"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/topvpn/vpn_api/wget$connection$state;
    }
.end annotation


# virtual methods
.method public abstract as_json()Lorg/json/JSONObject;
.end method

.method public abstract as_string()Ljava/lang/String;
.end method

.method public abstract get_code()I
.end method

.method public abstract get_duration_ms()J
.end method

.method public abstract get_error()Ljava/io/IOException;
.end method

.method public abstract get_header(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract get_header_fields()Ljava/util/Map;
.end method

.method public abstract get_message()Ljava/lang/String;
.end method

.method public abstract get_state()Lio/topvpn/vpn_api/wget$connection$state;
.end method
