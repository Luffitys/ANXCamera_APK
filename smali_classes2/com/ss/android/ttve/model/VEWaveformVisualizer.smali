.class public Lcom/ss/android/ttve/model/VEWaveformVisualizer;
.super Ljava/lang/Object;
.source "VEWaveformVisualizer.java"


# static fields
.field public static Default:I = 0x0

.field public static MultiChannelMax:I = 0x4

.field public static MultiChannelMean:I = 0x2

.field public static SampleMax:I = 0x0

.field public static SampleMean:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Lcom/ss/android/ttve/model/VEWaveformVisualizer;->MultiChannelMean:I

    sget v1, Lcom/ss/android/ttve/model/VEWaveformVisualizer;->SampleMax:I

    or-int/2addr v0, v1

    sput v0, Lcom/ss/android/ttve/model/VEWaveformVisualizer;->Default:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
