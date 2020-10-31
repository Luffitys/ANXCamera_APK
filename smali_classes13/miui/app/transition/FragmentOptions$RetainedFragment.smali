.class public Lmiui/app/transition/FragmentOptions$RetainedFragment;
.super Lmiui/app/Fragment;
.source "FragmentOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/transition/FragmentOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RetainedFragment"
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lmiui/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method getBitmap()Landroid/graphics/Bitmap;
    .registers 2

    iget-object v0, p0, Lmiui/app/transition/FragmentOptions$RetainedFragment;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Lmiui/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiui/app/transition/FragmentOptions$RetainedFragment;->setRetainInstance(Z)V

    return-void
.end method

.method public onDestroy()V
    .registers 2

    invoke-super {p0}, Lmiui/app/Fragment;->onDestroy()V

    iget-object v0, p0, Lmiui/app/transition/FragmentOptions$RetainedFragment;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lmiui/app/transition/FragmentOptions$RetainedFragment;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/app/transition/FragmentOptions$RetainedFragment;->mBitmap:Landroid/graphics/Bitmap;

    :cond_15
    return-void
.end method

.method setThumb(Landroid/graphics/Bitmap;)V
    .registers 2

    iput-object p1, p0, Lmiui/app/transition/FragmentOptions$RetainedFragment;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method
