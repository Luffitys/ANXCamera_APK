.class public Lcom/android/camera/fragment/sticker/StickerAdapter;
.super Lcom/android/camera/fragment/sticker/BaseSelectAdapter;
.source ""


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/sticker/BaseSelectAdapter;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected getHolder(Landroid/view/View;)Lcom/android/camera/fragment/sticker/BaseSelectAdapter$BaseSelectHolder;
    .locals 1

    new-instance v0, Lcom/android/camera/fragment/sticker/StickerAdapter$StickerHolder;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/fragment/sticker/StickerAdapter$StickerHolder;-><init>(Lcom/android/camera/fragment/sticker/StickerAdapter;Landroid/view/View;)V

    return-object v0
.end method

.method protected getLayoutId()I
    .locals 0

    const p0, 0x7f0c0095

    return p0
.end method
