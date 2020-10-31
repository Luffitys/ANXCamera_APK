.class Lmiui/maml/elements/BitmapProvider$AppIconProvider;
.super Lmiui/maml/elements/BitmapProvider;
.source "BitmapProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/BitmapProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AppIconProvider"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "ApplicationIcon"


# instance fields
.field private mCls:Ljava/lang/String;

.field private mNoIcon:Z

.field private mPkg:Ljava/lang/String;

.field private mSrc:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lmiui/maml/ScreenElementRoot;)V
    .registers 2

    invoke-direct {p0, p1}, Lmiui/maml/elements/BitmapProvider;-><init>(Lmiui/maml/ScreenElementRoot;)V

    return-void
.end method

.method private parseSrc(Ljava/lang/String;)V
    .registers 9

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/elements/BitmapProvider$AppIconProvider;->mNoIcon:Z

    iget-object v1, p0, Lmiui/maml/elements/BitmapProvider$AppIconProvider;->mVersionedBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    const/4 v2, 0x0

    # setter for: Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1, v2}, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->access$002(Lmiui/maml/elements/BitmapProvider$VersionedBitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "invalid src of ApplicationIcon type: "

    const-string v3, "BitmapProvider"

    const/4 v4, 0x1

    if-nez v1, :cond_44

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v5, v1

    const/4 v6, 0x2

    if-ne v5, v6, :cond_27

    aget-object v0, v1, v0

    iput-object v0, p0, Lmiui/maml/elements/BitmapProvider$AppIconProvider;->mPkg:Ljava/lang/String;

    aget-object v0, v1, v4

    iput-object v0, p0, Lmiui/maml/elements/BitmapProvider$AppIconProvider;->mCls:Ljava/lang/String;

    goto :goto_43

    :cond_27
    array-length v5, v1

    if-ne v5, v4, :cond_2f

    aget-object v0, v1, v0

    iput-object v0, p0, Lmiui/maml/elements/BitmapProvider$AppIconProvider;->mPkg:Ljava/lang/String;

    goto :goto_43

    :cond_2f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v4, p0, Lmiui/maml/elements/BitmapProvider$AppIconProvider;->mNoIcon:Z

    :goto_43
    goto :goto_58

    :cond_44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v4, p0, Lmiui/maml/elements/BitmapProvider$AppIconProvider;->mNoIcon:Z

    :goto_58
    return-void
.end method

.method private tryToSetBitmap()V
    .registers 8

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lmiui/maml/elements/BitmapProvider$AppIconProvider;->mCls:Ljava/lang/String;

    if-eqz v1, :cond_20

    iget-object v1, p0, Lmiui/maml/elements/BitmapProvider$AppIconProvider;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v1}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lmiui/maml/elements/BitmapProvider$AppIconProvider;->mPkg:Ljava/lang/String;

    iget-object v4, p0, Lmiui/maml/elements/BitmapProvider$AppIconProvider;->mCls:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v0, v1

    goto :goto_33

    :cond_20
    iget-object v1, p0, Lmiui/maml/elements/BitmapProvider$AppIconProvider;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v1}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lmiui/maml/elements/BitmapProvider$AppIconProvider;->mPkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v0, v1

    :goto_33
    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_44

    iget-object v1, p0, Lmiui/maml/elements/BitmapProvider$AppIconProvider;->mVersionedBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    move-object v2, v0

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->setBitmap(Landroid/graphics/Bitmap;)Z

    goto :goto_6e

    :cond_44
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_56

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_58

    :cond_56
    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    :goto_58
    nop

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v6, 0x0

    invoke-virtual {v0, v6, v6, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v6, p0, Lmiui/maml/elements/BitmapProvider$AppIconProvider;->mVersionedBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-virtual {v6, v4}, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->setBitmap(Landroid/graphics/Bitmap;)Z
    :try_end_6e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_6e} :catch_6f

    :goto_6e
    goto :goto_8b

    :catch_6f
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail to get icon for src of ApplicationIcon type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmiui/maml/elements/BitmapProvider$AppIconProvider;->mSrc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BitmapProvider"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lmiui/maml/elements/BitmapProvider$AppIconProvider;->mNoIcon:Z

    :goto_8b
    return-void
.end method


# virtual methods
.method public getBitmap(Ljava/lang/String;ZII)Lmiui/maml/elements/BitmapProvider$VersionedBitmap;
    .registers 6

    iget-object v0, p0, Lmiui/maml/elements/BitmapProvider$AppIconProvider;->mSrc:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    iput-object p1, p0, Lmiui/maml/elements/BitmapProvider$AppIconProvider;->mSrc:Ljava/lang/String;

    invoke-direct {p0, p1}, Lmiui/maml/elements/BitmapProvider$AppIconProvider;->parseSrc(Ljava/lang/String;)V

    :cond_d
    iget-object v0, p0, Lmiui/maml/elements/BitmapProvider$AppIconProvider;->mVersionedBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-virtual {v0}, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1c

    iget-boolean v0, p0, Lmiui/maml/elements/BitmapProvider$AppIconProvider;->mNoIcon:Z

    if-nez v0, :cond_1c

    invoke-direct {p0}, Lmiui/maml/elements/BitmapProvider$AppIconProvider;->tryToSetBitmap()V

    :cond_1c
    iget-object v0, p0, Lmiui/maml/elements/BitmapProvider$AppIconProvider;->mVersionedBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    return-object v0
.end method

.method public init(Ljava/lang/String;)V
    .registers 2

    invoke-super {p0, p1}, Lmiui/maml/elements/BitmapProvider;->init(Ljava/lang/String;)V

    iput-object p1, p0, Lmiui/maml/elements/BitmapProvider$AppIconProvider;->mSrc:Ljava/lang/String;

    invoke-direct {p0, p1}, Lmiui/maml/elements/BitmapProvider$AppIconProvider;->parseSrc(Ljava/lang/String;)V

    return-void
.end method
