.class Landroid/view/View$TintInfo;
.super Ljava/lang/Object;
.source "View.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TintInfo"
.end annotation


# instance fields
.field mBlendMode:Landroid/graphics/BlendMode;

.field mHasTintList:Z

.field mHasTintMode:Z

.field mTintList:Landroid/content/res/ColorStateList;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
