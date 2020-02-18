.class public Lcom/ss/android/ttve/model/EffectRequestBean;
.super Ljava/lang/Object;
.source "EffectRequestBean.java"


# instance fields
.field private mRequestId:I

.field private mResPath:Ljava/lang/String;

.field private mStickerId:I

.field private mUseAmazing:Z

.field private mWithoutFace:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/ss/android/ttve/model/EffectRequestBean;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/ss/android/ttve/model/EffectRequestBean;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/ss/android/ttve/model/EffectRequestBean;-><init>(Ljava/lang/String;ZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ss/android/ttve/model/EffectRequestBean;->mResPath:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/ss/android/ttve/model/EffectRequestBean;->mWithoutFace:Z

    iput-boolean p3, p0, Lcom/ss/android/ttve/model/EffectRequestBean;->mUseAmazing:Z

    return-void
.end method


# virtual methods
.method public getRequestId()I
    .locals 0

    iget p0, p0, Lcom/ss/android/ttve/model/EffectRequestBean;->mRequestId:I

    return p0
.end method

.method public getResPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ttve/model/EffectRequestBean;->mResPath:Ljava/lang/String;

    return-object p0
.end method

.method public getStickerId()I
    .locals 0

    iget p0, p0, Lcom/ss/android/ttve/model/EffectRequestBean;->mStickerId:I

    return p0
.end method

.method public isUseAmazing()Z
    .locals 0

    iget-boolean p0, p0, Lcom/ss/android/ttve/model/EffectRequestBean;->mUseAmazing:Z

    return p0
.end method

.method public isWithoutFace()Z
    .locals 0

    iget-boolean p0, p0, Lcom/ss/android/ttve/model/EffectRequestBean;->mWithoutFace:Z

    return p0
.end method

.method public setRequestId(I)V
    .locals 0

    iput p1, p0, Lcom/ss/android/ttve/model/EffectRequestBean;->mRequestId:I

    return-void
.end method

.method public setResPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/ttve/model/EffectRequestBean;->mResPath:Ljava/lang/String;

    return-void
.end method

.method public setStickerId(I)V
    .locals 0

    iput p1, p0, Lcom/ss/android/ttve/model/EffectRequestBean;->mStickerId:I

    return-void
.end method

.method public setUseAmazing(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ss/android/ttve/model/EffectRequestBean;->mUseAmazing:Z

    return-void
.end method

.method public setWithoutFace(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ss/android/ttve/model/EffectRequestBean;->mWithoutFace:Z

    return-void
.end method
