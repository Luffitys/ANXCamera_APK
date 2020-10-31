.class public Lmiui/maml/elements/BitmapProvider$VersionedBitmap;
.super Ljava/lang/Object;
.source "BitmapProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/BitmapProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VersionedBitmap"
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mVersion:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic access$002(Lmiui/maml/elements/BitmapProvider$VersionedBitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2

    iput-object p1, p0, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->mBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public static equals(Lmiui/maml/elements/BitmapProvider$VersionedBitmap;Lmiui/maml/elements/BitmapProvider$VersionedBitmap;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_13

    if-nez p1, :cond_6

    goto :goto_13

    :cond_6
    iget-object v1, p0, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p1, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->mBitmap:Landroid/graphics/Bitmap;

    if-ne v1, v2, :cond_13

    iget v1, p0, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->mVersion:I

    iget v2, p1, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->mVersion:I

    if-ne v1, v2, :cond_13

    const/4 v0, 0x1

    :cond_13
    :goto_13
    return v0
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .registers 2

    iget-object v0, p0, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public reset()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    iput v0, p0, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->mVersion:I

    return-void
.end method

.method public set(Lmiui/maml/elements/BitmapProvider$VersionedBitmap;)V
    .registers 3

    if-eqz p1, :cond_b

    iget-object v0, p1, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->mBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->mBitmap:Landroid/graphics/Bitmap;

    iget v0, p1, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->mVersion:I

    iput v0, p0, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->mVersion:I

    goto :goto_e

    :cond_b
    invoke-virtual {p0}, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->reset()V

    :goto_e
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)Z
    .registers 4

    iget-object v0, p0, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x1

    if-eq p1, v0, :cond_c

    iput-object p1, p0, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->mBitmap:Landroid/graphics/Bitmap;

    iget v0, p0, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->mVersion:I

    add-int/2addr v0, v1

    iput v0, p0, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->mVersion:I

    :cond_c
    iget-object v0, p0, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->mBitmap:Landroid/graphics/Bitmap;

    if-eq p1, v0, :cond_11

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    return v1
.end method

.method public updateVersion()I
    .registers 3

    iget v0, p0, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->mVersion:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->mVersion:I

    return v0
.end method
