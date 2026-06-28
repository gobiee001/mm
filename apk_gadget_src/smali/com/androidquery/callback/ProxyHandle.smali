.class public abstract Lcom/androidquery/callback/ProxyHandle;
.super Ljava/lang/Object;
.source "ProxyHandle.java"


# virtual methods
.method public abstract applyProxy(Lcom/androidquery/callback/AbstractAjaxCallback;Lorg/apache/http/HttpRequest;Lorg/apache/http/impl/client/DefaultHttpClient;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/androidquery/callback/AbstractAjaxCallback",
            "<**>;",
            "Lorg/apache/http/HttpRequest;",
            "Lorg/apache/http/impl/client/DefaultHttpClient;",
            ")V"
        }
    .end annotation
.end method

.method public abstract makeProxy(Lcom/androidquery/callback/AbstractAjaxCallback;)Ljava/net/Proxy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/androidquery/callback/AbstractAjaxCallback",
            "<**>;)",
            "Ljava/net/Proxy;"
        }
    .end annotation
.end method
