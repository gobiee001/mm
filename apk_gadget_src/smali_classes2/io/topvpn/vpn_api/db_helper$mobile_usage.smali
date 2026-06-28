.class public Lio/topvpn/vpn_api/db_helper$mobile_usage;
.super Ljava/lang/Object;
.source "db_helper.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/topvpn/vpn_api/db_helper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "mobile_usage"
.end annotation


# static fields
.field public static final APP_BW:Ljava/lang/String; = "app_bw"

.field public static final DATE:Ljava/lang/String; = "date"

.field public static final DEVICE_BW_SINCE_BOOT:Ljava/lang/String; = "device_bw_since_boot"

.field public static final DEVICE_DAILY_BW:Ljava/lang/String; = "device_daily_bw"

.field private static final SQL_CREATE:Ljava/lang/String; = "CREATE TABLE mobile_usage (_id INTEGER PRIMARY KEY,date INTEGER,app_bw INTEGER,device_bw_since_boot INTEGER,device_daily_bw INTEGER)"

.field public static final TABLE_NAME:Ljava/lang/String; = "mobile_usage"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
