.class public Landroid/hardware/miuiface/MiuiFaceFactory;
.super Ljava/lang/Object;
.source "MiuiFaceFactory.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "MiuiFaceFactory"

.field public static final TYPE_2D:I = 0x1

.field public static final TYPE_3D:I = 0x2

.field public static final TYPE_DEFAULT:I

.field public static sCurrentAuthType:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput v0, Landroid/hardware/miuiface/MiuiFaceFactory;->sCurrentAuthType:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrentAuthType(Landroid/content/Context;)I
    .registers 3

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string/jumbo v1, "ursa"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1d

    invoke-static {p0}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->getInstance(Landroid/content/Context;)Landroid/hardware/miuiface/IMiuiFaceManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/hardware/miuiface/IMiuiFaceManager;->hasEnrolledFaces()I

    move-result v0

    if-eqz v0, :cond_19

    sput v1, Landroid/hardware/miuiface/MiuiFaceFactory;->sCurrentAuthType:I

    goto :goto_1f

    :cond_19
    const/4 v0, 0x2

    sput v0, Landroid/hardware/miuiface/MiuiFaceFactory;->sCurrentAuthType:I

    goto :goto_1f

    :cond_1d
    sput v1, Landroid/hardware/miuiface/MiuiFaceFactory;->sCurrentAuthType:I

    :goto_1f
    sget v0, Landroid/hardware/miuiface/MiuiFaceFactory;->sCurrentAuthType:I

    return v0
.end method

.method public static getFaceManager(Landroid/content/Context;I)Landroid/hardware/miuiface/IMiuiFaceManager;
    .registers 4

    if-eqz p1, :cond_5

    sput p1, Landroid/hardware/miuiface/MiuiFaceFactory;->sCurrentAuthType:I

    goto :goto_b

    :cond_5
    invoke-static {p0}, Landroid/hardware/miuiface/MiuiFaceFactory;->getCurrentAuthType(Landroid/content/Context;)I

    move-result v0

    sput v0, Landroid/hardware/miuiface/MiuiFaceFactory;->sCurrentAuthType:I

    :goto_b
    sget v0, Landroid/hardware/miuiface/MiuiFaceFactory;->sCurrentAuthType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_15

    invoke-static {p0}, Landroid/hardware/miuiface/Miui3DFaceManagerImpl;->getInstance(Landroid/content/Context;)Landroid/hardware/miuiface/IMiuiFaceManager;

    move-result-object v0

    return-object v0

    :cond_15
    invoke-static {p0}, Landroid/hardware/miuiface/MiuiFaceManagerImpl;->getInstance(Landroid/content/Context;)Landroid/hardware/miuiface/IMiuiFaceManager;

    move-result-object v0

    return-object v0
.end method
