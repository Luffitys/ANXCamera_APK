.class public Lmiui/maml/elements/BitmapProvider$BitmapHolderProvider;
.super Lmiui/maml/elements/BitmapProvider;
.source "BitmapProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/BitmapProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BitmapHolderProvider"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "BitmapHolder"


# instance fields
.field private mBitmapHolder:Lmiui/maml/elements/BitmapProvider$IBitmapHolder;

.field private mId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lmiui/maml/ScreenElementRoot;)V
    .registers 2

    invoke-direct {p0, p1}, Lmiui/maml/elements/BitmapProvider;-><init>(Lmiui/maml/ScreenElementRoot;)V

    return-void
.end method


# virtual methods
.method public getBitmap(Ljava/lang/String;ZII)Lmiui/maml/elements/BitmapProvider$VersionedBitmap;
    .registers 7

    iget-object v0, p0, Lmiui/maml/elements/BitmapProvider$BitmapHolderProvider;->mBitmapHolder:Lmiui/maml/elements/BitmapProvider$IBitmapHolder;

    if-eqz v0, :cond_b

    iget-object v1, p0, Lmiui/maml/elements/BitmapProvider$BitmapHolderProvider;->mId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lmiui/maml/elements/BitmapProvider$IBitmapHolder;->getBitmap(Ljava/lang/String;)Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public init(Ljava/lang/String;)V
    .registers 6

    invoke-super {p0, p1}, Lmiui/maml/elements/BitmapProvider;->init(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    :cond_a
    const/4 v0, 0x0

    const/16 v1, 0x2e

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_16

    move-object v0, p1

    goto :goto_23

    :cond_16
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/elements/BitmapProvider$BitmapHolderProvider;->mId:Ljava/lang/String;

    :goto_23
    iget-object v2, p0, Lmiui/maml/elements/BitmapProvider$BitmapHolderProvider;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v2, v0}, Lmiui/maml/ScreenElementRoot;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object v2

    instance-of v3, v2, Lmiui/maml/elements/BitmapProvider$IBitmapHolder;

    if-eqz v3, :cond_32

    move-object v3, v2

    check-cast v3, Lmiui/maml/elements/BitmapProvider$IBitmapHolder;

    iput-object v3, p0, Lmiui/maml/elements/BitmapProvider$BitmapHolderProvider;->mBitmapHolder:Lmiui/maml/elements/BitmapProvider$IBitmapHolder;

    :cond_32
    return-void
.end method
