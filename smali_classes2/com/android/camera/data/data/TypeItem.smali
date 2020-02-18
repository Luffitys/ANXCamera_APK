.class public final Lcom/android/camera/data/data/TypeItem;
.super Ljava/lang/Object;
.source "TypeItem.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final RES_NULL:I = -0x1
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field

.field public static final STRING_NULL:I = -0x1
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation
.end field


# instance fields
.field public mCategory:Ljava/lang/String;

.field public mDefaultValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public mDescriptionRes:I
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation
.end field

.field public mDisplayNameRes:I
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation
.end field

.field public mEntryArrayRes:I
    .annotation build Landroid/support/annotation/ArrayRes;
    .end annotation
.end field

.field public mExpandable:Z

.field public mIconRes:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field

.field public mIconSelectedRes:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field

.field public mKeyOrType:Ljava/lang/String;

.field public mValueArrayRes:I
    .annotation build Landroid/support/annotation/ArrayRes;
    .end annotation
.end field


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/camera/data/data/TypeItem;->mIconRes:I

    iput p2, p0, Lcom/android/camera/data/data/TypeItem;->mDisplayNameRes:I

    iput-object p3, p0, Lcom/android/camera/data/data/TypeItem;->mCategory:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/camera/data/data/TypeItem;->mKeyOrType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/camera/data/data/TypeItem;->mDisplayNameRes:I

    iput-object p2, p0, Lcom/android/camera/data/data/TypeItem;->mCategory:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/camera/data/data/TypeItem;->mKeyOrType:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/camera/data/data/TypeItem;->mDefaultValue:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public asBoolean()Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera/data/data/TypeItem;->mDefaultValue:Ljava/lang/Object;

    instance-of p0, p0, Ljava/lang/Boolean;

    return p0
.end method

.method public asInteger()Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera/data/data/TypeItem;->mDefaultValue:Ljava/lang/Object;

    instance-of p0, p0, Ljava/lang/Integer;

    return p0
.end method

.method public asString()Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera/data/data/TypeItem;->mDefaultValue:Ljava/lang/Object;

    instance-of p0, p0, Ljava/lang/String;

    return p0
.end method

.method public getDefaultValue()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/camera/data/data/TypeItem;->mDefaultValue:Ljava/lang/Object;

    return-object p0
.end method

.method public getEntryArrayRes()I
    .locals 0
    .annotation build Landroid/support/annotation/ArrayRes;
    .end annotation

    iget p0, p0, Lcom/android/camera/data/data/TypeItem;->mEntryArrayRes:I

    return p0
.end method

.method public getImageResource()I
    .locals 0

    iget p0, p0, Lcom/android/camera/data/data/TypeItem;->mIconRes:I

    return p0
.end method

.method public getTextResource()I
    .locals 0

    iget p0, p0, Lcom/android/camera/data/data/TypeItem;->mDisplayNameRes:I

    return p0
.end method

.method public getValueArrayRes()I
    .locals 0
    .annotation build Landroid/support/annotation/ArrayRes;
    .end annotation

    iget p0, p0, Lcom/android/camera/data/data/TypeItem;->mValueArrayRes:I

    return p0
.end method

.method public setDefaultValue(Ljava/lang/Object;)Lcom/android/camera/data/data/TypeItem;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/android/camera/data/data/TypeItem<",
            "TT;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/camera/data/data/TypeItem;->mDefaultValue:Ljava/lang/Object;

    return-object p0
.end method

.method public setDescriptionRes(I)Lcom/android/camera/data/data/TypeItem;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    iput p1, p0, Lcom/android/camera/data/data/TypeItem;->mDescriptionRes:I

    return-object p0
.end method

.method public setEntryArrayRes(I)Lcom/android/camera/data/data/TypeItem;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ArrayRes;
        .end annotation
    .end param

    iput p1, p0, Lcom/android/camera/data/data/TypeItem;->mEntryArrayRes:I

    return-object p0
.end method

.method public setExpandable(Z)Lcom/android/camera/data/data/TypeItem;
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/data/data/TypeItem;->mExpandable:Z

    return-object p0
.end method

.method public setValueArrayRes(I)Lcom/android/camera/data/data/TypeItem;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ArrayRes;
        .end annotation
    .end param

    iput p1, p0, Lcom/android/camera/data/data/TypeItem;->mValueArrayRes:I

    return-object p0
.end method
