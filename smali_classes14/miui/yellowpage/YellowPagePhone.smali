.class public Lmiui/yellowpage/YellowPagePhone;
.super Ljava/lang/Object;
.source "YellowPagePhone.java"


# static fields
.field public static final INVALIDE_YID:I = -0x1

.field private static final MASK_SUSPECT:I = 0xf0

.field private static final MASK_T9_SEARCHABLE:I = 0xf

.field public static final TYPE_ANTISPAM:I = 0x2

.field public static final TYPE_MARKED:I = 0x3

.field public static final TYPE_UNKNOWN:I = 0x0

.field public static final TYPE_YELLOW_PAGE:I = 0x1


# instance fields
.field private mAntispamProviderId:I

.field private mCid:I

.field private mCreditImg:Ljava/lang/String;

.field private mFlag:I

.field private mHasCallMenu:Z

.field private mMarkCount:I

.field private mNormalizedNumber:Ljava/lang/String;

.field private mNumber:Ljava/lang/String;

.field private mNumberType:I

.field private mProviderId:I

.field private mRawSlogan:Ljava/lang/String;

.field private mSlogan:Ljava/lang/String;

.field private mT9Rank:J

.field private mTag:Ljava/lang/String;

.field private mTagPinyin:Ljava/lang/String;

.field private mType:I

.field private mVisible:Z

.field private mWordAd:Ljava/lang/String;

.field private mYpId:J

.field private mYpName:Ljava/lang/String;

.field private mYpNamePinyin:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;Ljava/lang/String;)V
    .registers 27

    const/4 v13, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    invoke-direct/range {v0 .. v13}, Lmiui/yellowpage/YellowPagePhone;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;Ljava/lang/String;I)V
    .registers 28

    const/4 v13, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    invoke-direct/range {v0 .. v13}, Lmiui/yellowpage/YellowPagePhone;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;Ljava/lang/String;Z)V

    move/from16 v1, p13

    iput v1, v0, Lmiui/yellowpage/YellowPagePhone;->mCid:I

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;Ljava/lang/String;Z)V
    .registers 15

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lmiui/yellowpage/YellowPagePhone;->mNumberType:I

    iput-object p3, p0, Lmiui/yellowpage/YellowPagePhone;->mYpName:Ljava/lang/String;

    iput-object p4, p0, Lmiui/yellowpage/YellowPagePhone;->mTag:Ljava/lang/String;

    iput-object p5, p0, Lmiui/yellowpage/YellowPagePhone;->mNumber:Ljava/lang/String;

    iput p7, p0, Lmiui/yellowpage/YellowPagePhone;->mType:I

    iput-boolean p10, p0, Lmiui/yellowpage/YellowPagePhone;->mVisible:Z

    iput p9, p0, Lmiui/yellowpage/YellowPagePhone;->mMarkCount:I

    iput-wide p1, p0, Lmiui/yellowpage/YellowPagePhone;->mYpId:J

    iput p8, p0, Lmiui/yellowpage/YellowPagePhone;->mProviderId:I

    iput-object p11, p0, Lmiui/yellowpage/YellowPagePhone;->mYpNamePinyin:Ljava/lang/String;

    iput-object p12, p0, Lmiui/yellowpage/YellowPagePhone;->mTagPinyin:Ljava/lang/String;

    iput-object p6, p0, Lmiui/yellowpage/YellowPagePhone;->mNormalizedNumber:Ljava/lang/String;

    iput-boolean p13, p0, Lmiui/yellowpage/YellowPagePhone;->mHasCallMenu:Z

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;Ljava/lang/String;ZZ)V
    .registers 16

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lmiui/yellowpage/YellowPagePhone;->mNumberType:I

    iput-object p3, p0, Lmiui/yellowpage/YellowPagePhone;->mYpName:Ljava/lang/String;

    iput-object p4, p0, Lmiui/yellowpage/YellowPagePhone;->mTag:Ljava/lang/String;

    iput-object p5, p0, Lmiui/yellowpage/YellowPagePhone;->mNumber:Ljava/lang/String;

    iput p7, p0, Lmiui/yellowpage/YellowPagePhone;->mType:I

    iput-boolean p10, p0, Lmiui/yellowpage/YellowPagePhone;->mVisible:Z

    iput p9, p0, Lmiui/yellowpage/YellowPagePhone;->mMarkCount:I

    iput-wide p1, p0, Lmiui/yellowpage/YellowPagePhone;->mYpId:J

    iput p8, p0, Lmiui/yellowpage/YellowPagePhone;->mProviderId:I

    iput-object p11, p0, Lmiui/yellowpage/YellowPagePhone;->mYpNamePinyin:Ljava/lang/String;

    iput-object p12, p0, Lmiui/yellowpage/YellowPagePhone;->mTagPinyin:Ljava/lang/String;

    iput-object p6, p0, Lmiui/yellowpage/YellowPagePhone;->mNormalizedNumber:Ljava/lang/String;

    iput-boolean p14, p0, Lmiui/yellowpage/YellowPagePhone;->mHasCallMenu:Z

    if-eqz p13, :cond_26

    iget v0, p0, Lmiui/yellowpage/YellowPagePhone;->mFlag:I

    or-int/lit16 v0, v0, 0xf0

    iput v0, p0, Lmiui/yellowpage/YellowPagePhone;->mFlag:I

    :cond_26
    return-void
