.class Landroid/widget/ProgressBar$ProgressTintInfo;
.super Ljava/lang/Object;
.source "ProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProgressTintInfo"
.end annotation


# instance fields
.field mHasIndeterminateTint:Z

.field mHasIndeterminateTintMode:Z

.field mHasProgressBackgroundTint:Z

.field mHasProgressBackgroundTintMode:Z

.field mHasProgressTint:Z

.field mHasProgressTintMode:Z

.field mHasSecondaryProgressTint:Z

.field mHasSecondaryProgressTintMode:Z

.field mIndeterminateBlendMode:Landroid/graphics/BlendMode;

.field mIndeterminateTintList:Landroid/content/res/ColorStateList;

.field mProgressBackgroundBlendMode:Landroid/graphics/BlendMode;

.field mProgressBackgroundTintList:Landroid/content/res/ColorStateList;

.field mProgressBlendMode:Landroid/graphics/BlendMode;

.field mProgressTintList:Landroid/content/res/ColorStateList;

.field mSecondaryProgressBlendMode:Landroid/graphics/BlendMode;

.field mSecondaryProgressTintList:Landroid/content/res/ColorStateList;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/ProgressBar$1;)V
    .registers 2

    invoke-direct {p0}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>()V

    return-void
.end method
