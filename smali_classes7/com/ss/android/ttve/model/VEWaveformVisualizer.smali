.class public Lcom/ss/android/ttve/model/VEWaveformVisualizer;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static Default:I = 0x0

.field public static MultiChannelMax:I = 0x4

.field public static MultiChannelMean:I = 0x2

.field public static SampleMax:I = 0x0

.field public static SampleMean:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    or-int/lit8 v0, v0, 0x0

    sput v0, Lcom/ss/android/ttve/model/VEWaveformVisualizer;->Default:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
