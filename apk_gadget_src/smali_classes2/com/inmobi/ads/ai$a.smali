.class final Lcom/inmobi/ads/ai$a;
.super Ljava/lang/Object;
.source "NativeDataModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/ai;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/ads/ai$a$a;
    }
.end annotation


# instance fields
.field a:Lorg/json/JSONObject;

.field b:Lcom/inmobi/ads/ai$a$a;

.field c:Lcom/inmobi/ads/NativeAsset;

.field final synthetic d:Lcom/inmobi/ads/ai;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/ai;)V
    .locals 1

    .prologue
    .line 125
    iput-object p1, p0, Lcom/inmobi/ads/ai$a;->d:Lcom/inmobi/ads/ai;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    new-instance v0, Lcom/inmobi/ads/ai$a$a;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/ai$a$a;-><init>(Lcom/inmobi/ads/ai$a;)V

    iput-object v0, p0, Lcom/inmobi/ads/ai$a;->b:Lcom/inmobi/ads/ai$a$a;

    return-void
.end method
