.class Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private mContentDescriptionRes:I
    .annotation build Landroidx/annotation/StringRes;
    .end annotation
.end field

.field private mDisabledColor:I

.field private mDisplayNameRes:I
    .annotation build Landroidx/annotation/StringRes;
    .end annotation
.end field

.field private mIconRes:I
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation
.end field

.field private mIsDisabled:Z

.field private mIsShowText:Z

.field private mOriginalSelectColor:I

.field private mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x4dffffff    # 5.3687088E8f

    iput v0, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;->mDisabledColor:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;IIZZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x4dffffff    # 5.3687088E8f

    iput v0, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;->mDisabledColor:I

    iput p1, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;->mIconRes:I

    iput-object p2, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;->mValue:Ljava/lang/String;

    iput p3, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;->mDisplayNameRes:I

    iput p4, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;->mOriginalSelectColor:I

    iput-boolean p5, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;->mIsDisabled:Z

    iput-boolean p6, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;->mIsShowText:Z

    return-void
.end method

.method static synthetic access$1000(Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;->mOriginalSelectColor:I

    return p0
.end method

.method static synthetic access$1100(Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;->mContentDescriptionRes:I

    return p0
.end method

.method static synthetic access$1200(Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;->mDisplayNameRes:I

    return p0
.end method

.method static synthetic access$1300(Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;->mIconRes:I

    return p0
.end method

.method static synthetic access$1400(Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;->mValue:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;->mIsDisabled:Z

    return p0
.end method

.method static synthetic access$1600(Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;->mIsShowText:Z

    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    check-cast p1, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;

    iget v1, p1, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;->mIconRes:I

    iget v2, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;->mIconRes:I

    if-ne v1, v2, :cond_1

    iget-object v1, p1, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;->mValue:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;->mValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p1, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;->mDisplayNameRes:I

    iget v2, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;->mDisplayNameRes:I

    if-ne v1, v2, :cond_1

    iget v1, p1, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;->mOriginalSelectColor:I

    iget v2, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;->mOriginalSelectColor:I

    if-ne v1, v2, :cond_1

    iget-boolean p1, p1, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;->mIsShowText:Z

    iget-boolean p0, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;->mIsShowText:Z

    if-ne p1, p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public getContentDescriptionRes()I
    .locals 0

    iget p0, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;->mContentDescriptionRes:I

    return p0
.end method

.method public getDisplayNameRes()I
    .locals 0

    iget p0, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;->mDisplayNameRes:I

    return p0
.end method

.method public getIconRes()I
    .locals 0

    iget p0, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;->mIconRes:I

    return p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;->mValue:Ljava/lang/String;

    return-object p0
.end method

.method public isIsDisabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;->mIsDisabled:Z

    return p0
.end method

.method public isIsShowText()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;->mIsShowText:Z

    return p0
.end method

.method public setContentDescriptionRes(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;->mContentDescriptionRes:I

    return-void
.end method

.method public setDisplayNameRes(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;->mDisplayNameRes:I

    return-void
.end method

.method public setIconRes(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;->mIconRes:I

    return-void
.end method

.method public setIsDisabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;->mIsDisabled:Z

    return-void
.end method

.method public setIsShowText(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;->mIsShowText:Z

    return-void
.end method

.method public setOriginalSelectColor(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;->mOriginalSelectColor:I

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ui/TopAlertSlideSwitchButton$ItemData;->mValue:Ljava/lang/String;

    return-void
.end method
