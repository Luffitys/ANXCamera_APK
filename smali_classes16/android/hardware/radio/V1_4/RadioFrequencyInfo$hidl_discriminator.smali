.class public final Landroid/hardware/radio/V1_4/RadioFrequencyInfo$hidl_discriminator;
.super Ljava/lang/Object;
.source "RadioFrequencyInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/V1_4/RadioFrequencyInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "hidl_discriminator"
.end annotation


# static fields
.field public static final channelNumber:B = 0x1t

.field public static final range:B


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
    const-string v0, "channelNumber"

    return-object v0

    :cond_b
    const-string/jumbo v0, "range"

    return-object v0
.end method
