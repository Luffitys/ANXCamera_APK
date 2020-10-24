.class public Lnet/majorkernelpanic/streaming/video/CodecManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "InlinedApi"
    }
.end annotation


# static fields
.field public static final SOFTWARE_ENCODERS:[Ljava/lang/String;

.field public static final SUPPORTED_COLOR_FORMATS:[I

.field public static final TAG:Ljava/lang/String; = "CodecManager"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lnet/majorkernelpanic/streaming/video/CodecManager;->SUPPORTED_COLOR_FORMATS:[I

    const-string v0, "OMX.google.h264.encoder"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/majorkernelpanic/streaming/video/CodecManager;->SOFTWARE_ENCODERS:[Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 4
        0x13
        0x15
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