.end method


# virtual methods
.method public getAntispamProviderId()I
    .registers 2

    iget v0, p0, Lmiui/yellowpage/YellowPagePhone;->mAntispamProviderId:I

    return v0
.end method

.method public getCid()I
    .registers 2

    iget v0, p0, Lmiui/yellowpage/YellowPagePhone;->mCid:I

    return v0
.end method

.method public getCreditImg()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/yellowpage/YellowPagePhone;->mCreditImg:Ljava/lang/String;

    return-object v0
.end method

.method public getFlag()I
    .registers 2

    iget v0, p0, Lmiui/yellowpage/YellowPagePhone;->mFlag:I

    return v0
.end method

.method public getMarkedCount()I
    .registers 2

    iget v0, p0, Lmiui/yellowpage/YellowPagePhone;->mMarkCount:I

    return v0
.end method

.method public getNormalizedNumber()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/yellowpage/YellowPagePhone;->mNormalizedNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/yellowpage/YellowPagePhone;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getNumberType()I
    .registers 2

    iget v0, p0, Lmiui/yellowpage/YellowPagePhone;->mNumberType:I

    return v0
.end method

.method public getPhoneType()I
    .registers 2

    iget v0, p0, Lmiui/yellowpage/YellowPagePhone;->mType:I

    return v0
.end method

.method public getProviderId()I
    .registers 2

    iget v0, p0, Lmiui/yellowpage/YellowPagePhone;->mProviderId:I

    return v0
.end method

