.class public final Landroid/hardware/tv/tuner/V1_0/Constants$DemuxMmtpFilterType;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/tv/tuner/V1_0/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DemuxMmtpFilterType"
.end annotation


# static fields
.field public static final AUDIO:I = 0x4

.field public static final DOWNLOAD:I = 0x7

.field public static final MMTP:I = 0x3

.field public static final PES:I = 0x2

.field public static final RECORD:I = 0x6

.field public static final SECTION:I = 0x1

.field public static final UNDEFINED:I = 0x0

.field public static final VIDEO:I = 0x5


# instance fields
.field final synthetic this$0:Landroid/hardware/tv/tuner/V1_0/Constants;


# direct methods
.method public constructor <init>(Landroid/hardware/tv/tuner/V1_0/Constants;)V
    .registers 2

    iput-object p1, p0, Landroid/hardware/tv/tuner/V1_0/Constants$DemuxMmtpFilterType;->this$0:Landroid/hardware/tv/tuner/V1_0/Constants;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
