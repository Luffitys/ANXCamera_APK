.class public final Landroid/location/GnssRequest$Builder;
.super Ljava/lang/Object;
.source "GnssRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GnssRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mFullTracking:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/location/GnssRequest;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/location/GnssRequest;->isFullTracking()Z

    move-result v0

    iput-boolean v0, p0, Landroid/location/GnssRequest$Builder;->mFullTracking:Z

    return-void
.end method


# virtual methods
.method public build()Landroid/location/GnssRequest;
    .registers 4

    new-instance v0, Landroid/location/GnssRequest;

    iget-boolean v1, p0, Landroid/location/GnssRequest$Builder;->mFullTracking:Z

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/location/GnssRequest;-><init>(ZLandroid/location/GnssRequest$1;)V

    return-object v0
.end method

.method public setFullTracking(Z)Landroid/location/GnssRequest$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/location/GnssRequest$Builder;->mFullTracking:Z

    return-object p0
.end method
