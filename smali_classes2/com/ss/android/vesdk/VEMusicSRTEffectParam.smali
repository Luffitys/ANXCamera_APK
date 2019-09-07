.class public Lcom/ss/android/vesdk/VEMusicSRTEffectParam;
.super Ljava/lang/Object;
.source "VEMusicSRTEffectParam.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/vesdk/VEMusicSRTEffectParam$SRTData;,
        Lcom/ss/android/vesdk/VEMusicSRTEffectParam$GetMusicCurrentPorgressInvoker;
    }
.end annotation


# instance fields
.field private mEffectResourcePath:Ljava/lang/String;

.field private mFontFaceIndex:I

.field private mFontTTFPath:Ljava/lang/String;

.field public mGetMusicProgressInvoker:Lcom/ss/android/vesdk/VEMusicSRTEffectParam$GetMusicCurrentPorgressInvoker;

.field private mParamUpdated:Z

.field private mSrtData:[Lcom/ss/android/vesdk/VEMusicSRTEffectParam$SRTData;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ss/android/vesdk/VEMusicSRTEffectParam;->mParamUpdated:Z

    return-void
.end method

.method public constructor <init>([Lcom/ss/android/vesdk/VEMusicSRTEffectParam$SRTData;Ljava/lang/String;Ljava/lang/String;ILcom/ss/android/vesdk/VEMusicSRTEffectParam$GetMusicCurrentPorgressInvoker;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ss/android/vesdk/VEMusicSRTEffectParam;->mParamUpdated:Z

    iput-object p1, p0, Lcom/ss/android/vesdk/VEMusicSRTEffectParam;->mSrtData:[Lcom/ss/android/vesdk/VEMusicSRTEffectParam$SRTData;

    iput-object p3, p0, Lcom/ss/android/vesdk/VEMusicSRTEffectParam;->mFontTTFPath:Ljava/lang/String;

    iput-object p2, p0, Lcom/ss/android/vesdk/VEMusicSRTEffectParam;->mEffectResourcePath:Ljava/lang/String;

    iput p4, p0, Lcom/ss/android/vesdk/VEMusicSRTEffectParam;->mFontFaceIndex:I

    iput-object p5, p0, Lcom/ss/android/vesdk/VEMusicSRTEffectParam;->mGetMusicProgressInvoker:Lcom/ss/android/vesdk/VEMusicSRTEffectParam$GetMusicCurrentPorgressInvoker;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/ss/android/vesdk/VEMusicSRTEffectParam;->mParamUpdated:Z

    return-void
.end method

.method private convertDataToUnicode32(Lcom/ss/android/vesdk/VEMusicSRTEffectParam$SRTData;)[I
    .locals 4

    iget-object p0, p1, Lcom/ss/android/vesdk/VEMusicSRTEffectParam$SRTData;->mData:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->codePointCount(II)I

    move-result p0

    add-int/lit8 v0, p0, 0x3

    new-array v0, v0, [I

    iget v2, p1, Lcom/ss/android/vesdk/VEMusicSRTEffectParam$SRTData;->mIndex:I

    aput v2, v0, v1

    iget v2, p1, Lcom/ss/android/vesdk/VEMusicSRTEffectParam$SRTData;->mStartTime:I

    const/4 v3, 0x1

    aput v2, v0, v3

    iget v2, p1, Lcom/ss/android/vesdk/VEMusicSRTEffectParam$SRTData;->mEndTime:I

    const/4 v3, 0x2

    aput v2, v0, v3

    :goto_0
    if-ge v1, p0, :cond_0

    add-int/lit8 v2, v1, 0x3

    iget-object v3, p1, Lcom/ss/android/vesdk/VEMusicSRTEffectParam$SRTData;->mData:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    aput v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getParamUpdated()Z
    .locals 2

    iget-boolean v0, p0, Lcom/ss/android/vesdk/VEMusicSRTEffectParam;->mParamUpdated:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/ss/android/vesdk/VEMusicSRTEffectParam;->mParamUpdated:Z

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method


# virtual methods
.method public getEffectResPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/vesdk/VEMusicSRTEffectParam;->mEffectResourcePath:Ljava/lang/String;

    return-object p0
.end method

.method public getFontFaceIndex()I
    .locals 0

    iget p0, p0, Lcom/ss/android/vesdk/VEMusicSRTEffectParam;->mFontFaceIndex:I

    return p0
.end method

.method public getFontTTFPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/vesdk/VEMusicSRTEffectParam;->mFontTTFPath:Ljava/lang/String;

    return-object p0
.end method

.method public getMusicProgress()F
    .locals 0

    iget-object p0, p0, Lcom/ss/android/vesdk/VEMusicSRTEffectParam;->mGetMusicProgressInvoker:Lcom/ss/android/vesdk/VEMusicSRTEffectParam$GetMusicCurrentPorgressInvoker;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/ss/android/vesdk/VEMusicSRTEffectParam$GetMusicCurrentPorgressInvoker;->getMusicCurrentProgress()F

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getSrtData()[[I
    .locals 4

    iget-object v0, p0, Lcom/ss/android/vesdk/VEMusicSRTEffectParam;->mSrtData:[Lcom/ss/android/vesdk/VEMusicSRTEffectParam$SRTData;

    array-length v0, v0

    new-array v0, v0, [[I

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/ss/android/vesdk/VEMusicSRTEffectParam;->mSrtData:[Lcom/ss/android/vesdk/VEMusicSRTEffectParam$SRTData;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    aget-object v2, v2, v1

    invoke-direct {p0, v2}, Lcom/ss/android/vesdk/VEMusicSRTEffectParam;->convertDataToUnicode32(Lcom/ss/android/vesdk/VEMusicSRTEffectParam$SRTData;)[I

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public updateEffectResPath([Lcom/ss/android/vesdk/VEMusicSRTEffectParam$SRTData;Ljava/lang/String;Ljava/lang/String;ILcom/ss/android/vesdk/VEMusicSRTEffectParam$GetMusicCurrentPorgressInvoker;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/vesdk/VEMusicSRTEffectParam;->mSrtData:[Lcom/ss/android/vesdk/VEMusicSRTEffectParam$SRTData;

    iput-object p3, p0, Lcom/ss/android/vesdk/VEMusicSRTEffectParam;->mFontTTFPath:Ljava/lang/String;

    iput-object p2, p0, Lcom/ss/android/vesdk/VEMusicSRTEffectParam;->mEffectResourcePath:Ljava/lang/String;

    iput p4, p0, Lcom/ss/android/vesdk/VEMusicSRTEffectParam;->mFontFaceIndex:I

    iput-object p5, p0, Lcom/ss/android/vesdk/VEMusicSRTEffectParam;->mGetMusicProgressInvoker:Lcom/ss/android/vesdk/VEMusicSRTEffectParam$GetMusicCurrentPorgressInvoker;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/ss/android/vesdk/VEMusicSRTEffectParam;->mParamUpdated:Z

    return-void
.end method
