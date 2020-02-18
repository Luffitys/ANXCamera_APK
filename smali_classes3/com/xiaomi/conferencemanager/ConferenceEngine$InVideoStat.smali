.class public Lcom/xiaomi/conferencemanager/ConferenceEngine$InVideoStat;
.super Ljava/lang/Object;
.source "ConferenceEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/conferencemanager/ConferenceEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InVideoStat"
.end annotation


# instance fields
.field public mBitrate:I

.field public mCodecName:Ljava/lang/String;

.field public mDistinctNacksRequested:I

.field public mDistinctNacksTransmitted:I

.field public mFecSuccessRate:I

.field public mFrameRate:I

.field public mFramesDecoded:I

.field public mFramesDisplay:I

.field public mHeight:I

.field public mNacksSent:I

.field public mPacketsLost:I

.field public mPacketsReceived:I

.field public mPayloadType:B

.field public mRTT:I

.field public mRecvBandwidth:I

.field public mRecvBitRateApp:I

.field public mRecvBitRateAudio:I

.field public mRecvBitRateTotal:I

.field public mRecvBitRateVideo:I

.field public mWidth:I


# direct methods
.method public constructor <init>(Ljava/lang/String;BIIIIIIIIIIIIIIIIII)V
    .locals 2

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/xiaomi/conferencemanager/ConferenceEngine$InVideoStat;->mCodecName:Ljava/lang/String;

    move v1, p2

    iput-byte v1, v0, Lcom/xiaomi/conferencemanager/ConferenceEngine$InVideoStat;->mPayloadType:B

    move v1, p3

    iput v1, v0, Lcom/xiaomi/conferencemanager/ConferenceEngine$InVideoStat;->mBitrate:I

    move v1, p4

    iput v1, v0, Lcom/xiaomi/conferencemanager/ConferenceEngine$InVideoStat;->mPacketsReceived:I

    move v1, p5

    iput v1, v0, Lcom/xiaomi/conferencemanager/ConferenceEngine$InVideoStat;->mPacketsLost:I

    move v1, p6

    iput v1, v0, Lcom/xiaomi/conferencemanager/ConferenceEngine$InVideoStat;->mFrameRate:I

    move v1, p7

    iput v1, v0, Lcom/xiaomi/conferencemanager/ConferenceEngine$InVideoStat;->mFramesDecoded:I

    move v1, p8

    iput v1, v0, Lcom/xiaomi/conferencemanager/ConferenceEngine$InVideoStat;->mFramesDisplay:I

    move v1, p9

    iput v1, v0, Lcom/xiaomi/conferencemanager/ConferenceEngine$InVideoStat;->mWidth:I

    move v1, p10

    iput v1, v0, Lcom/xiaomi/conferencemanager/ConferenceEngine$InVideoStat;->mHeight:I

    move v1, p11

    iput v1, v0, Lcom/xiaomi/conferencemanager/ConferenceEngine$InVideoStat;->mRTT:I

    move v1, p12

    iput v1, v0, Lcom/xiaomi/conferencemanager/ConferenceEngine$InVideoStat;->mFecSuccessRate:I

    move v1, p13

    iput v1, v0, Lcom/xiaomi/conferencemanager/ConferenceEngine$InVideoStat;->mNacksSent:I

    move/from16 v1, p14

    iput v1, v0, Lcom/xiaomi/conferencemanager/ConferenceEngine$InVideoStat;->mDistinctNacksRequested:I

    move/from16 v1, p15

    iput v1, v0, Lcom/xiaomi/conferencemanager/ConferenceEngine$InVideoStat;->mDistinctNacksTransmitted:I

    move/from16 v1, p16

    iput v1, v0, Lcom/xiaomi/conferencemanager/ConferenceEngine$InVideoStat;->mRecvBitRateVideo:I

    move/from16 v1, p17

    iput v1, v0, Lcom/xiaomi/conferencemanager/ConferenceEngine$InVideoStat;->mRecvBitRateAudio:I

    move/from16 v1, p18

    iput v1, v0, Lcom/xiaomi/conferencemanager/ConferenceEngine$InVideoStat;->mRecvBitRateApp:I

    move/from16 v1, p19

    iput v1, v0, Lcom/xiaomi/conferencemanager/ConferenceEngine$InVideoStat;->mRecvBitRateTotal:I

    move/from16 v1, p20

    iput v1, v0, Lcom/xiaomi/conferencemanager/ConferenceEngine$InVideoStat;->mRecvBandwidth:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\nVideo Recv{\nmBitrate = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine$InVideoStat;->mBitrate:I

    div-int/lit16 v1, v1, 0x1f40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nmPacketsReceived = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine$InVideoStat;->mPacketsReceived:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nmPacketsLost = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine$InVideoStat;->mPacketsLost:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nmFrameRate = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine$InVideoStat;->mFrameRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nmFramesDecoded = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine$InVideoStat;->mFramesDecoded:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nmFramesDisplay = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine$InVideoStat;->mFramesDisplay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nmWidth = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine$InVideoStat;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mHeight = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine$InVideoStat;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nmFecSuccessRate = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine$InVideoStat;->mFecSuccessRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nmNacksSent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine$InVideoStat;->mNacksSent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nNacksRequested = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine$InVideoStat;->mDistinctNacksRequested:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nNacksTransmitted = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine$InVideoStat;->mDistinctNacksTransmitted:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nmRecBW = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine$InVideoStat;->mRecvBandwidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nmRecVideoBW = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine$InVideoStat;->mRecvBitRateVideo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nmRecAudioBW = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine$InVideoStat;->mRecvBitRateAudio:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nmRecTotalBW = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/xiaomi/conferencemanager/ConferenceEngine$InVideoStat;->mRecvBitRateTotal:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "}\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
