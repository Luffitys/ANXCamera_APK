.class public abstract Landroid/service/carrier/ApnService;
.super Landroid/app/Service;
.source "ApnService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ApnService"


# instance fields
.field private final mBinder:Landroid/service/carrier/IApnSourceService$Stub;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroid/service/carrier/ApnService$1;

    invoke-direct {v0, p0}, Landroid/service/carrier/ApnService$1;-><init>(Landroid/service/carrier/ApnService;)V

    iput-object v0, p0, Landroid/service/carrier/ApnService;->mBinder:Landroid/service/carrier/IApnSourceService$Stub;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    iget-object v0, p0, Landroid/service/carrier/ApnService;->mBinder:Landroid/service/carrier/IApnSourceService$Stub;

    return-object v0
.end method

.method public abstract onRestoreApns(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end method
