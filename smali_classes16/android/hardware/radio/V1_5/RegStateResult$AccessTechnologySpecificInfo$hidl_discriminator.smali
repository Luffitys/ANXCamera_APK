.class public final Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$hidl_discriminator;
.super Ljava/lang/Object;
.source "RegStateResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "hidl_discriminator"
.end annotation


# static fields
.field public static final cdmaInfo:B = 0x1t

.field public static final eutranInfo:B = 0x2t

.field public static final noinit:B


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getName(B)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_11

    const/4 v0, 0x1

    if-eq p0, v0, :cond_e

    const/4 v0, 0x2

    if-eq p0, v0, :cond_b

    const-string v0, "Unknown"

    return-object v0

    :cond_b
    const-string v0, "eutranInfo"

    return-object v0

    :cond_e
    const-string v0, "cdmaInfo"

    return-object v0

    :cond_11
    const-string/jumbo v0, "noinit"

    return-object v0
.end method
