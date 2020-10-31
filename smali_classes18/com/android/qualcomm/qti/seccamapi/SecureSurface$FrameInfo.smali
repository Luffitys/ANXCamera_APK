.class public Lcom/android/qualcomm/qti/seccamapi/SecureSurface$FrameInfo;
.super Ljava/lang/Object;
.source "SecureSurface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/qualcomm/qti/seccamapi/SecureSurface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FrameInfo"
.end annotation


# instance fields
.field public format_:I

.field public frameNumber_:J

.field public height_:I

.field public stride_:I

.field public timeStamp_:J

.field public width_:I


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/qualcomm/qti/seccamapi/SecureSurface$FrameInfo;->frameNumber_:J

    iput-wide v0, p0, Lcom/android/qualcomm/qti/seccamapi/SecureSurface$FrameInfo;->timeStamp_:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/qualcomm/qti/seccamapi/SecureSurface$FrameInfo;->width_:I

    iput v0, p0, Lcom/android/qualcomm/qti/seccamapi/SecureSurface$FrameInfo;->height_:I

    iput v0, p0, Lcom/android/qualcomm/qti/seccamapi/SecureSurface$FrameInfo;->stride_:I

    iput v0, p0, Lcom/android/qualcomm/qti/seccamapi/SecureSurface$FrameInfo;->format_:I

    return-void
.end method
