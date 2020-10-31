.class public final Landroid/hardware/tv/tuner/V1_0/Constants$DemuxTsIndex;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/tv/tuner/V1_0/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DemuxTsIndex"
.end annotation


# static fields
.field public static final ADAPTATION_EXTENSION_FLAG:I = 0x1000

.field public static final CHANGE_TO_EVEN_SCRAMBLED:I = 0x8

.field public static final CHANGE_TO_NOT_SCRAMBLED:I = 0x4

.field public static final CHANGE_TO_ODD_SCRAMBLED:I = 0x10

.field public static final DISCONTINUITY_INDICATOR:I = 0x20

.field public static final FIRST_PACKET:I = 0x1

.field public static final OPCR_FLAG:I = 0x200

.field public static final PAYLOAD_UNIT_START_INDICATOR:I = 0x2

.field public static final PCR_FLAG:I = 0x100

.field public static final PRIORITY_INDICATOR:I = 0x80

.field public static final PRIVATE_DATA:I = 0x800

.field public static final RANDOM_ACCESS_INDICATOR:I = 0x40

.field public static final SPLICING_POINT_FLAG:I = 0x400


# instance fields
.field final synthetic this$0:Landroid/hardware/tv/tuner/V1_0/Constants;


# direct methods
.method public constructor <init>(Landroid/hardware/tv/tuner/V1_0/Constants;)V
    .registers 2

    iput-object p1, p0, Landroid/hardware/tv/tuner/V1_0/Constants$DemuxTsIndex;->this$0:Landroid/hardware/tv/tuner/V1_0/Constants;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
