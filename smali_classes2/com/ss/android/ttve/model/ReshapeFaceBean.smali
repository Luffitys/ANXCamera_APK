.class public Lcom/ss/android/ttve/model/ReshapeFaceBean;
.super Ljava/lang/Object;
.source "ReshapeFaceBean.java"


# instance fields
.field private mCheekIntensity:F

.field private mEyeIntensity:F

.field private mResPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const-string v1, ""

    invoke-direct {p0, v1, v0, v0}, Lcom/ss/android/ttve/model/ReshapeFaceBean;-><init>(Ljava/lang/String;FF)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ss/android/ttve/model/ReshapeFaceBean;->mResPath:Ljava/lang/String;

    iput p2, p0, Lcom/ss/android/ttve/model/ReshapeFaceBean;->mEyeIntensity:F

    iput p3, p0, Lcom/ss/android/ttve/model/ReshapeFaceBean;->mCheekIntensity:F

    return-void
.end method


# virtual methods
.method public getCheekIntensity()F
    .locals 0

    iget p0, p0, Lcom/ss/android/ttve/model/ReshapeFaceBean;->mCheekIntensity:F

    return p0
.end method

.method public getEyeIntensity()F
    .locals 0

    iget p0, p0, Lcom/ss/android/ttve/model/ReshapeFaceBean;->mEyeIntensity:F

    return p0
.end method

.method public getResPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ttve/model/ReshapeFaceBean;->mResPath:Ljava/lang/String;

    return-object p0
.end method

.method public setCheekIntensity(F)V
    .locals 0

    iput p1, p0, Lcom/ss/android/ttve/model/ReshapeFaceBean;->mCheekIntensity:F

    return-void
.end method

.method public setEyeIntensity(F)V
    .locals 0

    iput p1, p0, Lcom/ss/android/ttve/model/ReshapeFaceBean;->mEyeIntensity:F

    return-void
.end method

.method public setResPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/ttve/model/ReshapeFaceBean;->mResPath:Ljava/lang/String;

    return-void
.end method
