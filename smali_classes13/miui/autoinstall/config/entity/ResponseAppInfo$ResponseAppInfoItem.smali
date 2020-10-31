.class public Lmiui/autoinstall/config/entity/ResponseAppInfo$ResponseAppInfoItem;
.super Ljava/lang/Object;
.source "ResponseAppInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/autoinstall/config/entity/ResponseAppInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResponseAppInfoItem"
.end annotation


# instance fields
.field public apkMd5:Ljava/lang/String;

.field public apkName:Ljava/lang/String;

.field public cdnPath:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public packageVersionCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
