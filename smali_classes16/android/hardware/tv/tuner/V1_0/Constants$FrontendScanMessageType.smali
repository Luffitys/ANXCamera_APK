.class public final Landroid/hardware/tv/tuner/V1_0/Constants$FrontendScanMessageType;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/tv/tuner/V1_0/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "FrontendScanMessageType"
.end annotation


# static fields
.field public static final ANALOG_TYPE:I = 0x6

.field public static final ATSC3_PLP_INFO:I = 0xb

.field public static final END:I = 0x1

.field public static final FREQUENCY:I = 0x3

.field public static final GROUP_IDS:I = 0x8

.field public static final HIERARCHY:I = 0x5

.field public static final INPUT_STREAM_IDS:I = 0x9

.field public static final LOCKED:I = 0x0

.field public static final PLP_IDS:I = 0x7

.field public static final PROGRESS_PERCENT:I = 0x2

.field public static final STANDARD:I = 0xa

.field public static final SYMBOL_RATE:I = 0x4


# instance fields
.field final synthetic this$0:Landroid/hardware/tv/tuner/V1_0/Constants;


# direct methods
.method public constructor <init>(Landroid/hardware/tv/tuner/V1_0/Constants;)V
    .registers 2

    iput-object p1, p0, Landroid/hardware/tv/tuner/V1_0/Constants$FrontendScanMessageType;->this$0:Landroid/hardware/tv/tuner/V1_0/Constants;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
