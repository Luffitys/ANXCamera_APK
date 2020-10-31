.class public final Landroid/hardware/tv/tuner/V1_0/Constants$FrontendStatusType;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/tv/tuner/V1_0/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "FrontendStatusType"
.end annotation


# static fields
.field public static final AGC:I = 0xe

.field public static final ATSC3_PLP_INFO:I = 0x15

.field public static final BER:I = 0x2

.field public static final DEMOD_LOCK:I = 0x0

.field public static final EWBS:I = 0xd

.field public static final FEC:I = 0x8

.field public static final FREQ_OFFSET:I = 0x12

.field public static final HIERARCHY:I = 0x13

.field public static final LAYER_ERROR:I = 0x10

.field public static final LNA:I = 0xf

.field public static final LNB_VOLTAGE:I = 0xb

.field public static final MER:I = 0x11

.field public static final MODULATION:I = 0x9

.field public static final PER:I = 0x3

.field public static final PLP_ID:I = 0xc

.field public static final PRE_BER:I = 0x4

.field public static final RF_LOCK:I = 0x14

.field public static final SIGNAL_QUALITY:I = 0x5

.field public static final SIGNAL_STRENGTH:I = 0x6

.field public static final SNR:I = 0x1

.field public static final SPECTRAL:I = 0xa

.field public static final SYMBOL_RATE:I = 0x7


# instance fields
.field final synthetic this$0:Landroid/hardware/tv/tuner/V1_0/Constants;


# direct methods
.method public constructor <init>(Landroid/hardware/tv/tuner/V1_0/Constants;)V
    .registers 2

    iput-object p1, p0, Landroid/hardware/tv/tuner/V1_0/Constants$FrontendStatusType;->this$0:Landroid/hardware/tv/tuner/V1_0/Constants;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
