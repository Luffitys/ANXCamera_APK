.class public final Landroid/hardware/tv/tuner/V1_0/Constants$DemuxFilterStatus;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/tv/tuner/V1_0/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DemuxFilterStatus"
.end annotation


# static fields
.field public static final DATA_READY:B = 0x1t

.field public static final HIGH_WATER:B = 0x4t

.field public static final LOW_WATER:B = 0x2t

.field public static final OVERFLOW:B = 0x8t


# instance fields
.field final synthetic this$0:Landroid/hardware/tv/tuner/V1_0/Constants;


# direct methods
.method public constructor <init>(Landroid/hardware/tv/tuner/V1_0/Constants;)V
    .registers 2

    iput-object p1, p0, Landroid/hardware/tv/tuner/V1_0/Constants$DemuxFilterStatus;->this$0:Landroid/hardware/tv/tuner/V1_0/Constants;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
