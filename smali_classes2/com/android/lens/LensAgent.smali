.class public Lcom/android/lens/LensAgent;
.super Ljava/lang/Object;
.source "LensAgent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lens/LensAgent$SingletonHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LensAgent"


# instance fields
.field private volatile mInitialized:Z

.field private volatile mIsResumed:Z

.field private mLensliteApi:Lcom/google/android/libraries/lens/lenslite/LensliteApi;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/lens/LensAgent$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/lens/LensAgent;-><init>()V

    return-void
.end method

.method private applyCustomStyle(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 12

    iget-object p0, p0, Lcom/android/lens/LensAgent;->mLensliteApi:Lcom/google/android/libraries/lens/lenslite/LensliteApi;

    invoke-virtual {p0}, Lcom/google/android/libraries/lens/lenslite/LensliteApi;->getUiController()Lcom/google/android/libraries/lens/lenslite/LensliteUiController;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/android/camera/Util;->getDisplayRect(Landroid/content/Context;I)Landroid/graphics/Rect;

    move-result-object v2

    const v3, 0x7f07005e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    sub-float/2addr v2, v3

    sget v3, Lcom/android/camera/Util;->sPixelDensity:F

    div-float/2addr v2, v3

    new-instance v3, Landroid/graphics/PointF;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p0, v3}, Lcom/google/android/libraries/lens/lenslite/LensliteUiController;->setChipLocation(Landroid/graphics/PointF;)V

    const v2, 0x7f080030

    invoke-virtual {p0, v2}, Lcom/google/android/libraries/lens/lenslite/LensliteUiController;->setChipDrawable(I)V

    sget v2, Lcom/android/camera/Util;->sNavigationBarHeight:I

    int-to-float v2, v2

    sget v3, Lcom/android/camera/Util;->sPixelDensity:F

    div-float/2addr v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0, v3, v2}, Lcom/google/android/libraries/lens/lenslite/LensliteUiController;->setOobeLocation(IF)V

    const v2, 0x7f09011b

    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v4, -0x1

    const/4 v5, -0x2

    if-eqz v2, :cond_0

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v7, 0x11

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iput v5, v6, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v5, v6, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const v8, 0x7f070060

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    invoke-virtual {v6, v1, v1, v1, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const v6, 0x7f070061

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    invoke-virtual {v2, v1, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    const v2, 0x7f090119

    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const-string v6, ", marginRight = "

    const-string v7, "LensAgent"

    const/16 v8, 0x10

    if-eqz v2, :cond_1

    const v9, 0x7f080033

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    const v4, 0x7f07005a

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    invoke-direct {v4, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    iput v8, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const v5, 0x7f070058

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    const-string v9, "cancel_margin_left"

    invoke-static {v9, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    const v9, 0x7f070059

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v9

    const-string v10, "cancel_margin_right"

    invoke-static {v10, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "applyCustomStyle: cancel button marginLeft = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4, v5, v1, v9, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    const v2, 0x7f090036

    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    if-eqz v2, :cond_2

    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :cond_2
    const v2, 0x7f090034

    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    if-eqz p2, :cond_3

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    iput v8, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const v4, 0x7f07005c

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    const-string v5, "icon_margin_left"

    invoke-static {v5, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    const v5, 0x7f07005d

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    const-string v5, "icon_margin_right"

    invoke-static {v5, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "applyCustomStyle: icon marginLeft = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v4, v1, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {p2, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    const p2, 0x7f080035

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, v1, p2}, Lcom/google/android/libraries/lens/lenslite/LensliteUiController;->setIconForResultType(ILandroid/graphics/drawable/Drawable;)V

    const p2, 0x7f080036

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/google/android/libraries/lens/lenslite/LensliteUiController;->setIconForResultType(ILandroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x2

    const v1, 0x7f080031

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/lens/lenslite/LensliteUiController;->setIconForResultType(ILandroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x3

    const v1, 0x7f080038

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/lens/lenslite/LensliteUiController;->setIconForResultType(ILandroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x4

    const v1, 0x7f080034

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/lens/lenslite/LensliteUiController;->setIconForResultType(ILandroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x5

    const v1, 0x7f080039

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/google/android/libraries/lens/lenslite/LensliteUiController;->setIconForResultType(ILandroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x6

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/google/android/libraries/lens/lenslite/LensliteUiController;->setIconForResultType(ILandroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x7

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/google/android/libraries/lens/lenslite/LensliteUiController;->setIconForResultType(ILandroid/graphics/drawable/Drawable;)V

    const/16 v0, 0x8

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/google/android/libraries/lens/lenslite/LensliteUiController;->setIconForResultType(ILandroid/graphics/drawable/Drawable;)V

    const/16 v0, 0xc

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/lens/lenslite/LensliteUiController;->setIconForResultType(ILandroid/graphics/drawable/Drawable;)V

    const/16 v0, 0xd

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, v0, p2}, Lcom/google/android/libraries/lens/lenslite/LensliteUiController;->setIconForResultType(ILandroid/graphics/drawable/Drawable;)V

    const/16 p2, 0xe

    const v0, 0x7f080032

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/google/android/libraries/lens/lenslite/LensliteUiController;->setIconForResultType(ILandroid/graphics/drawable/Drawable;)V

    const/16 p2, 0x12

    const v0, 0x7f080037

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/google/android/libraries/lens/lenslite/LensliteUiController;->setIconForResultType(ILandroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static getInstance()Lcom/android/lens/LensAgent;
    .locals 1

    invoke-static {}, Lcom/android/lens/LensAgent$SingletonHandler;->access$000()Lcom/android/lens/LensAgent;

    move-result-object v0

    return-object v0
.end method

.method public static isConflictAiScene(I)Z
    .locals 1

    const/4 v0, -0x1

    if-eq p0, v0, :cond_1

    const/16 v0, 0x13

    if-eq p0, v0, :cond_1

    const/16 v0, 0x19

    if-eq p0, v0, :cond_1

    const/16 v0, 0x1f

    if-eq p0, v0, :cond_0

    const/16 v0, 0x22

    if-eq p0, v0, :cond_1

    const/16 v0, 0x25

    if-eq p0, v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mi/config/a;->Pc()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method static synthetic j(I)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onOobeStatusUpdated: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LensAgent"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const-string v1, "pref_google_lens_oobe_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    invoke-static {v3}, Lcom/android/camera/statistic/CameraStatUtil;->trackGoogleLensOobeContinue(Z)V

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    if-eq p0, v0, :cond_2

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p0

    const-string v0, "pref_camera_long_press_viewfinder_key"

    invoke-interface {p0, v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    :cond_2
    return-void
.end method


# virtual methods
.method public init(Landroid/app/Activity;Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 4

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/libraries/lens/lenslite/LensliteApi;->create(Landroid/content/Context;I)Lcom/google/android/libraries/lens/lenslite/LensliteApi;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lens/LensAgent;->mLensliteApi:Lcom/google/android/libraries/lens/lenslite/LensliteApi;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/lens/LensAgent;->mLensliteApi:Lcom/google/android/libraries/lens/lenslite/LensliteApi;

    new-instance v3, Lcom/google/android/libraries/lens/lenslite/LensliteUiContainer;

    invoke-direct {v3, p2, p3}, Lcom/google/android/libraries/lens/lenslite/LensliteUiContainer;-><init>(Landroid/view/View;Landroid/view/ViewGroup;)V

    sget-object p2, Lcom/android/lens/a;->INSTANCE:Lcom/android/lens/a;

    invoke-virtual {v2, v3, p1, p2}, Lcom/google/android/libraries/lens/lenslite/LensliteApi;->onStart(Lcom/google/android/libraries/lens/lenslite/LensliteUiContainer;Landroid/app/Activity;Lcom/google/android/libraries/lens/lenslite/StatusUpdateCallback;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LensliteApi init cost "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "LensAgent"

    invoke-static {v0, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/android/lens/LensAgent;->applyCustomStyle(Landroid/content/Context;Landroid/view/ViewGroup;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/lens/LensAgent;->mInitialized:Z

    return-void
.end method

.method public onFocusChange(IFF)V
    .locals 2
    .param p1    # I
        .annotation build Lcom/google/android/libraries/lens/lenslite/LensliteUiController$FocusType;
        .end annotation
    .end param

    iget-boolean v0, p0, Lcom/android/lens/LensAgent;->mInitialized:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFocusChange: type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LensAgent"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object p0, p0, Lcom/android/lens/LensAgent;->mLensliteApi:Lcom/google/android/libraries/lens/lenslite/LensliteApi;

    invoke-virtual {p0}, Lcom/google/android/libraries/lens/lenslite/LensliteApi;->getUiController()Lcom/google/android/libraries/lens/lenslite/LensliteUiController;

    move-result-object p0

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, p2, p3}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/libraries/lens/lenslite/LensliteUiController;->onFocusChange(ILandroid/graphics/PointF;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "onFocusChange: "

    invoke-static {v1, p1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public onNewImage(Landroid/media/Image;I)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/lens/LensAgent;->mInitialized:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/lens/LensAgent;->mIsResumed:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/lens/LensAgent;->mLensliteApi:Lcom/google/android/libraries/lens/lenslite/LensliteApi;

    invoke-static {p1, p2}, Lcom/google/android/libraries/lens/lenslite/api/LinkImage;->create(Landroid/media/Image;I)Lcom/google/android/libraries/lens/lenslite/api/LinkImage;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/libraries/lens/lenslite/LensliteApi;->onNewImage(Lcom/google/android/libraries/lens/lenslite/api/LinkImage;)V

    goto :goto_0

    :cond_1
    const-string p0, "LensAgent"

    const-string p1, "onNewImage: lens api not resume..."

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onPause()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/lens/LensAgent;->mInitialized:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-boolean v2, p0, Lcom/android/lens/LensAgent;->mIsResumed:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/lens/LensAgent;->mIsResumed:Z

    iget-object p0, p0, Lcom/android/lens/LensAgent;->mLensliteApi:Lcom/google/android/libraries/lens/lenslite/LensliteApi;

    invoke-virtual {p0}, Lcom/google/android/libraries/lens/lenslite/LensliteApi;->onPause()V

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LensliteApi onPause cost "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "LensAgent"

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onResume()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/lens/LensAgent;->mInitialized:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-boolean v2, p0, Lcom/android/lens/LensAgent;->mIsResumed:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/lens/LensAgent;->mLensliteApi:Lcom/google/android/libraries/lens/lenslite/LensliteApi;

    invoke-virtual {v2}, Lcom/google/android/libraries/lens/lenslite/LensliteApi;->onResume()V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/lens/LensAgent;->mIsResumed:Z

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LensliteApi onResume cost "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "LensAgent"

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public release()V
    .locals 5

    iget-boolean v0, p0, Lcom/android/lens/LensAgent;->mInitialized:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/lens/LensAgent;->mLensliteApi:Lcom/google/android/libraries/lens/lenslite/LensliteApi;

    invoke-virtual {v2}, Lcom/google/android/libraries/lens/lenslite/LensliteApi;->onStop()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LensliteApi release cost "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LensAgent"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/lens/LensAgent;->mInitialized:Z

    return-void
.end method

.method public showOrHideChip(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/lens/LensAgent;->mInitialized:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/lens/LensAgent;->mLensliteApi:Lcom/google/android/libraries/lens/lenslite/LensliteApi;

    invoke-virtual {p0}, Lcom/google/android/libraries/lens/lenslite/LensliteApi;->getUiController()Lcom/google/android/libraries/lens/lenslite/LensliteUiController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/android/libraries/lens/lenslite/LensliteUiController;->setLensSuggestionsEnabled(Z)V

    return-void
.end method
