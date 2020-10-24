.class public Lcom/android/camera/fragment/ambilight/AmbilightInfo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private mIconResId:I

.field private mIndex:I

.field private mIsNeedRect:Z

.field private mNameResId:I

.field private mOrder:I

.field private mSceneMode:I

.field private tagUniqueFilterId:I


# direct methods
.method constructor <init>(IIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/camera/fragment/ambilight/AmbilightInfo;->mIndex:I

    iput p4, p0, Lcom/android/camera/fragment/ambilight/AmbilightInfo;->mOrder:I

    iput p2, p0, Lcom/android/camera/fragment/ambilight/AmbilightInfo;->mNameResId:I

    iput p3, p0, Lcom/android/camera/fragment/ambilight/AmbilightInfo;->mIconResId:I

    iput p5, p0, Lcom/android/camera/fragment/ambilight/AmbilightInfo;->mSceneMode:I

    return-void
.end method

.method public static getIndex(I)I
    .locals 1

    const v0, 0xffff

    and-int/2addr p0, v0

    return p0
.end method


# virtual methods
.method public compareTo(Lcom/android/camera/fragment/ambilight/AmbilightInfo;)I
    .locals 0
    .param p1    # Lcom/android/camera/fragment/ambilight/AmbilightInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget p0, p0, Lcom/android/camera/fragment/ambilight/AmbilightInfo;->mOrder:I

    iget p1, p1, Lcom/android/camera/fragment/ambilight/AmbilightInfo;->mOrder:I

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/android/camera/fragment/ambilight/AmbilightInfo;

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/ambilight/AmbilightInfo;->compareTo(Lcom/android/camera/fragment/ambilight/AmbilightInfo;)I

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/android/camera/fragment/ambilight/AmbilightInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget p0, p0, Lcom/android/camera/fragment/ambilight/AmbilightInfo;->mIndex:I

    check-cast p1, Lcom/android/camera/fragment/ambilight/AmbilightInfo;

    iget p1, p1, Lcom/android/camera/fragment/ambilight/AmbilightInfo;->mIndex:I

    if-ne p0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getIconResId()I
    .locals 0

    iget p0, p0, Lcom/android/camera/fragment/ambilight/AmbilightInfo;->mIconResId:I

    return p0
.end method

.method public getId()I
    .locals 0

    iget p0, p0, Lcom/android/camera/fragment/ambilight/AmbilightInfo;->mIndex:I

    return p0
.end method

.method public getNameResId()I
    .locals 0

    iget p0, p0, Lcom/android/camera/fragment/ambilight/AmbilightInfo;->mNameResId:I

    return p0
.end method

.method public getOrder()I
    .locals 0

    iget p0, p0, Lcom/android/camera/fragment/ambilight/AmbilightInfo;->mOrder:I

    return p0
.end method

.method public getSceneMode()I
    .locals 0

    iget p0, p0, Lcom/android/camera/fragment/ambilight/AmbilightInfo;->mSceneMode:I

    return p0
.end method

.method public getTagUniqueFilterId()I
    .locals 0

    iget p0, p0, Lcom/android/camera/fragment/ambilight/AmbilightInfo;->tagUniqueFilterId:I

    return p0
.end method

.method public isNeedRect()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/fragment/ambilight/AmbilightInfo;->mIsNeedRect:Z

    return p0
.end method

.method public setIconResId(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/fragment/ambilight/AmbilightInfo;->mIconResId:I

    return-void
.end method

.method public setNameResId(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/fragment/ambilight/AmbilightInfo;->mNameResId:I

    return-void
.end method

.method public setNeedRect(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/fragment/ambilight/AmbilightInfo;->mIsNeedRect:Z

    return-void
.end method

.method public setOrder(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/fragment/ambilight/AmbilightInfo;->mOrder:I

    return-void
.end method

.method public setTagUniqueFilterId(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/fragment/ambilight/AmbilightInfo;->tagUniqueFilterId:I

    return-void
.end method
