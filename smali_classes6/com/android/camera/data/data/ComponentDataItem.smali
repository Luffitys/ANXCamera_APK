.class public Lcom/android/camera/data/data/ComponentDataItem;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final RES_NULL:I = -0x1
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation
.end field

.field public static final STRING_NULL:I = -0x1
    .annotation build Landroidx/annotation/StringRes;
    .end annotation
.end field

.field public static final VALUE_NULL:Ljava/lang/String; = "null"


# instance fields
.field public mContentDescriptionRes:I
    .annotation build Landroidx/annotation/StringRes;
    .end annotation
.end field

.field public mDisplayNameRes:I
    .annotation build Landroidx/annotation/StringRes;
    .end annotation
.end field

.field public mDisplayNameStr:Ljava/lang/String;

.field public mIconDisabledRes:I
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation
.end field

.field public mIconLabelRes:I
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation
.end field

.field public mIconRes:I
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation
.end field

.field public mIconSelectedRes:I
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation
.end field

.field public mIconShadowLabelRes:I
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation
.end field

.field public mIconShadowRes:I
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation
.end field

.field public mIsDisabled:Z

.field public mIsShowText:Z

.field public mSelectColor:I

.field public mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(IIIIIIILjava/lang/String;)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .param p5    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .param p6    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .param p7    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/data/data/ComponentDataItem;->mIconShadowRes:I

    iput v0, p0, Lcom/android/camera/data/data/ComponentDataItem;->mIconLabelRes:I

    iput v0, p0, Lcom/android/camera/data/data/ComponentDataItem;->mIconShadowLabelRes:I

    iput p1, p0, Lcom/android/camera/data/data/ComponentDataItem;->mIconRes:I

    iput p2, p0, Lcom/android/camera/data/data/ComponentDataItem;->mIconShadowRes:I

    iput p3, p0, Lcom/android/camera/data/data/ComponentDataItem;->mIconSelectedRes:I

    iput p1, p0, Lcom/android/camera/data/data/ComponentDataItem;->mIconDisabledRes:I

    iput p4, p0, Lcom/android/camera/data/data/ComponentDataItem;->mIconSelectedRes:I

    iput p5, p0, Lcom/android/camera/data/data/ComponentDataItem;->mIconLabelRes:I

    iput p6, p0, Lcom/android/camera/data/data/ComponentDataItem;->mIconShadowLabelRes:I

    iput p7, p0, Lcom/android/camera/data/data/ComponentDataItem;->mDisplayNameRes:I

    iput-object p8, p0, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IIIIILjava/lang/String;)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .param p5    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/data/data/ComponentDataItem;->mIconShadowRes:I

    iput v0, p0, Lcom/android/camera/data/data/ComponentDataItem;->mIconLabelRes:I

    iput v0, p0, Lcom/android/camera/data/data/ComponentDataItem;->mIconShadowLabelRes:I

    iput p1, p0, Lcom/android/camera/data/data/ComponentDataItem;->mIconRes:I

    iput p2, p0, Lcom/android/camera/data/data/ComponentDataItem;->mIconShadowRes:I

    iput p3, p0, Lcom/android/camera/data/data/ComponentDataItem;->mIconSelectedRes:I

    iput p4, p0, Lcom/android/camera/data/data/ComponentDataItem;->mDisplayNameRes:I

    iput p5, p0, Lcom/android/camera/data/data/ComponentDataItem;->mContentDescriptionRes:I

    iput-object p6, p0, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IIIILjava/lang/String;)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/data/data/ComponentDataItem;->mIconShadowRes:I

    iput v0, p0, Lcom/android/camera/data/data/ComponentDataItem;->mIconLabelRes:I

    iput v0, p0, Lcom/android/camera/data/data/ComponentDataItem;->mIconShadowLabelRes:I

    iput p1, p0, Lcom/android/camera/data/data/ComponentDataItem;->mIconRes:I

    iput p2, p0, Lcom/android/camera/data/data/ComponentDataItem;->mIconShadowRes:I

    iput p3, p0, Lcom/android/camera/data/data/ComponentDataItem;->mIconSelectedRes:I

    iput p4, p0, Lcom/android/camera/data/data/ComponentDataItem;->mDisplayNameRes:I

    iput-object p5, p0, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IIIILjava/lang/String;ZI)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/data/data/ComponentDataItem;->mIconShadowRes:I

    iput v0, p0, Lcom/android/camera/data/data/ComponentDataItem;->mIconLabelRes:I

    iput v0, p0, Lcom/android/camera/data/data/ComponentDataItem;->mIconShadowLabelRes:I

    iput p1, p0, Lcom/android/camera/data/data/ComponentDataItem;->mIconRes:I

    iput p2, p0, Lcom/android/camera/data/data/ComponentDataItem;->mIconSelectedRes:I

    iput p3, p0, Lcom/android/camera/data/data/ComponentDataItem;->mDisplayNameRes:I

    iput p4, p0, Lcom/android/camera/data/data/ComponentDataItem;->mContentDescriptionRes:I

    iput-object p5, p0, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/android/camera/data/data/ComponentDataItem;->mIsShowText:Z

    iput p7, p0, Lcom/android/camera/data/data/ComponentDataItem;->mSelectColor:I

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/data/data/ComponentDataItem;->mIconShadowRes:I

    iput v0, p0, Lcom/android/camera/data/data/ComponentDataItem;->mIconLabelRes:I

    iput v0, p0, Lcom/android/camera/data/data/ComponentDataItem;->mIconShadowLabelRes:I

    iput p1, p0, Lcom/android/camera/data/data/ComponentDataItem;->mIconRes:I

    iput p2, p0, Lcom/android/camera/data/data/ComponentDataItem;->mIconSelectedRes:I

    iput p3, p0, Lcom/android/camera/data/data/ComponentDataItem;->mDisplayNameRes:I

    iput-object p4, p0, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/data/data/ComponentDataItem;->mIconShadowRes:I

    iput v0, p0, Lcom/android/camera/data/data/ComponentDataItem;->mIconLabelRes:I

    iput v0, p0, Lcom/android/camera/data/data/ComponentDataItem;->mIconShadowLabelRes:I

    iput p1, p0, Lcom/android/camera/data/data/ComponentDataItem;->mIconRes:I

    iput p2, p0, Lcom/android/camera/data/data/ComponentDataItem;->mIconSelectedRes:I

    iput-object p3, p0, Lcom/android/camera/data/data/ComponentDataItem;->mDisplayNameStr:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IIZILjava/lang/String;)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/data/data/ComponentDataItem;->mIconShadowRes:I

    iput v0, p0, Lcom/android/camera/data/data/ComponentDataItem;->mIconLabelRes:I

    iput v0, p0, Lcom/android/camera/data/data/ComponentDataItem;->mIconShadowLabelRes:I

    iput p1, p0, Lcom/android/camera/data/data/ComponentDataItem;->mIconRes:I

    iput p2, p0, Lcom/android/camera/data/data/ComponentDataItem;->mIconSelectedRes:I

    iput p4, p0, Lcom/android/camera/data/data/ComponentDataItem;->mDisplayNameRes:I

    iput-boolean p3, p0, Lcom/android/camera/data/data/ComponentDataItem;->mIsDisabled:Z

    iput-object p5, p0, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/camera/data/data/ComponentDataItem;->mDisplayNameStr:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/data/data/ComponentDataItem;->mDisplayNameRes:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/data/ComponentDataItem;->mDisplayNameStr:Ljava/lang/String;

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ComponentDataItem{mDisplayName=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x27

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "mValue=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
