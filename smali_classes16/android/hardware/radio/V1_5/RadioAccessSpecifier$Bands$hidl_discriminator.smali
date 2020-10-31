.class public final Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands$hidl_discriminator;
.super Ljava/lang/Object;
.source "RadioAccessSpecifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/V1_5/RadioAccessSpecifier$Bands;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "hidl_discriminator"
.end annotation


# static fields
.field public static final eutranBands:B = 0x2t

.field public static final geranBands:B = 0x0t

.field public static final ngranBands:B = 0x3t

.field public static final utranBands:B = 0x1t


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getName(B)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_19

    const/4 v0, 0x1

    if-eq p0, v0, :cond_15

    const/4 v0, 0x2

    if-eq p0, v0, :cond_12

    const/4 v0, 0x3

    if-eq p0, v0, :cond_e

    const-string v0, "Unknown"

    return-object v0

    :cond_e
    const-string/jumbo v0, "ngranBands"

    return-object v0

    :cond_12
    const-string v0, "eutranBands"

    return-object v0

    :cond_15
    const-string/jumbo v0, "utranBands"

    return-object v0

    :cond_19
    const-string v0, "geranBands"

    return-object v0
.end method
