.class public Lcom/ss/android/medialib/model/FaceAttributeItem;
.super Ljava/lang/Object;
.source "FaceAttributeItem.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# instance fields
.field category:Ljava/lang/String;

.field label:F

.field score:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCategory()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/medialib/model/FaceAttributeItem;->category:Ljava/lang/String;

    return-object p0
.end method

.method public getLabel()F
    .locals 0

    iget p0, p0, Lcom/ss/android/medialib/model/FaceAttributeItem;->label:F

    return p0
.end method

.method public getScore()F
    .locals 0

    iget p0, p0, Lcom/ss/android/medialib/model/FaceAttributeItem;->score:F

    return p0
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/medialib/model/FaceAttributeItem;->category:Ljava/lang/String;

    return-void
.end method

.method public setLabel(F)V
    .locals 0

    iput p1, p0, Lcom/ss/android/medialib/model/FaceAttributeItem;->label:F

    return-void
.end method

.method public setScore(F)V
    .locals 0

    iput p1, p0, Lcom/ss/android/medialib/model/FaceAttributeItem;->score:F

    return-void
.end method
