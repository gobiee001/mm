.class public final Lcom/inmobi/ads/ba;
.super Lcom/inmobi/ads/NativeAsset;
.source "NativeWebViewAsset.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/ads/ba$a;
    }
.end annotation


# instance fields
.field A:Z

.field B:Z

.field z:Lcom/inmobi/ads/ba$a;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/ads/af;Ljava/lang/String;Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 26
    sget-object v0, Lcom/inmobi/ads/NativeAsset$AssetType;->ASSET_TYPE_WEBVIEW:Lcom/inmobi/ads/NativeAsset$AssetType;

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/inmobi/ads/NativeAsset;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/ads/NativeAsset$AssetType;Lcom/inmobi/ads/af;)V

    .line 13
    iput-boolean v1, p0, Lcom/inmobi/ads/ba;->A:Z

    .line 14
    iput-boolean v1, p0, Lcom/inmobi/ads/ba;->B:Z

    .line 27
    iput-object p4, p0, Lcom/inmobi/ads/ba;->e:Ljava/lang/Object;

    .line 28
    iput-boolean p5, p0, Lcom/inmobi/ads/ba;->B:Z

    .line 29
    return-void
.end method

.method static f(Ljava/lang/String;)Lcom/inmobi/ads/ba$a;
    .locals 3

    .prologue
    .line 52
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 54
    sget-object v0, Lcom/inmobi/ads/ba$a;->e:Lcom/inmobi/ads/ba$a;

    .line 62
    :goto_1
    return-object v0

    .line 52
    :sswitch_0
    const-string v2, "url"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_1
    const-string v2, "html"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_2
    const-string v2, "reference_iframe"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_3
    const-string v2, "reference_html"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    .line 56
    :pswitch_0
    sget-object v0, Lcom/inmobi/ads/ba$a;->b:Lcom/inmobi/ads/ba$a;

    goto :goto_1

    .line 58
    :pswitch_1
    sget-object v0, Lcom/inmobi/ads/ba$a;->a:Lcom/inmobi/ads/ba$a;

    goto :goto_1

    .line 60
    :pswitch_2
    sget-object v0, Lcom/inmobi/ads/ba$a;->c:Lcom/inmobi/ads/ba$a;

    goto :goto_1

    .line 62
    :pswitch_3
    sget-object v0, Lcom/inmobi/ads/ba$a;->d:Lcom/inmobi/ads/ba$a;

    goto :goto_1

    .line 52
    :sswitch_data_0
    .sparse-switch
        -0x7144a7e1 -> :sswitch_3
        -0x31c879e8 -> :sswitch_2
        0x1c56f -> :sswitch_0
        0x3107ab -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
