.class public Lmiui/yellowpage/ContactThumbnailProcessor;
.super Ljava/lang/Object;
.source "ContactThumbnailProcessor.java"

# interfaces
.implements Lmiui/yellowpage/YellowPageImgLoader$Image$ImageProcessor;


# static fields
.field private static final sPhotoSize:I = 0x86


# instance fields
.field private mBackgroundRes:I

.field private mContext:Landroid/content/Context;

.field private mDefaultPhoto:Z

.field private mForegroundRes:I

.field private mMaskRes:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/yellowpage/ContactThumbnailProcessor;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/yellowpage/ContactThumbnailProcessor;->mDefaultPhoto:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;III)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/yellowpage/ContactThumbnailProcessor;->mContext:Landroid/content/Context;

    iput p2, p0, Lmiui/yellowpage/ContactThumbnailProcessor;->mForegroundRes:I

    iput p3, p0, Lmiui/yellowpage/ContactThumbnailProcessor;->mBackgroundRes:I

    iput p4, p0, Lmiui/yellowpage/ContactThumbnailProcessor;->mMaskRes:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/yellowpage/ContactThumbnailProcessor;->mDefaultPhoto:Z

    return-void
.end method


# virtual methods
.method public processImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 10

    if-nez p1, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const/4 v0, 0x0

    iget-boolean v1, p0, Lmiui/yellowpage/ContactThumbnailProcessor;->mDefaultPhoto:Z

    if-eqz v1, :cond_12

    iget-object v1, p0, Lmiui/yellowpage/ContactThumbnailProcessor;->mContext:Landroid/content/Context;

    const/16 v2, 0x86

    invoke-static {v1, p1, v2}, Lmiui/graphics/BitmapFactory;->createPhoto(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_32

    :cond_12
    iget-object v1, p0, Lmiui/yellowpage/ContactThumbnailProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v3, 0x0

    iget v2, p0, Lmiui/yellowpage/ContactThumbnailProcessor;->mMaskRes:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget v2, p0, Lmiui/yellowpage/ContactThumbnailProcessor;->mForegroundRes:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iget v2, p0, Lmiui/yellowpage/ContactThumbnailProcessor;->mBackgroundRes:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const/16 v7, 0x86

    move-object v2, p1

    invoke-static/range {v2 .. v7}, Lmiui/graphics/BitmapFactory;->composeBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_32
    return-object v0
.end method
