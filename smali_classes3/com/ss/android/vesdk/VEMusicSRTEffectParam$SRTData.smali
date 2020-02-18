.class public Lcom/ss/android/vesdk/VEMusicSRTEffectParam$SRTData;
.super Ljava/lang/Object;
.source "VEMusicSRTEffectParam.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/VEMusicSRTEffectParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SRTData"
.end annotation


# instance fields
.field public mData:Ljava/lang/String;

.field public mEndTime:I

.field public mIndex:I

.field public mStartTime:I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ss/android/vesdk/VEMusicSRTEffectParam$SRTData;->mData:Ljava/lang/String;

    iput p2, p0, Lcom/ss/android/vesdk/VEMusicSRTEffectParam$SRTData;->mStartTime:I

    iput p3, p0, Lcom/ss/android/vesdk/VEMusicSRTEffectParam$SRTData;->mEndTime:I

    iput p4, p0, Lcom/ss/android/vesdk/VEMusicSRTEffectParam$SRTData;->mIndex:I

    return-void
.end method
