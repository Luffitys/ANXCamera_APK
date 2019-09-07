.class public Lcom/ss/android/medialib/model/TdPoint;
.super Ljava/lang/Object;
.source "TdPoint.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# instance fields
.field x:F

.field y:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getX()F
    .locals 0

    iget p0, p0, Lcom/ss/android/medialib/model/TdPoint;->x:F

    return p0
.end method

.method public getY()F
    .locals 0

    iget p0, p0, Lcom/ss/android/medialib/model/TdPoint;->y:F

    return p0
.end method

.method public setX(F)V
    .locals 0

    iput p1, p0, Lcom/ss/android/medialib/model/TdPoint;->x:F

    return-void
.end method

.method public setY(F)V
    .locals 0

    iput p1, p0, Lcom/ss/android/medialib/model/TdPoint;->y:F

    return-void
.end method
