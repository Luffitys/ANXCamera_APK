.class public Lcom/ss/android/medialib/model/FaceAttribute;
.super Ljava/lang/Object;
.source "FaceAttribute.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/medialib/model/FaceAttribute$ExpressionType;,
        Lcom/ss/android/medialib/model/FaceAttribute$RacialType;
    }
.end annotation


# static fields
.field public static final EXPRESSION_NUM:I = 0x7

.field public static final RACIAL_NUM:I = 0x4


# instance fields
.field age:F

.field attractive:F

.field boyProb:F

.field expProbs:[F

.field expType:I

.field happyScore:F

.field racialProbs:[F

.field racialType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAge()F
    .locals 0

    iget p0, p0, Lcom/ss/android/medialib/model/FaceAttribute;->age:F

    return p0
.end method

.method public getAttractive()F
    .locals 0

    iget p0, p0, Lcom/ss/android/medialib/model/FaceAttribute;->attractive:F

    return p0
.end method

.method public getBoyProb()F
    .locals 0

    iget p0, p0, Lcom/ss/android/medialib/model/FaceAttribute;->boyProb:F

    return p0
.end method

.method public getExpProbs()[F
    .locals 0

    iget-object p0, p0, Lcom/ss/android/medialib/model/FaceAttribute;->expProbs:[F

    return-object p0
.end method

.method public getExpType()I
    .locals 0

    iget p0, p0, Lcom/ss/android/medialib/model/FaceAttribute;->expType:I

    return p0
.end method

.method public getHappyScore()F
    .locals 0

    iget p0, p0, Lcom/ss/android/medialib/model/FaceAttribute;->happyScore:F

    return p0
.end method

.method public getRacialType()I
    .locals 0

    iget p0, p0, Lcom/ss/android/medialib/model/FaceAttribute;->racialType:I

    return p0
.end method

.method public getRacialrobs()[F
    .locals 0

    iget-object p0, p0, Lcom/ss/android/medialib/model/FaceAttribute;->racialProbs:[F

    return-object p0
.end method

.method public setAge(F)V
    .locals 0

    iput p1, p0, Lcom/ss/android/medialib/model/FaceAttribute;->age:F

    return-void
.end method

.method public setAttractive(F)V
    .locals 0

    iput p1, p0, Lcom/ss/android/medialib/model/FaceAttribute;->attractive:F

    return-void
.end method

.method public setBoyProb(F)V
    .locals 0

    iput p1, p0, Lcom/ss/android/medialib/model/FaceAttribute;->boyProb:F

    return-void
.end method

.method public setExpProbs([F)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/medialib/model/FaceAttribute;->expProbs:[F

    return-void
.end method

.method public setExpType(I)V
    .locals 0

    iput p1, p0, Lcom/ss/android/medialib/model/FaceAttribute;->expType:I

    return-void
.end method

.method public setHappyScore(F)V
    .locals 0

    iput p1, p0, Lcom/ss/android/medialib/model/FaceAttribute;->happyScore:F

    return-void
.end method

.method public setRacialType(I)V
    .locals 0

    iput p1, p0, Lcom/ss/android/medialib/model/FaceAttribute;->racialType:I

    return-void
.end method

.method public setRacialrobs([F)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/medialib/model/FaceAttribute;->racialProbs:[F

    return-void
.end method
