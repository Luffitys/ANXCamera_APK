.class public final Landroid/hardware/tv/tuner/V1_0/Constants$DemuxScHevcIndex;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/tv/tuner/V1_0/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DemuxScHevcIndex"
.end annotation


# static fields
.field public static final AUD:I = 0x2

.field public static final SLICE_BLA_N_LP:I = 0x10

.field public static final SLICE_BLA_W_RADL:I = 0x8

.field public static final SLICE_CE_BLA_W_LP:I = 0x4

.field public static final SLICE_IDR_N_LP:I = 0x40

.field public static final SLICE_IDR_W_RADL:I = 0x20

.field public static final SLICE_TRAIL_CRA:I = 0x80

.field public static final SPS:I = 0x1


# instance fields
.field final synthetic this$0:Landroid/hardware/tv/tuner/V1_0/Constants;


# direct methods
.method public constructor <init>(Landroid/hardware/tv/tuner/V1_0/Constants;)V
    .registers 2

    iput-object p1, p0, Landroid/hardware/tv/tuner/V1_0/Constants$DemuxScHevcIndex;->this$0:Landroid/hardware/tv/tuner/V1_0/Constants;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
