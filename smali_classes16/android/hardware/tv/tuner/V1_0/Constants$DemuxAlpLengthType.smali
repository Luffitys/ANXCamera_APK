.class public final Landroid/hardware/tv/tuner/V1_0/Constants$DemuxAlpLengthType;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/tv/tuner/V1_0/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DemuxAlpLengthType"
.end annotation


# static fields
.field public static final UNDEFINED:B = 0x0t

.field public static final WITHOUT_ADDITIONAL_HEADER:B = 0x1t

.field public static final WITH_ADDITIONAL_HEADER:B = 0x2t


# instance fields
.field final synthetic this$0:Landroid/hardware/tv/tuner/V1_0/Constants;


# direct methods
.method public constructor <init>(Landroid/hardware/tv/tuner/V1_0/Constants;)V
    .registers 2

    iput-object p1, p0, Landroid/hardware/tv/tuner/V1_0/Constants$DemuxAlpLengthType;->this$0:Landroid/hardware/tv/tuner/V1_0/Constants;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