.method public getProviderName(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    iget v0, p0, Lmiui/yellowpage/YellowPagePhone;->mProviderId:I

    invoke-static {p1, v0}, Lmiui/yellowpage/YellowPageUtils;->getProvider(Landroid/content/Context;I)Lmiui/yellowpage/YellowPageProvider;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/yellowpage/YellowPageProvider;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRawSlogan()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/yellowpage/YellowPagePhone;->mRawSlogan:Ljava/lang/String;

    return-object v0
.end method

.method public getSlogan()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/yellowpage/YellowPagePhone;->mSlogan:Ljava/lang/String;

    return-object v0
.end method

.method public getT9Rank()J
    .registers 3

    iget-wide v0, p0, Lmiui/yellowpage/YellowPagePhone;->mT9Rank:J

    return-wide v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/yellowpage/YellowPagePhone;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public getTagPinyin()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/yellowpage/YellowPagePhone;->mTagPinyin:Ljava/lang/String;

    return-object v0
.end method

.method public getWordAd()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/yellowpage/YellowPagePhone;->mWordAd:Ljava/lang/String;

    return-object v0
.end method

.method public getYellowPageId()J
    .registers 3

    iget-wide v0, p0, Lmiui/yellowpage/YellowPagePhone;->mYpId:J

    return-wide v0
.end method

.method public getYellowPageName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/yellowpage/YellowPagePhone;->mYpName:Ljava/lang/String;

    return-object v0
.end method

.method public getYellowPagePinyin()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/yellowpage/YellowPagePhone;->mYpNamePinyin:Ljava/lang/String;

    return-object v0
.end method

.method public hasCallMenu()Z
    .registers 2

    iget-boolean v0, p0, Lmiui/yellowpage/YellowPagePhone;->mHasCallMenu:Z

    return v0
.end method

.method public isAntispam()Z
    .registers 2

    iget v0, p0, Lmiui/yellowpage/YellowPagePhone;->mCid:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isMarkedSuspect()Z
    .registers 2

    iget v0, p0, Lmiui/yellowpage/YellowPagePhone;->mFlag:I

    and-int/lit16 v0, v0, 0xf0

    if-lez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isProviderMiui()Z
    .registers 2

    iget v0, p0, Lmiui/yellowpage/YellowPagePhone;->mProviderId:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isSuspect(Landroid/content/Context;)Z
    .registers 3

    invoke-virtual {p0}, Lmiui/yellowpage/YellowPagePhone;->isMarkedSuspect()Z

    move-result v0

    return v0
.end method

.method public isT9Searchable()Z
    .registers 2

    iget v0, p0, Lmiui/yellowpage/YellowPagePhone;->mFlag:I

    and-int/lit8 v0, v0, 0xf

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isUnknown()Z
    .registers 2

    iget v0, p0, Lmiui/yellowpage/YellowPagePhone;->mType:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isUserMarked()Z
    .registers 3

    iget v0, p0, Lmiui/yellowpage/YellowPagePhone;->mType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public isVisible()Z
    .registers 2

    iget-boolean v0, p0, Lmiui/yellowpage/YellowPagePhone;->mVisible:Z

    return v0
.end method

.method public isYellowPage()Z
    .registers 3

    iget v0, p0, Lmiui/yellowpage/YellowPagePhone;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method public setAntispamProviderId(I)Lmiui/yellowpage/YellowPagePhone;
    .registers 2

    iput p1, p0, Lmiui/yellowpage/YellowPagePhone;->mAntispamProviderId:I

    return-object p0
.end method

.method public setCid(I)Lmiui/yellowpage/YellowPagePhone;
    .registers 2

    iput p1, p0, Lmiui/yellowpage/YellowPagePhone;->mCid:I

    return-object p0
.end method

.method public setCreditImg(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lmiui/yellowpage/YellowPagePhone;->mCreditImg:Ljava/lang/String;

    return-void
.end method

.method public setFlag(I)Lmiui/yellowpage/YellowPagePhone;
    .registers 2

    iput p1, p0, Lmiui/yellowpage/YellowPagePhone;->mFlag:I

    return-object p0
.end method

.method public setNumberType(I)V
    .registers 2

    iput p1, p0, Lmiui/yellowpage/YellowPagePhone;->mNumberType:I

    return-void
.end method

.method public setRawSlogan(Ljava/lang/String;)Lmiui/yellowpage/YellowPagePhone;
    .registers 5

    iput-object p1, p0, Lmiui/yellowpage/YellowPagePhone;->mRawSlogan:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_34

    iget-object v0, p0, Lmiui/yellowpage/YellowPagePhone;->mRawSlogan:Ljava/lang/String;

    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_30

    iget-object v1, p0, Lmiui/yellowpage/YellowPagePhone;->mRawSlogan:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_30

    iget-object v1, p0, Lmiui/yellowpage/YellowPagePhone;->mRawSlogan:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiui/yellowpage/YellowPagePhone;->mSlogan:Ljava/lang/String;

    iget-object v1, p0, Lmiui/yellowpage/YellowPagePhone;->mRawSlogan:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiui/yellowpage/YellowPagePhone;->mWordAd:Ljava/lang/String;

    goto :goto_34

    :cond_30
    iget-object v1, p0, Lmiui/yellowpage/YellowPagePhone;->mRawSlogan:Ljava/lang/String;

    iput-object v1, p0, Lmiui/yellowpage/YellowPagePhone;->mSlogan:Ljava/lang/String;

    :cond_34
    :goto_34
    return-object p0
.end method

.method public setT9Rank(J)Lmiui/yellowpage/YellowPagePhone;
    .registers 3

    iput-wide p1, p0, Lmiui/yellowpage/YellowPagePhone;->mT9Rank:J

    return-object p0
.end method
