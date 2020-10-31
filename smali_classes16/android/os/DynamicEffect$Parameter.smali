.class public Landroid/os/DynamicEffect$Parameter;
.super Ljava/lang/Object;
.source "DynamicEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/DynamicEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Parameter"
.end annotation


# instance fields
.field public mTimings:[F

.field public mValues:[F

.field public type:I


# direct methods
.method public constructor <init>(I[F[F)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/os/DynamicEffect$Parameter;->type:I

    array-length v0, p2

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/os/DynamicEffect$Parameter;->mTimings:[F

    array-length v1, p3

    new-array v1, v1, [F

    iput-object v1, p0, Landroid/os/DynamicEffect$Parameter;->mValues:[F

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Landroid/os/DynamicEffect$Parameter;->mValues:[F

    array-length v1, p3

    invoke-static {p3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    move-object v1, p1

    check-cast v1, Landroid/os/DynamicEffect$Parameter;

    iget v2, p0, Landroid/os/DynamicEffect$Parameter;->type:I

    iget v3, v1, Landroid/os/DynamicEffect$Parameter;->type:I

    if-ne v2, v3, :cond_22

    iget-object v2, p0, Landroid/os/DynamicEffect$Parameter;->mTimings:[F

    iget-object v3, v1, Landroid/os/DynamicEffect$Parameter;->mTimings:[F

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v2

    if-eqz v2, :cond_22

    iget-object v2, p0, Landroid/os/DynamicEffect$Parameter;->mValues:[F

    iget-object v3, v1, Landroid/os/DynamicEffect$Parameter;->mValues:[F

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v2

    if-eqz v2, :cond_22

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    :goto_23
    return v0
.end method
