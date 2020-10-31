.class public Landroid/media/tv/tuner/filter/MmtpRecordEvent;
.super Landroid/media/tv/tuner/filter/FilterEvent;
.source "MmtpRecordEvent.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private final mDataLength:J

.field private final mScHevcIndexMask:I


# direct methods
.method private constructor <init>(IJ)V
    .registers 4

    invoke-direct {p0}, Landroid/media/tv/tuner/filter/FilterEvent;-><init>()V

    iput p1, p0, Landroid/media/tv/tuner/filter/MmtpRecordEvent;->mScHevcIndexMask:I

    iput-wide p2, p0, Landroid/media/tv/tuner/filter/MmtpRecordEvent;->mDataLength:J

    return-void
.end method


# virtual methods
.method public getDataLength()J
    .registers 3

    iget-wide v0, p0, Landroid/media/tv/tuner/filter/MmtpRecordEvent;->mDataLength:J

    return-wide v0
.end method

.method public getScHevcIndexMask()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/filter/MmtpRecordEvent;->mScHevcIndexMask:I

    return v0
.end method
