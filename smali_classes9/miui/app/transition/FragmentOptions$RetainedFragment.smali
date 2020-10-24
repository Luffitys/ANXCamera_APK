.class public Lmiui/app/transition/FragmentOptions$RetainedFragment;
.super Lmiui/app/Fragment;
.source ""


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmiui/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method getBitmap()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lmiui/app/transition/FragmentOptions$RetainedFragment;->mBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lmiui/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/Fragment;->setRetainInstance(Z)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lmiui/app/Fragment;->onDestroy()V

    iget-object v0, p0, Lmiui/app/transition/FragmentOptions$RetainedFragment;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmiui/app/transition/FragmentOptions$RetainedFragment;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/app/transition/FragmentOptions$RetainedFragment;->mBitmap:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method setThumb(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lmiui/app/transition/FragmentOptions$RetainedFragment;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method
