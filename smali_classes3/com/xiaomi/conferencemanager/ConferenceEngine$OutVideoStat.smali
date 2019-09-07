.class public Lcom/xiaomi/conferencemanager/ConferenceEngine$OutVideoStat;
.super Ljava/lang/Object;
.source "ConferenceEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/conferencemanager/ConferenceEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OutVideoStat"
.end annotation


# instance fields
.field public mBitrate:I

.field public mCaptureFrameRate:I

.field public mCodecName:Ljava/lang/String;

.field public mDistinctNacksRcvd:I

.field public mDistinctPacketsRetransmitted:I

.field public mEncodeFrameRate:I

.field public mHeight:I

.field public mIFramesSent:I

.field public mNacksRcvd:I

.field public mPayloadType:B

.field public mRTT:I

.field public mSendBandwidth:I

.field public mSendBitRateApp:I

.field public mSendBitRateAudio:I

.field public mSendBitRateTotal:I

.field public mSendBitRateVideo:I

.field public mWidth:I


# direct methods
.method public constructor <init>(Ljava/lang/String;BIIIIIIIIIIIIIII)V
    .locals 2

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/xiaomi/conferencemanager/ConferenceEngine$OutVideoStat;->mCodecName:Ljava/lang/String;

    move v1, p2

    iput-byte v1, v0, Lcom/xiaomi/conferencemanager/ConferenceEngine$OutVideoStat;->mPayloadType:B

    move v1, p3

    iput v1, v0, Lcom/xiaomi/conferencemanager/ConferenceEngine$OutVideoStat;->mBitrate:I

    move v1, p4

    iput v1, v0, Lcom/xiaomi/conferencemanager/ConferenceEngine$OutVideoStat;->mCaptureFrameRate:I

    move v1, p5

    iput v1, v0, Lcom/xiaomi/conferencemanager/ConferenceEngine$OutVideoStat;->mEncodeFrameRate:I

    move v1, p6

    iput v1, v0, Lcom/xiaomi/conferencemanager/ConferenceEngine$OutVideoStat;->mIFramesSent:I

    move v1, p7

    iput v1, v0, Lcom/xiaomi/conferencemanager/ConferenceEngine$OutVideoStat;->mWidth:I

    move v1, p8

    iput v1, v0, Lcom/xiaomi/conferencemanager/ConferenceEngine$OutVideoStat;->mHeight:I

    move v1, p9

    iput v1, v0, Lcom/xiaomi/conferencemanager/ConferenceEngine$OutVideoStat;->mRTT:I

    move v1, p10

    iput v1, v0, Lcom/xiaomi/conferencemanager/ConferenceEngine$OutVideoStat;->mNacksRcvd:I

    move v1, p11

    iput v1, v0, Lcom/xiaomi/conferencemanager/ConferenceEngine$OutVideoStat;->mDistinctNacksRcvd:I

    move v1, p12

    iput v1, v0, Lcom/xiaomi/conferencemanager/ConferenceEngine$OutVideoStat;->mDistinctPacketsRetransmitted:I

    move v1, p13

    iput v1, v0, Lcom/xiaomi/conferencemanager/ConferenceEngine$OutVideoStat;->mSendBitRateVideo:I

    move/from16 v1, p14

    iput v1, v0, Lcom/xiaomi/conferencemanager/ConferenceEngine$OutVideoStat;->mSendBitRateAudio:I

    move/from16 v1, p15

    iput v1, v0, Lcom/xiaomi/conferencemanager/ConferenceEngine$OutVideoStat;->mSendBitRateApp:I

    move/from16 v1, p16

    iput v1, v0, Lcom/xiaomi/conferencemanager/ConferenceEngine$OutVideoStat;->mSendBitRateTotal:I

    move/from16 v1, p17

    iput v1, v0, Lcom/xiaomi/conferencemanager/ConferenceEngine$OutVideoStat;->mSendBandwidth:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\nVideo Send{\nmBitrate = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine$OutVideoStat;->mBitrate:I

    div-int/lit16 v1, v1, 0x1f40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nmCaptureFrameRate = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine$OutVideoStat;->mCaptureFrameRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nmEncodeFrameRate = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine$OutVideoStat;->mEncodeFrameRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nmIFramesSent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine$OutVideoStat;->mIFramesSent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nmWidth = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine$OutVideoStat;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mHeight = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine$OutVideoStat;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nmRTT = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine$OutVideoStat;->mRTT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mNacksRcvd = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine$OutVideoStat;->mNacksRcvd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nmDistinctNacksRcvd = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine$OutVideoStat;->mDistinctNacksRcvd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nPacketsRetransmitted = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine$OutVideoStat;->mDistinctPacketsRetransmitted:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nmSendBandwidth = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine$OutVideoStat;->mSendBandwidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nmSendBitRateVideo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine$OutVideoStat;->mSendBitRateVideo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nmSendBitRateAudio = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine$OutVideoStat;->mSendBitRateAudio:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nmSendBitRateTotal = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine$OutVideoStat;->mSendBitRateTotal:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
