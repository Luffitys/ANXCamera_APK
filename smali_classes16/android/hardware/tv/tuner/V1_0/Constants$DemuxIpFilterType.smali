.class public final Landroid/hardware/tv/tuner/V1_0/Constants$DemuxIpFilterType;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/tv/tuner/V1_0/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DemuxIpFilterType"
.end annotation


# static fields
.field public static final IP:I = 0x4

.field public static final IP_PAYLOAD:I = 0x3

.field public static final NTP:I = 0x2

.field public static final PAYLOAD_THROUGH:I = 0x5

.field public static final SECTION:I = 0x1

.field public static final UNDEFINED:I


# instance fields
.field final synthetic this$0:Landroid/hardware/tv/tuner/V1_0/Constants;


# direct methods
.method public constructor <init>(Landroid/hardware/tv/tuner/V1_0/Constants;)V
    .registers 2

    iput-object p1, p0, Landroid/hardware/tv/tuner/V1_0/Constants$DemuxIpFilterType;->this$0:Landroid/hardware/tv/tuner/V1_0/Constants;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
