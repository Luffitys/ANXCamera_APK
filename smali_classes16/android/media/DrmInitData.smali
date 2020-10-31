.class public abstract Landroid/media/DrmInitData;
.super Ljava/lang/Object;
.source "DrmInitData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/DrmInitData$SchemeInitData;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract get(Ljava/util/UUID;)Landroid/media/DrmInitData$SchemeInitData;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public getSchemeInitDataAt(I)Landroid/media/DrmInitData$SchemeInitData;
    .registers 3

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public getSchemeInitDataCount()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
