.class public final Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo$hidl_discriminator;
.super Ljava/lang/Object;
.source "BarringInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "hidl_discriminator"
.end annotation


# static fields
.field public static final conditional:B = 0x1t

.field public static final noinit:B


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getName(B)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_b

    const/4 v0, 0x1

    if-eq p0, v0, :cond_8

    const-string v0, "Unknown"

    return-object v0

    :cond_8
    const-string v0, "conditional"

    return-object v0

    :cond_b
    const-string/jumbo v0, "noinit"

    return-object v0
.end method
